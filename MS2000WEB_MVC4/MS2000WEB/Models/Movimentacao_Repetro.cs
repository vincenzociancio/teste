using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Movimentacao_Repetro
    {
        public int Movimento { get; set; }
        public string CNPJ { get; set; }
        public string DI { get; set; }
        public string ADICAO { get; set; }
        public string Seq_Adicaostr { get; set; }
        public Nullable<System.DateTime> Data_movimentacao { get; set; }
        public string Tipo_Movimentacao { get; set; }
        public Nullable<double> Quantidade { get; set; }
        public Nullable<double> Saldo { get; set; }
        public string DDE { get; set; }
        public string RE { get; set; }
        public string Processo_ADM { get; set; }
        public string Requerimento { get; set; }
        public string Termo_Recebimento { get; set; }
        public string DI_MOV { get; set; }
        public string ADICAO_MOV { get; set; }
        public string Seq_Adicao_MOV { get; set; }
        public string Novo_benef { get; set; }
        public string cnpj_novo { get; set; }
        public string Situacao_Fiscal { get; set; }
        public string Codigo_Fiel { get; set; }
    }
}
