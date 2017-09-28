using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Patrimonio
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Plaqueta { get; set; }
        public string Descricao { get; set; }
        public string Tipo_Patrimonio { get; set; }
        public string Sub_Tipo_Patrimonio { get; set; }
        public string Setor { get; set; }
        public string Usuario { get; set; }
        public string Nserie { get; set; }
        public Nullable<double> Valor { get; set; }
        public string Fornecedor { get; set; }
        public string Nfiscal_entrada { get; set; }
        public string IP { get; set; }
        public string PREDE { get; set; }
        public string Status_Patrimonio { get; set; }
        public string OBS { get; set; }
        public string Detalhe { get; set; }
        public string Plaqueta2 { get; set; }
    }
}
