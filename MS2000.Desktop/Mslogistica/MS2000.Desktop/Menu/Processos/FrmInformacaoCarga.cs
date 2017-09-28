using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Text;
using System.Windows.Forms;
using MS2000.Desktop.Classes;
using System.Data.SqlClient;
namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmInformacaoCarga : MS2000.Desktop.Componentes.MSForm01
    {
        private Importador importador = new Importador();
        private Processo processo = new Processo();

        private string statusFechado;
        private string codImportador;
        private string pesoLiquido;
        private string pesoBruto;
        private string freteTerNac;
        private string agente;
        private string fretePrePaid;
        private string freteCollect;
        private string moedaFrete;
        private string codigoPais;
        private string codigoURF;
        private string valorMoeda;
        private string valorDespesa;
        private string codigoTipo;
        private string codigoMoedaFOB;
        private string codigoMoedaSeguro;
        private string tipoEmbalagem;
        private bool _canAtualizaTipoCarga;        
        private StatusCadastro statusCadastro;

        private bool _canAlteraProcesso = true;


        public FrmInformacaoCarga()
        {
            InitializeComponent();
        }

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None && txtProcesso.MaskCompleted);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
        }

        public void HabilitaBotoes(bool bValue)
        {
            foreach (Control controle in pnlDados.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        private void setTabelaCargas(string processo)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append("SELECT C.Processo, C.Codigo, C.FK_tipo_de_carga, T.Descricao, C.Lacre            ");
            sb.Append("  FROM Concargas C INNER JOIN Tipos_de_Cargas T ON C.FK_tipo_de_carga = T.Codigo ");
            sb.Append("WHERE C.Processo = @processo 												    ");

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {

                        }
                    }
                }
            }

        }

        private void setPaisProcedencia(string codigoPais)
        {
            string SQL = "SELECT CODIGO, DESCRICAO FROM TAB_PAIS";

            DataTable table = new DataTable();

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            table.Load(reader);
                        }
                    }
                }
            }

            cbbPaisProcedencia.DataSource = table;
            cbbPaisProcedencia.DisplayMember = "DESCRICAO";
            cbbPaisProcedencia.ValueMember = "CODIGO";
            cbbPaisProcedencia.SelectedValue = string.IsNullOrEmpty(codigoPais) ? "0" : codigoPais;
            txtPaisProcedencia.Text = string.IsNullOrEmpty(codigoPais) ? "" : codigoPais;
        }

        private void setURF(string codigoURF)
        {
            string SQL = "SELECT CODIGO,DESCRICAO FROM TAB_URF";

            DataTable table = new DataTable();

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            table.Load(reader);
                        }
                    }
                }
            }

            cbbEntrada.DataSource = table;
            cbbEntrada.DisplayMember = "DESCRICAO";
            cbbEntrada.ValueMember = "CODIGO";
            cbbEntrada.SelectedValue = string.IsNullOrEmpty(codigoURF) ? "0" : codigoURF;
            txtURF.Text = string.IsNullOrEmpty(codigoURF) ? "" : codigoURF;

        }

        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
        }

        private bool VerificaProcesso()
        {
            bool GoOn = true;

            importador = importador.BuscarPorCodigo(codImportador);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Fechado", out statusFechado);

            if (importador.Ativo == 0 && !FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show("Este cliente está inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (importador.Ativo == 0 && FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show("Este cliente está inativo, porém você tem permissão para edita-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (statusFechado == "1" && !FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show("Este processo está fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (statusFechado == "1" && FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show("Este processo esta fechado, porém você tem permissão para edita-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (processo.BuscarPorCodigoStatus(txtProcesso.Text).Count == 0)
            {
                MessageBox.Show("Processo não encontrado.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && false;
            }
            if (statusFechado == "0")
            {
                GoOn = GoOn && true;
            }
            return GoOn;
        }


        private void FrmInformacaoCarga_Load(object sender, EventArgs e)
        {
            HabilitaBotoes(false);
            btnEditar.Enabled = true;
            grdTipoCarga.AutoGenerateColumns = false;
            grdVolume.AutoGenerateColumns = false;
        }

        private string getValorVMLE(string processo)
        {
            StringBuilder sb = new StringBuilder();
            sb.Append("SELECT Sum([I].[vmle] * [T].taxa_conversao) AS SomaDoVMLE ");
            sb.Append("FROM faturas F ");
            sb.Append("INNER JOIN itensfaturas I ON ( F.Fatura_Id = I.Fatura_Id ) "); 
            sb.Append("INNER JOIN processos_taxas_conversao T  ON ( F.moeda = T.moeda )AND ( F.processo = T.processo ) 	");
            sb.Append("WHERE F.processo =@processo GROUP BY F.processo");

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                return reader["SomaDoVMLE"].ToString();
                            }
                        }
                    }
                }
                return "";
            }
        }

        private void setMoeda(string codigoMoeda)
        {
            string SQL = "SELECT CODIGO,DESCRICAO FROM TAB_MOEDA ORDER BY DESCRICAO";
            DataTable table = null;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                }
            }
            cbbMoeda.DataSource = table;
            cbbMoeda.DisplayMember = "DESCRICAO";
            cbbMoeda.ValueMember = "CODIGO";
            cbbMoeda.SelectedValue = string.IsNullOrEmpty(codigoMoeda) ? "0" : codigoMoeda;
            txtMoeda.Text = string.IsNullOrEmpty(codigoMoeda) ? "" : codigoMoeda;
        }

        private void setMoedaSeguro(string codigoMoedaSeguro)
        {
            string SQL = "SELECT CODIGO,DESCRICAO FROM TAB_MOEDA ORDER BY DESCRICAO";
            DataTable table = null;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                }
            }
            cbbMoedaSeguro.DataSource = table;
            cbbMoedaSeguro.DisplayMember = "DESCRICAO";
            cbbMoedaSeguro.ValueMember = "CODIGO";
            cbbMoedaSeguro.SelectedValue = string.IsNullOrEmpty(codigoMoedaSeguro) ? "0" : codigoMoedaSeguro;
            txtMoedaSeguro.Text = string.IsNullOrEmpty(codigoMoedaSeguro) ? "" : codigoMoedaSeguro;
        }

        private void setMoedaFOB(string codigoMoedaFOB)
        {
            string SQL = "SELECT CODIGO,DESCRICAO FROM TAB_MOEDA ORDER BY DESCRICAO";
            DataTable table = null;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                }
            }
            cbbMoedaFOB.DataSource = table;
            cbbMoedaFOB.DisplayMember = "DESCRICAO";
            cbbMoedaFOB.ValueMember = "CODIGO";
            cbbMoedaFOB.SelectedValue = string.IsNullOrEmpty(codigoMoedaFOB) ? "0" : codigoMoedaFOB;
            txtMoedaFOB.Text = string.IsNullOrEmpty(codigoMoedaFOB) ? "" : codigoMoedaFOB;
        }

        private IDictionary<string, string> VerificaTabelaConhecimento()
        {
            var listaString = new Dictionary<string, string>();

            string query = "select Moeda_Frete,Moeda_Seguro,Moeda_Despesas_ate_FOB,Agente,Pais_Procedencia,Frete_Ter_Nac,Frete_Collect,Frete_Prepaid,Valor_Seguro,Valor_Despesas_Ate_Fob,Peso_Liquido,Peso_Bruto,Urf_Chegada" +
                           " from Conhecimento_Processo where Processo = @Processo";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                    if (reader.HasRows)
                        while (reader.Read())
                            for (int i = 0; i < reader.VisibleFieldCount; i++)
                                listaString.Add(reader.GetName(i), reader[i].ToString());
            }

            return listaString;
        }

        private string getTaxa(string processo, string moeda)
        {
            StringBuilder sb = new StringBuilder();

            sb.Append("SELECT T.Processo, T.Moeda, T.Taxa_conversao, T.Taxa_conversaoc ");
            sb.Append("FROM Parametros AS P INNER JOIN Processos_Taxas_Conversao AS T  ");
            sb.Append("WHERE T.Processo = @processo AND T.Moeda = @moeda               ");

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);
                    cmd.Parameters.AddWithValue("@moeda", moeda);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                return reader["Taxa_Conversao"].ToString();
                            }
                        }
                    }
                }
            }

            return "";
        }

        private bool ValidaCampos()
        {
            if (!string.IsNullOrEmpty(txtPaisProcedencia.Text) && (string.IsNullOrEmpty(cbbPaisProcedencia.Text) || cbbPaisProcedencia.SelectedIndex == -1))
            {
                MessageBox.Show("País de procedência inválido!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cbbPaisProcedencia.Focus();
                return false;
            }

            if (!string.IsNullOrEmpty(txtURF.Text) && (string.IsNullOrEmpty(cbbEntrada.Text) || cbbEntrada.SelectedIndex == -1))
            {
                MessageBox.Show("URF de entrada no país inválido!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cbbEntrada.Focus();
                return false;
            }

            if (!string.IsNullOrEmpty(txtMoeda.Text) && (string.IsNullOrEmpty(cbbMoeda.Text) || cbbMoeda.SelectedIndex == -1))
            {
                MessageBox.Show("Código da moeda do frete inválido!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cbbMoeda.Focus();
                return false;
            }

            if (!string.IsNullOrEmpty(txtMoedaSeguro.Text) && (string.IsNullOrEmpty(cbbMoedaSeguro.Text) || cbbMoedaSeguro.SelectedIndex == -1))
            {
                MessageBox.Show("Código da moeda do seguro inválido!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cbbMoedaSeguro.Focus();
                return false;
            }

            if (!string.IsNullOrEmpty(txtMoedaFOB.Text) && (string.IsNullOrEmpty(cbbMoedaFOB.Text) || cbbMoedaFOB.SelectedIndex == -1))
            {
                MessageBox.Show("Valor da moeda inválido!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cbbMoedaFOB.Focus();
                return false;
            }

            return true;
        }

        private void LimparCampos()
        {
            txtPaisProcedencia.Text = "";
            cbbPaisProcedencia.DataSource = null;
            txtURF.Text = "";
            txtPesoLiquido.Text = "";
            txtPesoBruto.Text = "";
            cbbEntrada.DataSource = null;
            txtMoeda.Text = "";
            txtMoedaFOB.Text = "";
            txtValorMoeda.Text = "";
            cbbMoedaFOB.DataSource = null;
            txtValorMoedaFOB.Text = "";
            txtMoedaSeguro.Text = "";
            cbbMoedaSeguro.DataSource = null;
            cbbMoeda.DataSource = null;
            txtFrete.Text = "";
            txtValorCollect.Text = "";
            txtAgente.Text = "";
            txtValorVLME.Text = "";
            txtTerritorio.Text = "";
            txtValorFreteTotal.Text = "";
            txtValorMoedaFOB.Text = "";
            grdTipoCarga.DataSource = null;
            grdVolume.DataSource = null;
            statusCadastro = StatusCadastro.None;
            lbMessagens.Text = "";
        }

        private string getTaxaConversao(string moeda)
        {
            string SQL = "SELECT TAXA_CONVERSAO FROM PROCESSOS_TAXAS_CONVERSAO WHERE PROCESSO = @processo AND MOEDA =@moeda";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                cmd.Parameters.AddWithValue("@moeda", string.IsNullOrEmpty(moeda) ? "" : moeda);

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        while (reader.Read())
                        {
                            if (string.IsNullOrEmpty(reader["TAXA_CONVERSAO"].ToString()))
                            {
                                return "0";
                            }
                            else
                            {
                                return reader["TAXA_CONVERSAO"].ToString();
                            }
                        }
                    }
                }
            }

            return "0";
        }

        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                PopulaVariaveisUsuario();
                if (VerificaProcesso())
                {
                    if ((new Usuario()).AcessaCliente(codImportador))
                    {
                        if (Usuario.AcessaPasta(txtProcesso.Text, this))
                        {
                            HabilitaBotoes(false);
                            setConCargas(txtProcesso.Text);
                            setEmbalagem(txtProcesso.Text);
                            VerificaTabelaConhecimento().TryGetValue("Peso_Liquido", out pesoLiquido);
                            VerificaTabelaConhecimento().TryGetValue("Peso_Bruto", out pesoBruto);
                            VerificaTabelaConhecimento().TryGetValue("Agente", out agente);
                            VerificaTabelaConhecimento().TryGetValue("Frete_Prepaid", out fretePrePaid);
                            VerificaTabelaConhecimento().TryGetValue("Frete_Collect", out freteCollect);
                            VerificaTabelaConhecimento().TryGetValue("Frete_Ter_Nac", out freteTerNac);
                            VerificaTabelaConhecimento().TryGetValue("Moeda_Frete", out moedaFrete);
                            VerificaTabelaConhecimento().TryGetValue("Pais_Procedencia", out codigoPais);
                            VerificaTabelaConhecimento().TryGetValue("Urf_Chegada", out codigoURF);
                            VerificaTabelaConhecimento().TryGetValue("Valor_Seguro", out valorMoeda);
                            VerificaTabelaConhecimento().TryGetValue("Valor_Despesas_Ate_Fob", out valorDespesa);
                            VerificaTabelaConhecimento().TryGetValue("Moeda_Seguro", out codigoMoedaSeguro);
                            VerificaTabelaConhecimento().TryGetValue("Moeda_Despesas_ate_FOB", out codigoMoedaFOB);

                            setURF(codigoURF);
                            setPaisProcedencia(codigoPais);
                            setMoedaSeguro(codigoMoedaSeguro);
                            setMoedaFOB(codigoMoedaFOB);
                            setMoeda(moedaFrete);
                            txtPesoLiquido.Text = pesoLiquido;
                            txtPesoBruto.Text = pesoBruto;
                            txtAgente.Text = agente;
                            txtValorVLME.Text = getValorVMLE(txtProcesso.Text);
                            txtFrete.Text = fretePrePaid;
                            txtValorCollect.Text = freteCollect;
                            txtTerritorio.Text = freteTerNac;
                            txtValorMoeda.Text = valorMoeda;
                            txtValorMoedaFOB.Text = valorDespesa;
                            double somaFrete = Convert.ToDouble(fretePrePaid) + Convert.ToDouble(freteCollect) - Convert.ToDouble(freteTerNac);
                            double freteTotal = Convert.ToDouble(getTaxaConversao(moedaFrete)) * somaFrete;

                            txtValorFreteTotal.Text = freteTotal.ToString();

                            bindingNavigator.Enabled = Usuario.DINaoSolicitada(txtProcesso.Text, this);                                                                                                                                                                                                                                                                                                                                                                                                                                              
                        }
                    }
                    else
                    {
                        MessageBox.Show(@"Este Processo pertence a um Cliente que seu acesso não está permitido!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtProcesso.Clear();
                        return;
                    }
                }
            }
            else
            {
                statusCadastro = StatusCadastro.None;
                HabilitaBotoes(false);
                LimparCampos();
            }
        }

        private void cbbPaisProcedencia_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtPaisProcedencia.Text = cbbPaisProcedencia.SelectedValue.ToString();
        }

        private void cbbEntrada_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtURF.Text = cbbEntrada.SelectedValue.ToString();
        }

        private void txtURF_TextChanged(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtURF.Text))
            {
                cbbEntrada.SelectedValue = txtURF.Text;
            }
            else
            {
                cbbEntrada.SelectedIndex = -1;
            }
        }

        private void txtPaisProcedencia_TextChanged(object sender, EventArgs e)
        {
            if (cbbPaisProcedencia.ValueMember != null && !string.IsNullOrEmpty(txtPaisProcedencia.Text))
            {
                cbbPaisProcedencia.SelectedValue = txtPaisProcedencia.Text;
            }
            else
            {
                cbbPaisProcedencia.SelectedIndex = -1;
            }
        }

        private void InserirConhecimento()
        {
            string SQL = "INSERT INTO CONHECIMENTO_PROCESSO(PESO_LIQUIDO,PESO_BRUTO,AGENTE,FRETE_PREPAID,FRETE_COLLECT,FRETE_TER_NAC,MOEDA_FRETE,PAIS_PROCEDENCIA,URF_CHEGADA,MOEDA_DESPESAS_ATE_FOB,MOEDA_SEGURO,VALOR_SEGURO,Valor_Despesas_ate_FOB,PROCESSO) " +
                         " VALUES(@pesoliquido,@pesobruto,@agente,@fretePrePaid,@freteCollect,@freteTerNac,@moedaFrete,@paisProcedencia,@urfEntrada,@moedaDespesa,@moedaSeguro,@valorSeguro,@valorSeguroFOB,@processo)";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    cmd.Parameters.AddWithValue("@pesoliquido", string.IsNullOrEmpty(txtPesoLiquido.Text) ? 0 : Convert.ToDouble(txtPesoLiquido.Text));
                    cmd.Parameters.AddWithValue("@pesobruto", string.IsNullOrEmpty(txtPesoBruto.Text) ? 0 : Convert.ToDouble(txtPesoBruto.Text));
                    cmd.Parameters.AddWithValue("@agente", txtAgente.Text);
                    cmd.Parameters.AddWithValue("@fretePrePaid", string.IsNullOrEmpty(txtFrete.Text) ? 0 : Convert.ToDouble(txtFrete.Text));
                    cmd.Parameters.AddWithValue("@freteCollect", string.IsNullOrEmpty(txtValorCollect.Text) ? 0 : Convert.ToDouble(txtValorCollect.Text));
                    cmd.Parameters.AddWithValue("@freteTerNac", string.IsNullOrEmpty(txtTerritorio.Text) ? 0 : Convert.ToDouble(txtTerritorio.Text));
                    cmd.Parameters.AddWithValue("@moedaFrete", txtMoeda.Text);
                    cmd.Parameters.AddWithValue("@paisProcedencia", txtPaisProcedencia.Text);
                    cmd.Parameters.AddWithValue("@urfEntrada", txtURF.Text);
                    cmd.Parameters.AddWithValue("@moedaDespesa", txtMoedaFOB.Text);
                    cmd.Parameters.AddWithValue("@moedaSeguro", txtMoedaSeguro.Text);
                    cmd.Parameters.AddWithValue("@valorSeguro", string.IsNullOrEmpty(txtValorMoeda.Text) ? 0 : Convert.ToDouble(txtValorMoeda.Text));
                    cmd.Parameters.AddWithValue("@valorSeguroFOB", string.IsNullOrEmpty(txtValorMoedaFOB.Text) ? 0 : Convert.ToDouble(txtValorMoedaFOB.Text));
                    cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void AtualizarConhecimento()
        {
            string SQL = "UPDATE CONHECIMENTO_PROCESSO SET PESO_LIQUIDO =@pesoliquido,PESO_BRUTO =@pesobruto,AGENTE=@agente,FRETE_PREPAID=@fretePrePaid,FRETE_COLLECT=@freteCollect," +
                         "FRETE_TER_NAC=@freteTerNac,MOEDA_FRETE=@moedaFrete,PAIS_PROCEDENCIA=@pais,URF_CHEGADA=@urf,MOEDA_DESPESAS_ATE_FOB=@moedaDespesa,MOEDA_SEGURO=@moedaSeguro, VALOR_SEGURO=@valorSeguro, Valor_Despesas_ate_FOB=@valorSeguroFOB FROM CONHECIMENTO_PROCESSO WHERE PROCESSO = @processo";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    cmd.Parameters.AddWithValue("@pesoliquido", string.IsNullOrEmpty(txtPesoLiquido.Text) ? 0 : Convert.ToDouble(txtPesoLiquido.Text));
                    cmd.Parameters.AddWithValue("@pesobruto", string.IsNullOrEmpty(txtPesoBruto.Text) ? 0 : Convert.ToDouble(txtPesoBruto.Text));
                    cmd.Parameters.AddWithValue("@agente", txtAgente.Text);
                    cmd.Parameters.AddWithValue("@fretePrePaid", string.IsNullOrEmpty(txtFrete.Text) ? 0 : Convert.ToDouble(txtFrete.Text));
                    cmd.Parameters.AddWithValue("@freteCollect", string.IsNullOrEmpty(txtValorCollect.Text) ? 0 : Convert.ToDouble(txtValorCollect.Text));
                    cmd.Parameters.AddWithValue("@freteTerNac", string.IsNullOrEmpty(txtTerritorio.Text) ? 0 : Convert.ToDouble(txtTerritorio.Text));
                    cmd.Parameters.AddWithValue("@moedaFrete", txtMoeda.Text);
                    cmd.Parameters.AddWithValue("@pais", txtPaisProcedencia.Text);
                    cmd.Parameters.AddWithValue("@urf", txtURF.Text);
                    cmd.Parameters.AddWithValue("@moedaDespesa", txtMoedaFOB.Text);
                    cmd.Parameters.AddWithValue("@moedaSeguro", txtMoedaSeguro.Text);
                    cmd.Parameters.AddWithValue("@valorSeguro", string.IsNullOrEmpty(txtValorMoeda.Text) ? 0 : Convert.ToDouble(txtValorMoeda.Text));
                    cmd.Parameters.AddWithValue("@valorSeguroFOB", string.IsNullOrEmpty(txtValorMoedaFOB.Text) ? 0 : Convert.ToDouble(txtValorMoedaFOB.Text));
                    cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                    cmd.ExecuteNonQuery();
                }
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (ValidaCampos())
            {
                if (VerificaTabelaConhecimento().Count == 0)
                {
                    if (string.IsNullOrEmpty(txtPesoBruto.Text))
                        txtPesoBruto.Text = "0";

                    if (string.IsNullOrEmpty(txtFrete.Text))
                        txtFrete.Text = "0";

                    if (string.IsNullOrEmpty(txtValorCollect.Text))
                        txtValorCollect.Text = "0";

                    if (string.IsNullOrEmpty(txtValorMoeda.Text))
                        txtValorMoeda.Text = "0";

                    if (string.IsNullOrEmpty(txtValorMoedaFOB.Text))
                        txtValorMoedaFOB.Text = "0";

                    InserirConhecimento();
                    statusCadastro = StatusCadastro.None;
                    HabilitaBotoes(false);
                }
                else
                {
                    AtualizarConhecimento();
                    statusCadastro = StatusCadastro.None;
                    HabilitaBotoes(false);
                }
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitaBotoes(true);
            grdTipoCarga_SelectionChanged(null, null);
            grdVolume_SelectionChanged(null, null);
        }

        private void groupBox4_Enter(object sender, EventArgs e)
        {

        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            //  LimparCampos();
            statusCadastro = StatusCadastro.None;
            HabilitaBotoes(false);
            txtProcesso.Enabled = true;
            //  txtProcesso.Text = "";

        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void PreencheComboCarga()
        {
            string SQL = "SELECT CODIGO,DESCRICAO FROM TIPOS_DE_CARGAS";
            DataTable table = null;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                }
            }
            cbbCarga.DataSource = null;
            cbbCarga.DataSource = table;
            cbbCarga.DisplayMember = "DESCRICAO";
            cbbCarga.ValueMember = "CODIGO";
            txtTipoCarga.Text = cbbCarga.SelectedValue.ToString();
        }
        private void button2_Click(object sender, EventArgs e)
        {
            PreencheComboCarga();

            txtCodigo.Text = "";
            txtLacre.Text = "";
            _canAtualizaTipoCarga = false;
            pnlTipoCarga.Left = 273;
            pnlTipoCarga.Top = 69;

            HabilitaBotoes(false);
            btnCancelar.Enabled = false;
            btnEditar.Enabled = false;
            btnSalvar.Enabled = false;
            pnlTipoCarga.Enabled = true;
            pnlTipoCarga.Visible = true;

        }

        private void cbbCarga_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtTipoCarga.Text = cbbCarga.SelectedValue.ToString();
        }

        private void setConCargas(string processo)
        {
            StringBuilder sb = new StringBuilder();
            DataTable table = null;

            sb.Append("SELECT C.Processo, C.Codigo, C.FK_tipo_de_carga, T.Descricao, C.Lacre            ");
            sb.Append("  FROM Concargas C INNER JOIN Tipos_de_Cargas T ON C.FK_tipo_de_carga = T.Codigo ");
            sb.Append("WHERE C.Processo = @processo														");

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(sb.ToString(), conn))
                {
                    cmd.Parameters.AddWithValue("@processo", processo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                }
            }

            grdTipoCarga.DataSource = table;
        }

        private void btnOk_Click(object sender, EventArgs e)
        {            
            if (string.IsNullOrEmpty(txtCodigo.Text))
            {
                MessageBox.Show("O código da carga não pode ficar em branco!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtCodigo.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbCarga.Text) || cbbCarga.SelectedIndex == -1 || cbbCarga.SelectedValue == null)
            {
                MessageBox.Show("Selecione um tipo de carga!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cbbCarga.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtLacre.Text))
            {
                MessageBox.Show("O lacre não pode ficar em branco!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtLacre.Focus();
                return;
            }
            
                try
                {
                    string SQLINSERT = "INSERT INTO CONCARGAS(PROCESSO,CODIGO,LACRE,FK_TIPO_DE_CARGA) VALUES(@processo,@codigo,@lacre,@fkTipo)";

                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    using (SqlCommand cmd = new SqlCommand(SQLINSERT, conn))
                    {                        
                        cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                        cmd.Parameters.AddWithValue("@codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@lacre", txtLacre.Text);
                        cmd.Parameters.AddWithValue("@fkTipo", cbbCarga.SelectedValue.ToString());
                        cmd.ExecuteNonQuery();
                        pnlTipoCarga.Visible = false;
                        HabilitaBotoes(true);
                    }
                }
                catch (SqlException sqlex)
                {
                    MessageBox.Show("Não é possível inserir o mesmo código", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    pnlTipoCarga.Enabled = true;
                    HabilitaBotoes(false);
                }            

            setConCargas(txtProcesso.Text);


        }

        private void button3_Click(object sender, EventArgs e)
        {
            pnlTipoCarga.Visible = false;
            HabilitaBotoes(true);
        }

        private void setVolume()
        {
            string SQL = "SELECT CODIGO,DESCRICAO FROM TAB_TP_EMBALAGEM";

            DataTable table = null;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            table = new DataTable();
                            table.Load(reader);
                        }
                    }
                }
            }

            cbbTipoEmbalagem.DataSource = null;
            cbbTipoEmbalagem.DataSource = table;
            cbbTipoEmbalagem.DisplayMember = "DESCRICAO";
            cbbTipoEmbalagem.ValueMember = "CODIGO";
            txtTipoEmbalagem.Text = cbbTipoEmbalagem.SelectedValue.ToString();
        }

        private void setEmbalagem(string processo)
        {
            string SQL = "SELECT DESCRICAOEMBALAGEM,QUANTIDADE,TIPOEMBALAGEM FROM EMBALAGEM_PROCESSO WHERE PROCESSO = @processo";
            DataTable table = null;

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@processo", processo);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
            }
            grdVolume.DataSource = table;
        }
        private bool VerificaTipoEmbalagem(string tipoEmbalagem)
        {
            string SQL = "SELECT TIPOEMBALAGEM FROM EMBALAGEM_PROCESSO WHERE PROCESSO = @processo AND TIPOEMBALAGEM = @tipoEmbalagem";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            using (SqlCommand cmd = new SqlCommand(SQL, conn))
            {
                cmd.Parameters.AddWithValue("@tipoEmbalagem", tipoEmbalagem);
                cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    if (reader.HasRows)
                        return true;
                }
            }

            return false;
        }
        private void btnOKVolume_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtTipoEmbalagem.Text))
            {
                MessageBox.Show("O código da embalagem não pode ficar em branco!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtTipoEmbalagem.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbTipoEmbalagem.Text) || cbbTipoEmbalagem.SelectedIndex == -1 || cbbTipoEmbalagem.SelectedValue == null)
            {
                MessageBox.Show("O tipo da embalagem não pode ficar em branco!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                cbbTipoEmbalagem.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtQuantidade.Text))
            {
                MessageBox.Show("A quantidade não pode ficar em branco!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtQuantidade.Focus();
                return;
            }            
                
                if (!VerificaTipoEmbalagem(cbbTipoEmbalagem.SelectedValue.ToString()))
                {
                    try
                    {
                        string SQL = "INSERT INTO EMBALAGEM_PROCESSO(PROCESSO,TIPOEMBALAGEM,DESCRICAOEMBALAGEM,QUANTIDADE) VALUES(@processo,@tipo,@descricao,@quantidade)";

                        using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                        using (SqlCommand cmd = new SqlCommand(SQL, conn))
                        {                            
                            cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                            cmd.Parameters.AddWithValue("@tipo", txtTipoEmbalagem.Text);
                            cmd.Parameters.AddWithValue("@descricao", cbbTipoEmbalagem.Text);
                            cmd.Parameters.AddWithValue("@quantidade", txtQuantidade.Text);
                            cmd.ExecuteNonQuery();
                            pnlVolume.Visible = false;
                            HabilitaBotoes(true);
                        }
                    }
                    catch (SqlException sqlex)
                    {
                        MessageBox.Show("Já existe uma descrição com o mesmo nome", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    }
                }
                else
                {
                    MessageBox.Show("Erro na gravação do volume.Não pode haver volumes com o mesmo Tipo de Embalagem", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    pnlVolume.Visible = true;
                }

            setEmbalagem(txtProcesso.Text);

        }

        private void btnNovoVolume_Click(object sender, EventArgs e)
        {
            setVolume();
            pnlVolume.Top = 69;
            pnlVolume.Left = 198;
            txtQuantidade.Text = "";            
            HabilitaBotoes(false);
            btnCancelar.Enabled = false;
            btnEditar.Enabled = false;
            btnSalvar.Enabled = false;
            pnlVolume.Enabled = true;
            pnlVolume.Visible = true;
        }        

        private void btnFecharVolume_Click(object sender, EventArgs e)
        {
            HabilitaBotoes(true);
            pnlVolume.Visible = false;
        }        

        private void btnExcluirCarga_Click(object sender, EventArgs e)
        {
            DialogResult result;

            string SQL = "DELETE FROM CONCARGAS WHERE CODIGO = @codigo AND LACRE = @lacre AND PROCESSO = @processo";

            string codigo = grdTipoCarga.CurrentRow.Cells["codigo"].Value.ToString();
            string lacre  = grdTipoCarga.CurrentRow.Cells["lacre"].Value.ToString();

            result = MessageBox.Show("Tem certeza que deseja excluir o registro?", "MS2000", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (result == DialogResult.Yes)
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    cmd.Parameters.AddWithValue("@codigo", codigo);
                    cmd.Parameters.AddWithValue("@lacre", lacre);
                    cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                    cmd.ExecuteNonQuery();
                }
            }

            setConCargas(txtProcesso.Text);
            grdTipoCarga_SelectionChanged(null, null);
            grdVolume_SelectionChanged(null, null);
        }

        private void btnExcluirVolume_Click(object sender, EventArgs e)
        {
            DialogResult result;

            string SQL = "DELETE FROM EMBALAGEM_PROCESSO WHERE DESCRICAOEMBALAGEM = @descricao AND PROCESSO = @processo";            

            string descricao = grdVolume.CurrentRow.Cells["descricaoembalagem"].Value.ToString();            

            result = MessageBox.Show("Tem certeza que deseja excluir o registro?", "MS2000", MessageBoxButtons.YesNo, MessageBoxIcon.Question);

            if (result == DialogResult.Yes)
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                using (SqlCommand cmd = new SqlCommand(SQL, conn))
                {
                    cmd.Parameters.AddWithValue("@descricao", descricao);
                    cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                    cmd.ExecuteNonQuery();
                }
            }

            setEmbalagem(txtProcesso.Text);
        }

        private void cbbMoedaFOB_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtMoedaFOB.Text = cbbMoedaFOB.SelectedValue.ToString();
        }

        private void txtMoedaFOB_TextChanged(object sender, EventArgs e)
        {
            if (cbbMoedaFOB.ValueMember != null && !string.IsNullOrEmpty(txtMoedaFOB.Text))
            {
                cbbMoedaFOB.SelectedValue = txtMoedaFOB.Text;
            }
            else
            {
                cbbMoedaFOB.SelectedIndex = -1;
            }
        }

        private void txtMoeda_TextChanged(object sender, EventArgs e)
        {
            if (cbbMoeda.ValueMember != null && !string.IsNullOrEmpty(txtMoeda.Text))
            {
                cbbMoeda.SelectedValue = txtMoeda.Text;
            }
            else
            {
                cbbMoeda.SelectedIndex = -1;
            }

        }

        private void cbbMoedaSeguro_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtMoedaSeguro.Text = cbbMoedaSeguro.SelectedValue.ToString();
        }

        private void txtMoedaSeguro_TextChanged(object sender, EventArgs e)
        {
            if (cbbMoedaSeguro.ValueMember != null && !string.IsNullOrEmpty(txtMoedaSeguro.Text))
            {
                cbbMoedaSeguro.SelectedValue = txtMoedaSeguro.Text;
            }
            else
            {
                cbbMoedaSeguro.SelectedIndex = -1;
            }
        }

        private void cbbMoeda_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtMoeda.Text = cbbMoeda.SelectedValue.ToString();
        }

        private void cbbEntrada_SelectionChangeCommitted_1(object sender, EventArgs e)
        {
            txtURF.Text = cbbEntrada.SelectedValue.ToString();
        }        

        private void cbbPaisProcedencia_SelectionChangeCommitted_1(object sender, EventArgs e)
        {
            txtPaisProcedencia.Text = cbbPaisProcedencia.SelectedValue.ToString();
        }

        private void cbbMoedaFOB_SelectionChangeCommitted_1(object sender, EventArgs e)
        {
            txtMoedaFOB.Text = cbbMoedaFOB.SelectedValue.ToString();
        }        

        private void grdTipoCarga_SelectionChanged(object sender, EventArgs e)
        {
            if (grdTipoCarga.RowCount > 0)
            {                
                btnExcluirCarga.Enabled = true;
            }
            else
            {                
                btnExcluirCarga.Enabled = false;
            }
        }

        private void grdVolume_SelectionChanged(object sender, EventArgs e)
        {

            if (grdVolume.RowCount > 0)
            {                
                btnExcluirVolume.Enabled = true;
            }
            else
            {                
                btnExcluirVolume.Enabled = false;
            }
        }        

        private void txtTipoEmbalagem_TextChanged(object sender, EventArgs e)
        {                          
            if (!string.IsNullOrEmpty(txtTipoEmbalagem.Text))
            {
                cbbTipoEmbalagem.SelectedValue = txtTipoEmbalagem.Text;
            }
            else
            {
                cbbTipoEmbalagem.SelectedIndex = -1;
            }
        }

        private void cbbTipoEmbalagem_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtTipoEmbalagem.Text = cbbTipoEmbalagem.SelectedValue.ToString();
        }

        private void cbbTipoEmbalagem_TextChanged(object sender, EventArgs e)
        {
            txtTipoEmbalagem.Text = cbbTipoEmbalagem.SelectedValue.ToString();
        }
    }
}
