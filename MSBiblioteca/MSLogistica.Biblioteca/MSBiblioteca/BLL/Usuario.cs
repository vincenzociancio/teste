using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using MSBiblioteca.Constante;
using System.Web.UI;
using System.Collections.Generic;

namespace MSBiblioteca.BLL
{
    public class Usuario : UsuarioDTO
    {        
        private UsuarioDAL objDAL = new UsuarioDAL();

        public Usuario()
        {

        }

        /// <summary>
        /// Construtor personalizado
        /// </summary>
        public Usuario(string usuario)
        {
            this.Usuario = usuario;
        }

        /// <summary>
        /// Valida a entra do usuário no sistema
        /// </summary>
        /// <param name="Usuario">Usuário</param>
        /// <param name="Senha">Senha</param>
        /// <returns>Verdadeiro/Falso</returns>
        public bool ValidarUsuario(string Usuario, string Senha)
        {
            /// Verifica parametro Usuario
            if (string.IsNullOrEmpty(Usuario))
            {
                throw new Exception("Campo usuário é obrigatório!");
            }

            /// Verifica parametro Usuario
            if (string.IsNullOrEmpty(Senha))
            {
                throw new Exception("Campo senha é obrigatório!");
            }

            /// Instânciando
            DataRow objRow = null;
            DataTable objTable = null;
            bool acessoLiberado = false;

            /// Preenchedo a lista
            objTable = objDAL.ValidarUsuario(Usuario);
            if (objTable.Rows.Count > 0)
                objRow = objTable.Rows[0];

            /// Verifica se o usuário existe
            if (objRow == null)
            {
                throw new Exception("Usuário não Cadastrado!");
            }

            /// Verifica se a senha está correta
            if ((string)objRow["Senha"] != Senha)
            {
                throw new Exception("Acesso não permitido, a senha foi digitada errada!");
            }

            if (!(bool)objRow["Ativo"])
            {
                throw new Exception("Usuário desativado!");
            }
            ///
            if (!(bool)objRow["AcessoWeb"])
            {
                throw new Exception("Acesso ao MS2000 Web não permitido!");
            }
            acessoLiberado = true;
            return acessoLiberado;
        }
        /// <summary>
        /// Retorna lista de usuário com nome completo e usuário.
        /// </summary>
        /// <param name="SomenteRegistrosAtivos">True/False</param>
        /// <returns>DataTable</returns>        
        public DataTable BuscarTodos(bool SomenteRegistrosAtivos = true)
        {            
            return objDAL.BuscarTodos();
        }
        /// <summary>
        /// Retorna dados de um usuário
        /// </summary>
        /// <param name="usuario">Usuário</param>
        /// <returns>DataTable</returns>
        public Usuario BuscarUsuario(string usuario)
        {            
            return objDAL.BuscarUsuario(usuario);
        }     

        /// <summary>
        /// Verifica a permissão de acesso com base na operação e página.
        /// </summary>
        /// <param name="operacao">Operação</param>
        /// <param name="paginaNome">Página controle</param>
        /// <returns>bool</returns>
        public bool AcessoOK(Operacao operacao, Control page)
        {
            return objDAL.AcessoOK(operacao, page);
        }

        /// <summary>
        /// Verifica a permissão de acesso com base na operação e página.
        /// </summary>
        /// <param name="operacao">Operação</param>
        /// <param name="paginaNome">Nome da Página</param>
        /// <returns>bool</returns>
        public bool AcessoOK(Operacao operacao, string page)
        {
            return objDAL.AcessoOK(operacao, page);
        }

        /// <summary>
        /// Verifica/Cria acesso especifico
        /// </summary>
        /// <param name="descricao">Descrição da ação para ser apresentado na tela de grupos</param>
        /// <param name="page">Nome da página ex. Default.aspx</param>
        /// <param name="chave_busca">Chave de busca(chave única)</param>
        /// <returns>bool</returns>
        public bool AcessoAcaoEspecificaOK(string descricao, string page, string chave_busca)
        {
            return objDAL.AcessoAcaoEspecificaOK(descricao, page, chave_busca);
        }

        /// <summary>
        /// Método inclui um novo usuário
        /// </summary>
        /// <param name="obj">Objeto usuário</param>
        /// <returns>bool</returns>
        public bool Incluir(UsuarioDTO obj)
        {            
            return objDAL.Incluir(obj);
        }

        /// <summary>
        /// Método altera dados do usuário corrente
        /// </summary>
        /// <param name="obj">Objeto usuário</param>
        /// <returns>bool</returns>
        public bool Alterar(UsuarioDTO obj)
        {            
            return objDAL.Alterar(obj);
        }

        /// <summary>
        /// Método exclui o usuário corrente
        /// </summary>
        /// <param name="obj">Objeto usuário</param>
        /// <returns>bool</returns>
        public bool Excluir(UsuarioDTO obj)
        {
            throw new NotImplementedException();
        }


        public Usuario Buscar()
        {
            throw new NotImplementedException();
        }

        /// <summary>
        /// Método busca todos os clientes que o usuário tem acesso
        /// </summary>
        /// <param name="usuario">Chave do usuário</param>
        /// <returns>lista de clientes</returns>
        public List<Importador> BuscarClientesAcessoDoUsuario(string usuario)
        {
            return objDAL.BuscarClientesAcessoDoUsuario(usuario);
        }

        /// <summary>
        /// Método busca todos os clientes que o usuário não tem acesso
        /// </summary>
        /// <param name="usuario">Chave do usuário</param>
        /// <returns>lista de clientes</returns>
        public List<Importador> BuscarNaoClientesAcessoDoUsuario(string usuario)
        {
            return objDAL.BuscarNaoClientesAcessoDoUsuario(usuario);
        }

        /// <summary>
        /// Método busca todos os clientes que o usuário é responsável pelo checking
        /// </summary>
        /// <param name="usuario">Chave do usuário</param>
        /// <returns>lista de clientes</returns>
        public List<Importador> BuscarClientesCheckingDoUsuario(string usuario)
        {
            return objDAL.BuscarClientesCheckingDoUsuario(usuario);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="usuario"></param>
        /// <returns></returns>
        public List<Importador> BuscarNaoClientesCheckingDoUsuario(string usuario)
        {
            return objDAL.BuscarNaoClientesCheckingDoUsuario(usuario);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="usuario"></param>
        /// <returns></returns>
        public List<TipoDeProcesso> BuscarTiposProcessoDoUsuario(string usuario)
        {
            return objDAL.BuscarTiposProcessoDoUsuario(usuario);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="usuario"></param>
        /// <returns></returns>
        public List<TipoDeProcesso> BuscarNaoTiposProcessoDoUsuario(string usuario)
        {
            return objDAL.BuscarNaoTiposProcessoDoUsuario(usuario);
        }

        /// <summary>
        /// Método transfere responsabilidade de processos do usuario para seu supervisor .
        /// </summary>
        /// <param name="usuario">Descrição do usuário</param>
        /// <param name="supervisor">Descrição do supervisor </param>
        /// <returns>bool</returns>
        public bool TransferirResponsabilidadeSupervisor(string usuario, string supervisor)
        {
            return objDAL.TransferirResponsabilidadeSupervisor(usuario, supervisor);
        }

        public override IList<Importador> Clientes
        {
            get
            {
                return this.BuscarClientesAcessoDoUsuario(this.Usuario);
            }
            set
            {
                base.Clientes = value;
            }
        }
    }
}
