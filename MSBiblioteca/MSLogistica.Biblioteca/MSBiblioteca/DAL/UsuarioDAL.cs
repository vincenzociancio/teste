using System.Data.SqlClient;
using System.Text;
using System;
using System.Data;
using MSBiblioteca.BLL;
using MSBiblioteca.Constante;
using MSBiblioteca.Interfaces;
using MSBiblioteca.DTO;
using System.Collections.Generic;
using System.Web.UI;
using MSBiblioteca.MSUtil;

namespace MSBiblioteca.DAL
{
    internal class UsuarioDAL : BancoDados
    {
        static string _usuarioLogado = "";

        internal DataTable ValidarUsuario(string Usuario)
        {
            StringBuilder strbQuery = new StringBuilder();
            strbQuery.Append("SELECT TOP 1 ");
            strbQuery.Append("pk_usuario,");
            strbQuery.Append("nome_completo,");
            strbQuery.Append("usuario,");
            strbQuery.Append("senha,");
            strbQuery.Append("Data_validade_senha,");
            strbQuery.Append("ativo, AcessoWeb ");
            strbQuery.Append("FROM Usuarios ");
            strbQuery.Append("WHERE Usuario=@Usuario");

            try
            {
                AbrirConexao();

                using (SqlCommand objCommand = new SqlCommand(strbQuery.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Usuario", Usuario);

                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        using (DataTable objTable = new DataTable())
                        {
                            objTable.Load(objDr);
                            //Atribuíndo usuario logado...
                            _usuarioLogado = Usuario;
                            return objTable;
                        }
                    }
                }
            }
            finally
            {
                FecharConexao();
            }
        }

