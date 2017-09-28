using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Filiai
    {
        public string Codigo_Empresa { get; set; }
        public string Codigo_Filial { get; set; }
        public string Descricao { get; set; }
        public string Endereco { get; set; }
        public string Numero { get; set; }
        public string Complemento { get; set; }
        public string Bairro { get; set; }
        public string Cidade { get; set; }
        public string UF { get; set; }
        public string CEP { get; set; }
        public string Telefone { get; set; }
        public string Fax { get; set; }
    }
}
