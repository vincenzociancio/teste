using MSBiblioteca.DAL;
using System.Data;
using System;
using MSBiblioteca.DTO;

namespace MSBiblioteca.BLL
{
    public sealed class SiscomexUnidadeMedida : SiscomexUnidadeMedidaDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos SiscomexUnidadeMedida
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            SiscomexUnidadeMedidaDAL objDAL = new SiscomexUnidadeMedidaDAL();
            return objDAL.Buscar();
        }
    }
}
