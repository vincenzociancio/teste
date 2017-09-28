using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class EnscoGraficoViewModel
    {
        public int MesNumero { get; set; }
        public string Mes { get; set; }
        public string Dia { get; set; }
        public double TotalValor { get; set; }
        public double MediaDias { get; set; }
        public double TotalAverbacao { get; set; }
        public double TotalDta { get; set; }
        public double TotalDi { get; set; }
        public double TotalDesembaraco { get; set; }
        public string CODIGO { get; set; }
        public DateTime DT_DESEMBARACO { get; set; }
        public DateTime Data_Chegada_URF_Cheg { get; set; }
        public string DESCRICAO { get; set; }
        public string URF_Despacho { get; set; }
        public decimal days { get; set; }
    }
}