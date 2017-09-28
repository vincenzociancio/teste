using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel.DataAnnotations;

namespace MS2000WEB.ViewModels
{
    public class RpatViewModel
    {
        public int ID { get; set; }
        public string Fk_Importador { get; set; }
        public string Fk_Processo { get; set; }
        public string Numero_RCR { get; set; }
        public DateTime? Data_Inicial { get; set; }
        public DateTime? Data_Final { get; set; }
        public DateTime? Dt_Prorrogacao { get; set; }
        public string Justificativa { get; set; }
        public string Observacao { get; set; }
        public DateTime? Data_Criacao { get; set; }
        public string RCR_LOCAL { get; set; }
        public string Razao_Social { get; set; }
        public string Cnpj_Cpf_Completo { get; set; }
    }
}