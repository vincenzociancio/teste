using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSCGPO_POS_ITENS
    {
        public int REG_PO { get; set; }
        public int REG { get; set; }
        public string SEQPO { get; set; }
        public string FABRICANTE { get; set; }
        public string CODIGO { get; set; }
        public string PART_NUMBER { get; set; }
        public string Descricao_ing { get; set; }
        public string Descricao { get; set; }
        public string NCM { get; set; }
        public string Destaque_NCM { get; set; }
        public string NALADI { get; set; }
        public string Unidade { get; set; }
        public string Unidade_Medida_Estat { get; set; }
        public Nullable<double> QUANTIDADE { get; set; }
        public Nullable<double> QUANTIDADE_IMPORTADA { get; set; }
        public Nullable<double> Peso_Unitario { get; set; }
        public Nullable<double> Valor_Unitario { get; set; }
        public Nullable<double> Peso_Total { get; set; }
        public Nullable<double> Valor_Total { get; set; }
        public string UOM { get; set; }
        public string Vendor_Number { get; set; }
        public string Tipo_Declaracao { get; set; }
        public string STATUS { get; set; }
    }
}
