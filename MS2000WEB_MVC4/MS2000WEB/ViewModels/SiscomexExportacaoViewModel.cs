using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class SiscomexExportacaoViewModel
    {
        public string URF_Despacho { get; set; }
        public string CNPJ_CPF_COMPLETO { get; set; }
        public string Razao_Social { get; set; }
        public string Endereco { get; set; }
        public string Pais { get; set; }
        public string Moeda { get; set; }
        public decimal ValorTotalFatura { get; set; }
        public decimal PesoTotalFatura { get; set; }
        public string Incoterm { get; set; }
        public string CGC_CPF { get; set; }
        public string NCM { get; set; }
        public string NALADI { get; set; }
        public string Descricao_Produto { get; set; }
        public decimal ValorTotalItem { get; set; }
        public decimal PesoTotalItem { get; set; }
        public decimal Quantidade { get; set; }       
    }
}