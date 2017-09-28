using MSBiblioteca.DTO;
using System.Data;
using MSBiblioteca.DAL;


namespace MSBiblioteca.BLL
{
   public sealed class SiscomexIncoterm
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos Incoterms_venda da tabela siscomex
        /// </summary>
        /// <returns>DataTable</returns>
        public DataTable Listar()
        {
            /// Instânciando
            SiscomexIncotermDAL objDAL = new SiscomexIncotermDAL();
            DataTable objTable = null;

            objTable = objDAL.Listar();

            return objTable;
        }
    }
}
