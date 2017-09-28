using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class NF_Web_detalhes
    {
        public string CNPJ_CPF_COMPLETO { get; set; }
        public string Tiponf { get; set; }
        public string NFiscal { get; set; }
        public string Sequencial { get; set; }
        public string Linha { get; set; }
        public string Codproduto { get; set; }
        public string Descricao { get; set; }
        public string Classificacao { get; set; }
        public string ST { get; set; }
        public string Unidade { get; set; }
        public Nullable<double> Quantidade { get; set; }
        public Nullable<double> Peso_unitario { get; set; }
        public Nullable<double> Valor_Mercadoria { get; set; }
        public Nullable<double> Frete_Unitario { get; set; }
        public Nullable<double> Seguro_Unitario { get; set; }
        public Nullable<double> Acrescimo_Unitario { get; set; }
        public Nullable<double> Deducao_Unitario { get; set; }
        public Nullable<double> Tributo_Unitario { get; set; }
        public Nullable<double> Valor_unitario { get; set; }
        public Nullable<double> Valor_total { get; set; }
        public Nullable<double> AliquotaICMS { get; set; }
        public Nullable<double> AliquotaIPI { get; set; }
        public Nullable<double> ValIPI { get; set; }
        public string Processo { get; set; }
        public string DI { get; set; }
        public string ADICAO { get; set; }
        public Nullable<double> TaxaConversao { get; set; }
        public Nullable<double> Valor_Aduaneiro { get; set; }
        public Nullable<double> Taxa_Siscomex_Unitario { get; set; }
        public Nullable<double> Valor_PIS_unitario { get; set; }
        public Nullable<double> Valor_COFINS_unitario { get; set; }
        public Nullable<double> Peso_unitario_Bruto { get; set; }
    }
}
