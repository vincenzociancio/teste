using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Creditos_Processos
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public int REG { get; set; }
        public string Credito { get; set; }
        public Nullable<System.DateTime> Data_Credito { get; set; }
        public Nullable<double> Valor { get; set; }
        public Nullable<int> Conta_Corrente { get; set; }
        public Nullable<int> Codigo_mov { get; set; }
        public string Contabilizado { get; set; }
        public string Impdemfim { get; set; }
        public Nullable<int> Credito_Cobrado { get; set; }
        public Nullable<int> Contabilizado_cliente { get; set; }
        public Nullable<int> REG_numerarios { get; set; }
        public string Processo_FundoFIXO { get; set; }
        public string Detalhe { get; set; }
        public string Docsis { get; set; }
    }
}
