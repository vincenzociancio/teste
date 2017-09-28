using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Emails_avisos
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Importador { get; set; }
        public string Tipo { get; set; }
        public string Email { get; set; }
        public string Nome_completo { get; set; }
        public string Parametros { get; set; }
        public Nullable<int> HTML { get; set; }
        public string Plataforma { get; set; }
        public string Cnpj_Importador { get; set; }
        public Nullable<bool> Para { get; set; }
        public Nullable<bool> Cc { get; set; }
        public Nullable<bool> CCo { get; set; }
        public Nullable<bool> Ativo { get; set; }
    }
}
