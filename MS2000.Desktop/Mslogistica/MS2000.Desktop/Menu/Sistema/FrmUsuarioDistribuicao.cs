using MS2000.Desktop.Classes;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace MS2000.Desktop.Menu.Sistema
{
    public partial class FrmUsuarioDistribuicao : MS2000.Desktop.Componentes.MSForm01
    {
        public string usuario { get; set; }
        public string email { get; set; }
        public bool ferias { get; set; }
        public FrmUsuarioDistribuicao()
        {
            InitializeComponent();
        }
        class Usuarios
        {
            public string Email { get; set; }
            public string usuario { get; set; }
            public string Nome_Completo { get; set; }
        }

        private void getUsuario()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

            string query = query = "select usuario,Nome_Completo,Email from usuarios where Email <> '' and Ativo = 1 order by Nome_Completo";

            DataTable table;

            try
            {
                List<Usuarios> dados = new List<Usuarios>();
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            dados.Add(new Usuarios
                            {
                                usuario = reader["usuario"].ToString(),
                                Nome_Completo = reader["Nome_Completo"].ToString(),
                                Email = reader["Email"].ToString()
                            });
                        }
                    }
                }
                cbbUsuario.DataSource = null;
                cbbUsuario.DataSource = dados;
                cbbUsuario.DisplayMember = "Nome_Completo";
                cbbUsuario.ValueMember = "usuario";
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void EncaminharControlePastas()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE Controle_Pastas SET Usuario = @UsuarioDestinatario, Aceite = 1 WHERE Usuario = @UsuarioRemetente";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@UsuarioDestinatario", cbbUsuario.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@UsuarioRemetente", usuario);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(cbbUsuario.SelectedValue.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Pastas do Usuário inativado {0} transferidas para o Usuário:{1} ", usuario, cbbUsuario.SelectedValue.ToString()));

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void EncaminharDistribuicao()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE Processos  " +
                               "SET Responsavel_Empresa = @Responsavel_Empresa_Destinatario " +
                               "WHERE Fechado = 0 AND Responsavel_Empresa = @Responsavel_Empresa_Remetente";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Responsavel_Empresa_Destinatario", cbbUsuario.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@Responsavel_Empresa_Remetente", usuario);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(cbbUsuario.SelectedValue.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Responsabilidade dos Processos do Ex-Colaborador :{0} transferida para o colaborador {1} ", usuario, cbbUsuario.SelectedValue.ToString()));

                string query1 = "UPDATE Processos  " +
                                "SET Supervisor_Resp = @Supervisor_Resp_Destinatario  " +
                                "WHERE Fechado = 0 AND Supervisor_Resp = @Supervisor_Resp_Remetente ";

                using (SqlCommand cmd = new SqlCommand(query1, conn))
                {
                    cmd.Parameters.AddWithValue("@Supervisor_Resp_Destinatario", cbbUsuario.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@Supervisor_Resp_Remetente", usuario);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(cbbUsuario.SelectedValue.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Supervisão dos Processos do Ex-Colaborador :{0} transferida para o colaborador {1}  ", usuario, cbbUsuario.SelectedValue.ToString()));

                string query2 = "UPDATE Processos  " +
                                "SET Coordenador_Resp = @Coordenador_Resp_Destinatario  " +
                                "WHERE Fechado = 0 AND Coordenador_Resp = @Coordenador_Resp_Remetente ";
                using (SqlCommand cmd = new SqlCommand(query2, conn))
                {
                    cmd.Parameters.AddWithValue("@Coordenador_Resp_Destinatario", cbbUsuario.SelectedValue.ToString());
                    cmd.Parameters.AddWithValue("@Coordenador_Resp_Remetente", usuario);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(cbbUsuario.SelectedValue.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Coordenação dos Processos do Ex-Colaborador :{0} transferida para o colaborador {1}  ", usuario, cbbUsuario.SelectedValue.ToString()));

                string query3 = "UPDATE Importadores  " +
                                "SET Email_Monitoracao = @Email  " +
                                "WHERE Email_Monitoracao = @Email_Monitoracao ";
                using (SqlCommand cmd = new SqlCommand(query3, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", ((Usuarios)cbbUsuario.SelectedItem).Email);
                    cmd.Parameters.AddWithValue("@Email_Monitoracao", email);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(cbbUsuario.SelectedValue.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Envio de Apenc:{0} transferida para o colaborador {1} ", usuario, cbbUsuario.SelectedValue.ToString()));

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void DesativarEmailsAvisos()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE Emails_avisos SET Ativo = 0 WHERE Email = @Email";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@Email", email);
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(cbbUsuario.SelectedValue.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Avisos do Usuário:{0} desativados ", usuario));

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }

        private void AlterarSupervisor()
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
                string query = "UPDATE Usuarios SET Supervisor = @SupervisorNovo WHERE ((Ativo = 1) OR ((Ativo = 0) AND (Ferias = 1))) AND Supervisor = @SupervisorAntigo";
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("@SupervisorAntigo", usuario);
                    cmd.Parameters.AddWithValue("@SupervisorNovo", cbbUsuario.SelectedValue.ToString());
                    cmd.ExecuteNonQuery();
                }

                LogSistemas.AddLogSistema(cbbUsuario.SelectedValue.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Usuários que tinham como Supervisor {0} passam a ter como Supervisor o Usuário: {1} ", usuario, cbbUsuario.SelectedValue.ToString()));

            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }
        }
        private void btnEnviar_Click(object sender, EventArgs e)
        {
            EncaminharControlePastas();

            EncaminharDistribuicao();

            Usuario.AtivaColaborador(false, ferias, usuario);

            if (ferias)
            {
                DesativarEmailsAvisos();

                LogSistemas.AddLogSistema(cbbUsuario.SelectedValue.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Colaborador colocado em Férias :{0} pelo Usuário {1} ", usuario, FrmPrincipal.UsuarioLogado));
            }
            else
            {
                AlterarSupervisor();
            }

            LogSistemas.AddLogSistema(cbbUsuario.SelectedValue.ToString(), FrmPrincipal.PK_UsuarioLogado, StatusCadastro.Novo, Convert.ToInt32(this.Tag), string.Format("Colaborador : {0} inativado no sistema. ", usuario));

            MessageBox.Show("Procedimento realizado com sucesso.", "Informação", MessageBoxButtons.OK, MessageBoxIcon.Information);
            Close();
        }
        private void FrmUsuarioDistribuicao_Load(object sender, EventArgs e)
        {
            getUsuario();
        }
    }
}
