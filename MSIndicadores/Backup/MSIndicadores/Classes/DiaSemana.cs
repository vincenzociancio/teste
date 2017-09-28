using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.ComponentModel;


namespace MSIndicadores
{
    public enum DiaSemana
    {
        [Description("Domingo")]
        Domingo = 1,
        [Description("Segunda-feira")]
        Segunda = 2,
        [Description("Terça-feira")]
        Terca,
        [Description("Quarta-feira")]
        Quarta = 4,
        [Description("Quinta-feira")]
        Quinta,
        [Description("Sexta-feira")]
        Sexta,
        [Description("Sábado")]
        Sabado = 7
    }

}