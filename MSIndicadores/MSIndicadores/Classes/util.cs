using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Reflection;
using System.ComponentModel;

namespace MSIndicadores
{
    public class util
    {
        public static string DescricaoEnum(Enum elemento)
        {
            // Pego a chave do elemento passado
            FieldInfo infoElemento = elemento.GetType().GetField(elemento.ToString());

            // Conforme o elemento passado pego o atributo descrição
            DescriptionAttribute[] atributos = (DescriptionAttribute[])infoElemento.GetCustomAttributes(typeof(DescriptionAttribute), false);

            // Se existe algum atributo
            if (atributos.Length > 0)
            {
                // Verifico se existe alguma descrição, pode haver enumeradores onde não haja descrição
                if (atributos[0].Description != null)
                {
                    return atributos[0].Description;
                }
                // Se não há descrição, retorno texto
                else
                {
                    return "Sem descrição";
                }
            }
            else
            {
                return elemento.ToString();
            }
        }


        public static int GetDiffDaysUseful(DateTime initialDate, DateTime finalDate)
        {
            int days = 0;
            int daysCount = 0;
            days = initialDate.Subtract(finalDate).Days;
            
            //Módulo
            if (days < 0)
                days = days * -1;

            for (int i = 1; i <= days; i++)
            {
                initialDate = initialDate.AddDays(1);
                //Conta apenas dias da semana.
                if (initialDate.DayOfWeek != DayOfWeek.Sunday &&
                    initialDate.DayOfWeek != DayOfWeek.Saturday)
                    daysCount++;
            }
            return daysCount;
        }


        public static int GetDiffDays(DateTime initialDate, DateTime finalDate)
        {            
            TimeSpan diff;            
            diff = finalDate - initialDate;
            return diff.Days;
        }

    }
}