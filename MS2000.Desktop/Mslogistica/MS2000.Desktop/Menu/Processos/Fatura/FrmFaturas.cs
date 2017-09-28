using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos.Fatura
{
    public partial class FrmFaturas : MS2000.Desktop.Componentes.MSForm01
    {
        private Processo processo = new Processo();
        private Usuario usuario = new Usuario();
        private Importador importador = new Importador();

        private string codImportador;
        private string codContrato;
        private string NumeroDI;
        private string tipoDeclaracao;
        private string statusAtivo;
        private string statusFechado;
        private bool _canAlteraProcesso = true;
        private string cgcCpf;
        private bool DINaoSolicitada;
        private string coordenadoResp;
        private string supervisorResp;
        private string codExportador;

        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = ((statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo)) && (FrmPrincipal.Cadastrador) && (txtProcesso.MaskCompleted);
            btnExcluir.Enabled = ((statusCadastro == StatusCadastro.None) && (FrmPrincipal.Cadastrador) && (txtProcesso.MaskCompleted));
            btnNovo.Enabled = ((statusCadastro == StatusCadastro.None) && (FrmPrincipal.Cadastrador) && (txtProcesso.MaskCompleted));
            btnEditar.Enabled = ((statusCadastro == StatusCadastro.None) && (FrmPrincipal.Cadastrador) && (txtProcesso.MaskCompleted));
            btnCancelar.Enabled = ((statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo)) && (FrmPrincipal.Cadastrador) && (txtProcesso.MaskCompleted);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None) && (txtProcesso.MaskCompleted);
            txtValorTotal.Enabled = false;
            txtPesoAcertado.Enabled = false;
            txtPesoTotal.Enabled = false;
            groupBox4.Enabled = false;
            btnAcertoPesoTotal.Enabled = (FrmPrincipal.Cadastrador);
            toolStrip1.Enabled = (statusCadastro == StatusCadastro.None) && (txtProcesso.MaskCompleted);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmFaturas()
        {
            InitializeComponent();
        }

        private DataTable getFatura()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT P.Importador,F.Processo, F.Codigo, F.Fatura_Id, F.Incoterm, F.Exportador,F.Frete_Incluso,F.FK_Plataforma,F.DtEmissao, " +
                           "F.Condicao, F.Moeda, F.Valor_Total, F.Peso_Total, F.Peso_Total_Acertado, " +
                           "F.Vinculacao, F.Acrescimos_Reducoes, F.peso_LIbra ,(cast(E.Codigo as varchar(8)) + ' - '+ E.Razao_Social) as 'FullExportador',F.Seguro_Incluso " +
                           "FROM Processos P " +
                           "inner join Faturas AS F on P.Codigo = F.Processo "+
                           "left join Exportadores E on F.Exportador = E.Codigo  " +
                           "WHERE F.Processo= @processo";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void getIncoterm()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM TAB_INCOTERMS_VENDA";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbbIncoterm.DataSource = table;
                cbbIncoterm.DisplayMember = "Descricao";
                cbbIncoterm.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void getVinculacao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Codigo, Descricao FROM Tipo_Vinculacao";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbbVinculacao.DataSource = table;
                cbbVinculacao.DisplayMember = "Descricao";
                cbbVinculacao.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void getEmbarcacao()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select PK_Plataforma, Plataforma from Plataformas where FK_Importador=@Importador";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", codImportador);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbbEmbarcacao.DataSource = table;
                cbbEmbarcacao.DisplayMember = "Plataforma";
                cbbEmbarcacao.ValueMember = "PK_Plataforma";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void getMoeda()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT CODIGO, DESCRICAO FROM TAB_MOEDA";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbbDecricaoDaMoeda.DataSource = table;
                cbbDecricaoDaMoeda.DisplayMember = "Descricao";
                cbbDecricaoDaMoeda.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void FrmFatura_Load(object sender, EventArgs e)
        {
            HabilitarDesabilitaControles(false);
            this.ActiveControl = txtProcesso;
        }
        private void dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        }
        private void btnItensFatura_Click(object sender, EventArgs e)
        {
            var frmItensFatura = new FrmItensFatura();
            frmItensFatura.CodigoFatura = ((DataRowView)bindingSource.Current).Row["Codigo"].ToString();
            frmItensFatura.FaturaId = Convert.ToInt32(((DataRowView)bindingSource.Current).Row["Fatura_Id"].ToString());
            frmItensFatura.Processo = txtProcesso.Text;
            frmItensFatura.CodigoImportador = ((DataRowView)bindingSource.Current).Row["Importador"].ToString();
            frmItensFatura.CodigoExportador = ((DataRowView)bindingSource.Current).Row["Exportador"].ToString();
            FrmPrincipal.ShowModalMdiChildren(frmItensFatura);

        }
        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
        private void btnNovo_Click(object sender, EventArgs e)
        {
            if (DocumentoFatura() < 2)
            {
                MessageBox.Show("Favor realizar o Upload da Fatura e do Packing List!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }
        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtCodigo.Text))
            {
                MessageBox.Show("O Número da Fatura é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigo.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbIncoterm.Text))
            {
                MessageBox.Show("O Incoterm é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbIncoterm.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtDadosExportador.Text))
            {
                MessageBox.Show("O Exportador é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                btnBuscarExportador.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtLocalDaCondicao.Text))
            {
                MessageBox.Show("O Local da Condição é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtLocalDaCondicao.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbDecricaoDaMoeda.Text))
            {
                MessageBox.Show("A Moeda é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbDecricaoDaMoeda.Focus();
                return;
            }
            else if (string.IsNullOrEmpty(txtCodigoMoeda.Text))
            {
                MessageBox.Show("O Código da Moeda é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtCodigoMoeda.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbVinculacao.Text))
            {
                MessageBox.Show("A Vinculação Importador / Exportador é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbVinculacao.Focus();
                return;
            }

            if (!txtDataEmissao.MaskCompleted)
            {
                MessageBox.Show("A Data de Emissão é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDataEmissao.Focus();
                return;
            }

            if ((cgcCpf == "0809110200") && (string.IsNullOrEmpty(cbbEmbarcacao.Text)))
            {
                MessageBox.Show("A Embarcação é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbEmbarcacao.Focus();
                return;
            }

            if ((tipoDeclaracao == "01") || (tipoDeclaracao == "12") || (tipoDeclaracao == "17"))
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    AtualizaDocInstrucao("A", tipoDeclaracao);
                }
                else
                {
                    AtualizaDocInstrucao("I", tipoDeclaracao);
                }
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "UPDATE Faturas " +
                                   "SET Codigo = @Codigo,Exportador = @Exportador,Incoterm = @Incoterm " +
                                   ",Vinculacao = @Vinculacao,Condicao = @Condicao,Valor_Total = @Valor_Total,Peso_Total = @Peso_Total " +
                                   ",Peso_Total_Acertado = @Peso_Total_Acertado,Acrescimos_Reducoes = @Acrescimos_Reducoes " +
                                   ",Moeda = @Moeda,DtEmissao = @DtEmissao,Peso_Libra = @Peso_Libra,FK_Plataforma = @FK_Plataforma " +
                                   ",Frete_Incluso = @Frete_Incluso,Seguro_Incluso = @Seguro_Incluso " +
                                   "WHERE Processo = @Processo ";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                            cmd.Parameters.AddWithValue("@Exportador", codExportador);
                            cmd.Parameters.AddWithValue("@Incoterm", string.IsNullOrEmpty(cbbIncoterm.SelectedValue.ToString()) ? (object)DBNull.Value : cbbIncoterm.SelectedValue);
                            cmd.Parameters.AddWithValue("@Vinculacao", string.IsNullOrEmpty(cbbVinculacao.SelectedValue.ToString()) ? (object)DBNull.Value : cbbVinculacao.SelectedValue);
                            cmd.Parameters.AddWithValue("@Condicao", txtLocalDaCondicao.Text);
                            cmd.Parameters.AddWithValue("@Valor_Total", Convert.ToDouble(txtValorTotal.Text));
                            cmd.Parameters.AddWithValue("@Peso_Total", Convert.ToDouble(txtPesoTotal.Text));
                            cmd.Parameters.AddWithValue("@Peso_Total_Acertado", Convert.ToDouble(txtPesoAcertado.Text));
                            cmd.Parameters.AddWithValue("@Acrescimos_Reducoes", Convert.ToInt16(ckbAcrescimo.Checked));
                            cmd.Parameters.AddWithValue("@Moeda", string.IsNullOrEmpty(cbbDecricaoDaMoeda.SelectedValue.ToString()) ? (object)DBNull.Value : cbbDecricaoDaMoeda.SelectedValue);
                            cmd.Parameters.AddWithValue("@DtEmissao", txtDataEmissao.MaskCompleted ? (object)txtDataEmissao.Text : DBNull.Value);
                            cmd.Parameters.AddWithValue("@Peso_Libra", Convert.ToInt16(ckbPeso.Checked));
                            cmd.Parameters.AddWithValue("@FK_Plataforma", string.IsNullOrEmpty(cbbEmbarcacao.SelectedValue.ToString()) ? (object)DBNull.Value : cbbEmbarcacao.SelectedValue);
                            cmd.Parameters.AddWithValue("@Frete_Incluso", Convert.ToInt16(ckbFreteInternacional.Checked));
                            cmd.Parameters.AddWithValue("@Seguro_Incluso", Convert.ToInt16(ckbSeguroInternacional.Checked));
                            cmd.Parameters.AddWithValue("@Processo", bindingSource.GetRelatedCurrencyManager("Processo").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                        string.Format("Fatura:{0} Incoterm :{1} Exportador:{2} Moeda:{3} Valor total:{4} Peso Total:{5} ",
                       txtCodigo.Text, cbbIncoterm.Text, txtDadosExportador.Text, txtCodigoMoeda.Text, txtValorTotal.Text, txtPesoTotal.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Faturas " +
                                   "(Processo,Codigo,Exportador,Incoterm,Vinculacao,Condicao, " +
                                   "Acrescimos_Reducoes,Moeda " +
                                   ",DtEmissao,Peso_Libra,FK_Plataforma,Frete_Incluso,Seguro_Incluso ) " +
                                   "VALUES " +
                                   "(@Processo,@Codigo,@Exportador,@Incoterm,@Vinculacao,@Condicao,@Valor_Total " +
                                   ",@Peso_Total,@Peso_Total_Acertado,@Acrescimos_Reducoes,@Moeda, " +
                                   "@DtEmissao,@Peso_Libra,@FK_Plataforma,@Frete_Incluso,@Seguro_Incluso)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        cmd.Parameters.AddWithValue("@Codigo", txtCodigo.Text);
                        cmd.Parameters.AddWithValue("@Exportador", txtDadosExportador.Text);
                        cmd.Parameters.AddWithValue("@Incoterm", string.IsNullOrEmpty(cbbIncoterm.SelectedValue.ToString()) ? (object)DBNull.Value : cbbIncoterm.SelectedValue);
                        cmd.Parameters.AddWithValue("@Vinculacao", string.IsNullOrEmpty(cbbVinculacao.SelectedValue.ToString()) ? (object)DBNull.Value : cbbVinculacao.SelectedValue);
                        cmd.Parameters.AddWithValue("@Condicao", txtLocalDaCondicao.Text);
                        cmd.Parameters.AddWithValue("@Acrescimos_Reducoes", Convert.ToInt16(ckbAcrescimo.Checked));
                        cmd.Parameters.AddWithValue("@Moeda", string.IsNullOrEmpty(cbbDecricaoDaMoeda.SelectedValue.ToString()) ? (object)DBNull.Value : cbbDecricaoDaMoeda.SelectedValue);
                        cmd.Parameters.AddWithValue("@DtEmissao", txtDataEmissao.MaskCompleted ? (object)txtDataEmissao.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Peso_Libra", Convert.ToInt16(ckbPeso.Checked));
                        cmd.Parameters.AddWithValue("@FK_Plataforma", string.IsNullOrEmpty(cbbEmbarcacao.SelectedValue.ToString()) ? (object)DBNull.Value : cbbEmbarcacao.SelectedValue);
                        cmd.Parameters.AddWithValue("@Frete_Incluso", Convert.ToInt16(ckbFreteInternacional.Checked));
                        cmd.Parameters.AddWithValue("@Seguro_Incluso", Convert.ToInt16(ckbSeguroInternacional.Checked));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                    string.Format("Fatura:{0} Incoterm :{1} Exportador:{2} Moeda:{3} Valor total:{4} Peso Total:{5} ",
                    txtCodigo.Text, cbbIncoterm.Text, txtDadosExportador.Text, txtCodigoMoeda.Text, txtValorTotal.Text, txtPesoTotal.Text));
                }

                AtualizaValorTotal();

                if (VerificaConhecimento() == false)
                {
                    InserirConhecimento();
                }


                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);
                //var ID_busca = bindingSource.GetRelatedCurrencyManager("ID").Current.ToString();
                //bindingSource.DataSource = getRatRepetro();
                //bindingSource.Position = bindingSource.Find("ID", ID_busca);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void InserirConhecimento()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO Conhecimento_Processo ( Processo ) " +
                               "SELECT @Processo ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    cmd.ExecuteNonQuery();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private bool VerificaConhecimento()
        {
            var GoOn = false;
            Conhecimento conhecimento = new Conhecimento();

            conhecimento.BuscarPorConhecimento(txtProcesso.Text);

            if (!string.IsNullOrEmpty(conhecimento.Processo))
            {
                GoOn = true;
            }

            return GoOn;
            //var query = "SELECT Processo " +
            //            "FROM Conhecimento_Processo " +
            //            "WHERE Processo =@Processo ";


            //try
            //{
            //    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            //    using (SqlCommand cmd = new SqlCommand(query, conn))
            //    {
            //        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
            //        using (SqlDataReader reader = cmd.ExecuteReader())
            //        {
            //            if (reader.HasRows)
            //            {
            //                while (reader.Read())
            //                {
            //                    GoOn = true;
            //                }
            //            }
            //            return GoOn;
            //        }
            //    }
            //}
            //catch (Exception ex)
            //{
            //    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            //    return false;
            //}
        }
        private void btnEditar_Click(object sender, EventArgs e)
        {
            if ((string.IsNullOrEmpty(NumeroDI)) || (FrmPrincipal.UsuarioLogado == "ODILMA"))
            {
                statusCadastro = StatusCadastro.Editar;
                HabilitarDesabilitaControles(true);
            }
            else
            {
                MessageBox.Show(FrmPrincipal.UsuarioNomeCompleto + " , a di está registrada não será possível alterar a fatura.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
        }
        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Confirma exclusão da Fatura e de todos seus Itens e Tributações?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    AtualizaDocInstrucao("E", "");

                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Faturas where Fatura_Id = @Fatura_Id ";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Fatura_Id", ((DataRowView)this.bindingSource.Current).Row["Fatura_Id"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["Fatura_Id"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Fatura Excluída: {0}", txtCodigo.Text));
                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }
        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("NR_DECLARACAO_IMP", out NumeroDI);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Tipo_Declaracao", out tipoDeclaracao);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Contrato", out codContrato);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Coordenador_Resp", out coordenadoResp);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Supervisor_Resp", out supervisorResp);

        }
        private bool VerificaProcesso()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Fechado", out statusFechado);

            if (processo.BuscarPorCodigoStatus(txtProcesso.Text).Count == 0)
            {
                MessageBox.Show("Processo não encontrado.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            importador = importador.BuscarPorCodigo(codImportador);
            cgcCpf = importador.CGC_CPF;

            if (importador.Ativo == 0 && !FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show(
                    @"Este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.",
                    "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                _canAlteraProcesso = false;
                return false;
            }
            if (importador.Ativo == 0 && FrmPrincipal.editaClienteInativo)
            {
                PopulaVariaveisUsuario();
                return true;
            }
            if (statusFechado == "1" && !FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show(
                    @"Este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.",
                    "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                _canAlteraProcesso = false;
                return false;
            }
            if (statusFechado == "1" && FrmPrincipal.editaProcessoFechado)
            {
                PopulaVariaveisUsuario();
                _canAlteraProcesso = true;
                return true;
            }

            if (statusFechado == "0")
            {
                PopulaVariaveisUsuario();
                return true;
            }

            return false;
        }
        private void LimparCampos()
        {
            txtCodigo.DataBindings.Clear();
            cbbIncoterm.DataBindings.Clear();
            ckbPeso.DataBindings.Clear();
            txtDadosExportador.DataBindings.Clear();
            txtLocalDaCondicao.DataBindings.Clear();
            txtCodigoMoeda.DataBindings.Clear();
            cbbDecricaoDaMoeda.DataBindings.Clear();
            txtValorTotal.DataBindings.Clear();
            txtPesoTotal.DataBindings.Clear();
            txtPesoAcertado.DataBindings.Clear();
            cbbVinculacao.DataBindings.Clear();
            txtDataEmissao.DataBindings.Clear();
            cbbEmbarcacao.DataBindings.Clear();
            ckbAcrescimo.DataBindings.Clear();
            ckbFreteInternacional.DataBindings.Clear();
            ckbSeguroInternacional.DataBindings.Clear();
        }
        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                PopulaVariaveisUsuario();
                if (string.IsNullOrEmpty(coordenadoResp) || string.IsNullOrEmpty(supervisorResp))
                {
                    MessageBox.Show("A fatura não poderá ser concluída , enquanto o processo não for distribuído. " + Environment.NewLine +
                                    "Por favor, informe o coordenador e o supervisor da pasta na tela de Distribuição Operacional ", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                    txtProcesso.Focus();
                    return;
                }

                if (VerificaProcesso())
                {
                    if (usuario.AcessaCliente(codImportador))
                        if (Usuario.AcessaPasta(txtProcesso.Text, this))
                        {
                            DINaoSolicitada = Usuario.DINaoSolicitada(txtProcesso.Text, this);

                            PreencheLabelContrato();

                            HabilitarDesabilitaControles(false);

                            btnAcertoPesoTotal.Enabled = DINaoSolicitada;

                            getIncoterm();
                            getMoeda();
                            getVinculacao();
                            getEmbarcacao();
                            dataGridView.AutoGenerateColumns = false;
                            bindingSource.DataSource = getFatura();

                            dataGridView.DataSource = bindingSource;
                            bindingNavigator.BindingSource = bindingSource;

                            if (bindingSource.Count > 0)
                            {
                                LimparCampos();
                                txtCodigo.DataBindings.Add(new Binding("Text", bindingSource, "Codigo", true));
                                cbbIncoterm.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Incoterm"));
                                ckbPeso.DataBindings.Add(new Binding("Checked", bindingSource, "peso_LIbra", true));
                                txtDadosExportador.DataBindings.Add(new Binding("Text", bindingSource, "FullExportador", true));
                                txtLocalDaCondicao.DataBindings.Add(new Binding("Text", bindingSource, "Condicao", true));
                                txtCodigoMoeda.DataBindings.Add(new Binding("Text", bindingSource, "Moeda", true));
                                cbbDecricaoDaMoeda.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Moeda"));
                                txtValorTotal.DataBindings.Add(new Binding("Text", bindingSource, "Valor_Total", true));
                                txtPesoTotal.DataBindings.Add(new Binding("Text", bindingSource, "Peso_Total", true));
                                txtPesoAcertado.DataBindings.Add(new Binding("Text", bindingSource, "Peso_Total_Acertado", true));
                                cbbVinculacao.DataBindings.Add(new Binding("SelectedValue", bindingSource, "Vinculacao"));
                                txtDataEmissao.DataBindings.Add(new Binding("Text", bindingSource, "DtEmissao", true, DataSourceUpdateMode.OnValidation, "  /  /"));
                                cbbEmbarcacao.DataBindings.Add(new Binding("SelectedValue", bindingSource, "FK_Plataforma"));
                                ckbAcrescimo.DataBindings.Add(new Binding("Checked", bindingSource, "Acrescimos_Reducoes", true));
                                ckbFreteInternacional.DataBindings.Add(new Binding("Checked", bindingSource, "Frete_Incluso", true));
                                ckbSeguroInternacional.DataBindings.Add(new Binding("Checked", bindingSource, "Seguro_Incluso", true));
                                bindingNavigator.Enabled = Usuario.DINaoSolicitada(txtProcesso.Text, this);
                            }
                            else
                            {
                                if (bindingSource.Current != null)
                                {
                                    bindingSource.RemoveCurrent();
                                }
                            }
                        }
                }
            }
            else
            {
                HabilitarDesabilitaControles(false);

                if (bindingSource.Current != null)
                {
                    bindingSource.RemoveCurrent();
                }
            }
        }
        private void AtualizaDocInstrucao(string tipo, string tipodeclaracao)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "DECLARE @TIPO CHAR(1), @CODINSTRUCAO CHAR(2), @TIPOINSTRUCAO VARCHAR(30), @TIPODECLARACAO CHAR(2), @COD_DECLARACAO CHAR(2) " +
                               "SELECT @TIPO =@vtipo, @TIPODECLARACAO =@vTipoDeclaracao " +
                               "IF (@TIPODECLARACAO = '01') " +
                               "	SELECT @CODINSTRUCAO = CODIGO,  @TIPOINSTRUCAO = DESCRICAO FROM TAB_DOC_INSTRUCAO_DESPACHO WHERE CODIGO = '01' " +
                               "ELSE IF ((@TIPODECLARACAO = '05') OR (@TIPODECLARACAO = '12')) " +
                               "	SELECT @CODINSTRUCAO = CODIGO,  @TIPOINSTRUCAO = DESCRICAO FROM TAB_DOC_INSTRUCAO_DESPACHO WHERE CODIGO = '17'	" +
                               "if (@TIPO = 'I') " +
                               "INSERT INTO Processos_Docs_Instrucao(Processo , NR_DCTO_INSTRUCAO, CD_TIPO_DCTO_INSTR, NM_DCTO_INSTRUCAO) " +
                               "VALUES(@Processo, @Fatura, @CODINSTRUCAO, @TIPOINSTRUCAO) " +
                               "else if (@TIPO = 'A') " +
                               "UPDATE Processos_Docs_Instrucao SET CD_TIPO_DCTO_INSTR = @CODINSTRUCAO, NM_DCTO_INSTRUCAO = @TIPOINSTRUCAO " +
                               "WHERE Processo =@Processo AND NR_DCTO_INSTRUCAO=@Fatura " +
                               "else if (@TIPO = 'E') " +
                               "DELETE FROM Processos_Docs_Instrucao WHERE Processo =@Processo AND NR_DCTO_INSTRUCAO =@Fatura ";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@vtipo", tipo);
                    cmd.Parameters.AddWithValue("@vTipoDeclaracao", tipodeclaracao);
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    cmd.Parameters.AddWithValue("@Fatura", txtCodigo.Text);
                    cmd.ExecuteNonQuery();
                }
                //   LogSistemas.AddLogSistema(txtNome.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Avisos do Usuário:{0} reativados.", ((DataRowView)this.bindingSource.Current).Row["Nome_Completo"].ToString()));
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private int DocumentoFatura()
        {
            var query = "select count(*) as 'total' from Documentos " +
                        "where Tipo_Doc = 'PROC' and Sub_Tipo_Doc in ('1','7') and Processo =@Processo ";

            var GoOn = 0;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = Convert.ToInt16(reader["total"].ToString());
                            }
                        }
                        return GoOn;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return 0;
            }
        }
        private void txtCodigo_KeyPress(object sender, KeyPressEventArgs e)
        {
            if (e.KeyChar == (char)Keys.Space)
            {
                e.Handled = true;
            }
        }
        private void AtualizaValorTotal()
        {
            double ValorTotal = (Faturas.ValorTotal(Convert.ToInt32(((DataRowView)this.bindingSource.Current).Row["Fatura_Id"].ToString())) +
                                 Faturas.ValorTotalAcrescimo(Convert.ToInt32(((DataRowView)this.bindingSource.Current).Row["Fatura_Id"].ToString()), ckbFreteInternacional.Checked, ckbSeguroInternacional.Checked, ckbAcrescimo.Checked) -
                                 Faturas.ValorTotalDeducao(Convert.ToInt32(((DataRowView)this.bindingSource.Current).Row["Fatura_Id"].ToString())));


            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "Update Faturas set Valor_Total = @Valortotal where Fatura_Id = @Fatura_Id ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Valortotal", ValorTotal);
                cmd.Parameters.AddWithValue("@Fatura_Id", ((DataRowView)this.bindingSource.Current).Row["Fatura_Id"].ToString());
                cmd.ExecuteNonQuery();
            }
        }
        private void AtualizaPesoTotalAcertado()
        {
            double PesoTotal = (Faturas.SomaPesoTotalAcertado(txtProcesso.Text));

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "UPDATE Conhecimento_Processo SET Peso_Liquido = @psTotAcertado " +
                           "WHERE Processo = @Processo ";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@psTotAcertado", PesoTotal);
                cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                cmd.ExecuteNonQuery();
            }
        }
        private void PreencheLabelContrato()
        {
            var query = "SELECT Descricao, INs, Repetro FROM Contratos WHERE Importador = @Importador AND Contrato = @Contrato ";

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Importador", codImportador);
                    cmd.Parameters.AddWithValue("@Contrato", codContrato);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();

                            lblDescricao.Text = reader["Descricao"].ToString();
                            lblIN.Text = reader["INs"].ToString();

                            if (reader["Repetro"].ToString() == "1")
                            {
                                lblRepetro.Text = "Sim";
                                lblRepetro.ForeColor = Color.Blue;
                            }
                            else
                            {
                                lblRepetro.Text = "Não";
                                lblRepetro.ForeColor = Color.Red;
                            }
                        }
                        return;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return;
            }
        }

        private void btnBuscarExportador_Click(object sender, EventArgs e)
        {
            FrmFaturaExportador frmFaturaExportador = new FrmFaturaExportador();
            if (FrmPrincipal.ShowModalMdiChildren(frmFaturaExportador) == DialogResult.OK)
            {
                codExportador = frmFaturaExportador.codigoExportador;
                txtDadosExportador.Text = frmFaturaExportador.dadosExportador;
            }
        }
    }
}
