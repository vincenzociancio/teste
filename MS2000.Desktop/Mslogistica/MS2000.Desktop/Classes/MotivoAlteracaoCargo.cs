using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public enum MotivoAlteracaoCargo
    {
        [Description("Enquadramento de Função")]
        Enquadramento_de_Funcao = 1,
        [Description("Função Inicial")]
        Funcao_Inicial = 2,
        [Description("Promoção")]
        Promocao = 3,
        [Description("Motivo Desconhecido")]
        Motivo_Desconhecido = 4,
    }
}
