using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmDE : MS2000.Desktop.Componentes.MSForm01
    {
        string codImportador;
        string statusFechado;
        Importador importador = new Importador();
        Processo processo = new Processo();

        public FrmDE()
        {
            InitializeComponent();
        }

        private void FrmDE_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
            this.ActiveControl = txtProcesso;
        }

        private DataTable getDE()
        {
            string query = "SELECT D.ID,FK_Processo,DE,Inicio,Fim FROM DE_MERCOSUL_DI D " +
                           "inner join Processos P on D.FK_Processo = P.ID " +
                           "where P.Codigo = @Codigo";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Codigo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }

        private void populaGrid()
        {
            dataGridView.DataSource = getDE();
        }

        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
        }

        private void LimpaCampos()
        {
            txtDE.Clear();
            txtInicio.Clear();
            txtFim.Clear();
            dataGridView.DataSource = null;
            panelControl.Enabled = false;
        }


        private void txtProcesso_TextChanged(object sender, EventArgs e)
        {
            LimpaCampos();
            if (txtProcesso.MaskCompleted)
            {
                PopulaVariaveisUsuario();
                if (VerificaProcesso())
                {
                    if ((new Usuario()).AcessaCliente(codImportador))
                    {
                        populaGrid();
                        if (Usuario.AcessaPasta(txtProcesso.Text, this))
                        {
                            panelControl.Enabled = (statusFechado == "0");
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
        }

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO DE_MERCOSUL_DI  " +
                               "(FK_Processo,DE,Inicio,Fim)  " +
                               "VALUES " +
                               "(@FK_Processo,@DE,@Inicio,@Fim)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Processo", (processo.BuscarPorCodigo(txtProcesso.Text).ID));
                    cmd.Parameters.AddWithValue("@DE", txtDE.Text);
                    cmd.Parameters.AddWithValue("@Inicio", txtInicio.Text);
                    cmd.Parameters.AddWithValue("@Fim", txtFim.Text);
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(processo.BuscarPorCodigo(txtProcesso.Text).ID.ToString(),
                    FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo,
                    Convert.ToInt32(this.Tag),
                    string.Format("DE:{0},Inicio:{1},Fim:{2}",
                    txtDE.Text,
                    txtInicio.Text,
                    txtFim.Text));
                txtProcesso_TextChanged(null, null);
                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnRemover_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from DE_MERCOSUL_DI where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(dataGridView.SelectedRows[0].Cells["ID"].Value));
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(dataGridView.SelectedRows[0].Cells["ID"].Value.ToString(),
                      FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir,
                      Convert.ToInt32(this.Tag),
                      string.Format("DE:{0},Inicio:{1},Fim:{2}",
                      dataGridView.SelectedRows[0].Cells["DE"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Inicio"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["FIm"].Value.ToString()));

                    txtProcesso_TextChanged(null, null);
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private bool VerificaProcesso()
        {
            bool GoOn = true;

            importador = importador.BuscarPorCodigo(codImportador);
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Fechado", out statusFechado);

            if (importador.Ativo == 0 && !FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show("Este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (importador.Ativo == 0 && FrmPrincipal.editaClienteInativo)
            {
                MessageBox.Show("Status do Cliente: Este Cliente está Inativo. Porém você tem permissão para edita-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (statusFechado == "1" && !FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show("Este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
                GoOn = GoOn && true;
            }
            if (statusFechado == "1" && FrmPrincipal.editaProcessoFechado)
            {
                MessageBox.Show("Status do Processo: Este processo esta fechado Porém você tem permissão para edita-lo.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);
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
    }
}
