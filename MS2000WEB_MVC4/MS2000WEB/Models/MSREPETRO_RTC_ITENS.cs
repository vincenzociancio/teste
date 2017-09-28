using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSREPETRO_RTC_ITENS
    {
        public Nullable<short> REG_RTC { get; set; }
        public int REG { get; set; }
        public string ITEM { get; set; }
        public string QUANTIDADE { get; set; }
        public string UNIDADE { get; set; }
        public string DESCRICAO { get; set; }
        public string Numero_serie { get; set; }
        public string Supplier { get; set; }
        public string Nota_Fiscal { get; set; }
        public string PESO { get; set; }
        public string Origem_BRA_MFST { get; set; }
        public string DESTINACAO { get; set; }
        public string VALOR { get; set; }
        public string DI { get; set; }
        public string Adicao { get; set; }
        public string Seq_Adicaostr { get; set; }
        public string CNPJ { get; set; }
        public Nullable<int> Movimento { get; set; }
    }
}
