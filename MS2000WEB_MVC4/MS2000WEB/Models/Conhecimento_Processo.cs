using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Conhecimento_Processo
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Via { get; set; }
        public Nullable<int> Multimodal { get; set; }
        public string PLaca { get; set; }
        public string Lacre { get; set; }
        public string Embarcacao { get; set; }
        public string Transportador { get; set; }
        public string Tipodoccarga { get; set; }
        public string Numerodoccarga { get; set; }
        public string Numeromaster { get; set; }
        public string Local { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Utilizacao { get; set; }
        public string Tipomanifesto { get; set; }
        public string Numeromanifesto { get; set; }
        public string Codigo_Presenca_Carga { get; set; }
        public Nullable<double> Peso_Bruto { get; set; }
        public Nullable<double> Peso_Liquido { get; set; }
        public string Agente { get; set; }
        public string Pais_Procedencia { get; set; }
        public string URF_chegada { get; set; }
        public Nullable<System.DateTime> Data_Chegada_URF_Cheg { get; set; }
        public string URF_Despacho { get; set; }
        public Nullable<System.DateTime> Data_Chegada_URF_Desp { get; set; }
        public string Recinto_Alfandegario { get; set; }
        public string Setor_Alfandegario { get; set; }
        public string Armazem { get; set; }
        public Nullable<int> Operacao_FUNDAP { get; set; }
        public string Contratante_OPCAMBIAL { get; set; }
        public string Moeda_Frete { get; set; }
        public Nullable<double> Frete_Prepaid { get; set; }
        public Nullable<double> Frete_Collect { get; set; }
        public Nullable<double> Frete_Ter_Nac { get; set; }
        public string Moeda_Seguro { get; set; }
        public Nullable<double> Valor_Seguro { get; set; }
        public string Moeda_Despesas_ate_FOB { get; set; }
        public Nullable<double> Valor_Despesas_ate_FOB { get; set; }
        public string Unidade { get; set; }
        public Nullable<double> Quantidade { get; set; }
        public Nullable<System.DateTime> DT_ETA { get; set; }
        public string Data_Follow { get; set; }
        public Nullable<double> TX_CE { get; set; }
        public string Moeda_TXCE { get; set; }
        public Nullable<double> BAF { get; set; }
        public string Moeda_BAF { get; set; }
        public Nullable<double> Outros_Componentes_Frete { get; set; }
        public string Moeda_Outros_Componentes { get; set; }
        public string Bandeira { get; set; }
        public string Autorizacao_Marinha { get; set; }
    }
}
