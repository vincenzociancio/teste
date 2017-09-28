using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Nao_Conformidade
    {
        public int Sequencial { get; set; }
        public string Responsavel_identif { get; set; }
        public Nullable<System.DateTime> data { get; set; }
        public string Requisito_norma { get; set; }
        public string Local { get; set; }
        public Nullable<int> Real_Potencial { get; set; }
        public string Descricao_conformidade { get; set; }
        public string Descricao_disposicao { get; set; }
        public string Resp_disposicao { get; set; }
        public Nullable<System.DateTime> Data_diposicao { get; set; }
        public Nullable<int> tipo_NC { get; set; }
        public string Desc_Analise_Causas { get; set; }
        public string Resp_Analise_Causas { get; set; }
        public Nullable<System.DateTime> Dt_Analise_Causas { get; set; }
        public string Aprovado_Acoes_Corretiva { get; set; }
        public Nullable<System.DateTime> Dt_Acoes_Corretiva { get; set; }
        public string Des_Implementacao { get; set; }
        public string Resp_Implementacao { get; set; }
        public Nullable<System.DateTime> DT_Implementacao { get; set; }
        public string Verifica_Implementacao { get; set; }
        public string Verifica_Eficacia { get; set; }
        public string Verificado_por { get; set; }
        public Nullable<System.DateTime> DT_Verificado_por { get; set; }
        public string Encerrado_por { get; set; }
        public Nullable<System.DateTime> DT_Encerrado_por { get; set; }
        public string Desc_Analise_Risco { get; set; }
        public Nullable<int> Analise_Risco { get; set; }
        public string Tipo_Acao { get; set; }
    }
}
