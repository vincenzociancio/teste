using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;


namespace MS2000WEB.ViewModels
{
    public class FornecedoresEmpresaViewModel
    {
        public int id { get; set; }        
        public int fk_fornecedor { get; set; }
        public string Razao_Social { get; set; }
        public string Telefone { get; set; }
        public string Contato { get; set; }       

    }
}