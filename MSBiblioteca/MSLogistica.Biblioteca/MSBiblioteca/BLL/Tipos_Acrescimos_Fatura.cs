using System;
using MSBiblioteca.DTO;
using MSBiblioteca.DAL;
using System.Data;

namespace MSBiblioteca.BLL
{
    /// <summary>
    /// Classe Tipos Acrescimos Fatura
    /// </summary>
    /// 
    public sealed class Tipos_Acrescimos_Fatura : Tipos_Acrescimos_FaturaDTO
    {
        /// <summary>
        /// Retornar um DataTable com a lista dos Tipos de Acrescimo da Fatura
        /// Carrega o Grid de Tipo de Acréscimo na tela de acréscimo da Fatura
        /// </summary>
        /// <returns></returns>
        public DataTable BuscarTiposAcrescimosFatura(string Incoterm)
        {
            TiposAcrescimosFaturaDAL Tipos_Acrescimos_FaturaDAL = new TiposAcrescimosFaturaDAL();
            return Tipos_Acrescimos_FaturaDAL.BuscarTiposAcrescimosFatura(Incoterm);
        }
        public DataTable BuscarTiposAcrescimosProcessoEFatura(string Processo, string Fatura)
        {
            TiposAcrescimosFaturaDAL Tipos_Acrescimos_FaturaDAL = new TiposAcrescimosFaturaDAL();
            return Tipos_Acrescimos_FaturaDAL.BuscarTiposAcrescimosProcessoEFatura(Processo, Fatura);
        }
        public DataTable Soma_Vl_Acrescimo_Moeda_Igual_ValTot(string Processo, string Fatura)
        {
            TiposAcrescimosFaturaDAL Tipos_Acrescimos_FaturaDAL = new TiposAcrescimosFaturaDAL();
            return Tipos_Acrescimos_FaturaDAL.Soma_Vl_Acrescimo_Moeda_Igual_ValTot(Processo, Fatura);
        }
    }
}
