using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Tributacao_Item_Fatura
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
        public string Sequencial_Item { get; set; }
        public string Sequencial { get; set; }
        public string Certificado_Origem { get; set; }
        public string Ato_Concessorio { get; set; }
        public string CNPJ_CPF_COMPLETO { get; set; }
        public string Motivo_Adm_Temp { get; set; }
        public string CD_METOD_VALORACAO { get; set; }
        public string CD_APLICACAO_MERC { get; set; }
        public Nullable<int> IN_BEM_ENCOMENDA { get; set; }
        public Nullable<int> IN_MATERIAL_USADO { get; set; }
        public string CD_TIPO_ACORDO_TAR { get; set; }
        public string ACORDO_ALADI { get; set; }
        public string Numero_Ato_Legal_ALADI { get; set; }
        public Nullable<double> ALIQUOTA_ALADI { get; set; }
        public string Regime_Tributacao_II { get; set; }
        public Nullable<double> Aliq_NCM_II { get; set; }
        public Nullable<double> Valor_II_Devido { get; set; }
        public Nullable<double> Valor_II_a_recolher { get; set; }
        public string Fundamento_Legal_II { get; set; }
        public string Numero_Ato_Legal_II { get; set; }
        public string Regime_Tributacao_IPI { get; set; }
        public Nullable<double> Base_Calc_IPI { get; set; }
        public Nullable<double> Aliq_NCM_IPI { get; set; }
        public Nullable<double> Valor_IPI_Devido { get; set; }
        public Nullable<double> Valor_IPI_a_recolher { get; set; }
        public string Numero_Ato_Legal_IPI { get; set; }
        public Nullable<double> Percentual_Reducao_II { get; set; }
        public Nullable<double> Percentual_EX { get; set; }
        public Nullable<double> Percentual_Reduca_IPI { get; set; }
        public Nullable<double> Quantidade { get; set; }
        public string Adicao { get; set; }
        public Nullable<byte> Seq_Adicao { get; set; }
        public string DDE { get; set; }
        public string RE { get; set; }
        public Nullable<int> Prazo_permanencia { get; set; }
        public string Tratamento_Tributario { get; set; }
        public string Fundamento_Legal { get; set; }
        public string CD_REGIME_TRIBUTAR_PISCOFINS { get; set; }
        public string CD_FUND_LEG_REGIME_PISCOFINS { get; set; }
        public Nullable<double> PC_ALIQ_REDUZIDA_PIS { get; set; }
        public Nullable<double> PC_ALIQ_REDUZIDA_COFINS { get; set; }
        public Nullable<double> Aliq_ICMS { get; set; }
        public Nullable<double> Aliq_ICMS_EXTRA { get; set; }
        public string NR_OPER_TRAT_PREV { get; set; }
    }
}
