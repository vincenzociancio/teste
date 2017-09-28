using MS2000.Desktop.Classes;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmGerenciaNormaProcedimento : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
            groupBox1.Enabled = (statusCadastro == StatusCadastro.None);
            btnCadastroSetor.Enabled = (statusCadastro == StatusCadastro.None);
            btnRevisa.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in this.panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmGerenciaNormaProcedimento()
        {
            InitializeComponent();
        }

        private DataTable getControle()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT sequencial,Norma,Nome_PDF,cs.PK_SETOR, cs.Nome_setor as Setor,css.PK_SETOR_SUBSETOR,css.Nome_SubSetor as SubSetor,case when Ativo = 0 then 'Ativo' else 'Revisando' End as Ativo " +
                           "FROM Normas_gerencia_Proc N " +
                           "INNER JOIN Controle_normas_setor cs ON N.Setor = cs.PK_SETOR " +
                           "LEFT JOIN controle_normas_setor_subsetor css ON N.Setor =css.fk_setor  and N.SubSetor = css.PK_SETOR_SUBSETOR " +
                           "ORDER BY Norma ";

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

        private void AtualizaGrid()
        {
            var sequencial = ((DataRowView)this.bindingSource.Current).Row["sequencial"].ToString();
            bindingSource.DataSource = getControle();
            bindingSource.Position = bindingSource.Find("sequencial", sequencial);
        }

        private void getSetor()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "SELECT PK_SETOR, Nome_setor FROM Controle_normas_setor where Excluido = '0' order by Nome_setor ";
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
                mcbbSetor.DataSource = table;
                mcbbSetor.DisplayMember = "Nome_setor";
                mcbbSetor.ValueMember = "PK_SETOR";
                mcbbSetor.SelectedIndex = -1;
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void getSubSetor(string fk_setor)
        {

            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query;
            DataTable table;
            if (!string.IsNullOrEmpty(fk_setor))
            {
                query = "SELECT PK_SETOR_SUBSETOR,Nome_SubSetor " +
                        "FROM controle_normas_setor_subsetor " +
                        "WHERE fk_setor = @fk_setor and Excluido = '0' order by Nome_SubSetor";
            }
            else
            {
                query = "SELECT PK_SETOR_SUBSETOR,Nome_SubSetor " +
                        "FROM controle_normas_setor_subsetor where Excluido = '0'  " +
                        "Order by Nome_SubSetor";
            }

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                if (!string.IsNullOrEmpty(fk_setor))
                {
                    cmd.Parameters.AddWithValue("@fk_setor", fk_setor);
                }

                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    table = new DataTable();
                    table.Load(reader);
                }

            }
            mcbbSubSetor.DataSource = null;
            mcbbSubSetor.DataSource = table;
            mcbbSubSetor.DisplayMember = "Nome_SubSetor";
            mcbbSubSetor.ValueMember = "PK_SETOR_SUBSETOR";
            mcbbSubSetor.SelectedIndex = -1;
        }

        private void FrmGerenciaNormaProcedimento_Load(object sender, EventArgs e)
        {
            getSetor();

            getSubSetor(null);

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getControle();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtNorma.DataBindings.Add(new Binding("Text", bindingSource, "Norma", true));
            mcbbSetor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "PK_SETOR"));
            mcbbSubSetor.DataBindings.Add(new Binding("SelectedValue", bindingSource, "PK_SETOR_SUBSETOR"));
            txtNomePDF.DataBindings.Add(new Binding("Text", bindingSource, "Nome_PDF", true));

        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
        }

        private bool NormaEmUso()
        {
            string query;
            if (!string.IsNullOrEmpty(mcbbSubSetor.SelectedText))
            {
                query = "SELECT sequencial FROM normas_gerencia_proc WHERE norma =@Norma and nome_PDF =@Nome_PDF and Setor =@Setor and SubSetor =@SubSetor  ";
            }
            else
            {
                query = "SELECT sequencial FROM normas_gerencia_proc WHERE norma =@Norma and nome_PDF =@Nome_PDF and Setor =@Setor and SubSetor is null  ";
            }

            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Norma", txtNorma.Text);
                    cmd.Parameters.AddWithValue("@Nome_PDF", txtNomePDF.Text);
                    cmd.Parameters.AddWithValue("@Setor", mcbbSetor.SelectedValue == null ? "" : mcbbSetor.SelectedValue);
                    cmd.Parameters.AddWithValue("@SubSetor", mcbbSubSetor.SelectedValue == null ? "is null" : mcbbSubSetor.SelectedValue);

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
            if (string.IsNullOrEmpty(txtNorma.Text))
            {
                MessageBox.Show("A Norma é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNorma.Focus();
                return;
            }

            if (string.IsNullOrEmpty(mcbbSetor.Text))
            {
                MessageBox.Show("O Setor é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                mcbbSetor.Focus();
                return;
            }

            if (string.IsNullOrEmpty(txtNomePDF.Text))
            {
                MessageBox.Show("O Nome do PDF é obrigatório!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNomePDF.Focus();
                return;
            }

            if (NormaEmUso())
            {
                MessageBox.Show("Essa Norma já está cadastrada!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "UPDATE Normas_gerencia_Proc " +
                                   "SET Norma = @Norma,Nome_PDF = @Nome_PDF,Setor = @Setor,SubSetor = @SubSetor " +
                                   "WHERE sequencial = @sequencial";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Norma", txtNorma.Text);
                        cmd.Parameters.AddWithValue("@Nome_PDF", txtNomePDF.Text);
                        cmd.Parameters.AddWithValue("@Setor", (mcbbSetor.SelectedValue == null ? "" : mcbbSetor.SelectedValue));
                        cmd.Parameters.AddWithValue("@SubSetor", (mcbbSubSetor.SelectedValue == null ? "" : mcbbSubSetor.SelectedValue));
                        cmd.Parameters.AddWithValue("@sequencial", bindingSource.GetRelatedCurrencyManager("sequencial").Current.ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("sequencial").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Norma:{0} PDF:{1} Setor{2}", txtNorma.Text, txtNomePDF.Text, mcbbSetor.Text));
                }
                else
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "INSERT INTO Normas_gerencia_Proc(Norma,Nome_PDF,Setor,SubSetor) " +
                                   "VALUES(@Norma,@Nome_PDF,@Setor,@SubSetor)";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Norma", txtNorma.Text);
                        cmd.Parameters.AddWithValue("@Nome_PDF", txtNomePDF.Text);
                        cmd.Parameters.AddWithValue("@Setor", (mcbbSetor.SelectedValue == null ? "" : mcbbSetor.SelectedValue));
                        cmd.Parameters.AddWithValue("@SubSetor", (mcbbSubSetor.SelectedValue == null ? "" : mcbbSubSetor.SelectedValue));
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("sequencial").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Norma:{0} PDF:{1} Setor{2}", txtNorma.Text, txtNomePDF.Text, mcbbSetor.Text));
                }
                AtualizaGrid();
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
                    string query = "DELETE FROM Normas_gerencia_Proc where sequencial = @ID";
                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@ID", ((DataRowView)this.bindingSource.Current).Row["sequencial"].ToString());
                        cmd.ExecuteNonQuery();
                    }
                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["sequencial"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Norma: {0}", txtNorma.Text));
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

        private void mcbbSetor_SelectedIndexChanged(object sender, EventArgs e)
        {
            ComboBox cb = (ComboBox)sender;
            if (cb.Focused)
            {
                getSubSetor(mcbbSetor.SelectedValue.ToString());
            }
            else
            {
                return;
            }
        }

        private void txtLocaliza_TextChanged(object sender, EventArgs e)
        {

            if ((string.IsNullOrEmpty(txtLocaliza.Text)))
            {
                bindingSource.RemoveFilter();
            }
            else
            {
                bindingSource.Filter = "Norma LIKE '" + txtLocaliza.Text + "%'";
            }
        }

        private void btnCadastroSetor_Click(object sender, EventArgs e)
        {
            using (var form = new FrmGerenciaNormaProcedimentoSetor())
            {
                if (FrmPrincipal.ShowModalMdiChildren(form) == DialogResult.OK)
                {
                    getSetor();
                }
            }
        }

        private void SetAtivarRevisar(bool Ativo)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "Update Normas_gerencia_Proc set Ativo =@Ativo " +
                           "WHERE sequencial = @sequencial";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Ativo", Ativo);
                cmd.Parameters.AddWithValue("@sequencial", ((DataRowView)this.bindingSource.Current).Row["sequencial"].ToString());
                cmd.ExecuteNonQuery();
            }
        }

        private void EnviaEmail()
        {
            string corpo_email;
            string vDe, vPara, vCC, vCCo, vImp;
            string vAssunto;
            string vTitulo;
            string vBody;
            string vAnexo;
            int vHTML;

            vTitulo = "MS2000 - Aviso de Atualização no Procedimento";
            vAssunto = "Por favor, verifique o Procedimento abaixo";
            vHTML = 1;

            vDe = "MS2000 <auditoria@logistic-ms.com.br>";
            vPara = "mslogistica@mslogistica.com.br";
            vCC = "";
            vCCo = "";

            corpo_email = " O Procedimento  " + txtNorma.Text + " foi atualizado.Favor verificar no Ms2000.";

            vBody = "<BR>"
                   + "Prezado,<BR>"
                   + "<BR>"
                   + corpo_email + "<BR><BR>"
                   + "Este e-mail é automático e não necessita de resposta. <BR>"
                   + "<BR><BR>"
                   + "Atenciosamente,"
                   + "<BR><BR>"
                   + "MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>";

            EmailAuto.incluir("NORMA", vAssunto, vTitulo, vDe, vPara, vCC, vCCo, vBody, "", vHTML);

        }

        private void btnRevisa_Click(object sender, EventArgs e)
        {
            try
            {
                if (btnRevisa.Text == "Revisar")
                {
                    btnRevisa.Text = "Ativar";
                    SetAtivarRevisar(true);
                    AtualizaGrid();
                }
                else
                {
                    btnRevisa.Text = "Revisar";
                    SetAtivarRevisar(false);
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                    string query = "SELECT Sequencial,Norma,Dt_Inicial,Dt_Final,Excluido FROM ISO_Letreiro where Norma = @norma";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@norma", ((DataRowView)this.bindingSource.Current).Row["Norma"].ToString());
                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                string queryUpdate = "Update ISO_letreiro  set DT_inicial = @Data , DT_Final = '' , Excluido = 0 " +
                                                     "WHERE Norma= @Norma";
                                using (SqlCommand cmdUpdate = new SqlCommand(queryUpdate, conn))
                                {
                                    cmdUpdate.Parameters.AddWithValue("@Data", DateTime.Now.Date);
                                    cmdUpdate.Parameters.AddWithValue("@Norma", txtNorma.Text);
                                    cmdUpdate.ExecuteNonQuery();
                                }
                            }
                            else
                            {
                                var queryInsert = "INSERT INTO ISO_Letreiro(Norma,Dt_Inicial,Dt_Final,Excluido) " +
                                                  "VALUES(@Norma,@Data,'','0') ";
                                using (SqlCommand cmdInsert = new SqlCommand(queryInsert, conn))
                                {
                                    cmdInsert.Parameters.AddWithValue("@Norma", txtNorma.Text);
                                    cmdInsert.Parameters.AddWithValue("@Data", DateTime.Now.Date);
                                    cmdInsert.ExecuteNonQuery();
                                }
                            }
                        }
                    }
                    EnviaEmail();
                    AtualizaGrid();
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void dataGridView_SelectionChanged(object sender, EventArgs e)
        {
            if (dataGridView.RowCount > 0)
            {
                if (((DataRowView)this.bindingSource.Current).Row["Ativo"].ToString() == "Revisando")
                {
                    btnRevisa.Text = "Ativar";
                }
                else
                {
                    btnRevisa.Text = "Revisar";
                }
            }
        }
    }
}
