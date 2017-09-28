using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Transportadore
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public string Razao_Social { get; set; }
        public string Pais { get; set; }
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
        public int Lixo { get; set; }
    }
}
