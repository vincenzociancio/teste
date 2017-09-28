using Microsoft.Reporting.WinForms;
using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.IO;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmControleSenhaUsuario : MS2000.Desktop.Componentes.MSForm01
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
        }

        public void HabilitarDesabilitaControles(bool bValue)
        {
            foreach (Control controle in panelControl.Controls)
            {
                controle.Enabled = bValue;
            }
            VerificaBotoes();
        }

        private DataTable getControleSenha()
        {
            string query = "SELECT C.ID, U.Usuario,U.Nome_Completo, C.Senha_MS2000, Cast(U.Data_validade_senha as Date) as Data_validade_senha , C.Senha_Rede,U.Ativo " +
                           "FROM Usuarios U INNER JOIN Controle_Usuarios_Senhas C ON U.Usuario = C.Usuario " +
                           "ORDER BY U.Nome_Completo";
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

        public FrmControleSenhaUsuario()
        {
            InitializeComponent();
        }

        private void FrmControleSenhaUsuario_Load(object sender, EventArgs e)
        {
            bindingNavigator.DeleteItem = null;

            statusCadastro = StatusCadastro.None;
            //LimpaControles();
            HabilitarDesabilitaControles(false);

            InclusaoControleSenha();
            dataGridView.AutoGenerateColumns = false;
            bindingSource.DataSource = getControleSenha();

            dataGridView.DataSource = bindingSource;
            bindingNavigator.BindingSource = bindingSource;

            txtRede.DataBindings.Add(new Binding("Text", bindingSource, "Senha_Rede", true));
            rdbAtivos_CheckedChanged(null, null);
        }

        private void btnSalvar_Click(object sender, EventArgs e)
        {          

            try
            {
                if (statusCadastro == StatusCadastro.Editar)
                {
                    string query = "UPDATE Controle_Usuarios_Senhas SET Senha_Rede = @Senha_Rede WHERE ID = @ID";
                    using (var conn = DatabaseSqlConnection.Instance.Conexao)
                    {
                        using (SqlCommand cmd = new SqlCommand(query, conn))
                        {
                            cmd.Parameters.AddWithValue("@Senha_Rede", txtRede.Text);
                            cmd.Parameters.AddWithValue("@ID", bindingSource.GetRelatedCurrencyManager("ID").Current.ToString());
                            cmd.ExecuteNonQuery();
                        }
                    }
                    LogSistemas.AddLogSistema(bindingSource.GetRelatedCurrencyManager("ID").Current.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Editar, Convert.ToInt32(this.Tag), string.Format("De:{0} Para:{1}", ((DataRowView)this.bindingSource.Current).Row["Senha_Rede"].ToString(), txtRede.Text));
                }              

                if (statusCadastro == StatusCadastro.Editar)
                {
                    MessageBox.Show("Registro alterado com sucesso.", "Salvar", MessageBoxButtons.OK, MessageBoxIcon.Information);
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
        }

        private void btnFechar_Click(object sender, EventArgs e)
        {
            Close();
        }

        private void txtPesquisar_TextChanged(object sender, EventArgs e)
        {
            if (rdbAtivos.Checked)
            {
                bindingSource.Filter = "Nome_Completo like '" + txtPesquisar.Text + "%' and Ativo = True";
            }
            else
                if (rdbInativos.Checked)
                {
                    bindingSource.Filter = "Nome_Completo like '" + txtPesquisar.Text + "%' and Ativo = False";
                }
                else
                {
                    bindingSource.Filter = "Nome_Completo like '" + txtPesquisar.Text + "%'";
                }          
        }


        private void InclusaoControleSenha()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "DELETE Controle_Usuarios_Senhas FROM Controle_Usuarios_Senhas " +
                           "LEFT JOIN Usuarios ON Controle_Usuarios_Senhas.Usuario = Usuarios.Usuario " +
                           "WHERE (((Usuarios.Usuario) Is Null))";
            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.ExecuteNonQuery();
            }

            string query1 = "INSERT INTO Controle_Usuarios_Senhas ( Usuario, Senha_MS2000 ) " +
                            "SELECT Usuarios.Usuario, Usuarios.Senha " +
                            "FROM Usuarios LEFT JOIN Controle_Usuarios_Senhas ON Usuarios.Usuario = Controle_Usuarios_Senhas.Usuario " +
                            "WHERE (((Controle_Usuarios_Senhas.Usuario) Is Null) AND ((Usuarios.Nivel) <> 'x'))";
            using (SqlCommand cmd = new SqlCommand(query1, conn))
            {
                cmd.ExecuteNonQuery();
            }

            string query2 = "UPDATE Controle_Usuarios_Senhas SET Controle_Usuarios_Senhas.Senha_MS2000 = [usu].[senha] " +
                            "FROM Controle_Usuarios_Senhas " +
                            "INNER JOIN Usuarios AS usu ON Controle_Usuarios_Senhas.Usuario = usu.Usuario";
            using (SqlCommand cmd = new SqlCommand(query2, conn))
            {
                cmd.ExecuteNonQuery();
            }

        }

        private void printToolStripButton_Click(object sender, EventArgs e)
        {         
        
        }

        private void todosToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmPrintSenha print = new FrmPrintSenha();
            print.ID = bindingSource.GetRelatedCurrencyManager("ID").Current.ToString();
            print.TipoRelatorio = 1;
           
            print.Show();
        }

        private void porColaboradorToolStripMenuItem_Click(object sender, EventArgs e)
        {
            FrmPrintSenha print = new FrmPrintSenha();
            print.TipoRelatorio = 2;
            print.ID = bindingSource.GetRelatedCurrencyManager("ID").Current.ToString();
            print.Show();
        }

        private void rdbAtivos_CheckedChanged(object sender, EventArgs e)
        {
            txtPesquisar.Clear();
            txtPesquisar.Focus();
            bindingSource.Filter = "Ativo = True";
        }

        private void rdbInativos_CheckedChanged(object sender, EventArgs e)
        {
            txtPesquisar.Clear();
            txtPesquisar.Focus();
            bindingSource.Filter = "Ativo = False";
        }

        private void rdbTodos_CheckedChanged(object sender, EventArgs e)
        {
            txtPesquisar.Clear();
            txtPesquisar.Focus();
            bindingSource.RemoveFilter();
        }
    }
}
