using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Planilha_PrestContasDespesas_Financeiro_Itens
    {
        public int Sequencial { get; set; }
        public Nullable<int> Sequencial_Planilha { get; set; }
        public string Ref_MS { get; set; }
        public string Conhecimento { get; set; }
        public string Fatura { get; set; }
        public string Tp_Processo { get; set; }
        public string Regime { get; set; }
        public Nullable<double> Armazenagem { get; set; }
        public Nullable<double> Armazenagem_CF_CP { get; set; }
        public Nullable<double> Impostos { get; set; }
        public Nullable<double> Taxas { get; set; }
        public Nullable<double> Afrmm { get; set; }
        public Nullable<double> Despesas { get; set; }
        public Nullable<double> Transportadora_JJ { get; set; }
        public Nullable<double> Portolog { get; set; }
        public Nullable<double> Cpmf { get; set; }
        public Nullable<double> Adiantamento { get; set; }
        public Nullable<double> Total { get; set; }
        public string Embarcacao { get; set; }
        public Nullable<double> Honorarios { get; set; }
        public Nullable<double> Honorarios_Especiais { get; set; }
        public Nullable<double> IR { get; set; }
        public Nullable<double> Cofins { get; set; }
        public Nullable<double> Vlr_Liquido { get; set; }
    }
}
