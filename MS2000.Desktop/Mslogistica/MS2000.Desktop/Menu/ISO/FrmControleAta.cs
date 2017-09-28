using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmControleAta : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        public string NomeUsuarioLogin { get; set; }
        private bool _canDelete;
        private bool _canEdit;
        public FrmControleAta()
        {
            InitializeComponent();
            _canDelete = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "ISO - Controle de Atas - Exclui",
                Chave_Busca = "botaoExcluiAtas"
            });
            _canEdit = Autorizacao.AccessoOK(new AutorizacaoEspecifica
            {
                Formulario = Convert.ToInt32(this.Tag),
                Descricao = "ISO - Controle de Atas - Edita",
                Chave_Busca = "botaoEditaAtas"
            });
        }

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None) && _canDelete;
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None) && _canEdit;
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            gvAta.Enabled = (statusCadastro == StatusCadastro.None);
            gpTipo.Enabled = (statusCadastro == StatusCadastro.Novo);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in gpControleAta.Controls)
            {
                controle.Enabled = bValue;
            }

            foreach (Control controle in gpTipo.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        private void FrmControleAta_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;
            statusCadastro = StatusCadastro.None;
            bsTema.DataSource = GetTema();

            bindingNavigator.BindingSource = bsTema;
            txtPesquisar.Enabled = true;
            gvAta.DataSource = bsTema;
            getUsuarios();
            GetImportador();
            HabilitarDesabilitaControles(false);
        }
        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bsTema.CancelEdit();
            txtPesquisar.Enabled = true;
            gvAta.Enabled = true;
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

        }
        private void btnNovo_Click(object sender, EventArgs e)
        {
            LimpaConteudo();
            bsTema.AddNew();

            txtPesquisar.Enabled = false;
            gvAta.Enabled = false;
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtTema.Text))
            {
                MessageBox.Show("O Tema é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtTema.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbUsuario.Text))
            {
                MessageBox.Show("O Responsável é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbUsuario.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtData.Text) || txtData.Text == "  /  /")
            {
                MessageBox.Show("A Data é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtData.Focus();
                return;
            }

            if (rbOperacional.Checked == false && rbSGI.Checked == false)
            {
                MessageBox.Show("Selecione o Tipo!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                rbOperacional.Focus();
                return;
            }
            try
            {
                string Usuario = PegaUsuarioLogin();

                if (statusCadastro == StatusCadastro.Novo)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Controle_Atas " +
                                   "(Tema,Data,fk_importador,fk_usuario,Tipo)" +
                                   " VALUES " +
                                   "(@Tema,@Data,@Importador,@Usuario,@Tipo)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Tema", txtTema.Text);
                        cmd.Parameters.AddWithValue("@Data", txtData.Text);
                        cmd.Parameters.AddWithValue("@Importador", (mcbImportador.SelectedValue == null ? "" : mcbImportador.SelectedValue));
                        cmd.Parameters.AddWithValue("@Usuario", Usuario);
                        cmd.Parameters.AddWithValue("@Tipo", rbOperacional.Checked == true ? 1 : 0);
                        // cmd.Parameters.AddWithValue("@Observacao", rtxtObservacao.Text);
                        cmd.ExecuteNonQuery();
                    }
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Controle_Atas " +
                                   "SET [Tema] = @Tema, [Data] = @Data " +
                                   ",[fk_importador] = @fk_importador,[fk_usuario] = @fk_usuario " +
                                   ",[Tipo] = @Tipo " +
                                   "WHERE pk_atas = @pk_atas";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Tema", txtTema.Text);
                        cmd.Parameters.AddWithValue("@Data", txtData.Text);
                        cmd.Parameters.AddWithValue("@fk_importador", mcbImportador.SelectedValue);
                        cmd.Parameters.AddWithValue("@fk_usuario", Usuario);
                        cmd.Parameters.AddWithValue("@Tipo", rbOperacional.Checked == true ? 1 : 0);
                        cmd.Parameters.AddWithValue("@pk_atas", bsTema.GetRelatedCurrencyManager("pk_atas").Current);
                        cmd.ExecuteNonQuery();
                    }
                }
                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    bsTema.DataSource = GetTema();
                }
                else
                {
                    MessageBox.Show("Registro salvo com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    bsTema.DataSource = GetTema();
                }
                statusCadastro = StatusCadastro.None;
                HabilitarDesabilitaControles(false);

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            txtPesquisar.Enabled = false;
            gvAta.Enabled = false;
            statusCadastro = StatusCadastro.Editar;

            HabilitarDesabilitaControles(true);
            gpTipo.Enabled = true;
        }
        private void LimpaConteudo()
        {
            txtData.Clear();
            txtPesquisar.Clear();
            txtTema.Clear();
            mcbImportador.SelectedIndex = -1;
            mcbUsuario.SelectedIndex = -1;
            rbOperacional.Checked = false;
            rbSGI.Checked = false;
        }
        private void getUsuarios()
        {
            Usuario Usuarios = new Usuario();
            mcbUsuario.DataSource = null;
            mcbUsuario.DataSource = Usuarios.getUsuarios();
            mcbUsuario.DisplayMember = "Nome_Completo";
            mcbUsuario.ValueMember = "PK_USUARIO";
            mcbUsuario.SelectedIndex = -1;
        }

        public DataTable GetTema()
        {
            string query = "Select pk_atas, tema, data " +
                "from Controle_Atas order by tema";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
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

        }

        public void GetImportador()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = "SELECT " +
                "Codigo, Razao_Social " +
                "FROM Importadores WHERE Ativo = 1 ORDER BY Razao_social";

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
                mcbImportador.DataSource = null;
                mcbImportador.DataSource = table;
                mcbImportador.DisplayMember = "Razao_Social";
                mcbImportador.ValueMember = "Codigo";
                mcbImportador.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            bsTema.Filter = "Tema LIKE '%" + txtPesquisar.Text + "%'";
        }


        private void gvAta_SelectionChanged(object sender, EventArgs e)
        {

            if (statusCadastro == StatusCadastro.Novo)
            {
                return;
            }
            else
            {
                if (gvAta.Rows.Count > 1)
                {
                    PreencheCamposEdit();
                }
                else
                {
                    return;
                }
            }
        }
        private string PegaUsuarioLogin()
        {
            string query = "Select Usuario " +
                   "from Usuarios where PK_USUARIO = " + mcbUsuario.SelectedValue;
            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                                NomeUsuarioLogin = reader["Usuario"].ToString();
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }



            return NomeUsuarioLogin;
        }
        private void PreencheCamposEdit()
        {
            string query = "Select pk_atas, tema, data, fk_importador, fk_usuario, tipo, U.PK_USUARIO " +
                "from Controle_Atas C inner join " +
                "Usuarios U on U.Usuario = C.FK_usuario where pk_atas = @pk_atas";
            try
            {
                using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
                {
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {

                        cmd.Parameters.AddWithValue("@pk_atas", bsTema.GetRelatedCurrencyManager("pk_atas").Current.ToString());

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (gvAta.Rows.Count > 0)
                            {
                                while (reader.Read())
                                {
                                    mcbImportador.SelectedValue = Convert.IsDBNull(reader["fk_importador"]) ? -1 : Convert.ToInt32(reader["fk_importador"]);
                                    mcbUsuario.SelectedValue = Convert.IsDBNull(reader["pk_usuario"]) ? -1 : Convert.ToInt32(reader["pk_usuario"]);
                                    txtTema.Text = reader["tema"].ToString();
                                    txtData.Text = reader["Data"].ToString();

                                    if (Convert.ToInt16(reader["tipo"]) == 1)
                                    {
                                        rbOperacional.Checked = true;
                                    }
                                    else
                                    {
                                        rbSGI.Checked = true;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {

            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "DELETE FROM Controle_atas where pk_atas = @pk_atas";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@pk_atas", Convert.ToInt32(bsTema.GetRelatedCurrencyManager("pk_atas").Current));
                        string query2 = "DELETE FROM Controle_Atas_Arquivos where fk_atas = @fk_atas";
                        using (SqlCommand cmd2 = new SqlCommand(query2, conn))
                        {
                            cmd2.Parameters.AddWithValue("@fk_atas", Convert.ToInt32(bsTema.GetRelatedCurrencyManager("pk_atas").Current));
                            cmd2.ExecuteNonQuery();
                        }
                        string query3 = "DELETE FROM Controle_Atas_Participantes where fk_ata = @fk_atas";
                        using (SqlCommand cmd3 = new SqlCommand(query3, conn))
                        {
                            cmd3.Parameters.AddWithValue("@fk_atas", Convert.ToInt32(bsTema.GetRelatedCurrencyManager("pk_atas").Current));
                            cmd3.ExecuteNonQuery();
                        }
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bsTema.GetRelatedCurrencyManager("pk_atas").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Tema: {0}", txtTema.Text));
                    statusCadastro = StatusCadastro.None;
                    bsTema.RemoveCurrent();
                    MessageBox.Show("Registro excluido com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);

                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
                }
            }
        }

        private void gvAta_CellContentDoubleClick(object sender, DataGridViewCellEventArgs e)
        {
            if (gvAta.Columns[e.ColumnIndex].Name == "Upload")
            {
                var form = new FrmControleAtaUpload();
                form.ID = gvAta.Rows[e.RowIndex].Cells["Id"].Value.ToString();
                form.Tema = gvAta.Rows[e.RowIndex].Cells["Tema"].Value.ToString();
                FrmPrincipal.ShowModalMdiChildren(form);
            }
        }

        private void btnParticipantes_Click(object sender, EventArgs e)
        {
            var form = new FrmControleAtaParticipante();
            form.ID = bsTema.GetRelatedCurrencyManager("pk_atas").Current.ToString();
            FrmPrincipal.ShowModalMdiChildren(form);
        }

    }
}
