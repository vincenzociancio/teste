using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class CartaGarantidorViewModel
    {
        public string Codigo { get; set; }
        public string CNPJ_CPF_COMPLETO { get; set; }
        public string CNPJ_fiador_GAR { get; set; }
        public string endereco_fiador_GAR { get; set; }
        public decimal TR_VAL_COFINS { get; set; }
        public decimal TR_VAL_II { get; set; }
        public decimal TR_VAL_PIS { get; set; }
        public decimal TR_VAL_IPI { get; set; }
        public decimal TOTAL { get; set; }
        public string nome_fiador_GAR { get; set; }
        public string Numero_Rat { get; set; }
        public string Num_Rat { get; set; }
        public DateTime? Vigencia_inicial { get; set; }
        public DateTime? Vigencia_final { get; set; }
        public string DI { get; set; }
        public string Importador { get; set; }
        public string URF_Despacho { get; set; }
        public DateTime? Periodo_fianca_inicial { get; set; }
        public DateTime? Periodo_fianca_final { get; set; }
        public DateTime? Data_prorrogacao { get; set; }        
        
    }
}