using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public class AcessoGrupo : AcessoGrupoDTO
    {
        readonly AcessoGrupoDAL _objDal;

        public AcessoGrupo()
        {
            _objDal = new AcessoGrupoDAL();
        }

        /// <summary>
        /// Inclui grupo de acesso
        /// </summary>
        /// <param name="obj">AcessoGruposDTO</param>
        /// <returns>bool</returns>
        public int Incluir(AcessoGrupoDTO obj)
        { 
            //_grupoDAL = new AcessoGruposDAL();
            return _objDal.Incluir(obj);
        }

        public bool Alterar(AcessoGrupoDTO obj)
        {
            //_grupoDAL = new AcessoGruposDAL();
            return _objDal.Alterar(obj);
        }

        /// <summary>
        /// Exclui grupo de acesso
        /// </summary>
        /// <param name="obj">AcessoGruposDTO</param>
        /// <returns>bool</returns>
        public bool Excluir(AcessoGrupoDTO obj)
        {
            //_grupoDAL = new AcessoGruposDAL();
            return _objDal.Excluir(obj);
        }

        /// <summary>
        /// Buscar todos os grupos
        /// </summary>
        /// <returns>List</returns>
        public List<AcessoGrupoDTO> BuscarTodos()
        {
            //_grupoDAL = new AcessoGruposDAL();
            return _objDal.BuscarTodos();
        }

        /// <summary>
        /// Busca um grupo específico
        /// </summary>
        /// <returns>Class</returns>
        public AcessoGrupoDTO BuscarGrupoId(AcessoGrupoDTO obj)
        {
            //_grupoDAL = new AcessoGruposDAL();
            return _objDal.BuscarGrupoId(obj);
        }

        public List<AcessoGrupoDTO> BuscarNaoVinculadoGrupoUsuario(string usuario)
        {
            return _objDal.BuscarNaoVinculadoGrupoUsuario(usuario);
        }
    }
}