        internal DataTable BuscarTodos(bool SomenteRegistrosAtivos = true)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * ");
            strSql.Append("FROM Usuarios ");
            if (SomenteRegistrosAtivos)
            {
                strSql.Append("WHERE Ativo = 1 ");
            }
            strSql.Append("ORDER BY nome_completo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    using (SqlDataReader objDr = objCommand.ExecuteReader())
                    {
                        using (DataTable objTable = new DataTable())
                        {
                            objTable.Load(objDr);
                            return objTable;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal List<AcessoGrupoDTO> BuscarGrupos(string usuario)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT G.* ");
            strSql.Append("FROM AcessoGrupoUsuario GU ");
            strSql.Append("LEFT JOIN AcessoGrupos G ON G.PK_AcessoGrupo = GU.FK_AcessoGrupo ");
            strSql.Append("WHERE FK_Usuario = @Usuario");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Usuario", usuario);
                    SqlDataReader dr = objCommand.ExecuteReader();
                    List<AcessoGrupoDTO> listaGrupos = new List<AcessoGrupoDTO>();
                    AcessoGrupo grupo = null;
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            grupo = new AcessoGrupo();
                            grupo.PK_AcessoGrupo = (int)dr["PK_AcessoGrupo"];
                            grupo.Descricao = (string)dr["Descricao"];
                            listaGrupos.Add(grupo);
                        }
                    }
                    return listaGrupos;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        internal Usuario BuscarUsuario(string usuario)
        {
            Usuario objUsuario = null;
            Setor objSetor = null;
            Supervisor objSuper = null;

            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT * ");
            strSql.Append("FROM Usuarios ");
            strSql.Append("WHERE Usuario = @Usuario");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Usuario", usuario);
                    SqlDataReader dr = objCommand.ExecuteReader();
                    objUsuario = new Usuario();
                    objSetor = new Setor();
                    objSuper = new Supervisor();

                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            objUsuario.NomeCompleto = dr["nome_Completo"].ToString();
                            objUsuario.Usuario = dr["usuario"].ToString();
                            objUsuario.Senha = dr["senha"].ToString();
                            objUsuario.Ramal = dr["ramal"].ToString();
                            objUsuario.Email = dr["email"].ToString();
                            objUsuario.Ativo = (bool)dr["ativo"];
                            objUsuario.AcessoWeb = (bool)dr["acessoWeb"];
                            objUsuario.EmailAvisoSolicNumerario = (int)dr["Email_Sol_Num"];
                            objUsuario.EmailAvisoOperacional = (int)dr["Email_aviso_oper"];
                            objUsuario.EmailAvisoFinanceiro = (int)dr["Email_aviso_finan"];
                            objUsuario.EmailAvisoDiretoria = (int)dr["Email_aviso_diretoria"];
                            objUsuario.EmailAvisoSistema = (int)dr["Email_aviso_sistema"];
                            objUsuario.Digitalizador = (int)dr["Digitalizador"];
                            objUsuario.Digitalizador = (int)dr["Digitalizador"];
                            objUsuario.ResponsavelOperacional = (int)dr["Responsavel"];
                            objUsuario.ResponsavelComercial = (int)dr["ResponsavelC"];
                            objUsuario.Celular = dr["Celular"].ToString();
                            objUsuario.Hierarquia = (int)dr["Hierarquia"];
                            objUsuario.Scanner = (bool)dr["Scanner"];
                            objUsuario.Documentador = (bool)dr["Documentador"];
                            objUsuario.Arquivista = (bool)dr["Arquivista"];
                            objUsuario.FKSupervisorOperacional = dr["Supervisor"].ToString();
                            objUsuario.FKSetor = dr["Setor"].ToString();
                        }
                    }
                    dr.Close();
                    dr.Dispose();
                    if (objUsuario != null)
                    {
                        objUsuario.Grupos = this.BuscarGrupos(usuario);
                        objUsuario.Setor = objSetor.BuscarID(objUsuario.FKSetor);
                        objUsuario.SupervisorOperacional = objSuper.BuscarID(objUsuario.FKSupervisorOperacional);
                    }
                    return objUsuario;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool AcessoOK(Operacao operacao, Control page)
        {
            string paginaNome = MSFuncoes.ObterNomePagina(page.Page);
            AcessoPaginaGrupoDAL acessoPaginaGrupo = new AcessoPaginaGrupoDAL();
            AcessoPaginaDAL acessoPaginas = new AcessoPaginaDAL();
            AcessoPaginaGrupoDTO paginaGrupoDTO = new AcessoPaginaGrupoDTO();
            bool OK = false;
            int PK_AcessoPaginas = acessoPaginas.BuscarID(paginaNome);

            if (PK_AcessoPaginas > 0)
            {
                foreach (var g in this.BuscarGrupos(_usuarioLogado))
                {
                    paginaGrupoDTO = acessoPaginaGrupo.BuscarPaginaGrupoFK(g.PK_AcessoGrupo, PK_AcessoPaginas);
                    switch (operacao)
                    {
                        case Operacao.Incluir:
                            OK = OK || paginaGrupoDTO.C;
                            break;
                        case Operacao.Leitura:
                            OK = OK || paginaGrupoDTO.R;
                            break;
                        case Operacao.Alterar:
                            OK = OK || paginaGrupoDTO.U;
                            break;
                        case Operacao.Apagar:
                            OK = OK || paginaGrupoDTO.D;
                            break;
                        default:
                            OK = false;
                            break;
                    }
                }
            }
            return OK;
        }

        internal bool AcessoOK(Operacao operacao, string page)
        {
            string paginaNome = page;
            AcessoPaginaGrupoDAL acessoPaginaGrupo = new AcessoPaginaGrupoDAL();
            AcessoPaginaDAL acessoPaginas = new AcessoPaginaDAL();
            AcessoPaginaGrupoDTO paginaGrupoDTO = new AcessoPaginaGrupoDTO();
            bool OK = false;
            int PK_AcessoPaginas = acessoPaginas.BuscarID(paginaNome);

            if (PK_AcessoPaginas > 0)
            {
                foreach (var g in this.BuscarGrupos(_usuarioLogado))
                {
                    paginaGrupoDTO = acessoPaginaGrupo.BuscarPaginaGrupoFK(g.PK_AcessoGrupo, PK_AcessoPaginas);
                    switch (operacao)
                    {
                        case Operacao.Incluir:
                            OK = OK || paginaGrupoDTO.C;
                            break;
                        case Operacao.Leitura:
                            OK = OK || paginaGrupoDTO.R;
                            break;
                        case Operacao.Alterar:
                            OK = OK || paginaGrupoDTO.U;
                            break;
                        case Operacao.Apagar:
                            OK = OK || paginaGrupoDTO.D;
                            break;
                        default:
                            OK = false;
                            break;
                    }
                }
            }
            return OK;
        }

