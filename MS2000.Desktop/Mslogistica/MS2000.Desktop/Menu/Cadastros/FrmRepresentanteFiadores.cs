using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Cadastros
{
    public partial class FrmRepresentanteFiadores : MS2000.Desktop.Componentes.MSForm01
    {
        public string ID_Fiador { get; set; }
        public string Razao_social { get; set; }

        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dgvDados.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }


        public FrmRepresentanteFiadores()
        {
            InitializeComponent();
        }

        private DataTable getRepresentante()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT ID,FK_Codigo,Nome,Cargo,Identidade,CPF,Nacionalidade,Estado_civil,Exibir,Identificacao,Sexo,RG_Estrangeiro " +
                           "FROM Representantes_fiador_importador " +
                           "WHERE FK_Codigo = @FK_Codigo  and Tipo = 1" +
                           "ORDER BY Nome";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@FK_Codigo", ID_Fiador);
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    DataTable table = new DataTable();
                    table.Load(reader);
                    return table;
                }
            }
        }

        private void FrmRepresentanteFiadores_Load(object sender, EventArgs e)
        {
            lblRazao_Social.Text = Razao_social;
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dgvDados.AutoGenerateColumns = false;
            bindingSource.DataSource = getRepresentante();

            dgvDados.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtNome.DataBindings.Add(new Binding("Text", bindingSource, "Nome", true));
            txtCargo.DataBindings.Add(new Binding("Text", bindingSource, "Cargo", true));
            txtIdentidade.DataBindings.Add(new Binding("Text", bindingSource, "Identidade", true));
            txtCPF.DataBindings.Add(new Binding("Text", bindingSource, "CPF", true));
            txtNacionalidade.DataBindings.Add(new Binding("Text", bindingSource, "Nacionalidade", true));
            txtEstadoCivil.DataBindings.Add(new Binding("Text", bindingSource, "Estado_civil", true));
            ckbExibir.DataBindings.Add(new Binding("Checked", bindingSource, "Exibir", true));
            txtIdentificacao.DataBindings.Add(new Binding("Text", bindingSource, "Identificacao", true));

            Binding b = new Binding("Checked", bindingSource, "Sexo", true);
            b.Format += new ConvertEventHandler(FormatRadio);
            rdbFeminino.DataBindings.Add(b);
            ckbRG.DataBindings.Add(new Binding("Checked", bindingSource, "RG_Estrangeiro", true));
        }

        private void FormatRadio(object sender, ConvertEventArgs e)
        {
            if (e.Value.GetType() != typeof(bool)) return;

            bool n = (bool)e.Value;
            switch (n)
            {
                case false:
                    rdbMasculino.Checked = true;
                    break;
                case true:
                    rdbFeminino.Checked = true;
                    break;
            }
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {
            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Representantes_fiador_importador " +
                                   "SET Nome = @Nome,Cargo = @Cargo,Identidade = @Identidade, " +
                                   "CPF = @CPF,Nacionalidade = @Nacionalidade,Estado_civil = @Estado_civil,Exibir= @Exibir, " +
                                   "Identificacao = @Identificacao,Sexo = @Sexo,RG_Estrangeiro =@RG_Estrangeiro " +
                                   "WHERE ID = @ID";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Cargo", txtCargo.Text);
                        cmd.Parameters.AddWithValue("@Identidade", txtIdentidade.Text);
                        cmd.Parameters.AddWithValue("@CPF", txtCPF.Text);
                        cmd.Parameters.AddWithValue("@Nacionalidade", txtNacionalidade.Text);
                        cmd.Parameters.AddWithValue("@Estado_civil", txtEstadoCivil.Text);
                        cmd.Parameters.AddWithValue("@Exibir", ckbExibir.Checked);
                        cmd.Parameters.AddWithValue("@Identificacao", txtIdentificacao.Text);
                        cmd.Parameters.AddWithValue("@Sexo", (rdbMasculino.Checked == true) ? false : true);
                        cmd.Parameters.AddWithValue("@RG_Estrangeiro", ckbRG.Checked);
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(((DataRowView)bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("Nome: {0} - Razao Social {1} - Tipo{2}", txtNome.Text, Razao_social, "1"));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Representantes_fiador_importador " +
                                   "(FK_Codigo,Nome,Cargo,Identidade,CPF " +
                                   ",Nacionalidade,Estado_civil,Tipo,Exibir,Identificacao,Sexo,RG_Estrangeiro) " +
                                   " VALUES " +
                                   "(@FK_Codigo,@Nome,@Cargo,@Identidade " +
                                   ",@CPF,@Nacionalidade,@Estado_civil,@Tipo,@Exibir,@Identificacao,@Sexo,@RG_Estrangeiro)";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@FK_Codigo", ID_Fiador);
                        cmd.Parameters.AddWithValue("@Nome", txtNome.Text);
                        cmd.Parameters.AddWithValue("@Cargo", txtCargo.Text);
                        cmd.Parameters.AddWithValue("@Identidade", txtIdentidade.Text);
                        cmd.Parameters.AddWithValue("@CPF", txtCPF.Text);
                        cmd.Parameters.AddWithValue("@Nacionalidade", txtNacionalidade.Text);
                        cmd.Parameters.AddWithValue("@Estado_civil", txtEstadoCivil.Text);
                        cmd.Parameters.AddWithValue("@Tipo", 1);
                        cmd.Parameters.AddWithValue("@Exibir", ckbExibir.Checked);
                        cmd.Parameters.AddWithValue("@Identificacao", txtIdentificacao.Text);
                        cmd.Parameters.AddWithValue("@Sexo", (rdbMasculino.Checked == true) ? false : true);
                        cmd.Parameters.AddWithValue("@RG_Estrangeiro", ckbRG.Checked);
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Nome: {0} - Razao Social {1} - Tipo{2}", txtNome.Text, Razao_social, "1"));
                    bindingSource.DataSource = getRepresentante();
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
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            bindingSource.CancelEdit();
            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);
        }

        private void btnEditar_Click(object sender, EventArgs e)
        {
            statusCadastro = StatusCadastro.Editar;
            HabilitarDesabilitaControles(true);
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "DELETE FROM Representantes_fiador_importador " +
                                   "WHERE ID = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)bindingSource.Current).Row["ID"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(((DataRowView)bindingSource.Current).Row["ID"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Nome: {0} - Razao Social {1} - Tipo{2}", txtNome.Text, Razao_social, "1"));
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

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }
    }
}
