using MSBiblioteca.DAL;
using System;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe de menus do sistema
    /// </summary>
    public sealed class Menu
    {
        /// <summary>
        /// Metódo busca um unico registro de menu
        /// </summary>
        /// <param name="webform">Descricão do web form(Ex. frmDefault.aspx).</param>
        /// <returns>Código do menu</returns>
        public string BuscarWebForm(string webform)
        {
            if (string.IsNullOrEmpty(webform))
            {
                throw new Exception("Argumento inválido!");
            }
            MenuDAL menu = new MenuDAL();
            return menu.BuscarWebForm(webform);
        }
    }
}
