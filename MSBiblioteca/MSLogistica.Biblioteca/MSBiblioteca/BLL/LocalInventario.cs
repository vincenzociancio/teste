using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Web.UI;

namespace MSBiblioteca.BLL
{
    public class LocalInventario : LocalInventarioDTO
    {
        private LocalInventarioDAL objDAL = null;

        public LocalInventario()
        {
            objDAL = new LocalInventarioDAL();
        }
        /// <summary>
        /// Retornar um DataTable com os dados para carga de um Grid ou um Combo
        /// </summary>
        /// <returns></returns>
        public DataTable PreencherCombo()
        {
            LocalInventarioDAL LocalInventarioDAL = new LocalInventarioDAL();
            return LocalInventarioDAL.PreencherCombo(Importador);
        }
    }
}
