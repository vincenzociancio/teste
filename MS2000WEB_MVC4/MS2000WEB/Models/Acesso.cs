using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Acesso
    {
        public int Num { get; set; }
        public string ID { get; set; }
        public string Filial { get; set; }
        public string Tipo { get; set; }
        public string CNPJ_CPF_COMPLETO { get; set; }
        public string Empresa { get; set; }
        public string Usuario { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public Nullable<System.DateTime> Hora { get; set; }
        public string Pagina { get; set; }
        public string Parametros { get; set; }
    }
}
