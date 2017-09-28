using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.ISO
{
    public partial class FrmGerenciaNormaProcedimentoSubSetor : MS2000.Desktop.Componentes.MSForm01
    {
        protected StatusCadastro statusCadastro;
        public string fk_setor { get; set; }

        public virtual void VerificaBotoes()
        {
            btnSalvar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            btnExcluir.Enabled = (statusCadastro == StatusCadastro.None);
            btnNovo.Enabled = (statusCadastro == StatusCadastro.None);
            btnEditar.Enabled = (statusCadastro == StatusCadastro.None);
            btnCancelar.Enabled = (statusCadastro == StatusCadastro.Editar) || (statusCadastro == StatusCadastro.Novo);
            dataGridView.Enabled = (statusCadastro == StatusCadastro.None);
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }

            VerificaBotoes();
        }

        public FrmGerenciaNormaProcedimentoSubSetor()
        {
            InitializeComponent();
        }

        private DataTable getSubSetor()
        {
            string query = "SELECT CNSS.PK_SETOR_SUBSETOR,CNSS.fk_setor,CNSS.Nome_SubSetor,CNSS.Excluido,CNS.Nome_setor " +
                           "FROM controle_normas_setor_subsetor CNSS INNER JOIN controle_normas_setor CNS " +
                           "ON CNSS.FK_SETOR = CNS.PK_SETOR " +
                           "WHERE CNSS.EXCLUIDO = 0 " +
                           "AND CNSS.FK_SETOR = @FK_SETOR " +
                           "ORDER BY CNSS.nome_subsetor";
            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@FK_SETOR", fk_setor);
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        DataTable table = new DataTable();
                        table.Load(reader);
                        return table;
                    }
                }
            }
        }

        private void FrmGerenciaNormaProcedimentoSubSetor_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            HabilitarDesabilitaControles(false);

            dataGridView.AutoGenerateColumns = false;

            bindingSource.DataSource = getSubSetor();

            dataGridView.DataSource = bindingSource;

            bindingNavigator.BindingSource = bindingSource;

            this.txtDescricao.DataBindings.Add(new Binding("Text", bindingSource, "Nome_SubSetor", true));
        }

        private void btnNovo_Click(object sender, EventArgs e)
        {
            bindingSource.AddNew();
            statusCadastro = StatusCadastro.Novo;
            HabilitarDesabilitaControles(true);
            tabControl.SelectedTab = tabFormulario;

            txtDescricao.Focus();
        }

        private bool SubSetorEmUso()
        {
            string query = "SELECT nome_subsetor FROM controle_normas_setor_subsetor WHERE fk_setor = @fk_setor and nome_subsetor = @nome_subsetor and Excluido = '0' ";

            var GoOn = false;
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@fk_setor", fk_setor);
                    cmd.Parameters.AddWithValue("@nome_subsetor", txtDescricao.Text);
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
                MessageBox.Show("A descrição é obrigatória!", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtDescricao.Focus();
                return;
            }

            if (SubSetorEmUso())
            {
                MessageBox.Show("Favor verificar pois este SubSetor já está cadastrado!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                return;
            }

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "update controle_normas_setor_subsetor set Nome_SubSetor = @Nome_SubSetor where PK_SETOR_SUBSETOR = @PK_SETOR_SUBSETOR";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Nome_SubSetor", txtDescricao.Text);
                            cmd.Parameters.AddWithValue("@PK_SETOR_SUBSETOR", ((DataRowView)this.bindingSource.Current).Row["PK_SETOR_SUBSETOR"].ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["PK_SETOR_SUBSETOR"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Nome_SubSetor"].ToString(), txtDescricao.Text));
                }
                else
                {
                    string query = "insert into controle_normas_setor_subsetor (fk_setor,Nome_SubSetor) values (@fk_setor,@Nome_SubSetor)";

                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@fk_setor", fk_setor);
                            cmd.Parameters.AddWithValue("@Nome_SubSetor", txtDescricao.Text);
                            cmd.ExecuteNonQuery();
                        }
                    }
                    var sequencial = ((DataRowView)this.bindingSource.Current).Row["PK_SETOR_SUBSETOR"].ToString();
                    bindingSource.DataSource = getSubSetor();
                    bindingSource.Position = bindingSource.Find("PK_SETOR_SUBSETOR", sequencial);
                    LogSistemas.AddLogSistema(FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Descricao:{0}", txtDescricao.Text));
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
            tabControl.SelectedTab = tabFormulario;

            txtDescricao.Focus();
        }

        private void btnExcluir_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Tem certeza que deseja excluir o registro?", "Excluir", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                try
                {
                    SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                    string query = "update controle_normas_setor_subsetor set Excluido = @Excluido where PK_SETOR_SUBSETOR = @PK_SETOR_SUBSETOR";

                    using (SqlCommand cmd = new SqlCommand(query, conn))
                    {
                        cmd.Parameters.AddWithValue("@Excluido", true);
                        cmd.Parameters.AddWithValue("@PK_SETOR_SUBSETOR", ((DataRowView)this.bindingSource.Current).Row["PK_SETOR_SUBSETOR"].ToString());
                        cmd.ExecuteNonQuery();
                    }

                    LogSistemas.AddLogSistema(((DataRowView)this.bindingSource.Current).Row["PK_SETOR_SUBSETOR"].ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Excluir, Convert.ToInt32(this.Tag), string.Format("Descricao: {0}", txtDescricao.Text));
                    bindingSource.RemoveCurrent();
                    statusCadastro = StatusCadastro.None;

                    MessageBox.Show("Registro excluído com sucesso.", "Exclusão", MessageBoxButtons.OK, MessageBoxIcon.Information);
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
