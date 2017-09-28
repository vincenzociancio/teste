using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public class UsuarioCliente : UsuarioClienteDTO
    {
        UsuarioClienteDAL objDAL = null;

        public UsuarioCliente()
        {
            this.objDAL = new UsuarioClienteDAL();
        }

        public UsuarioCliente(string fk_usuario, string fk_importador)
            : base(fk_usuario, fk_importador)
        {
            this.objDAL = new UsuarioClienteDAL();
        }

        /// <summary>
        /// Inclui 
        /// </summary>
        /// <param name="obj">UsuariosClientes</param>
        /// <returns>bool</returns>
        public bool Incluir(UsuarioClienteDTO obj)
        {
            return objDAL.Incluir(obj);
        }

        /// <summary>
        /// Exclui
        /// </summary>
        /// <param name="obj">UsuariosClientes</param>
        /// <returns>bool</returns>
        public bool Excluir(UsuarioClienteDTO obj)
        {
            return objDAL.Excluir(obj);
        }        
       
    }
}
