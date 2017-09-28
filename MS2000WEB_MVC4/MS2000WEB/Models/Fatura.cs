using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Fatura
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Codigo { get; set; }
        public string Exportador { get; set; }
        public string Incoterm { get; set; }
        public string Vinculacao { get; set; }
        public string Condicao { get; set; }
        public Nullable<double> Valor_Total { get; set; }
        public Nullable<double> Peso_Total { get; set; }
        public Nullable<double> Peso_Total_Acertado { get; set; }
        public Nullable<int> Acrescimos_Reducoes { get; set; }
        public string Moeda { get; set; }
        public string Cobertura_Cambial { get; set; }
        public string Motivo_Sem_Cobertura { get; set; }
        public string Modalidade_de_Pagamento { get; set; }
        public string Instituicao_Financiadora { get; set; }
        public string Tipo_Parcela { get; set; }
        public string Numero_de_parcelas { get; set; }
        public string Periodicidade { get; set; }
        public Nullable<double> Valor_das_Parcelas { get; set; }
        public string Indicador_Periodicidade { get; set; }
        public Nullable<int> Taxa_de_Juros { get; set; }
        public string Codigo_Taxa_de_Juros { get; set; }
        public Nullable<double> Valor_Taxa_de_Juros { get; set; }
        public string ROF_BACEN { get; set; }
        public Nullable<double> Percentual_ROF { get; set; }
        public Nullable<System.DateTime> DT_PREV_PAG_CAMBIO { get; set; }
        public Nullable<System.DateTime> DT_PAG_CAMBIO { get; set; }
        public string STATUS_CAMBIO { get; set; }
        public string CONTRATO_CAMBIO { get; set; }
        public Nullable<double> SALDO_CAMBIO { get; set; }
        public Nullable<System.DateTime> DtEmissao { get; set; }
        public Nullable<int> Peso_Libra { get; set; }
        public string Contrato { get; set; }
        public string Local_Inventario { get; set; }
        public Nullable<int> FK_Plataforma { get; set; }
        public Nullable<int> Frete_Incluso { get; set; }
        public string PaisOrigem { get; set; }
    }
}
