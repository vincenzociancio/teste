using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public class AcessoGrupoUsuario : AcessoGrupoUsuarioDTO
    {
        AcessoGrupoUsuarioDAL _grupoUsuarioDAL = null;

        /// <summary>
        /// Inclui na tabela AcessoGrupoUsuario
        /// </summary>
        /// <param name="obj">AcessoGrupoUsuarioDTO</param>
        /// <returns>bool</returns>
        public bool Incluir(AcessoGrupoUsuarioDTO obj)
        {
            _grupoUsuarioDAL = new AcessoGrupoUsuarioDAL();
            return _grupoUsuarioDAL.Incluir(obj);
        }

        /// <summary>
        /// Exclui na tabela AcessoGrupoUsuario
        /// </summary>
        /// <param name="obj">AcessoGrupoUsuarioDTO</param>
        /// <returns>bool</returns>
        public bool Excluir(AcessoGrupoUsuarioDTO obj)
        {
            _grupoUsuarioDAL = new AcessoGrupoUsuarioDAL();
            return _grupoUsuarioDAL.Excluir(obj);
        }
    }
}
