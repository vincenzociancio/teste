using MSBiblioteca.DTO;
using System.Data;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{
    public sealed class SiscomexUF : SiscomexPaisDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos UF da tabela siscomex
        /// </summary>
        /// <returns>DataTable</returns>
        public DataTable Listar()
        {
            /// Instânciando
            SiscomexUFDAL objDAL = new SiscomexUFDAL();
            DataTable objTable = null;

            objTable = objDAL.Listar();

            return objTable;
        }
    }
}
