using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using MSBiblioteca.Constante;
using System.Web.UI;

namespace MSBiblioteca.BLL
{
    public sealed class SiscomexTipoDeclaracao : SiscomexTipoDeclaracaoDTO
    {
        SiscomexTipoDeclaracaoDAL objDAL = new SiscomexTipoDeclaracaoDAL();
        
        /// <summary>
        /// Retornar um DataTable com os dados para carga no Grid ou Combo
        /// </summary>
        /// <returns></returns>
        public DataTable BuscarTodos()
        {            
            return objDAL.BuscarTodos();
        }
    }
}
