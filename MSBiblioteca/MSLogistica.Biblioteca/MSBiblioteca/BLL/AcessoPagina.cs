using MSBiblioteca.DAL;
using MSBiblioteca.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MSBiblioteca.BLL
{
    public class AcessoPagina : AcessoPaginaDTO
    {
        AcessoPaginaDAL objDAL = null;

        public AcessoPagina()
        {
            this.objDAL = new AcessoPaginaDAL();
        }

        /// <summary>
        /// Inclui uma pagina na tabela AcessoPaginas
        /// </summary>
        /// <param name="obj">AcessoPaginas.Pagina</param>
        /// <returns>bool</returns>
        public bool Incluir(AcessoPaginaDTO obj)
        {
            return objDAL.Incluir(obj);
        }

        /// <summary>
        /// Verifica se existe a pagina na tabela AcessoPaginas
        /// </summary>
        /// <param name="obj">AcessoPaginas.Pagina</param>
        /// <returns>bool</returns>
        public bool Existe(AcessoPaginaDTO obj, out int PaginaId)
        {   
            return objDAL.Existe(obj, out PaginaId);
        }
    }
}
