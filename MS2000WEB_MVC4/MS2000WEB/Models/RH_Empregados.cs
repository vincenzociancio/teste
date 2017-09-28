using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class RH_Empregados
    {
        public int ID { get; set; }
        public string Nome { get; set; }
        public string Matricula { get; set; }
        public System.DateTime DataNascimento { get; set; }
        public string EstadoCivil { get; set; }
        public string CPF { get; set; }
        public string Sexo { get; set; }
        public string RG { get; set; }
        public string RG_Orgao { get; set; }
        public Nullable<System.DateTime> RG_Emissao { get; set; }
        public string PIS { get; set; }
        public string CTPS { get; set; }
        public string CTPS_Serie { get; set; }
        public string CTPS_UF { get; set; }
        public Nullable<int> Titulo { get; set; }
        public Nullable<int> Titulo_Zona { get; set; }
        public string Titulo_Secao { get; set; }
        public string Pai_Nome { get; set; }
        public string Mae_Nome { get; set; }
        public string Endereco_Logradouro { get; set; }
        public string Endereco_Numero { get; set; }
        public string Endereco_Complemento { get; set; }
        public string Endereco_Bairro { get; set; }
        public string Endereco_Cidade { get; set; }
        public string Endereco_UF { get; set; }
        public string Endereco_CEP { get; set; }
        public Nullable<int> Nacionalidade { get; set; }
        public string Naturalidade { get; set; }
        public string Escolaridade { get; set; }
        public Nullable<int> Raca_Cor { get; set; }
        public string Certificado_Reservista { get; set; }
    }
}
