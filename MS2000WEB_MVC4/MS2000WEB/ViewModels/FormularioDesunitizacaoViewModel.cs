using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class FormularioDesunitizacaoViewModel
    {
        public string CodigoProcesso { get; set; }

        public string CodigoImportador {get; set; }
        public string CnpjCPf { get; set; }
        public string Razao_Social {get; set; } 
        public string Endereco {get; set; }
        public string Numero {get; set; }
        public string Complemento {get; set; }
        public string bairro {get; set; }
        public string Cidade {get; set; }
        public string CEP {get; set; }
        public string UF { get; set; }

        public string Numerodoccarga {get; set; }
        public string Embarcacao {get; set; }
        public DateTime? Data_Chegada_URF_Cheg { get; set; }
             
    }
}