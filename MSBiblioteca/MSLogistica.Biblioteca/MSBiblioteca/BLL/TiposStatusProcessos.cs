using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;
using MSBiblioteca.Constante;
using System.Web.UI;

namespace MSBiblioteca.BLL
{
    public sealed class TiposStatusProcessos : TiposStatusProcessosDTO
    {
        private TiposStatusProcessosDAL objDAL = null;

        public TiposStatusProcessos()
        {
            objDAL = new TiposStatusProcessosDAL();
        }
        /// <summary>
        /// Retornar a descricao do Status após informar o código do status
        /// </summary>
        /// <returns></returns>
        public DataTable Buscar(string Codigo)
        {
            TiposStatusProcessosDAL TiposStatusProcessosDAL = new TiposStatusProcessosDAL();
            return TiposStatusProcessosDAL.Buscar(Codigo);
        }

    }
}
