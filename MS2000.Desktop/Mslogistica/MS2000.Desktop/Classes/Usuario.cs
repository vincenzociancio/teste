using MS2000.Desktop.Componentes;
using MS2000.Desktop.Menu.Processos;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Windows.Forms;

namespace MS2000.Desktop.Classes
{
    public class Usuario
    {
        public int PK_Usuario { get; set; }
        public string Nome_Completo { get; set; }
        static public string Responsavel { get; set; }
        static public string Supervisor { get; set; }
        static public string Coordenador { get; set; }

        private string _mensagem = "Nenhuma mensagem!";

        public Usuario(int pk_usuario)
        {
            PK_Usuario = pk_usuario;
        }

        public bool AcessaCliente(string pk_importador)
        {
            var clientes = (new UsuariosClientes()).BuscarLista(PK_Usuario);

            if (clientes == null || clientes.Count <= 0)
            {
                _mensagem = "Usuário possui acesso a todos os clientes!";

                return true;
            }
            else
            {
                bool exit = clientes.Exists(c => c.FK_Importador == pk_importador);

                if (exit)
                    _mensagem = "Acesso ao processo do cliente permitido!";
                else
                    _mensagem = "Este processo pertence a um cliente que seu acesso não está permitido!";

                return exit;
            }
        }

        public string getMensagem()
        {
            return _mensagem;
        }

        public static bool AcessaPasta(string processo, MSForm01 form, string tipo = "")
        {
            try
            {
                SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;

                string query = "SELECT USUARIO FROM USUARIOS WHERE ((Hierarquia = 1) OR (Nivel ='0')) ";

                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    using (SqlDataReader reader = cmd.ExecuteReader())
                        while (reader.Read())
                        {
                            if (FrmPrincipal.UsuarioLogado == reader["Usuario"].ToString())
                                return true;
                        }
                }

                //Adicionar posteriormente a regra (form.Equals(typeof(FrmDistribuicaoOperacional)) && FrmPrincipal.Distribuidor) 
                //|| (form.Equals(typeof(FrmProcessoFollowup)) && FrmPrincipal.Cadastrador) || form.Equals(typeof(FrmProcessoFaturas))
                if (form.Name.Equals(typeof(FrmDistribuicaoOperacional).Name) && FrmPrincipal.Distribuidor)
                {
                    string query1 = "SELECT PROCESSO, USUARIO FROM CONTROLE_PASTAS WHERE ACEITE = 1 AND USUARIO = @Usuario AND PROCESSO = @Processo ";

                    using (SqlCommand cmd = new SqlCommand(query1, conn))
                    {
                        cmd.Parameters.AddWithValue("Usuario", FrmPrincipal.UsuarioLogado);
                        cmd.Parameters.AddWithValue("@Processo", processo);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            while (reader.Read())
                            {
                                if (reader.HasRows)
                                    return true;
                            }
                        }
                    }
                }

                string query2 = "SELECT Supervisor_Resp FROM Processos WHERE Codigo = @Processo";

                using (SqlCommand cmd = new SqlCommand(query2, conn))
                {
                    cmd.Parameters.AddWithValue("Processo", processo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        while (reader.Read())
                        {
                            if (FrmPrincipal.UsuarioLogado == reader["Supervisor_Resp"].ToString())
                                return true;
                        }
                    }
                }

                if (!form.Name.Equals(typeof(FrmDistribuicaoOperacional).Name) && tipo != "MR" && tipo != "CO" && tipo != "US")
                {
                    string query3 = "SELECT Responsavel_Empresa, Supervisor_Resp, Coordenador_Resp FROM Processos WHERE Codigo = @Processo";

                    using (SqlCommand cmd = new SqlCommand(query3, conn))
                    {
                        cmd.Parameters.AddWithValue("Processo", processo);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                reader.Read();
                                Responsavel = reader["Responsavel_Empresa"].ToString();
                                Supervisor = reader["Supervisor_Resp"].ToString();
                                Coordenador = reader["Coordenador_Resp"].ToString();
                            }
                        }
                    }
                    //aplicar posteriormente a regra abaixo, form inexistente no momento..
                    //if(!FrmPrincipal.AbreProcesso && !form.Equals(typeof(FrmProcessoFollowup)))                       
                    //{
                    //retirar esse if e descomentar o de cima quando a tela de ProcessoFollowup for criada.
                    if (!FrmPrincipal.AbreProcesso)
                    {
                        if (string.IsNullOrEmpty(Supervisor) || string.IsNullOrEmpty(Coordenador))
                        {
                            MessageBox.Show("Processo pendente de informação na distribuição, Responsável por MS e/ou Coordenador não informado, a tela será fechada.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            form.Close();
                            return false;
                        }
                    }
                    //}

                    if (FrmPrincipal.UsuarioLogado == Supervisor || FrmPrincipal.UsuarioLogado == Coordenador)
                    {
                        return true;
                    }
                }