        internal bool AcessoAcaoEspecificaOK(string descricao, string page, string chave_busca)
        {
            AcessoAcaoEspecificaGrupoDAL acaoEspGrupoDAL = new AcessoAcaoEspecificaGrupoDAL();
            AcessoAcaoEspecificaGrupoDTO acaoEspGrupoDTO = new AcessoAcaoEspecificaGrupoDTO();
            AcessoAcaoEspecificaDAL acaoDAL = new AcessoAcaoEspecificaDAL();
            AcessoAcaoEspecificaDTO acaoDTO = new AcessoAcaoEspecificaDTO();
            AcessoPaginaDAL paginaDAL = new AcessoPaginaDAL();
            bool OK = false;
            int idAcao = 0;

            if (acaoDAL.Existe(chave_busca, out idAcao))
            {
                //verifica acesso 
                foreach (var g in this.BuscarGrupos(_usuarioLogado))
                {
                    acaoEspGrupoDTO = acaoEspGrupoDAL.BuscarAcaoEspecificaGrupoFK(g.PK_AcessoGrupo, idAcao);
                    OK = OK || acaoEspGrupoDTO.Acessa;
                }
            }
            else
            {
                // incluindo ação especifica
                acaoDTO.Descricao = descricao;
                acaoDTO.FK_AcessoPaginas = paginaDAL.BuscarID(page);
                acaoDTO.Chave_Busca = chave_busca;
                if (acaoDTO.FK_AcessoPaginas > 0)
                {
                    acaoDAL.Incluir(acaoDTO);
                }
            }
            return OK;
        }

