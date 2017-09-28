using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Fornecedores_Empresa
    {
        public int id { get; set; }
        public int fk_fornecedor { get; set; }
        public string Razao_Social { get; set; }
        public string Telefone { get; set; }
        public string Contato { get; set; }
    }
}
