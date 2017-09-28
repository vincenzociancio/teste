using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    public sealed class Produto : ProdutoDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos 10 últimos Armazem
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar()
        {
            ProdutoDAL objDAL = new ProdutoDAL();
            return objDAL.Buscar();
        }
    }
}
