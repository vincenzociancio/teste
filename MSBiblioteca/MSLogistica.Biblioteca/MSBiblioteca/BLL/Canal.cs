using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using MSBiblioteca.Constante;
using System.Web.UI;

namespace MSBiblioteca.BLL
{
    public sealed class Canal : CanalDTO
    {
        private CanalDAL objDAL = null;

        public Canal()
        {
            objDAL = new CanalDAL();
        }
        /// <summary>
        /// Retornar um DataTable com os dados para carga no Grid ou combo
        /// </summary>
        /// <returns></returns>
        public DataTable PreencheCombo()
        {
            CanalDAL CanalDAL = new CanalDAL();
            return CanalDAL.PreencherCombo();
        }

    }
}

