using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class PreProcessoViewModel
    {
        public int pk_codigo { get; set; }
        public string codigo { get; set; }
        //public string cod_importador { get; set; }
        public string cod_tipoprocesso { get; set; }
        public string cod_tipodeclaracao { get; set; }
        public string fk_importador { get; set; }
        public string Importador { get; set; }
        public DateTime? Data { get; set; }
        public string PO { get; set; }
        public string Invoice { get; set; }
        public string Packinglist { get; set; }
        public string TipoProcesso { get; set; }
        public string TipoDeclaracao { get; set; }
        public string TipoMoeda { get; set; }
        public string Status { get; set; }
        public string RefCliente { get; set; }
        public string DTA { get; set; }
        public string Descricao { get; set; }
        public Double Valor { get; set; }
        public int status_classificacao { get; set; }
        public int Ano { get; set; }
        public string CNPJ_CPF { get; set; }
    }
}