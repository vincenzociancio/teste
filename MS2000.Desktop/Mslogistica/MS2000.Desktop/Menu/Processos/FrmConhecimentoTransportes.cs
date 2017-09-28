using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;
using MS2000.Desktop.Classes;
using System.Collections.Generic;
using System.Linq;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmConhecimentoTransportes : Componentes.MSForm01
    {
        //string statusAtivo;
        private string statusFechado;
        string nomeEmpresa;
        private string codImportador;
        private string FK_Processo;
        private string tipodoccarga;
        private string tipoprocesso;
        private string tipodeclaracao;
        private StatusCadastro statusCadastro;
        Processo processo = new Processo();
        Usuario usuario = new Usuario();
        Importador importador = new Importador();
        List<TipoDocCarga> _tipos_docs_carga = null;        

        public FrmConhecimentoTransportes()
        {
            InitializeComponent();
        }

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None && txtProcesso.MaskCompleted);
            txtProcesso.Enabled = statusCadastro == StatusCadastro.None;
            groupBox2.Enabled = false;
            if (statusCadastro != StatusCadastro.None)
            {
                HabilitaCampos();
            }

        }

        public void HabilitaBotoes(bool bValue)
        {
            foreach (Control controle in pnlDados.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }
        private void FrmConhecimentoTransportes_Load(object sender, EventArgs e)
        {
            GetViaTransportes();
            GetTransportadores();
            GetUtilizacao();
            GetBandeira();
            GetLocalEmbarque();
            GetTerminal();
            getModalidadesDeDespacho();
            HabilitaBotoes(false);

            this.ActiveControl = txtProcesso;
        }

        private bool VerificaProcesso()
        {
            if (processo.BuscarPorCodigoStatus(txtProcesso.Text).Count == 0)
            {
                MessageBox.Show("Processo não encontrado.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            importador = importador.BuscarPorCodigo(codImportador);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Fechado", out statusFechado);

            if (importador.Ativo == 0 && !FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show(@"Este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            if (importador.Ativo == 0 && FrmPrincipal.editaClienteInativo)
            {
                pnlAvisos.Visible = true;
                lbMessagens.Text += "Este cliente está inativo, porém você tem permissão para editá-lo." + Environment.NewLine;
                return true;
            }
            if (statusFechado == "1" && !FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show(@"Este Processo está fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return false;
            }
            if (statusFechado == "1" && FrmPrincipal.editaProcessoFechado)
            {
                pnlAvisos.Visible = true;
                lbMessagens.Text += "Este processo esta fechado, porém você tem permissão para editá-lo." + Environment.NewLine;
                return true;
            }
            if (statusFechado == "0")
            {
                return true;
            }
            return false;
        }

        private void LimpaCampos()
        {
            txtIDTransporte.TextChanged -= txtIDTransporte_TextChanged;
            txtIDTransportador.TextChanged -= txtIDTransportador_TextChanged;
            txtIDTipoDocCarga.TextChanged -= txtIDTipoDocCarga_TextChanged;
            txtIDUtilizacao.TextChanged -= txtIDUtilizacao_TextChanged;
            txtIDBandeira.TextChanged -= txtIDBandeira_TextChanged;

            txtAutorizacaoMarinha.Clear();
            txtData.Clear();
            txtDataETA.Clear();
            txtEmbarcacao.Clear();
            txtIDBandeira.Clear();
            txtIDTipoDocCarga.Clear();

            txtIDTransportador.Clear();
            txtIDTransporte.Clear();
            txtIDUtilizacao.Clear();
            txtIdentHouse.Clear();
            txtIdentMaster.Clear();
            txtLacre.Clear();
            txtPlaca.Clear();
            txtCNPJ.Clear();
            txtCliente.Clear();
            lbMessagens.Text = "";

            mcbBandeira.SelectedIndex = -1;
            mcbLocalEmbarque.SelectedIndex = -1;
            mcbLocalEmbarque.Text = "";
            mcbTerminal.SelectedIndex = -1;
            mcbTipoDocCarga.SelectedIndex = -1;
            mcbTransportador.SelectedIndex = -1;
            mcbTransporte.SelectedIndex = -1;
            mcbUtilizacao.SelectedIndex = -1;
            mccbModalidadeDespacho.SelectedIndex = 0;
            statusCadastro = StatusCadastro.None;
        }
        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Nome_seguradora_GAR", out nomeEmpresa);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("ID", out FK_Processo);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Tipo", out tipoprocesso);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Tipo_Declaracao", out tipodeclaracao);
        }

        //private 
        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            if (txtProcesso.MaskCompleted)
            {
                PopulaVariaveisUsuario();
                if (VerificaProcesso())
                {
                    if (usuario.AcessaCliente(codImportador))
                    {
                        PopulaCampos();
                        if (Usuario.AcessaPasta(txtProcesso.Text, this,
                                string.IsNullOrEmpty(tipodoccarga) ? "" : tipodoccarga) &&
                            Usuario.DINaoSolicitada(txtProcesso.Text, this))
                        {
                            HabilitaBotoes(false);
                            txtIDTransporte.Focus();
                            lblNomeEmpresa.Text = nomeEmpresa;
                            pnlAvisos.Visible = true;

                            txtIDTransporte.TextChanged += txtIDTransporte_TextChanged;
                            txtIDTransportador.TextChanged += txtIDTransportador_TextChanged;
                            txtIDTipoDocCarga.TextChanged += txtIDTipoDocCarga_TextChanged;
                            txtIDUtilizacao.TextChanged += txtIDUtilizacao_TextChanged;
                            txtIDBandeira.TextChanged += txtIDBandeira_TextChanged;
                        }
                    }
                    else
                    {
                        MessageBox.Show(@"Este Processo pertence a um Cliente que seu acesso não está permitido!",
                            "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtProcesso.Clear();
                        return;
                    }
                }
            }
            else
            {
                statusCadastro = StatusCadastro.None;
                HabilitaBotoes(false);
                LimpaCampos();
            }
        }

        private bool VerificaConhecimento()
        {
            string query = "select * from Conhecimento_Processo where Processo = @Processo";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();
                        if (reader.HasRows)
                            return true;

                        return false;
                    }
                }
            }
        }

        private void PopulaCampos()
        {

            string query = "select Local, Via, Multimodal, Placa, Lacre, Embarcacao, Transportador, Tipodoccarga, Numerodoccarga, Numeromaster, " +
                            "CP.Data,Utilizacao, DT_ETA, Bandeira, Autorizacao_Marinha, FK_Terminal, I.CNPJ_CPF_COMPLETO,I.Razao_Social, Modalidade_Despacho " +
                            "from Conhecimento_Processo CP " +
                            "left join Tipos_Origem as T on T.Descricao = Local " +
                            "inner join Processos P on P.Codigo = CP.Processo " +
                            "inner join Importadores I on I.Codigo = P.Importador " +
                            "where Processo = @Processo";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            txtCNPJ.Text = reader["CNPJ_CPF_COMPLETO"].ToString();
                            txtCliente.Text = reader["Razao_Social"].ToString();
                            mcbTransporte.SelectedValue = string.IsNullOrEmpty(reader["Via"].ToString()) ? "-1" : reader["Via"].ToString();
                            txtIDTransporte.Text = reader["Via"].ToString();
                            chkTransporte.Checked = Convert.ToBoolean(Convert.ToInt16(reader["Multimodal"].ToString()));
                            txtPlaca.Text = reader["Placa"].ToString();
                            txtLacre.Text = reader["Lacre"].ToString();
                            txtEmbarcacao.Text = reader["Embarcacao"].ToString();
                            txtIDTransportador.Text = reader["Transportador"].ToString();
                            mcbTransportador.SelectedValue = string.IsNullOrEmpty(txtIDTransportador.Text) ? "-1" : txtIDTransportador.Text;
                            txtIDTipoDocCarga.Text = reader["Tipodoccarga"].ToString();
                            tipodoccarga = reader["Tipodoccarga"].ToString();
                            txtIdentHouse.Text = reader["Numerodoccarga"].ToString();
                            txtIdentMaster.Text = reader["Numeromaster"].ToString();
                            txtData.Text = string.IsNullOrEmpty(reader["Data"].ToString().Replace("/", "").Trim()) ? "" : Convert.ToDateTime(reader["Data"].ToString()).ToShortDateString();
                            txtDataETA.Text = string.IsNullOrEmpty(reader["DT_ETA"].ToString().Replace("/", "").Trim()) ? "" : Convert.ToDateTime(reader["DT_ETA"].ToString()).ToShortDateString();
                            txtIDBandeira.Text = reader["Bandeira"].ToString();
                            mcbBandeira.SelectedValue = string.IsNullOrEmpty(txtIDBandeira.Text) ? "-1" : txtIDBandeira.Text;
                            txtIDUtilizacao.Text = reader["Utilizacao"].ToString();
                            mcbUtilizacao.SelectedValue = string.IsNullOrEmpty(txtIDUtilizacao.Text) ? "-1" : txtIDUtilizacao.Text;
                            txtAutorizacaoMarinha.Text = reader["Autorizacao_Marinha"].ToString();
                            mcbTerminal.SelectedValue = string.IsNullOrEmpty(reader["FK_Terminal"].ToString()) ? "-1" : reader["FK_Terminal"].ToString();
                            mcbLocalEmbarque.SelectedValue = string.IsNullOrEmpty(reader["Local"].ToString()) ? "-1" : reader["Local"].ToString();
                            mccbModalidadeDespacho.SelectedValue = string.IsNullOrEmpty(reader["Modalidade_Despacho"].ToString()) ? "1" : reader["Modalidade_Despacho"].ToString();
                        }
                    }
                }
            }

            _tipos_docs_carga = GetDocumentoCarga();
            if (!string.IsNullOrEmpty(txtIDTransporte.Text))
            {
                mcbTransporte_SelectionChangeCommitted(null, null);   
            }       
            mcbTipoDocCarga.SelectedValue = string.IsNullOrEmpty(txtIDTipoDocCarga.Text) ? "-1" : txtIDTipoDocCarga.Text;
        }
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.None;
            HabilitaBotoes(false);
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitaBotoes(true);
        }

        private bool ValidaIdentificacao()
        {
            if (string.IsNullOrEmpty(txtIdentHouse.Text))
                return false;

            string query = "select processo,Numerodoccarga,Numeromaster,p.Status from Conhecimento_Processo as c  " +
                            "inner join Processos as p  on c.Processo = p.Codigo " +
                            "where(Numerodoccarga = @IdentHouse) " +
                            "and Processo<> @processo and tipodoccarga = @tipodoccarga " +
                            "and YEAR(P.Data) = YEAR(GETDATE()) " +
                            "and p.Status < '4' ";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@processo", txtProcesso.Text);
                    cmd.Parameters.AddWithValue("@IdentHouse", txtIdentHouse.Text);
                    cmd.Parameters.AddWithValue("@tipodoccarga", txtIDTipoDocCarga.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        reader.Read();
                        if (reader.HasRows)
                            return true;

                        return false;
                    }
                }
            }
        }

        private void GetViaTransportes()
        {
            string query = "SELECT Codigo, Descricao FROM TAB_VIA_TRANSPORTE ORDER BY Descricao";
            DataTable table;
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbTransporte.DataSource = null;
                mcbTransporte.DataSource = table;
                mcbTransporte.DisplayMember = "Descricao";
                mcbTransporte.ValueMember = "Codigo";
                mcbTransporte.SelectedIndex = -1;
            }
        }

        private void GetTransportadores()
        {
            string query = "SELECT Codigo, Razao_Social " +
                        "FROM Transportadores " +
                        "WHERE Razao_Social <> '' " +
                        "ORDER BY Razao_Social";

            DataTable table;
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbTransportador.DataSource = null;
                mcbTransportador.DataSource = table;
                mcbTransportador.DisplayMember = "Razao_Social";
                mcbTransportador.ValueMember = "Codigo";
                mcbTransportador.SelectedIndex = -1;
            }
        }

        private List<TipoDocCarga> GetDocumentoCarga()
        {
            string query = "Select via, codigo, descricao, descricao_ingles from Tipo_Doc_Carga order by descricao";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    List<TipoDocCarga> tipos = new List<TipoDocCarga>();
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            tipos.Add(new TipoDocCarga
                            {
                                Via = reader["via"].ToString(),
                                Codigo = reader["codigo"].ToString(),
                                Descricao = reader["descricao"].ToString(),
                                Descricao_Ingles = reader["descricao_ingles"].ToString()
                            });
                        }
                    }
                    return tipos;
                }
            }
        }

        private void GetUtilizacao()
        {
            string query = "select codigo, descricao from Tipo_Utilizacao order by DESCRICAO";

            DataTable table;
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbUtilizacao.DataSource = null;
                mcbUtilizacao.DataSource = table;
                mcbUtilizacao.DisplayMember = "descricao";
                mcbUtilizacao.ValueMember = "Codigo";
                mcbUtilizacao.SelectedIndex = -1;
            }
        }

        private void GetBandeira()
        {
            string query = "Select codigo, descricao from TAB_PAIS order by DESCRICAO";

            DataTable table;
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbBandeira.DataSource = null;
                mcbBandeira.DataSource = table;
                mcbBandeira.DisplayMember = "descricao";
                mcbBandeira.ValueMember = "Codigo";
                mcbBandeira.SelectedIndex = -1;
            }
        }
        private void GetLocalEmbarque()
        {
            string query = "select ID, Descricao from Tipos_Origem order by Descricao";

            DataTable table;
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbLocalEmbarque.DataSource = null;
                mcbLocalEmbarque.DataSource = table;
                mcbLocalEmbarque.DisplayMember = "Descricao";
                mcbLocalEmbarque.ValueMember = "Descricao";
                mcbLocalEmbarque.SelectedIndex = -1;
            }
        }
        private void GetTerminal()
        {
            string query = "select PK_TERMINAL , Nome_Terminal from Controle_Navios_Terminal where Excluido <> 1 order by NOME_TERMINAL";

            DataTable table;
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                mcbTerminal.DataSource = null;
                mcbTerminal.DataSource = table;
                mcbTerminal.DisplayMember = "Nome_Terminal";
                mcbTerminal.ValueMember = "PK_TERMINAL";
                mcbTerminal.SelectedIndex = -1;
            }
        }

        private void getModalidadesDeDespacho()
        {
            Dictionary<string, string> itensModalidadesDeDespacho = new Dictionary<string, string>();            

            itensModalidadesDeDespacho.Add("1", "Normal");
            itensModalidadesDeDespacho.Add("2", "Antecipado");
            itensModalidadesDeDespacho.Add("3", "Simplificado");
            itensModalidadesDeDespacho.Add("4", "Antecipado e Simplificado");
            itensModalidadesDeDespacho.Add("5", "Entrega Fracionada");
            itensModalidadesDeDespacho.Add("6", "Antecipado c/ Entrega Fracionada");

            mccbModalidadeDespacho.DataSource = null;
            mccbModalidadeDespacho.DataSource = new BindingSource(itensModalidadesDeDespacho, null);            
            mccbModalidadeDespacho.DisplayMember = "Value";
            mccbModalidadeDespacho.ValueMember = "Key";
            mccbModalidadeDespacho.SelectedIndex = -1;            
        }

        public void HabilitaCampos()
        {
            if (txtIDTransporte.Text == "1" || txtIDTransporte.Text == "2" || txtIDTransporte.Text == "3"
                || txtIDTransporte.Text == "4" || txtIDTransporte.Text == "6")
            {
                mcbTransportador.Enabled = true;
                txtEmbarcacao.Enabled = true;
                mcbTipoDocCarga.Enabled = true;
                txtIDTipoDocCarga.Enabled = true;
                mcbUtilizacao.Enabled = true;
                mcbLocalEmbarque.Enabled = true;
                txtData.Enabled = true;
                txtPlaca.Enabled = false;
                txtPlaca.Clear();
                txtAutorizacaoMarinha.Enabled = false;
                txtAutorizacaoMarinha.Clear();
                txtLacre.Enabled = false;
                txtLacre.Clear();

                if (txtIDTransporte.Text == "4" || txtIDTransporte.Text == "6")
                    txtDataETA.Enabled = true;
            }
            if (txtIDTransporte.Text == "5")
            {
                MessageBox.Show(
                    "Para via = Postal informe o código de barras no campo 'Identificação', Informe também o local e data de postagem..",
                    "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                mcbTransportador.Enabled = false;
                mcbTransportador.SelectedIndex = -1;
                txtEmbarcacao.Enabled = false;
                txtEmbarcacao.Clear();
                mcbTipoDocCarga.Enabled = false;
                txtIDTipoDocCarga.Enabled = false;
                txtIDTipoDocCarga.Clear();
                mcbTipoDocCarga.SelectedIndex = -1;
                txtIdentMaster.Enabled = false;
                txtIdentMaster.Clear();
                mcbUtilizacao.Enabled = false;
                mcbUtilizacao.SelectedIndex = -1;
                txtIDUtilizacao.Enabled = false;
                txtIDUtilizacao.Clear();
                txtPlaca.Enabled = false;
                txtPlaca.Clear();
                txtAutorizacaoMarinha.Enabled = false;
                txtAutorizacaoMarinha.Clear();
                txtLacre.Enabled = false;
                txtLacre.Clear();

                txtIdentHouse.Enabled = true;
                mcbLocalEmbarque.Enabled = true;
                txtData.Enabled = true;
            }
            if (txtIDTransporte.Text == "7")
            {
                mcbTransportador.Enabled = true;
                txtEmbarcacao.Enabled = false;
                txtEmbarcacao.Clear();
                mcbTipoDocCarga.Enabled = true;
                //mcbTipoDocCarga.SelectedIndex = -1;
                txtIDTipoDocCarga.Enabled = true;
                //txtIDTipoDocCarga.Clear();
                txtIdentMaster.Enabled = false;
                txtIdentMaster.Clear();
                mcbUtilizacao.Enabled = true;
                txtPlaca.Enabled = true;
                txtAutorizacaoMarinha.Enabled = true;
                txtLacre.Enabled = true;
                txtIdentHouse.Enabled = true;
                mcbLocalEmbarque.Enabled = true;
                txtData.Enabled = true;
            }
            if (txtIDTransporte.Text == "8" || txtIDTransporte.Text == "9" || txtIDTransporte.Text == "A")
            {
                mcbTransportador.Enabled = false;
                mcbTransportador.SelectedIndex = -1;
                txtIDTransportador.Enabled = false;
                txtIDTransportador.Clear();
                txtEmbarcacao.Enabled = false;
                txtEmbarcacao.Clear();
                mcbTipoDocCarga.Enabled = false;
                mcbTipoDocCarga.SelectedIndex = -1;
                txtIDTipoDocCarga.Enabled = false;
                txtIDTipoDocCarga.Clear();
                txtIdentMaster.Enabled = false;
                txtIdentMaster.Clear();
                mcbUtilizacao.Enabled = false;
                mcbUtilizacao.SelectedIndex = -1;
                txtIDUtilizacao.Enabled = false;
                txtIDUtilizacao.Clear();
                txtPlaca.Enabled = false;
                txtPlaca.Clear();
                txtAutorizacaoMarinha.Enabled = false;
                txtAutorizacaoMarinha.Clear();
                txtLacre.Enabled = false;
                txtLacre.Clear();
                txtIdentHouse.Enabled = false;
                txtIdentHouse.Clear();
                mcbLocalEmbarque.Enabled = true;
                txtData.Enabled = true;
            }
            if (txtIDTransporte.Text == "10")
            {
                MessageBox.Show(
                    @"Entrada Fícta não necessita de informações de Transporte.",
                    "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                mcbTransportador.Enabled = false;
                mcbTransportador.SelectedIndex = -1;
                txtIDTransportador.Enabled = false;
                txtIDTransportador.Clear();
                txtEmbarcacao.Enabled = false;
                txtEmbarcacao.Clear();
                mcbTipoDocCarga.Enabled = false;
                mcbTipoDocCarga.SelectedIndex = -1;
                txtIDTipoDocCarga.Enabled = false;
                txtIDTipoDocCarga.Clear();
                txtIdentMaster.Enabled = false;
                txtIdentMaster.Clear();
                mcbUtilizacao.Enabled = false;
                mcbUtilizacao.SelectedIndex = -1;
                txtIDUtilizacao.Enabled = false;
                txtIDUtilizacao.Clear();
                txtPlaca.Enabled = false;
                txtPlaca.Clear();
                txtAutorizacaoMarinha.Enabled = false;
                txtAutorizacaoMarinha.Clear();
                txtLacre.Enabled = false;
                txtLacre.Clear();
                txtIdentHouse.Enabled = false;
                txtIdentHouse.Clear();
                mcbLocalEmbarque.Enabled = false;
                mcbLocalEmbarque.SelectedIndex = -1;
                txtData.Enabled = false;
                txtData.Clear();
            }
        }

        private void cbbTransportador_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtIDTransportador.Text = mcbTransportador.SelectedValue.ToString();
        }

        private void cbbUtilizacao_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtIDUtilizacao.Text = mcbUtilizacao.SelectedValue.ToString();
        }

        private void cbbBandeira_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtIDBandeira.Text = mcbBandeira.SelectedValue.ToString();
        }

        private void cbbTipoDocCarga_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtIDTipoDocCarga.Text = mcbTipoDocCarga.SelectedValue.ToString();
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (txtIDTipoDocCarga.Text == "3" && string.IsNullOrEmpty(mcbTipoDocCarga.Text))
            {
                MessageBox.Show(
                    "O Campo identificação House é obrigatório estar preenchido com o tipo de documento de carga 'HOUSE AWB'",
                    "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                return;
            }
            if (txtIDTransporte.Text == "1")
            {
                if (tipoprocesso != "12" && tipoprocesso != "15" && tipoprocesso != "17" &&
                    tipoprocesso != "BD" && tipoprocesso != "21" && tipoprocesso != "22" &&
                    tipoprocesso != "23" && tipoprocesso != "24" && tipoprocesso != "26" && tipoprocesso != "DV" && tipoprocesso != "AP")
                {
                    MessageBox.Show(
                        @"O cadastro não pode ser concluído, pois a via de transporte informada está incompatível com o tipo de processo.",
                        "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    return;
                }

                if (txtIDTipoDocCarga.Text == "1" || mcbTipoDocCarga.SelectedText == "AWB")
                {
                    if (string.IsNullOrEmpty(txtIdentHouse.Text))
                    {
                        MessageBox.Show(
                            @"O Campo identificação House é obrigatório estar preenchido com o tipo de documento de carga 'AWB'.",
                            "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtIdentHouse.Focus();
                        return;
                    }
                    if (!string.IsNullOrEmpty(txtIdentMaster.Text) &&
                        (txtIDTransporte.Text != "21" && txtIDTransporte.Text != "22"
                         && txtIDTransporte.Text != "23" && txtIDTransporte.Text != "24" && txtIDTransporte.Text != "26"))
                    {
                        MessageBox.Show(@"O Campo Identificação Master deve ser vazio com o tipo de documento de carga 'AWB'.",
                            "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtIdentMaster.Focus();
                        return;
                    }
                }
            }
            if (txtIDTransporte.Text == "4")
            {
                if (tipoprocesso != "11" && tipoprocesso != "14" && tipoprocesso != "17" &&
                    tipoprocesso != "BD" && tipoprocesso != "21" && tipoprocesso != "22" &&
                    tipoprocesso != "23" && tipoprocesso != "24" && tipoprocesso != "26" && tipoprocesso != "DV" && tipoprocesso != "AP")
                {
                    MessageBox.Show(
                       @"O cadastro não pode ser concluído, pois a via de transporte informada está incompatível com o tipo de processo.",
                       "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    txtIDTransporte.Focus();
                    return;
                }

                if (txtIDTipoDocCarga.Text == "1")
                {
                    if (string.IsNullOrEmpty(txtIdentHouse.Text))
                    {
                        MessageBox.Show(
                            @"O Campo identificação House é obrigatório estar preenchido com o tipo de documento de carga 'AWB'.",
                            "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtIdentHouse.Focus();
                        return;
                    }
                    if (!string.IsNullOrEmpty(txtIdentMaster.Text) &&
                        (txtIDTransporte.Text != "21" && txtIDTransporte.Text != "22"
                         && txtIDTransporte.Text != "23" && txtIDTransporte.Text != "24" && txtIDTransporte.Text != "26"))
                    {
                        MessageBox.Show(
                            @"O Campo Identificação Master deve ser vazio com o tipo de documento de carga 'AWB'.",
                            "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtIdentMaster.Focus();
                        return;
                    }
                }

                if (txtIDTipoDocCarga.Text == "1" || mcbTipoDocCarga.SelectedText == "AWB")
                {
                    if (string.IsNullOrEmpty(txtIdentHouse.Text))
                    {
                        MessageBox.Show(
                            @"O Campo identificação House é obrigatório estar preenchido com o tipo de documento de carga 'AWB'.",
                            "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtIdentHouse.Focus();
                        return;
                    }
                    if (!string.IsNullOrEmpty(txtIdentMaster.Text) &&
                        (txtIDTransporte.Text != "21" && txtIDTransporte.Text != "22"
                         && txtIDTransporte.Text != "23" && txtIDTransporte.Text != "24" && txtIDTransporte.Text != "26"))
                    {
                        MessageBox.Show(
                            @"O Campo Identificação Master deve ser vazio com o tipo de documento de carga 'AWB'.",
                            "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                        txtIdentMaster.Focus();
                        return;
                    }
                }

                if (((mccbModalidadeDespacho.SelectedValue.ToString() == "3") || (mccbModalidadeDespacho.SelectedValue.ToString() == "4")) && (tipodeclaracao != "01"))
                {
                    MessageBox.Show(@"Modalidade de Despacho 'Simplificado' ou 'Antecipado e Simplificado' só podem ser usados exclusivamente em despachos para consumo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                    mccbModalidadeDespacho.Focus();
                    return;
                }
            }

            if (ValidaIdentificacao())
            {
                MessageBox.Show(@"Identificação House está sendo utilizado em outro processo, Favor Verificar!.",
                           "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                txtIdentHouse.Focus();
                return;
            }

            if (txtDataETA.MaskCompleted)
            {
                if (DateTime.Now.Date >= Convert.ToDateTime(txtDataETA.Text))
                {
                    //processo marítimo                
                    if (tipoprocesso == "12")
                    {
                        //Verifica Siscarga
                        if (!Documentos.ExisteDocumento(txtProcesso.Text, "PROC", "79"))
                        {
                            MessageBox.Show("Só será possível prosseguir se o documento(Siscarga) estiver digitalizado.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            return;
                        }
                    }

                    //processo aéreo                
                    if (tipoprocesso == "11")
                    {
                        //Verifica Mantra
                        if (!Documentos.ExisteDocumento(txtProcesso.Text, "PROC", "4"))
                        {
                            MessageBox.Show("Só será possível prosseguir se o documento(Mantra) estiver digitalizado.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);

                            return;
                        }
                    }      
                }                
            }

            try
            {
                if (VerificaConhecimento())
                {
                    string query =
                        "update Conhecimento_Processo set Via = @Via,  Multimodal = @Multimodal, Placa=@Placa, Lacre=@Lacre, Local = @Local, Embarcacao=@Embarcacao," +
                        " Transportador=@Transportador, Tipodoccarga = @Tipodoccarga, Numerodoccarga = @Numerodoccarga, Numeromaster = @Numeromaster," +
                        " Data = @Data, Utilizacao = @Utilizacao, DT_ETA = @DT_ETA, Bandeira = @Bandeira, Autorizacao_Marinha = @Autorizacao_Marinha, " +
                        "FK_Terminal = @FK_Terminal, FK_Processo = @FK_Processo, Modalidade_Despacho = @Modalidade_Despacho where Processo = @Processo";

                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Via", mcbTransporte.SelectedValue == null ? DBNull.Value : mcbTransporte.SelectedValue);
                        cmd.Parameters.AddWithValue("@Multimodal", Convert.ToInt16(chkTransporte.Checked));
                        cmd.Parameters.AddWithValue("@Placa", txtPlaca.Text);
                        cmd.Parameters.AddWithValue("@Lacre", txtLacre.Text);
                        cmd.Parameters.AddWithValue("@Local",mcbLocalEmbarque.SelectedValue == null ? DBNull.Value : mcbLocalEmbarque.SelectedValue);
                        cmd.Parameters.AddWithValue("@Embarcacao", txtEmbarcacao.Text);
                        cmd.Parameters.AddWithValue("@Transportador", txtIDTransportador.Text);
                        cmd.Parameters.AddWithValue("@Tipodoccarga", txtIDTipoDocCarga.Text);
                        cmd.Parameters.AddWithValue("@Numerodoccarga", txtIdentHouse.Text);
                        cmd.Parameters.AddWithValue("@Numeromaster", txtIdentMaster.Text);
                        cmd.Parameters.AddWithValue("@Data", txtData.MaskCompleted ? (object)txtData.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Utilizacao", mcbUtilizacao.SelectedValue == null ? DBNull.Value : mcbUtilizacao.SelectedValue);
                        cmd.Parameters.AddWithValue("@DT_ETA", txtDataETA.MaskCompleted ? (object)txtDataETA.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Bandeira", mcbBandeira.SelectedValue == null ? DBNull.Value : mcbBandeira.SelectedValue);
                        cmd.Parameters.AddWithValue("@Autorizacao_Marinha", txtAutorizacaoMarinha.Text);
                        cmd.Parameters.AddWithValue("@FK_Terminal", mcbTerminal.SelectedValue == null ? DBNull.Value : mcbTerminal.SelectedValue);
                        cmd.Parameters.AddWithValue("@Modalidade_Despacho", mccbModalidadeDespacho.SelectedValue == null ? DBNull.Value : mccbModalidadeDespacho.SelectedValue);
                        cmd.Parameters.AddWithValue("@FK_Processo", Convert.ToInt32(FK_Processo));
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar,
                        Convert.ToInt32(this.Tag), string.Format("Via:{0},Transportador{1},Embarcacao/Voo{2},House{3},Master{4}",
                        mcbTransporte.SelectedValue, mcbTransportador.SelectedValue, txtEmbarcacao, txtIdentHouse.Text, txtIdentMaster.Text));

                    MessageBox.Show("Registro editado com sucesso.", "Edição", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                }
                else
                {
                    string query =
                        "Insert into Conhecimento_Processo (Via, Multimodal, Placa, Lacre, Local, Embarcacao, " +
                        "  Transportador, Tipodoccarga, Numerodoccarga, Numeromaster,                         " +
                        "  Data, Utilizacao, DT_ETA, Bandeira, Autorizacao_Marinha,                           " +
                        "  FK_Terminal, Modalidade_Despacho, FK_Processo, Processo)                           " +
                        " VALUES " +
                        " (@Via, @Multimodal, @Placa, @Lacre, @Local, @Embarcacao,        " +  
                        "  @Transportador, @Tipodoccarga, @Numerodoccarga, @Numeromaster, " +
                        "  @Data, @Utilizacao, @DT_ETA, @Bandeira, @Autorizacao_Marinha,  " +
                        "  @FK_Terminal, @Modalidade_Despacho, @FK_Processo, @Processo)   ";

                    using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Via", mcbTransporte.SelectedValue == null ? DBNull.Value : mcbTransporte.SelectedValue);
                        cmd.Parameters.AddWithValue("@Multimodal", Convert.ToInt16(chkTransporte.Checked));
                        cmd.Parameters.AddWithValue("@Placa", txtPlaca.Text);
                        cmd.Parameters.AddWithValue("@Lacre", txtLacre.Text);
                        cmd.Parameters.AddWithValue("@Local", mcbLocalEmbarque.SelectedValue == null ? DBNull.Value : mcbLocalEmbarque.SelectedValue);
                        cmd.Parameters.AddWithValue("@Embarcacao", txtEmbarcacao.Text);
                        cmd.Parameters.AddWithValue("@Transportador", txtIDTransportador.Text);
                        cmd.Parameters.AddWithValue("@Tipodoccarga", txtIDTipoDocCarga.Text);
                        cmd.Parameters.AddWithValue("@Numerodoccarga", txtIdentHouse.Text);
                        cmd.Parameters.AddWithValue("@Numeromaster", txtIdentMaster.Text);
                        cmd.Parameters.AddWithValue("@Data",txtData.MaskCompleted ? (object)txtData.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Utilizacao",mcbUtilizacao.SelectedValue == null ? DBNull.Value : mcbUtilizacao.SelectedValue);
                        cmd.Parameters.AddWithValue("@DT_ETA",txtDataETA.MaskCompleted ? (object)txtDataETA.Text : DBNull.Value);
                        cmd.Parameters.AddWithValue("@Bandeira",mcbBandeira.SelectedValue == null ? DBNull.Value : mcbBandeira.SelectedValue);
                        cmd.Parameters.AddWithValue("@Autorizacao_Marinha", txtAutorizacaoMarinha.Text);
                        cmd.Parameters.AddWithValue("@FK_Terminal",mcbTerminal.SelectedValue == null ? DBNull.Value : mcbTerminal.SelectedValue);
                        cmd.Parameters.AddWithValue("@Modalidade_Despacho", mccbModalidadeDespacho.SelectedValue == null ? "1" : mccbModalidadeDespacho.SelectedValue.ToString());
                        cmd.Parameters.AddWithValue("@FK_Processo", Convert.ToInt32(FK_Processo));
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo,
                               Convert.ToInt32(this.Tag), string.Format("Via:{0},Transportador{1},Embarcacao/Voo{2},House{3},Master{4}",
                        mcbTransporte.SelectedValue, mcbTransportador.SelectedValue, txtEmbarcacao, txtIdentHouse.Text, txtIdentMaster.Text));

                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK,
                        MessageBoxIcon.Information);
                }

                statusCadastro = StatusCadastro.None;

                HabilitaBotoes(false);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtIDTransporte_TextChanged(object sender, EventArgs e)
        {
            if (mcbTransporte.ValueMember != null && !string.IsNullOrEmpty(txtIDTransporte.Text))
            {
                mcbTransporte.SelectedValue = txtIDTransporte.Text;
            }
            else
            {
                mcbTransporte.SelectedIndex = -1;
            }
        }

        private void txtIDTransportador_TextChanged(object sender, EventArgs e)
        {
            if (mcbTransportador.ValueMember != null && !string.IsNullOrEmpty(txtIDTransportador.Text))
            {
                mcbTransportador.SelectedValue = txtIDTransportador.Text;
            }
            else
            {
                mcbTransportador.SelectedIndex = -1;
            }
        }

        private void txtIDTipoDocCarga_TextChanged(object sender, EventArgs e)
        {
            if (mcbTipoDocCarga.ValueMember != null && !string.IsNullOrEmpty(txtIDTipoDocCarga.Text))
            {
                mcbTipoDocCarga.SelectedValue = txtIDTipoDocCarga.Text;
            }
            else
            {
                mcbTipoDocCarga.SelectedIndex = -1;
            }
        }

        private void txtIDUtilizacao_TextChanged(object sender, EventArgs e)
        {
            if (mcbUtilizacao.ValueMember != null && !string.IsNullOrEmpty(txtIDUtilizacao.Text))
            {
                mcbUtilizacao.SelectedValue = txtIDUtilizacao.Text;
            }
            else
            {
                mcbUtilizacao.SelectedIndex = -1;
            }
        }

        private void txtIDBandeira_TextChanged(object sender, EventArgs e)
        {
            if (mcbBandeira.ValueMember != null)
            {
                mcbBandeira.SelectedValue = txtIDBandeira.Text;
            }
            else
            {
                mcbBandeira.SelectedIndex = -1;
            }
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtIdentHouse_KeyPress(object sender, KeyPressEventArgs e)
        {
            //Se a tecla digitada não for número
            if (!char.IsLetter(e.KeyChar) && !char.IsNumber(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                //Atribui True no Handled para cancelar o evento
                MessageBox.Show("Somente letras e números são permitidos.", "Aviso", MessageBoxButtons.OK,
                       MessageBoxIcon.Warning);
                e.Handled = true;
            }
        }

        private void txtIdentMaster_KeyPress(object sender, KeyPressEventArgs e)
        {
            //Se a tecla digitada não for número
            if (!char.IsLetter(e.KeyChar) && !char.IsNumber(e.KeyChar) && !char.IsControl(e.KeyChar))
            {
                //Atribui True no Handled para cancelar o evento
                MessageBox.Show("Somente letras e números são permitidos.", "Aviso", MessageBoxButtons.OK,
                       MessageBoxIcon.Warning);
                e.Handled = true;
            }
        }

        private void txtIdentHouse_TextChanged(object sender, EventArgs e)
        {
            // 3 - HOUSE AWB 
            if (mcbTipoDocCarga.SelectedValue != null)
            {
                if ((string)mcbTipoDocCarga.SelectedValue == "3")
                {
                    txtIdentHouse.Text = Util.RemoveAcentos(txtIdentHouse.Text);
                    //txtIdentHouse.Select(txtIdentHouse.Text.Length, 0);
                }
            }
        }

        private void mcbTransporte_SelectionChangeCommitted(object sender, EventArgs e)
        {
            txtIDTransporte.Text = mcbTransporte.SelectedValue.ToString();
            HabilitaCampos();

            if (!string.IsNullOrEmpty(txtIDTransporte.Text))
            {
                mcbTipoDocCarga.DataSource = null;
                mcbTipoDocCarga.DataSource = _tipos_docs_carga.Where(c => c.Via == txtIDTransporte.Text).Select(s => new TipoDocCarga { Codigo = s.Codigo, Descricao = s.Descricao }).ToList();
                mcbTipoDocCarga.DisplayMember = "Descricao";
                mcbTipoDocCarga.ValueMember = "Codigo";
                mcbTipoDocCarga.SelectedIndex = -1;
            }
            else
            {
                mcbTipoDocCarga.SelectedIndex = -1;
            }
        }        
    }
}
