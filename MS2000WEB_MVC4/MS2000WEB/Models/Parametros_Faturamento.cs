using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Parametros_Faturamento
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Importador { get; set; }
        public string Tipo_Processo { get; set; }
        public int Reg { get; set; }
        public string Tipo_Declaracao { get; set; }
        public string Base_faturamento { get; set; }
        public Nullable<double> Valor_fixo { get; set; }
        public Nullable<double> Percentual { get; set; }
        public string Faixa_Real_Dolar { get; set; }
        public Nullable<double> Faixa_inicial { get; set; }
        public Nullable<double> Faixa_final { get; set; }
        public Nullable<double> Valor_minimo { get; set; }
        public Nullable<double> Valor_maximo { get; set; }
        public Nullable<double> Valor_fixoc { get; set; }
        public string E_Salario_Minimo { get; set; }
        public Nullable<double> Quantidade_Salarios { get; set; }
        public string Data_Referencia_SM { get; set; }
        public Nullable<double> Quantidade_SalariosMAX { get; set; }
        public string E_Salario_Minimo_TX { get; set; }
        public Nullable<double> Valor_taxaexpediente { get; set; }
        public Nullable<double> Valor_LI { get; set; }
        public Nullable<double> Valor_DTA1 { get; set; }
        public Nullable<double> QTD_SM_TAXAEXP { get; set; }
        public Nullable<double> QTD_SM_DTA1 { get; set; }
        public Nullable<double> QTD_SM_LI { get; set; }
        public string Data_Referencia_SM_TX { get; set; }
        public Nullable<int> ATIVO { get; set; }
    }
}
