using MSBiblioteca.DAL;
using System;
using System.Data;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe de usuario vs menu do sistema
    /// </summary>
    public sealed class UsuarioMenu
    {
        /// <summary>
        /// Metódo para busca uma lista de menus do usuário
        /// </summary>
        /// <param name="usuario">Usuário</param>
        /// <returns>DataTable</returns>
        public DataTable BuscarWebForm(string usuario)
        {
            if (string.IsNullOrEmpty(usuario))
            {
                throw new Exception("Argumento inválido!");
            }
            UsuarioMenuDAL menu = new UsuarioMenuDAL();
            return menu.BuscarFKUsuario(usuario);
        }
    }
}
