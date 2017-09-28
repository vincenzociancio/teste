using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSTreinamento
    {
        public int ID { get; set; }
        public System.DateTime Data { get; set; }
        public string Colaborador { get; set; }
        public bool A { get; set; }
        public bool B { get; set; }
        public bool C { get; set; }
        public string Treinamento { get; set; }
    }
}
