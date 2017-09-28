using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmLocalContratosAdmissaoTemporaria : MS2000.Desktop.Componentes.MSForm01
    {
        public StatusCadastro statusCadastro;
        public string Contrato { get; set; }
        public string Local { get; set; }
        public string Importador { get; set; }
        
        public FrmLocalContratosAdmissaoTemporaria()
        {
            InitializeComponent();
        }

        private void FrmLocalContratosAdmissaoTemporaria_Load(object sender, EventArgs e)
        {
            getTiposLocais();
            if (statusCadastro == StatusCadastro.Editar)
            {
                DataTable table = getLocaisInventario(Importador, Contrato, Local);
                txtCodigo.Text = Local;                
                txtDescricao.Text = table.Rows[0]["Descricao"].ToString();
                txtSigla.Text = table.Rows[0]["Sigla"].ToString();
                cbbTipo.SelectedValue = table.Rows[0]["tipo_local"];
                ckbAcesso.Checked = Convert.ToBoolean(table.Rows[0]["acesso_rf_angra"]);
                ckbAtivo.Checked = Convert.ToBoolean(table.Rows[0]["ativo"]);
            }
            else
            {
                cbbTipo.SelectedIndex = -1;
            }

        }

        private void getTiposLocais()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "select Codigo, Descricao from Tipos_Locais_Inventario order by Descricao";
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
                cbbTipo.DataSource = table;
                cbbTipo.DisplayMember = "Descricao";
                cbbTipo.ValueMember = "Codigo";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private DataTable getLocaisInventario(string importador, string contrato, string local)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT Descricao, ativo, local, tipo_local, sigla, acesso_rf_angra " +
                "FROM Locais_Inventario Where importador = @importador and local = @local and contrato = @contrato";

            DataTable table;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@importador", importador);
                cmd.Parameters.AddWithValue("@local", local);
                cmd.Parameters.AddWithValue("@contrato", contrato);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private string getNovoCodigoLocal(string contrato, string importador)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT COALESCE(MAX(CONVERT(float , Local)),0)+1 AS NovoCodigo FROM Locais_Inventario " +
                "WHERE IsNumeric(Local) = 1 and Contrato = @contrato and Importador = @importador ";

            try
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@importador", importador);
                    cmd.Parameters.AddWithValue("@contrato", contrato);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Read();
                            return reader[0].ToString();
                        }
                        else
                        {
                            return "1";
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return "-1";
            }
        }

        private void updateRepetroDescricaoLocal(string importador, string contrato, string local, string descricao)
        {
            var query = "UPDATE Repetro SET Locais_Inventario_Descricao = @Descricao, tipo_local = @tipo_local " +
                "WHERE Codigo = @importador AND Contrato = @contrato and Local = @local";

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@contrato", contrato);
                cmd.Parameters.AddWithValue("@importador", importador);
                cmd.Parameters.AddWithValue("@local", local);
                cmd.Parameters.AddWithValue("@Descricao", descricao);
                cmd.Parameters.AddWithValue("@tipo_local", (cbbTipo.SelectedValue == null ? "" : cbbTipo.SelectedValue));                
                cmd.ExecuteNonQuery();
            }

        }

        private bool LocalJaCadastrado()
        {
            var query = "select TOP 1 Contrato from Locais_Inventario where " +
                "REPLACE(Descricao,' ','') = @descricao and importador = @importador and Contrato = @contrato";

            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@descricao", txtDescricao.Text.Trim().Replace(" ", ""));
                    cmd.Parameters.AddWithValue("@importador", Importador);
                    cmd.Parameters.AddWithValue("@contrato", Contrato);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            while (reader.Read())
                            {
                                GoOn = true;
                            }
                        }
                        return GoOn;
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                return true;
            }
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtDescricao.Text))
            {
                MessageBox.Show("A descrição do local é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }

            if (string.IsNullOrEmpty(cbbTipo.Text))
            {
                MessageBox.Show("O tipo de local é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                cbbTipo.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtSigla.Text))
            {
                if (MessageBox.Show("A Sigla está em branco e é usada em alguns relatórios. Deseja Incluir a Sigla?", "Aviso", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
                {
                    txtSigla.Focus();
                    return;
                }
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "update Locais_Inventario set " +
                        "Descricao = @Descricao, ativo = @ativo, tipo_local = @tipo_local, sigla = @sigla, acesso_rf_angra = @acesso_rf_angra " +
                        "Where importador = @importador and local = @local and contrato = @contrato";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {                        
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@ativo", Convert.ToInt16(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("@tipo_local", (cbbTipo.SelectedValue == null ? (object)DBNull.Value : cbbTipo.SelectedValue));
                        cmd.Parameters.AddWithValue("@sigla", txtSigla.Text);
                        cmd.Parameters.AddWithValue("@acesso_rf_angra", Convert.ToInt16(ckbAcesso.Checked));
                        cmd.Parameters.AddWithValue("@local", Local);
                        cmd.Parameters.AddWithValue("@contrato", Contrato);
                        cmd.Parameters.AddWithValue("@importador", Importador);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag),
                        string.Format("Descricão do local inventário:{0} - Contrato:{1} - Importador:{2}", txtDescricao.Text, Contrato, Importador));
                    updateRepetroDescricaoLocal(Importador, Contrato, Local, txtDescricao.Text);
                }
                else
                {
                    if (LocalJaCadastrado())
                    {
                        MessageBox.Show("Favor verificar, local já cadastrado para esse Contrato!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                        return;
                    }

                    string novoCodigo;
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "insert into Locais_Inventario " +
                        "(Importador, Contrato, Descricao, ativo, local, tipo_local, sigla, acesso_rf_angra)" +
                        "values" +
                         "(@Importador, @contrato, @Descricao, @ativo, @local, @tipo_local, @sigla, @acesso_rf_angra)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        novoCodigo = getNovoCodigoLocal(Contrato, Importador);                        
                        cmd.Parameters.AddWithValue("@Descricao", txtDescricao.Text);
                        cmd.Parameters.AddWithValue("@ativo", Convert.ToInt16(ckbAtivo.Checked));
                        cmd.Parameters.AddWithValue("@tipo_local", (cbbTipo.SelectedValue == null ? (object)DBNull.Value : cbbTipo.SelectedValue));
                        cmd.Parameters.AddWithValue("@sigla", txtSigla.Text);
                        cmd.Parameters.AddWithValue("@acesso_rf_angra", Convert.ToInt16(ckbAcesso.Checked));
                        cmd.Parameters.AddWithValue("@local", novoCodigo);
                        cmd.Parameters.AddWithValue("@contrato", Contrato);
                        cmd.Parameters.AddWithValue("@importador", Importador);
                        cmd.ExecuteNonQuery();
                    }
                    txtCodigo.Text = novoCodigo;
                    LogSistemas.AddLogSistema(txtCodigo.Text, FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag),
                        string.Format("Descricão do local inventário:{0} - Contrato:{1} - Importador:{2}", txtDescricao.Text, Contrato, Importador));
                }

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                }

                this.DialogResult = DialogResult.OK;
                Close();

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            this.Close();
            this.DialogResult = DialogResult.Cancel;
        }
    }
}
