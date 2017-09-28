using MSBiblioteca.DTO;
using System.Data;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public sealed class SiscomexPais : SiscomexPaisDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos pais da tabela siscomex
        /// </summary>
        /// <returns>DataTable</returns>
        public DataTable Listar()
        {
            /// Instânciando
            SiscomexPaisDAL objDAL = new SiscomexPaisDAL();
            DataTable objTable = null;

            objTable = objDAL.Listar();

            return objTable;
        }
    }
}