        internal bool Incluir(UsuarioDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("INSERT INTO Usuarios (Empresa, Filial, Usuario, Senha, Nome_Completo, Email, Ramal, Ativo, AcessoWeb,");
            strSql.Append("Data_validade_senha, Email_Sol_Num, Email_aviso_oper, Email_aviso_finan, Email_aviso_diretoria, Email_aviso_sistema,");
            strSql.Append("Digitalizador, Responsavel, ResponsavelC, Celular, Hierarquia, Scanner, Documentador,Arquivista,Setor,Supervisor)");
            strSql.Append("VALUES ( @Empresa, @Filial, @Usuario, @Senha, @Nome_Completo, @Email, @Ramal, @Ativo, @AcessoWeb,");
            strSql.Append("@Data_validade_senha, @Email_Sol_Num, @Email_aviso_oper, @Email_aviso_finan, @Email_aviso_diretoria, @Email_aviso_sistema,");
            strSql.Append("@Digitalizador, @Responsavel, @ResponsavelC, @Celular, @Hierarquia, @Scanner, @Documentador,@Arquivista,@FKSetor,@Supervisor)");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", Parametro.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", Parametro.Filial);
                    objCommand.Parameters.AddWithValue("@Usuario", obj.Usuario.ToUpper());
                    objCommand.Parameters.AddWithValue("@Senha", obj.Senha);
                    objCommand.Parameters.AddWithValue("@Nome_Completo", obj.NomeCompleto.ToUpper());
                    objCommand.Parameters.AddWithValue("@Email", obj.Email.ToLower());
                    objCommand.Parameters.AddWithValue("@Ramal", obj.Ramal);
                    objCommand.Parameters.AddWithValue("@Ativo", obj.Ativo);
                    objCommand.Parameters.AddWithValue("@AcessoWeb", obj.AcessoWeb);
                    objCommand.Parameters.AddWithValue("@Data_validade_senha", obj.DataValidadeSenha);
                    objCommand.Parameters.AddWithValue("@Email_Sol_Num", obj.EmailAvisoSolicNumerario);
                    objCommand.Parameters.AddWithValue("@Email_aviso_oper", obj.EmailAvisoOperacional);
                    objCommand.Parameters.AddWithValue("@Email_aviso_finan", obj.EmailAvisoFinanceiro);
                    objCommand.Parameters.AddWithValue("@Email_aviso_diretoria", obj.EmailAvisoDiretoria);
                    objCommand.Parameters.AddWithValue("@Email_aviso_sistema", obj.EmailAvisoSistema);
                    objCommand.Parameters.AddWithValue("@Digitalizador", obj.Digitalizador);
                    objCommand.Parameters.AddWithValue("@Responsavel", obj.ResponsavelOperacional);
                    objCommand.Parameters.AddWithValue("@ResponsavelC", obj.ResponsavelComercial);
                    objCommand.Parameters.AddWithValue("@Celular", obj.Celular);
                    objCommand.Parameters.AddWithValue("@Hierarquia", obj.Hierarquia);
                    objCommand.Parameters.AddWithValue("@Scanner", obj.Scanner);
                    objCommand.Parameters.AddWithValue("@Documentador", obj.Documentador);
                    objCommand.Parameters.AddWithValue("@Arquivista", obj.Arquivista);
                    objCommand.Parameters.AddWithValue("@FKSetor", obj.FKSetor);
                    objCommand.Parameters.AddWithValue("@Supervisor", obj.FKSupervisorOperacional);
                    objCommand.ExecuteNonQuery();
                    return true;
                }
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool Alterar(UsuarioDTO obj)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Usuarios ");
            strSql.Append("SET Empresa = @Empresa,");
            strSql.Append("Filial = @Filial,");
            strSql.Append("Usuario = @Usuario,");
            strSql.Append("Senha = @Senha,");
            strSql.Append("Nome_Completo = @Nome_Completo,");
            strSql.Append("Email = @Email,");
            strSql.Append("Ramal = @Ramal,");
            strSql.Append("Ativo = @Ativo,");
            strSql.Append("Email_Sol_Num = @Email_Sol_Num,");
            strSql.Append("Email_aviso_oper = @Email_aviso_oper,");
            strSql.Append("Email_aviso_finan = @Email_aviso_finan,");
            strSql.Append("Email_aviso_diretoria = @Email_aviso_diretoria,");
            strSql.Append("Email_aviso_sistema = @Email_aviso_sistema,");
            strSql.Append("Digitalizador = @Digitalizador,");
            strSql.Append("Responsavel = @Responsavel,");
            strSql.Append("ResponsavelC = @ResponsavelC,");
            strSql.Append("Celular = @Celular,");
            strSql.Append("Hierarquia = @Hierarquia,");
            strSql.Append("scanner = @scanner,");
            strSql.Append("Documentador = @Documentador,");
            strSql.Append("Arquivista = @Arquivista,");
            strSql.Append("Setor = @FKSetor,");
            strSql.Append("Supervisor = @Supervisor,");
            strSql.Append("AcessoWeb = @AcessoWeb ");
            strSql.Append("WHERE Usuario = @Usuario ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Empresa", Parametro.Empresa);
                    objCommand.Parameters.AddWithValue("@Filial", Parametro.Filial);
                    objCommand.Parameters.AddWithValue("@Usuario", obj.Usuario.ToUpper());
                    objCommand.Parameters.AddWithValue("@Senha", obj.Senha);
                    objCommand.Parameters.AddWithValue("@Nome_Completo", obj.NomeCompleto.ToUpper());
                    objCommand.Parameters.AddWithValue("@Email", obj.Email.ToLower());
                    objCommand.Parameters.AddWithValue("@Ramal", obj.Ramal);
                    objCommand.Parameters.AddWithValue("@Ativo", obj.Ativo);
                    objCommand.Parameters.AddWithValue("@Email_Sol_Num", obj.EmailAvisoSolicNumerario);
                    objCommand.Parameters.AddWithValue("@Email_aviso_oper", obj.EmailAvisoOperacional);
                    objCommand.Parameters.AddWithValue("@Email_aviso_finan", obj.EmailAvisoFinanceiro);
                    objCommand.Parameters.AddWithValue("@Email_aviso_diretoria", obj.EmailAvisoDiretoria);
                    objCommand.Parameters.AddWithValue("@Email_aviso_sistema", obj.EmailAvisoSistema);
                    objCommand.Parameters.AddWithValue("@Digitalizador", obj.Digitalizador);
                    objCommand.Parameters.AddWithValue("@Responsavel", obj.ResponsavelOperacional);
                    objCommand.Parameters.AddWithValue("@ResponsavelC", obj.ResponsavelComercial);
                    objCommand.Parameters.AddWithValue("@Celular", obj.Celular);
                    objCommand.Parameters.AddWithValue("@Hierarquia", obj.Hierarquia);
                    objCommand.Parameters.AddWithValue("@scanner", obj.Scanner);
                    objCommand.Parameters.AddWithValue("@Documentador", obj.Documentador);
                    objCommand.Parameters.AddWithValue("@Arquivista", obj.Arquivista);
                    objCommand.Parameters.AddWithValue("@FKSetor", obj.FKSetor);
                    objCommand.Parameters.AddWithValue("@Supervisor", obj.FKSupervisorOperacional);
                    objCommand.Parameters.AddWithValue("@AcessoWeb", obj.AcessoWeb);
                    objCommand.ExecuteNonQuery();
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool Excluir(UsuarioDTO obj)
        {
            throw new NotImplementedException();
        }

