using MS2000.Desktop.Classes;
using System;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop
{
    public partial class FrmAlterarSenha : MS2000.Desktop.Componentes.MSForm01
    {
        public string SenhaAntiga { get; set; }
        public int PK_UsuarioLogado { get; set; }

        public FrmAlterarSenha()
        {
            InitializeComponent();
        }

        private void btnConfirma_Click(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(txtNovaSenha.Text) || string.IsNullOrEmpty(txtRepitaSenha.Text))
            {
                MessageBox.Show("Favor preencher todos os campos.", "Atenção", MessageBoxButtons.OK, MessageBoxIcon.Stop);
                txtNovaSenha.Focus();
                return;
            }

            if (Util.IsPasswordStrong(txtNovaSenha.Text))
            {
                if (txtNovaSenha.Text == SenhaAntiga)
                {
                    MessageBox.Show("Favor informar uma NOVA senha", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                    txtNovaSenha.Text = "";
                    txtRepitaSenha.Text = "";
                    txtRepitaSenha.Focus();
                    return;
                }

                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "Update Usuarios set Senha = @senha , Data_validade_senha = CONVERT(date, getdate() +30) where PK_Usuario = @PK_Usuario";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@senha", txtNovaSenha.Text);
                    cmd.Parameters.AddWithValue("@PK_Usuario", PK_UsuarioLogado);
                    cmd.ExecuteNonQuery();
                }
                this.DialogResult = DialogResult.OK;
                this.Close();
            }
            else
            {
                MessageBox.Show("Senha inválida \n\r\n\r Sua Senha deverá: \n\r\n\r - Mínimo 6 Caracteres; \n\r - Números e Letras Distintos; \n\r\n\r Favor informar uma NOVA senha!", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
                txtNovaSenha.Text = "";
                txtRepitaSenha.Text = "";
                txtRepitaSenha.Focus();
            }
        }

        private void btnCancelar_Click(object sender, EventArgs e)
        {
            if (MessageBox.Show("Para utilizar o sistemas será necessário informar uma NOVA senha! \n\r Deseja sair do Sistema", "Confirmação", MessageBoxButtons.YesNo, MessageBoxIcon.Question) == System.Windows.Forms.DialogResult.Yes)
            {
                Application.Exit();
            }
            else
            {
                txtNovaSenha.Text = "";
                txtRepitaSenha.Text = "";
                txtRepitaSenha.Focus();
            }
        }

        private void FrmAlterarSenha_Load(object sender, EventArgs e)
        {
            txtNovaSenha.TextChanged += new EventHandler(contar);
            txtRepitaSenha.TextChanged += new EventHandler(contar);
        }

        void contar(object sender, EventArgs e)
        {
            if (((TextBox)sender).Name == "txtNovaSenha")
            label4.Text = ((TextBox)sender).Text.Length.ToString();


            if (((TextBox)sender).Name == "txtRepitaSenha")
                label5.Text = ((TextBox)sender).Text.Length.ToString();
        }
    }
}
