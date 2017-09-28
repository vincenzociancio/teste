using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Repetro
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public string Razao_Social { get; set; }
        public string CNPJ { get; set; }
        public string CNPJ_COMPLETO { get; set; }
        public string Contrato { get; set; }
        public string Contratos_Descricao { get; set; }
        public Nullable<System.DateTime> Vigencia_inicial { get; set; }
        public Nullable<System.DateTime> Vigencia_final { get; set; }
        public string Contratos_Tipo { get; set; }
        public string Local { get; set; }
        public string Locais_Inventario_Descricao { get; set; }
        public string Tipo_local { get; set; }
        public string Unidade_Jur { get; set; }
        public string Processo_Adm { get; set; }
        public string DI { get; set; }
        public Nullable<System.DateTime> datadi { get; set; }
        public Nullable<System.DateTime> DT_DESEMBARACO { get; set; }
        public string Tipo_Declaracao { get; set; }
        public string COD_SIT { get; set; }
        public string QSIT { get; set; }
        public string QSIT_Ing { get; set; }
        public string Moeda { get; set; }
        public Nullable<double> Taxa_conversao { get; set; }
        public string qpro { get; set; }
        public string Processos_Tipo { get; set; }
        public string Produto { get; set; }
        public string Numero_serie { get; set; }
        public string DESCBEM { get; set; }
        public string NCM { get; set; }
        public string Destaque_NCM { get; set; }
        public string Unidade { get; set; }
        public string DESC_UNIDCO { get; set; }
        public string Unidade_Medida_Estat { get; set; }
        public string DESC_UNIDEST { get; set; }
        public Nullable<double> Quantidade { get; set; }
        public Nullable<double> Saldo { get; set; }
        public Nullable<double> VALOR { get; set; }
        public string Adicao { get; set; }
        public string Seq_Adicaostr { get; set; }
        public string Regime_Tributacao_II { get; set; }
        public Nullable<double> Valor_II_Devido { get; set; }
        public Nullable<double> Valor_II_a_recolher { get; set; }
        public string Regime_Tributacao_IPI { get; set; }
        public Nullable<double> Valor_IPI_Devido { get; set; }
        public Nullable<double> Valor_IPI_a_recolher { get; set; }
        public string Codigo_Fiel { get; set; }
        public string CNPJ_Empresa_Fiel { get; set; }
        public string Razao_Social_Fiel { get; set; }
        public string Endereco { get; set; }
        public string Descricao { get; set; }
        public string Nome_Fiel { get; set; }
        public string CPF_Fiel { get; set; }
        public string DESCBEM_Ing { get; set; }
        public Nullable<double> Saldo_MOV { get; set; }
    }
}
