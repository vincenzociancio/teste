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
    public partial class FrmDocumentoVinculado : MS2000.Desktop.Componentes.MSForm01
    {
        string codImportador;
        string statusFechado;
        Importador importador = new Importador();
        Processo processo = new Processo();

        public FrmDocumentoVinculado()
        {
            InitializeComponent();
        }

        private void FrmDocumentoVinculado_Load(object sender, EventArgs e)
        {
            dataGridView.AutoGenerateColumns = false;
        }

        class ProcessoAdicoes
        {
            public string Adicao { get; set; }
            public string NCM { get; set; }
            public string Descricao_Item { get; set; }
            public int ID_Processo { get; set; }
        }


        private void getAdicoes(string processo)
        {
            string query = "SELECT T.Adicao, I.NCM,  MAX(I.Descricao_Produto) AS 'Descricao_Produto', P.ID FROM Processos P " +
                           "INNER JOIN Faturas F ON F.Processo = P.Codigo " +
                           "INNER JOIN Tributacao_Item_Fatura T ON F.Fatura_Id = T.Fatura_Id " +                           
                           "INNER JOIN ItensFaturas I ON F.Fatura_Id = I.Fatura_Id AND I.Sequencial = T.Sequencial_Item " +
                           "WHERE P.Codigo = @Processo GROUP BY T.Adicao, I.NCM, P.ID";

            DataTable table;
            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    List<ProcessoAdicoes> dados = new List<ProcessoAdicoes>();
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                dados.Add(new ProcessoAdicoes
                                {
                                    Adicao = reader["Adicao"].ToString(),
                                    NCM = reader["NCM"].ToString(),
                                    Descricao_Item = reader["Descricao_Produto"].ToString(),
                                    ID_Processo = (int)reader["ID"]
                                });
                            }
                        }
                    }
                    cbbAdicoes.DataSource = null;
                    cbbAdicoes.DataSource = dados;
                    cbbAdicoes.DisplayMember = "Adicao";
                    cbbAdicoes.ValueMember = "Adicao";
                    cbbAdicoes.SelectedIndex = -1;
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getDocumento(string processo)
        {
            string query = "SELECT D.ID,ID_Processo,Numero_Adicao,case when CD_TIPO_DCTO_VINC = '2' then 'DI' else 'RE' end as Tipo,NR_DCTO_VINCULADO " +
                           "FROM Documento_Vinculado D inner join " +
                           "Processos P on D.ID_Processo = p.ID " +
                           "Where p.Codigo = @codigo";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@codigo", processo);
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
            getAdicoes(txtProcesso.Text);
            dataGridView.DataSource = getDocumento(txtProcesso.Text);

            Dictionary<int, string> itens = new Dictionary<int, string>();

            itens.Add(2, "DI"); itens.Add(3, "RE");

            cbbTipo.DataSource = null;
            cbbTipo.DisplayMember = "Value";
            cbbTipo.ValueMember = "Key";
            cbbTipo.DataSource = new BindingSource(itens, null);
            cbbTipo.SelectedIndex = -1;
        }

        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
        }

        private void LimpaCampos()
        {
            dataGridView.DataSource = null;
            cbbAdicoes.DataSource = null;
            txtNumero.Clear();
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

            if (string.IsNullOrEmpty(cbbAdicoes.Text))
            {
                MessageBox.Show("A Adição é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbAdicoes.Focus();
                return;
            }

            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "INSERT INTO Documento_Vinculado " +
                               "(ID_Processo,Numero_Adicao,CD_TIPO_DCTO_VINC,NR_DCTO_VINCULADO) " +
                               "VALUES " +
                               "(@ID_Processo,@Numero_Adicao,@CD_TIPO_DCTO_VINC,@NR_DCTO_VINCULADO)";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ID_Processo", ((ProcessoAdicoes)cbbAdicoes.SelectedItem).ID_Processo);
                    cmd.Parameters.AddWithValue("@Numero_Adicao", ((ProcessoAdicoes)cbbAdicoes.SelectedItem).Adicao);
                    cmd.Parameters.AddWithValue("@CD_TIPO_DCTO_VINC", cbbTipo.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@NR_DCTO_VINCULADO", txtNumero.Text);
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(((ProcessoAdicoes)cbbAdicoes.SelectedItem).ID_Processo.ToString(),
                    FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo,
                    Convert.ToInt32(this.Tag),
                    string.Format("Adicao:{0}, Tipo:{1},Numero:{2}",
                    ((ProcessoAdicoes)cbbAdicoes.SelectedItem).Adicao.ToString(),
                    cbbTipo.Text,
                    txtNumero.Text));
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
                    string query = "delete from Documento_Vinculado where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(dataGridView.SelectedRows[0].Cells["ID"].Value));
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(dataGridView.SelectedRows[0].Cells["ID"].Value.ToString(),
                      FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir,
                      Convert.ToInt32(this.Tag),
                      string.Format("Adicao:{0},Abrangencia:{1},Tributo:{2}",
                      dataGridView.SelectedRows[0].Cells["Adicao"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Tipo"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Numero"].Value.ToString()));

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