        internal Usuario Buscar()
        {
            throw new NotImplementedException();
        }

        internal List<Importador> BuscarClientesAcessoDoUsuario(string usuario)
        {
            List<Importador> lista = null;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT I.Codigo, I.Razao_Social, I.CNPJ_CPF_COMPLETO ");
            strSql.Append("FROM UsuariosClientes U ");
            strSql.Append("INNER JOIN Importadores I ON U.Importador = I.Codigo ");
            strSql.Append("WHERE U.Usuario = @Usuario ");
            strSql.Append("ORDER BY I.Razao_Social, I.Codigo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    lista = new List<Importador>();
                    objCommand.Parameters.AddWithValue("@Usuario", usuario.ToUpper());
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            lista.Add(new Importador
                            {
                                Codigo = objDr["Codigo"].ToString(),
                                RazaoSocial = objDr["Razao_Social"].ToString(),
                                CnpjCpfCompleto = objDr["CNPJ_CPF_COMPLETO"].ToString()
                            });
                        }
                    }

                    objDr.Close();
                    objDr.Dispose();
                    return lista;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal List<Importador> BuscarNaoClientesAcessoDoUsuario(string usuario)
        {
            List<Importador> lista = null;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT I.Codigo, I.Razao_Social, I.CNPJ_CPF_COMPLETO ");
            strSql.Append("FROM Importadores I ");
            strSql.Append("WHERE I.CGC_CPF <> '' AND NOT EXISTS(");
            strSql.Append("SELECT * FROM UsuariosClientes U WHERE U.Importador = I.Codigo AND U.Usuario = @Usuario) ");
            strSql.Append("ORDER BY I.Razao_Social, I.Codigo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    lista = new List<Importador>();
                    objCommand.Parameters.AddWithValue("@Usuario", usuario.ToUpper());
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            lista.Add(new Importador
                            {
                                Codigo = objDr["Codigo"].ToString(),
                                RazaoSocial = objDr["Razao_Social"].ToString(),
                                CnpjCpfCompleto = objDr["CNPJ_CPF_COMPLETO"].ToString()
                            });
                        }
                    }

                    objDr.Close();
                    objDr.Dispose();
                    return lista;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal List<Importador> BuscarClientesCheckingDoUsuario(string usuario)
        {
            List<Importador> lista = null;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT I.Codigo, I.Razao_Social, I.CNPJ_CPF_COMPLETO ");
            strSql.Append("FROM FollowUp_Check_Clientes F ");
            strSql.Append("INNER JOIN Importadores I ON F.FK_Importador = I.Codigo ");
            strSql.Append("WHERE F.FK_Usuario = @Usuario ");
            strSql.Append("ORDER BY I.Razao_Social, I.Codigo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    lista = new List<Importador>();
                    objCommand.Parameters.AddWithValue("@Usuario", usuario.ToUpper());
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            lista.Add(new Importador
                            {
                                Codigo = objDr["Codigo"].ToString(),
                                RazaoSocial = objDr["Razao_Social"].ToString(),
                                CnpjCpfCompleto = objDr["CNPJ_CPF_COMPLETO"].ToString()
                            });
                        }
                    }
                    objDr.Close();
                    objDr.Dispose();
                    return lista;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal List<Importador> BuscarNaoClientesCheckingDoUsuario(string usuario)
        {
            List<Importador> lista = null;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT I.Codigo, I.Razao_Social, I.CNPJ_CPF_COMPLETO ");
            strSql.Append("FROM Importadores I ");
            strSql.Append("WHERE I.Ativo = 1 AND NOT EXISTS(");
            strSql.Append("SELECT * FROM FollowUp_Check_Clientes F WHERE F.FK_Importador = I.Codigo AND F.FK_Usuario = @Usuario) ");
            strSql.Append("ORDER BY I.Razao_Social, I.Codigo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    lista = new List<Importador>();
                    objCommand.Parameters.AddWithValue("@Usuario", usuario.ToUpper());
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            lista.Add(new Importador
                            {
                                Codigo = objDr["Codigo"].ToString(),
                                RazaoSocial = objDr["Razao_Social"].ToString(),
                                CnpjCpfCompleto = objDr["CNPJ_CPF_COMPLETO"].ToString()
                            });
                        }
                    }

