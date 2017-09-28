using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Responsabilidades
    {
        public string PROCESSO { get; set; }
        public Nullable<int> ABERTURA { get; set; }
        public Nullable<System.DateTime> ABERTURA_DATA { get; set; }
        public Nullable<int> COMERCIAL_COORDENACAO { get; set; }
        public Nullable<int> COMERCIAL_RESPONSAVEL { get; set; }
        public Nullable<int> COMERCIAL_PRE_ANALISE { get; set; }
        public Nullable<System.DateTime> COMERCIAL_PRE_ANALISE_DTINICIO { get; set; }
        public string COMERCIAL_PRE_ANALISE_HINICIO { get; set; }
        public Nullable<System.DateTime> COMERCIAL_PRE_ANALISE_DTFINAL { get; set; }
        public string COMERCIAL_PRE_ANALISE_HFINAL { get; set; }
        public Nullable<int> COMERCIAL_TRADUCAO { get; set; }
        public Nullable<System.DateTime> COMERCIAL_TRADUCAO_DTINICIO { get; set; }
        public string COMERCIAL_TRADUCAO_HINICIO { get; set; }
        public Nullable<System.DateTime> COMERCIAL_TRADUCAO_DTFINAL { get; set; }
        public string COMERCIAL_TRADUCAO_HFINAL { get; set; }
        public Nullable<int> COMERCIAL_CADASTRO { get; set; }
        public Nullable<System.DateTime> COMERCIAL_CADASTRO_DTINICIO { get; set; }
        public string COMERCIAL_CADASTRO_HINICIO { get; set; }
        public Nullable<System.DateTime> COMERCIAL_CADASTRO_DTFINAL { get; set; }
        public string COMERCIAL_CADASTRO_HFINAL { get; set; }
        public Nullable<int> OPERACIONAL_COORDENACAO { get; set; }
        public Nullable<int> OPERACIONAL_CHEFE_CONTA { get; set; }
        public Nullable<int> OPERACIONAL_RESPONSAVEL { get; set; }
        public Nullable<int> OPERACIONAL_CADASTRO { get; set; }
        public Nullable<System.DateTime> OPERACIONAL_CADASTRO_DTINICIO { get; set; }
        public string OPERACIONAL_CADASTRO_HINICIO { get; set; }
        public Nullable<System.DateTime> OPERACIONAL_CADASTRO_DTFINAL { get; set; }
        public string OPERACIONAL_CADASTRO_HFINAL { get; set; }
        public Nullable<int> OPERACIONAL_SUPORTE { get; set; }
        public Nullable<int> FINANCEIRO_COORDENACAO { get; set; }
        public Nullable<int> FINANCEIRO_MONTAGEM { get; set; }
        public Nullable<System.DateTime> FINANCEIRO_MONTAGEM_DTINICIO { get; set; }
        public string FINANCEIRO_MONTAGEM_HINICIO { get; set; }
        public Nullable<System.DateTime> FINANCEIRO_MONTAGEM_DTFINAL { get; set; }
        public string FINANCEIRO_MONTAGEM_HFINAL { get; set; }
        public Nullable<int> FINANCEIRO_FATURAMENTO { get; set; }
        public Nullable<System.DateTime> FINANCEIRO_FATURAMENTO_DTINICIO { get; set; }
        public string FINANCEIRO_FATURAMENTO_HINICIO { get; set; }
        public Nullable<System.DateTime> FINANCEIRO_FATURAMENTO_DTFINAL { get; set; }
        public string FINANCEIRO_FATURAMENTO_HFINAL { get; set; }
        public Nullable<int> FINANCEIRO_DIGITALIZACAO { get; set; }
        public Nullable<int> FECHAMENTO { get; set; }
        public Nullable<System.DateTime> FECHAMENTO_DATA { get; set; }
        public Nullable<int> ARQUIVAMENTO { get; set; }
        public Nullable<System.DateTime> ARQUIVAMENTO_DATA { get; set; }
    }
}
