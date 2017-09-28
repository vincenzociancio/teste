using MSBiblioteca.DTO;
using System.Data;
using MSBiblioteca.DAL;

namespace MSBiblioteca.BLL
{ 
    /// <summary>
        /// Retornar um DataTable com a lista das Moedas da tabela siscomex
        /// </summary>
        /// <returns>DataTable</returns>
     public sealed class SiscomexMoeda : SiscomexMoedaDTO
    {
         public DataTable Listar()
         {
             /// Instânciando
             SiscomexMoedaDAL objDAL = new SiscomexMoedaDAL();
             DataTable objTable = null;

             objTable = objDAL.Listar();

             return objTable;
         }
    }
}
