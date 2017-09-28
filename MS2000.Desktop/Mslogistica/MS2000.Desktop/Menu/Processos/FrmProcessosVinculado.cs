using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmProcessosVinculado : MS2000.Desktop.Componentes.MSForm01
    {
        string codImportador;
        string statusFechado;
        Importador importador = new Importador();
        Processo processo = new Processo();

        public FrmProcessosVinculado()
        {
            InitializeComponent();
        }

        private void FrmProcessosVinculado_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
            Dictionary<int, string> tipos = new Dictionary<int, string>();
            tipos.Add(1, "Processo Administrativo");
            tipos.Add(2, "Processo Judicial");
            tipos.Add(3, "Declaração Preliminar");
            tipos.Add(4, "Judicial Exclusivo DARF");

            cbbTipo.DisplayMember = "Value";
            cbbTipo.ValueMember = "Key";
            cbbTipo.DataSource = new BindingSource(tipos, null);
            cbbTipo.SelectedIndex = -1;
        }

        private void btnRemover_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "delete from Processos_Vinculado where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(dataGridView.SelectedRows[0].Cells["ID"].Value));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(dataGridView.SelectedRows[0].Cells["ID"].Value.ToString(),
                      FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir,
                      Convert.ToInt32(this.Tag),
                      string.Format("Tipo:{0}, Identificacao:{1}",
                      dataGridView.SelectedRows[0].Cells["Tipo"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Identificacao"].Value.ToString()));

                    txtProcesso_TextChanged(null, null);
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void LimpaCampos()
        {
            dataGridView.DataSource = null;
            cbbTipo.SelectedIndex = -1;
            txtIdentificacao.Clear();            
            panelControl.Enabled = false;
        }

        private DataTable getProcessosVinculado(string processo)
        {
            string query = "SELECT ID, FK_Processo, Identificacao, " +
            "case Tipo when '1' then 'Processo Administrativo' "+
            "when '2' then 'Processo Judicial' when '3' then 'Declaração Preliminar' "+
            "when '4' then 'Judicial Exclusivo DARF' end as 'Tipo' "+
            "FROM Processos_Vinculado " +
            "WHERE FK_Processo = @FK_Processo ";          

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Processo", txtProcesso.Text);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }

        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
        }

        private void populaGrid()
        {            
            dataGridView.DataSource = getProcessosVinculado(txtProcesso.Text);
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
                string query = "insert into Processos_Vinculado (FK_Processo, Tipo, Identificacao)values(@FK_Processo, @Tipo, @Identificacao)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_Processo", txtProcesso.Text);
                    cmd.Parameters.AddWithValue("@Tipo", cbbTipo.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@Identificacao", txtIdentificacao.Text);                    
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(txtProcesso.Text,
                                 FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo,
                                 Convert.ToInt32(this.Tag),
                                 string.Format("Tipo:{0}, Identificacao:{1}",
                                 cbbTipo.SelectedValue.ToString(),
                                 txtIdentificacao.Text));
                txtProcesso_TextChanged(null, null);
                MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
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

        private void dataGridView_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {

        } 
    }
}
