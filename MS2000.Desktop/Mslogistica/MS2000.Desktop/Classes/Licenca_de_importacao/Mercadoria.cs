using System;
using System.Collections.Generic;
using System.Linq;

namespace MS2000.Desktop.Classes.Licenca_de_importacao
{
    public class Mercadoria
    {
        private string _ncm;

        public string NCM
        {
            get
            {
                return _ncm;
            }
            set
            {
                _ncm = value;
            }
        }
        //public string NCM { get; set; }

        public string NALADI_SH { get; set; }

        //public double TotalQuantidadeUnidadeEstatistica
        //{
        //    get
        //    {
        //        return GetQuantidadeUnidadeEstatistica();
        //    }
        //    private set { }
        //} // 15,5 casas decimais

        /* public double NumeroPesoLiquidoMerc
         {
             get
             {
                 return GetPesoTotalItens();
             }
         } //16,5 casas decimais
         * */
        public string MoedaNegociada { get; set; }
        public string INCOTERM { get; set; }

        //private double _valorMercLocalEmbarque;
        //public double ValorMercLocalEmbarque
        //{
        //    get;
        //    set;
        //get { return _valorMercLocalEmbarque; }
        //set { _valorMercLocalEmbarque += value;  }
        //}//16,2 casas decimais

        public string CondicaoMercadoria { get; set; }

        public List<string> ListaDeNCM { get; set; }
        public List<ProcessoAnuente> ProcessoAnuente { get; set; }
        public int ModalidadeDrawback { get; set; }
        public List<MercadoriaDetalhada> MercadoriasDetalhada { get; set; }

        //Para calculos
        //public double GetQuantidadeUnidadeEstatistica()
        //{
        //    return MercadoriasDetalhada.Sum(c => c.QuantidadeUnidadeEstatistica);
        //}

        /*public double GetQuantidadeTotalItens()
        {
            return MercadoriasDetalhada.Sum(c => c.QtdeUnidComercializada);
        }*/

        public Mercadoria()
        {
            ListaDeNCM = new List<string>();
            ProcessoAnuente = new List<ProcessoAnuente>();
            MercadoriasDetalhada = new List<MercadoriaDetalhada>();
        }

    }
}
