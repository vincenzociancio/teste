using MSBiblioteca.DAL;
using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MSBiblioteca.BLL
{
    public class UsuarioFollowLiberado : UsuarioFollowLiberadoDTO
    {
        UsuarioFollowLiberadoDAL objDAL = null;

        public UsuarioFollowLiberado()
        {
            this.objDAL = new UsuarioFollowLiberadoDAL();
        }

        public UsuarioFollowLiberado(int id, string fk_processo, string fk_usuario)
            : base(id, fk_processo, fk_usuario)
        {

        }

        /// <summary>
        /// Método inclui liberação de follow para um determinado processo.
        /// </summary>
        /// <param name="obj">Objeto</param>
        /// <returns>bool</returns>
        public bool Incluir(UsuarioFollowLiberadoDTO obj)
        {
            return objDAL.Incluir(obj);
        }

        /// <summary>
        /// Método excluir a liberação de follow para um determinado processo.
        /// </summary>
        /// <param name="obj">Objeto</param>
        /// <returns>bool</returns>
        public bool Excluir(int pk_id)
        {
            return objDAL.Excluir(pk_id);
        }

        /// <summary>
        /// Método buscar processos com follow liberado de um determinado usuário.
        /// </summary>
        /// <param name="fk_usuario">Descrição do usuário</param>
        /// <returns>Lista</returns>
        public List<UsuarioFollowLiberado> BuscarUsuario(string fk_usuario)
        {
            return objDAL.BuscarUsuario(fk_usuario);
        }

    }
}
