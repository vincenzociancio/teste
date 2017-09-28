using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Processos
{
    public partial class FrmNVE : MS2000.Desktop.Componentes.MSForm01
    {
        string codImportador;
        string statusFechado;
        Importador importador = new Importador();
        Processo processo = new Processo();

        public FrmNVE()
        {
            InitializeComponent();
        }

        private void FrmNVE_Load(object sender, EventArgs e)
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
                "INNER JOIN Faturas F ON P.Codigo = F.Processo "+
                "INNER JOIN ItensFaturas I ON F.Fatura_Id = I.Fatura_Id  "+
                "INNER JOIN Tributacao_Item_Fatura T ON I.Fatura_Id  = T.Fatura_Id AND I.Sequencial = T.Sequencial_Item "+
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

        class Abrangencia_NCM
        {
            public int Codigo { get; set; }
            public string Nome { get; set; }
            public int Nivel { get; set; }
        }

        private void getNivel()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Nome, Nivel from TAB_ABRANGENCIA_NCM order by Codigo";
            DataTable table;
            try
            {
                List<Abrangencia_NCM> dados = new List<Abrangencia_NCM>();
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            dados.Add(new Abrangencia_NCM
                            {
                                Codigo = (int)reader["Codigo"],
                                Nome = reader["Nome"].ToString(),
                                Nivel = (int)reader["Nivel"]
                            });
                        }
                    }
                }
                cbbNivel.DataSource = dados;
                cbbNivel.DisplayMember = "Nome";
                cbbNivel.ValueMember = "Codigo";
                cbbNivel.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getTributo(string ncm, int nivel)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT CD_ATRIBUTO_NCM, NM_ATRIBUTO FROM TAB_ATRIB_VALORACAO_NVE WHERE CD_NOMENC_NCM = @NCM";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@NCM", string.Format("{0}", ncm.Substring(0, nivel)));
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbbTributo.DataSource = null;
                cbbTributo.DataSource = table;
                cbbTributo.DisplayMember = "NM_ATRIBUTO";
                cbbTributo.ValueMember = "CD_ATRIBUTO_NCM";
                cbbTributo.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getEspecificacao(string ncm, int nivel, string atributo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT CD_ESPECIF_NCM, NM_ESPECIF_NCM FROM TAB_ESPECIF_VALORACAO_NVE WHERE CD_NOMENC_NCM = @NCM AND CD_ATRIBUTO_NCM = @ATRIBUTO";
            DataTable table;
            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@NCM", string.Format("{0}", ncm.Substring(0, nivel)));
                    cmd.Parameters.AddWithValue("@ATRIBUTO", atributo);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        table = new DataTable();
                        table.Load(reader);
                    }
                }
                cbbEspecificacao.DataSource = null;
                cbbEspecificacao.DataSource = table;
                cbbEspecificacao.DisplayMember = "NM_ESPECIF_NCM";
                cbbEspecificacao.ValueMember = "CD_ESPECIF_NCM";
                cbbEspecificacao.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getValoracao_NCM(string processo)
        {
            string query = "SELECT V.ID, V.Numero_Adicao, V.CD_ATRIBUTO_NCM, V.CD_ESPECIF_NCM, A.Nome FROM TAB_VALORACAO_NCM V " +
            "INNER JOIN Processos P ON P.ID = V.ID_Processo " +
            "INNER JOIN TAB_ABRANGENCIA_NCM A ON A.Codigo = V.CD_ABRANGENCIA_NCM " +
            "WHERE P.Codigo = @Processo " +
            "ORDER BY V.Numero_Adicao, V.CD_ATRIBUTO_NCM";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Processo", txtProcesso.Text);
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
            getNivel();
            dataGridView.DataSource = getValoracao_NCM(txtProcesso.Text);
        }

        private void PopulaVariaveisUsuario()
        {
            processo.BuscarPorCodigoStatus(txtProcesso.Text).TryGetValue("Importador", out codImportador);
        }

        private void LimpaCampos()
        {
            dataGridView.DataSource = null;
            cbbAdicoes.DataSource = null;
            cbbNivel.DataSource = null;
            cbbTributo.DataSource = null;
            cbbEspecificacao.DataSource = null;
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

        private void cbbAdicoes_TextChanged(object sender, EventArgs e)
        {
            cbbNivel.SelectedIndex = -1;
            cbbTributo.SelectedIndex = -1;
            cbbEspecificacao.SelectedIndex = -1;
        }

        private void cbbNivel_TextChanged(object sender, EventArgs e)
        {
            if (cbbAdicoes.SelectedItem != null &&
                !string.IsNullOrEmpty(cbbAdicoes.Text) &&
                cbbNivel.SelectedItem != null &&
                !string.IsNullOrEmpty(cbbNivel.Text))
            {
                getTributo(((ProcessoAdicoes)cbbAdicoes.SelectedItem).NCM, ((Abrangencia_NCM)cbbNivel.SelectedItem).Nivel);
            }
            else
            {
                cbbTributo.DataSource = null;
                cbbEspecificacao.DataSource = null;
            }
        }

        private void cbbTributo_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (cbbTributo.SelectedItem != null &&
                !string.IsNullOrEmpty(cbbTributo.Text))
            {
                getEspecificacao(((ProcessoAdicoes)cbbAdicoes.SelectedItem).NCM,
                    ((Abrangencia_NCM)cbbNivel.SelectedItem).Nivel,
                    cbbTributo.SelectedValue.ToString());
            }
            else
            {
                cbbEspecificacao.DataSource = null;
            }
        }

        private void cbbTributo_TextUpdate(object sender, EventArgs e)
        {
            cbbTributo_SelectedIndexChanged(null, null);
        }

        private void btnAdicionar_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "insert into TAB_VALORACAO_NCM (ID_Processo, Numero_Adicao, CD_ABRANGENCIA_NCM, CD_ATRIBUTO_NCM, CD_ESPECIF_NCM)values(@ID_Processo, @Numero_Adicao, @CD_ABRANGENCIA_NCM, @CD_ATRIBUTO_NCM, @CD_ESPECIF_NCM)";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@ID_Processo", ((ProcessoAdicoes)cbbAdicoes.SelectedItem).ID_Processo);
                    cmd.Parameters.AddWithValue("@Numero_Adicao", ((ProcessoAdicoes)cbbAdicoes.SelectedItem).Adicao);
                    cmd.Parameters.AddWithValue("@CD_ABRANGENCIA_NCM", ((Abrangencia_NCM)cbbNivel.SelectedItem).Codigo);
                    cmd.Parameters.AddWithValue("@CD_ATRIBUTO_NCM", cbbTributo.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@CD_ESPECIF_NCM", cbbEspecificacao.SelectedValue.ToString());
                    cmd.ExecuteNonQuery();
                }
                LogSistemas.AddLogSistema(((ProcessoAdicoes)cbbAdicoes.SelectedItem).ID_Processo.ToString(),
                    FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo,
                    Convert.ToInt32(this.Tag),
                    string.Format("Adicao:{0},Abrangencia:{1},Tributo:{2},Especificao{3}",
                    ((ProcessoAdicoes)cbbAdicoes.SelectedItem).Adicao.ToString(),
                    ((Abrangencia_NCM)cbbNivel.SelectedItem).Codigo.ToString(),
                    cbbTributo.SelectedValue.ToString(),
                    cbbEspecificacao.SelectedValue.ToString()));
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
                    string query = "delete from TAB_VALORACAO_NCM where ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", Convert.ToInt32(dataGridView.SelectedRows[0].Cells["ID"].Value));
                        cmd.ExecuteNonQuery();
                    }
                      
                    LogSistemas.AddLogSistema(dataGridView.SelectedRows[0].Cells["ID"].Value.ToString(),
                      FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir,
                      Convert.ToInt32(this.Tag),
                      string.Format("Adicao:{0},Abrangencia:{1},Tributo:{2},Especificao{3}",
                      dataGridView.SelectedRows[0].Cells["Adicao"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Nivel"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Tributo"].Value.ToString(),
                      dataGridView.SelectedRows[0].Cells["Especificacao"].Value.ToString()));

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
