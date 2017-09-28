using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmDistribuicaoOperacional : MS2000.Desktop.Componentes.MSForm01
    {
        private StatusCadastro statusCadastro;
        private Importador _importador;  
   
        string codImportador;
        string cgc_cpfImportador;
        string statusFechado;
        Importador importador = new Importador();
        Processo processo = new Processo();        

        public FrmDistribuicaoOperacional()
        {
            InitializeComponent();
        }

        public virtual void VerificaBotoes()
        {
            //int quantidadeProcesso = bindingSourceProcesso.Count;
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);            
            pnlLocalizarProcesso.Enabled = (statusCadastro == StatusCadastro.None);

            if (((Processo)bindingSourceProcesso.Current) != null && statusCadastro != StatusCadastro.Novo)
            {
                if (VerificaProcesso())
                {
                    if ((new Usuario()).AcessaCliente(codImportador))
                    {
                        if (Usuario.AcessaPasta(txtProcesso.Text, this))
                        {
                            panelControl.Enabled = (statusFechado == "0");                            
                        }
                    }
                }

                if (FrmPrincipal.Distribuidor)
                {
                    btnEditar.Enabled = true;
                }
                else
                {
                    btnEditar.Enabled = false;
                }

                //Verificando se processo está fechado
                /*      if (((Processo)bindingSourceProcesso.Current).Fechado == 1)
                {
                    btnEditar.Enabled = btnEditar.Enabled;
                    MessageBox.Show("Este processo está fechado. Somente usuários com permissão podem realizar alterações!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                }*/

            }
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

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }

        private void getResponsavelMS()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Usuario, Nome_Completo from usuarios " +
                           "where Responsavel=1 AND Ativo = 1 " +
                           "and Setor in ('OPN','JURI','RECP','VIT')";
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

                mcbbRespMS.DataSource = null;
                mcbbRespMS.DataSource = table;
                mcbbRespMS.DisplayMember = "Nome_Completo";
                mcbbRespMS.ValueMember = "Usuario";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getResponsavelCliente()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;                       
            
            DataTable table;

            string query = "select Nome, Nome_completo from Responsaveis_por_Importador WHERE Ativo = 1 ";

            if (!string.IsNullOrEmpty(cgc_cpfImportador))
            {
                query = query + " and CGC_CPF = @CGC_CPF ";
            }                        

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {                   
                    if (!string.IsNullOrEmpty(cgc_cpfImportador))
                    {                        
                        cmd.Parameters.AddWithValue("@CGC_CPF", cgc_cpfImportador);
                    }                    

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }

                mcbbRespCliente.DataSource = null;
                mcbbRespCliente.DataSource = table;
                mcbbRespCliente.DisplayMember = "Nome_completo";
                mcbbRespCliente.ValueMember   = "Nome";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getSupervisorResponsavel()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "Select Usuario, Nome_Completo from Usuarios where  Hierarquia in (2,3) and ((Ativo = 1) or ((Ativo = 0) and (Ferias = 1))) order by Nome_Completo";

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
                
                mcbbSupervisorResp.DataSource = null;
                mcbbSupervisorResp.DataSource = table;
                mcbbSupervisorResp.DisplayMember = "Nome_Completo";
                mcbbSupervisorResp.ValueMember = "Usuario";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getCoordenadorResponsavel()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "select Usuario, Nome_Completo from Usuarios where Hierarquia in(2,1) and ((Ativo = 1) or ((Ativo = 0) and (Ferias = 1))) and Usuario not in ('MANUEL','DUDA') order by Nome_Completo";

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
                
                mcbbCoordenadorResp.DataSource = null;
                mcbbCoordenadorResp.DataSource = table;
                mcbbCoordenadorResp.DisplayMember = "Nome_Completo";
                mcbbCoordenadorResp.ValueMember = "Usuario";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void FrmDistribuicaoOperacional_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            bindingNavigator.AddNewItem = null;
            this.ActiveControl = txtProcesso;
            LimparCampos();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
            txtProcesso.TextChanged += new EventHandler(BuscarProcesso);
            btnEditar.Enabled = false;

        }
        private void LimparCampos()
        {
            txtImportador.Clear();
            txtCNPJ.Clear();

            mcbbRespMS.SelectedIndex = -1;
            mcbbRespCliente.SelectedIndex = -1;
            mcbbSupervisorResp.SelectedIndex = -1;
            mcbbCoordenadorResp.SelectedIndex = -1;
        }

        void getCliente(string codigo_cliente)
        {
            _importador = (new Importador()).BuscarPorCodigo(codigo_cliente);
            txtImportador.Text = _importador.Razao_Social;
            txtCNPJ.Text = _importador.CNPJ_CPF_COMPLETO;
            cgc_cpfImportador = _importador.CGC_CPF;
        }

        private void BuscarProcesso(object sender, EventArgs e)
        {
            bindingSourceProcesso.Clear();           

            if (txtProcesso.MaskCompleted)
            {              
                
                PopulaVariaveisUsuario();
                var processo = (new Processo()).BuscarPorCodigo(txtProcesso.Text);
                
                if (processo != null)
                {
                    getCliente(processo.Importador);

                    getResponsavelMS();
                    getResponsavelCliente();
                    getSupervisorResponsavel();
                    getCoordenadorResponsavel();  

                    bindingSourceProcesso.DataSource = processo;
                    mcbbRespMS.SelectedValue = ((Processo)bindingSourceProcesso.Current).Responsavel_Empresa;
                    mcbbRespCliente.SelectedValue = ((Processo)bindingSourceProcesso.Current).Responsavel_Importador;
                    mcbbSupervisorResp.SelectedValue = ((Processo)bindingSourceProcesso.Current).Supervisor_Resp;
                    mcbbCoordenadorResp.SelectedValue = ((Processo)bindingSourceProcesso.Current).Coordenador_Resp;
                }
                else
                {
                    MessageBox.Show("Processo não encontrado!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                }

                VerificaBotoes();
            }
            else
            {
                LimparCampos();

                btnEditar.Enabled = false;
            }
        }

        private DataTable getAtualizaGrid()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT U.Nome_Completo, U.Usuario, Count(P.Codigo) AS Tot_Processo, sum(P.Qtd_Itens_Fatura) as Tot_Itens_Fatura " +
                           "FROM Usuarios U LEFT JOIN Processos P ON U.Usuario = P.Responsavel_Empresa " +
                           "WHERE (((U.Nivel)>'0') AND ((P.Status)<'1')) " +
                           "GROUP BY U.Nome_Completo, U.Usuario " +
                           "ORDER BY Count(P.Codigo)";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void btnAtualiza_Click(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
            bindingSourceAtualiza.DataSource = getAtualizaGrid();
            dataGridView.DataSource = bindingSourceAtualiza;
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            BuscarProcesso(null, null);
            HabilitarDesabilitaControles(true);
            txtImportador.Enabled = false;
            txtCNPJ.Enabled = false;
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            string query = "update Processos set Responsavel_Empresa = @Responsavel_Empresa, Responsavel_Importador = @Responsavel_Importador, "+
                           "Supervisor_Resp = @Supervisor_Resp , Coordenador_Resp = @Coordenador_Resp "+
                           "where Codigo = @Codigo ";
            using (var conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {

                    cmd.Parameters.AddWithValue("@Responsavel_Empresa", (mcbbRespMS.SelectedValue == null) ? (object)DBNull.Value : mcbbRespMS.SelectedValue);
                    cmd.Parameters.AddWithValue("@Responsavel_Importador", (mcbbRespCliente.SelectedValue == null) ? (object)DBNull.Value : mcbbRespCliente.SelectedValue);
                    cmd.Parameters.AddWithValue("@Supervisor_Resp", (mcbbSupervisorResp.SelectedValue == null) ? (object)DBNull.Value : mcbbSupervisorResp.SelectedValue);
                    cmd.Parameters.AddWithValue("@Coordenador_Resp", (mcbbCoordenadorResp.SelectedValue == null) ? (object)DBNull.Value : mcbbCoordenadorResp.SelectedValue);
                    cmd.Parameters.AddWithValue("@Codigo", txtProcesso.Text);
                    cmd.ExecuteNonQuery();
                }
            }
            LogSistemas.AddLogSistema(txtProcesso.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
              string.Format("processo:{0} Responsavel Empresa :{1} Responsavel Importador:{2} Supervisor Resp:{3} Coordenador Resp:{4} ",
              txtProcesso.Text, mcbbRespMS.Text, mcbbRespCliente.Text, mcbbSupervisorResp.Text, mcbbCoordenadorResp.Text));

           MessageBox.Show("Registro Salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
            
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSourceProcesso.CancelEdit();
            statusCadastro = StatusCadastro.None;
            BuscarProcesso(null, null);
            HabilitarDesabilitaControles(false);
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
