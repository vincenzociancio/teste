using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Contrato
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Importador { get; set; }
        public string Contrato1 { get; set; }
        public string Descricao { get; set; }
        public Nullable<System.DateTime> Vigencia_inicial { get; set; }
        public Nullable<System.DateTime> Vigencia_final { get; set; }
        public string Tipo { get; set; }
        public Nullable<System.DateTime> Data_Baixa { get; set; }
        public Nullable<System.DateTime> Data_prorrogacao { get; set; }
        public Nullable<int> Repetro { get; set; }
        public Nullable<int> Ativo { get; set; }
        public string Cod_Regime_Fundamento { get; set; }
        public string INs { get; set; }
        public string Setor { get; set; }
        public int Identificacao { get; set; }
        public Nullable<double> Valor_Icms { get; set; }
    }
}
