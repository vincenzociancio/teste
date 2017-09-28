using System;
namespace MSBiblioteca.DTO
{
    public class AcrescimosFaturaDTO 
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string FK_Processo { get; set; }
        public string FK_Fatura { get; set; }
        public string Cd_Met_Acres_Valor { get; set; }
        public string Descricao { get; set; }
        public decimal Vl_Acrescimo_Moeda { get; set; }
        public string Cd_Md_Negoc_Acres { get; set; }
        public decimal Vl_Acrescimo_Mn { get; set; }
    }
}