                //aplicar posteriormente a regra abaixo, form inexistente no momento..
                //adicionar também ao if abaixo a seguinte regra  && (form.Name.Equals(typeof(FrmProcessoFollowUp).Name) || form.Name.Equals(typeof(FrmConhecimentoTransportes).Name)
                if ((FrmPrincipal.Arquivista || FrmPrincipal.Digitalizador || FrmPrincipal.Scanner || FrmPrincipal.AbreProcesso)
                   && form.Name.Equals(typeof(FrmConhecimentoTransportes).Name))
                {
                    string query5 = "SELECT PROCESSO, USUARIO FROM CONTROLE_PASTAS WHERE ACEITE = 1 AND PROCESSO = @Processo and ((Usuario = 'ARQUIVO') OR (Usuario = @Usuario))";

                    using (SqlCommand cmd = new SqlCommand(query5, conn))
                    {
                        cmd.Parameters.AddWithValue("Processo", processo);
                        cmd.Parameters.AddWithValue("Usuario", FrmPrincipal.UsuarioLogado);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                                return true;
                        }
                    }
                }
                else
                {
                    string query6 = "SELECT Responsavel_Empresa, Supervisor_Resp, Coordenador_Resp FROM Processos WHERE Codigo = @Processo";

                    using (SqlCommand cmd = new SqlCommand(query6, conn))
                    {
                        cmd.Parameters.AddWithValue("Processo", processo);

                        using (SqlDataReader reader = cmd.ExecuteReader())
                        {
                            if (reader.HasRows)
                            {
                                reader.Read();
                                Responsavel = reader["Responsavel_Empresa"].ToString();
                                Supervisor = reader["Supervisor_Resp"].ToString();
                                Coordenador = reader["Coordenador_Resp"].ToString();
                            }
                        }
                    }
                }

                if (!((FrmPrincipal.Arquivista || FrmPrincipal.Digitalizador || FrmPrincipal.Scanner || FrmPrincipal.AbreProcesso) && form.Name.Equals(typeof(FrmConhecimentoTransportes).Name)))
                    if (FrmPrincipal.Hierarquia != 3)
                    {
                        if (FrmPrincipal.UsuarioLogado != Responsavel)
                        {
                            MessageBox.Show("O seu Usuário não é Responsável pelo Processo, a tela será fechada.",
                                "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);
                            form.Close();
                            return false;

                        }

                    }

                string query4 = "SELECT PROCESSO, USUARIO FROM CONTROLE_PASTAS WHERE ACEITE = 1 AND USUARIO = @Usuario AND PROCESSO = @Processo";

                using (SqlCommand cmd = new SqlCommand(query4, conn))
                {
                    cmd.Parameters.AddWithValue("Processo", processo);
                    cmd.Parameters.AddWithValue("Usuario", FrmPrincipal.UsuarioLogado);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows || FrmPrincipal.Documentador)
                            return true;
                    }
                }

                MessageBox.Show("O processo não se encontra no seu controle, a tela será fechada.", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Information);

                form.Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message, "Erro", MessageBoxButtons.OK, MessageBoxIcon.Error);
            }

            return false;
        }
        public static bool DINaoSolicitada(string processo, MSForm01 form)
        {
            string query = "SELECT Processo FROM Audita_Registro_DI WHERE Rejeitada = 0 AND Processo = @Processo ";

            using (SqlConnection conn = DatabaseSqlConnection.Instance.Conexao)
            {
                using (SqlCommand cmd = new SqlCommand(query, conn))
                {
                    cmd.Parameters.AddWithValue("Processo", processo);

                    using (SqlDataReader reader = cmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            MessageBox.Show(@"Registro de DI já solicitado, a tela está bloqueada!", "Aviso", MessageBoxButtons.OK, MessageBoxIcon.Warning);

                            return false;
                        }

                        return true;
                    }
                }
            }
        }

        public List<Usuario> getUsuarios()
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = " SELECT PK_USUARIO, Usuario, Nome_Completo, Ativo " +
                           " FROM Usuarios " +
                           " WHERE Ativo = 1 " +
                           " ORDER BY Nome_Completo ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                using (SqlDataReader reader = cmd.ExecuteReader())
                {
                    List<Usuario> lista_usuarios = new List<Usuario>();

                    while (reader.Read())
                    {
                        lista_usuarios.Add(new Usuario(reader));
                    }

                    return lista_usuarios;
                }
            }
        }


        public static void AtivaColaborador(bool Ativa, bool Ferias, string Usuario)
        {
            SqlConnection conn = DatabaseSqlConnection.Instance.Conexao;
            string query = "Update Usuarios set Ativo =@Ativo ,Ferias = @Ferias where Usuario = @Usuario  ";

            using (SqlCommand cmd = new SqlCommand(query, conn))
            {
                cmd.Parameters.AddWithValue("@Ativo", Ativa);
                cmd.Parameters.AddWithValue("@Ferias", Ferias);
                cmd.Parameters.AddWithValue("@Usuario", Usuario);
                cmd.ExecuteNonQuery();
            }
        }
        public Usuario()
        {

        }

        public Usuario(SqlDataReader reader)
        {
            this.PK_Usuario = Convert.ToInt32(reader["PK_Usuario"].ToString());
            this.Nome_Completo = reader["Nome_Completo"].ToString();
        }
    }
}
