using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;


namespace MSBiblioteca.BLL
{
    public sealed class TiposReducoesFaturas :TiposReducoesFaturasDTO
    {
        public DataTable BuscarTiposReducaoFatura(string Incoterm)
        {
            TiposReducoesFaturasDAL tiposReducaoFaturaDAL = new TiposReducoesFaturasDAL();
            return tiposReducaoFaturaDAL.BuscarTiposReducaoFatura(Incoterm);
        }
    }
}
