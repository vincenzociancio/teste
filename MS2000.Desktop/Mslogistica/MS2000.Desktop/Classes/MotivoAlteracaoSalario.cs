using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;

namespace MS2000.Desktop.Classes
{
    public enum MotivoAlteracaoSalario
    {
        [Description("Acordo Coletivo CCT")]
        Acordo_Coletivo_CCT = 1,
        [Description("Espontâneo")]
        Espontaneo = 2,
        [Description("Promoção")]
        Promocao = 3,
        [Description("Salário Inicial")]
        Salario_Inicial = 4,
        [Description("Aumento do Salário Mínimo")]
        Aumento_Salario_Minimo = 5,
        [Description("Enquadramento")]
        Enquadramento = 6,
        [Description("Antecipação Salarial Por Conta da CCT")]
        Antecipacao_Salarial_Por_Conta_Da_CCT = 7,

    }
}
