using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Notas_Fiscais_Servicos
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string NFiscal { get; set; }
        public string Processo { get; set; }
        public string Importador { get; set; }
        public string Razao_Social { get; set; }
        public string CGC_CPF { get; set; }
        public string Endereco { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string CEP { get; set; }
        public string UF { get; set; }
        public string Estado { get; set; }
        public string Inscricao_Estadual { get; set; }
        public string Cond_Pagto { get; set; }
        public string Nat_Serv { get; set; }
        public string Codigo_Fiscal { get; set; }
        public Nullable<System.DateTime> Data_emissao { get; set; }
        public Nullable<double> Percentual_ISS { get; set; }
        public Nullable<double> Percentual_IRRF { get; set; }
        public Nullable<double> Percentual_PCC { get; set; }
        public Nullable<double> Vatotnota { get; set; }
        public Nullable<int> Cancelada { get; set; }
        public Nullable<double> Valservico { get; set; }
        public Nullable<System.DateTime> Data_Recebimento { get; set; }
        public string LOTE_RPS { get; set; }
        public string Inscricao_Municipal { get; set; }
        public string EMAIL { get; set; }
        public string Telefone { get; set; }
        public string NFiscal_e { get; set; }
    }
}
