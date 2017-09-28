using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class ItensFaturas_OLD
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
        public string Sequencial { get; set; }
        public string Pagina { get; set; }
        public string Produto { get; set; }
        public string Descricao_Produto { get; set; }
        public string Fabricante { get; set; }
        public string NCM { get; set; }
        public string Unidade { get; set; }
        public string Unidade_Medida_Estat { get; set; }
        public string Destaque_NCM { get; set; }
        public string NALADI { get; set; }
        public string Referencia { get; set; }
        public string Numero_serie { get; set; }
        public string Referencia_projeto { get; set; }
        public string PO { get; set; }
        public string Seqpo { get; set; }
        public Nullable<double> Quantidade { get; set; }
        public Nullable<double> Valor_Unitario { get; set; }
        public Nullable<double> Valor_Total { get; set; }
        public Nullable<double> Peso_Unitario { get; set; }
        public Nullable<double> Peso_Unitario_Acertado { get; set; }
        public Nullable<double> Peso_Total { get; set; }
        public Nullable<double> Peso_Total_Acertado { get; set; }
        public Nullable<double> Saldo_Tributavel { get; set; }
        public Nullable<double> Rateio_Acrescimos { get; set; }
        public Nullable<double> Rateio_Deducoes { get; set; }
        public Nullable<double> Rateio_Embalagem { get; set; }
        public Nullable<double> Rateio_Frete_Interno_imp { get; set; }
        public Nullable<double> Rateio_Seguro_Interno { get; set; }
        public Nullable<double> Rateio_outras_import { get; set; }
        public Nullable<double> Rateio_startup { get; set; }
        public Nullable<double> Rateio_jurosfin { get; set; }
        public Nullable<double> Rateio_montagem { get; set; }
        public Nullable<double> Rateio_Frete_Interno_exp { get; set; }
        public Nullable<double> Rateio_carga_exp { get; set; }
        public Nullable<double> Rateio_outras_export { get; set; }
        public Nullable<double> Rateio_frete_fatura { get; set; }
        public Nullable<double> Rateio_seguro_fatura { get; set; }
        public Nullable<double> Rateio_carga_imp { get; set; }
        public Nullable<double> Rateio_Despesas_ate_FOB { get; set; }
        public Nullable<double> Rateio_Frete_prepaid { get; set; }
        public Nullable<double> Rateio_Frete_collect { get; set; }
        public Nullable<double> Rateio_Frete_ternac { get; set; }
        public Nullable<double> Rateio_Seguro { get; set; }
        public Nullable<double> Valor_Aduaneiro { get; set; }
        public Nullable<double> Valor_mercadoria { get; set; }
        public Nullable<double> VMLE { get; set; }
        public Nullable<double> Base_Calc_II { get; set; }
        public Nullable<double> Acresc_reduc_Valaduan { get; set; }
        public string COD_SIT { get; set; }
        public string CNPJ { get; set; }
        public string Fiel_nome { get; set; }
        public string Fiel_cpf { get; set; }
        public string Contrato { get; set; }
        public string Local_Inventario { get; set; }
        public Nullable<double> Rateio_Taxa_Siscomex { get; set; }
        public string Descricao_Produto_ing { get; set; }
        public string Codigo_Produto { get; set; }
        public Nullable<int> Sequencial_Produto { get; set; }
    }
}
