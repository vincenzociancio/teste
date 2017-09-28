using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class vRepetro_Itens_Entregues_seadrill
    {
        public Nullable<double> ITENS_ENTREGUES { get; set; }
        public string CNPJ { get; set; }
        public string Codigo_Fiel { get; set; }
        public string Processo_ADM { get; set; }
        public string DI { get; set; }
        public string Adicao { get; set; }
        public string Seq_Adicaostr { get; set; }
        public string Contratos_Descricao { get; set; }
        public string Locais_Inventario_Descricao { get; set; }
        public string Produto { get; set; }
        public string DESCBEM { get; set; }
        public string DESCBEM_Ing { get; set; }
        public string Numero_serie { get; set; }
        public Nullable<double> Quantidade { get; set; }
        public Nullable<double> Saldo { get; set; }
        public string CNPJ_COMPLETO { get; set; }
        public string Razao_Social { get; set; }
        public string Nome_Fiel { get; set; }
        public Nullable<System.DateTime> Data_movimentacao { get; set; }
        public string Novo_benef { get; set; }
    }
}