                    objDr.Close();
                    objDr.Dispose();
                    return lista;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal List<TipoDeProcesso> BuscarTiposProcessoDoUsuario(string usuario)
        {
            List<TipoDeProcesso> lista = null;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT T.Codigo, T.Descricao ");
            strSql.Append("FROM FollowUp_Check_Tipo_Processo F ");
            strSql.Append("INNER JOIN Tipos_de_Processos T ON T.Codigo = F.FK_Tipo_Processo ");
            strSql.Append("WHERE F.FK_Usuario = @Usuario ");
            strSql.Append("ORDER BY T.Descricao, T.Codigo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    lista = new List<TipoDeProcesso>();
                    objCommand.Parameters.AddWithValue("@Usuario", usuario.ToUpper());
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            lista.Add(new TipoDeProcesso
                            {
                                Codigo = objDr["Codigo"].ToString(),
                                Descricao = objDr["Descricao"].ToString()
                            });
                        }
                    }
                    objDr.Close();
                    objDr.Dispose();
                    return lista;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal List<TipoDeProcesso> BuscarNaoTiposProcessoDoUsuario(string usuario)
        {
            List<TipoDeProcesso> lista = null;
            StringBuilder strSql = new StringBuilder();
            strSql.Append("SELECT T.Codigo, T.Descricao ");
            strSql.Append("FROM Tipos_de_Processos T ");
            strSql.Append("WHERE NOT EXISTS(SELECT * FROM FollowUp_Check_Tipo_Processo F WHERE F.FK_Tipo_Processo = T.Codigo AND F.FK_Usuario = @Usuario) AND T.Ativo = 1 ");
            strSql.Append("ORDER BY T.Descricao, T.Codigo");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    lista = new List<TipoDeProcesso>();
                    objCommand.Parameters.AddWithValue("@Usuario", usuario.ToUpper());
                    SqlDataReader objDr = objCommand.ExecuteReader();
                    if (objDr.HasRows)
                    {
                        while (objDr.Read())
                        {
                            lista.Add(new TipoDeProcesso
                            {
                                Codigo = objDr["Codigo"].ToString(),
                                Descricao = objDr["Descricao"].ToString()
                            });
                        }
                    }
                    objDr.Close();
                    objDr.Dispose();
                    return lista;
                }
            }
            catch (Exception ex)
            {
                throw ex;
            }
            finally
            {
                FecharConexao();
            }
        }

        internal bool TransferirResponsabilidadeSupervisor(string usuario, string supervisor)
        {
            StringBuilder strSql = new StringBuilder();
            strSql.Append("UPDATE Processos ");
            strSql.Append("SET Responsavel_Empresa = @Supervisor ");
            strSql.Append("WHERE Responsavel_Empresa = @Usuario ");
            try
            {
                AbrirConexao();
                using (SqlCommand objCommand = new SqlCommand(strSql.ToString(), Conexao))
                {
                    objCommand.Parameters.AddWithValue("@Usuario", usuario.ToUpper());
                    objCommand.Parameters.AddWithValue("@Supervisor", supervisor.ToUpper());
                    objCommand.ExecuteNonQuery();
                }
                return true;
            }
            catch (Exception ex)
            {
                return false;
                throw new Exception(ex.Message);
            }
            finally
            {
                FecharConexao();
            }
        }
    }
}
