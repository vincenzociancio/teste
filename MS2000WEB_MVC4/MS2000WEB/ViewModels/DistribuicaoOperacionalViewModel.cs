using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MS2000WEB.ViewModels
{
    public class DistribuicaoOperacionalViewModel
    {
       public string Nome_completo { get; set; }
       public string Usuario { get; set;}
       public int ContarDeCodigo { get; set; }
       public List<DistribuicaoOperacionalViewModel> listaDistribuicao { get; set; }
    }


   

}