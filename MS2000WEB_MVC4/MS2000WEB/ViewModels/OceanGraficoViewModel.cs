using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class OceanGraficoViewModel
    {
        public int Tot_registrada { get; set; }
        public int Tot_Desembaracado { get; set; }
        public double TotalDi { get; set; }
        public double TotalDesembaracado { get; set; }
        public string Tipo_Declaracao { get; set; }
        public int Total_tipo_Declaracao { get; set; }
        public double TotaltipoDeclaracao { get; set; }
        public string Nome_Declaracao { get; set; }
        public string NomeDeclaracao { get; set; }
        public int Media_Chegada_DI { get; set; }
        public int Media_DI_Desembaraco { get; set; }
        public double MediaChegadaDI { get; set; }
        public double MediaDIDesembaraco { get; set; }
        public double ValorTotalFOB { get; set; }
        public double Valor_Total_FOB { get; set; }
        public string TipoProcesso { get; set; }
        public string Tipo_Processo { get; set; }
        public int Total_tipo { get; set; }
        public double Totaltipo { get; set; } 
        public double Frete_aereo { get; set; } 
        public double Freteaereo { get; set; }
        public double Frete_Maritimo { get; set; }
        public double FreteMaritimo { get; set; }
        public decimal Peso_Bruto { get; set; }
        public decimal PesoBruto { get; set; } 
        
        
        public string Mes { get; set; }

        public int MES1 { get; set; }
        public int Ano { get; set; }
        public string Dia { get; set; }
        public double TotalValor { get; set; }  
        public double TotalDesembaraco { get; set; }
        public string CODIGO { get; set; }
       
        
    }
}