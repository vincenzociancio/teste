using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Numerarios_Processos_old
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public int REG { get; set; }
        public string Numerario { get; set; }
        public string Usuario_Previsao { get; set; }
        public Nullable<System.DateTime> Data_Previsao { get; set; }
        public Nullable<double> Valor_Previsao { get; set; }
        public string Previsao_solicitada { get; set; }
        public string Ok_Previsao_financeiro { get; set; }
        public string Usuario_Financeiro { get; set; }
        public Nullable<System.DateTime> Data_Registro { get; set; }
        public Nullable<double> Valor_Registrado { get; set; }
        public Nullable<double> Valor_Contabilizado { get; set; }
        public string Contabilizado { get; set; }
        public string Usuario_Contablizado { get; set; }
        public Nullable<int> Conta_Corrente { get; set; }
        public Nullable<int> Codigo_mov { get; set; }
        public string Impdemfim { get; set; }
        public string Detalhe { get; set; }
        public string Docsis { get; set; }
        public string Fatura_mov { get; set; }
        public string Fornecedor { get; set; }
        public string Codigo { get; set; }
        public Nullable<int> Contabilizado_cliente { get; set; }
        public Nullable<int> REG_creditos { get; set; }
        public string Processo_FundoFIXO { get; set; }
    }
}
