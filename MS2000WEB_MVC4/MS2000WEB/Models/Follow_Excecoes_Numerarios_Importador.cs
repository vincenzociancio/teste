using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Follow_Excecoes_Numerarios_Importador
    {
        public int Pk_id { get; set; }
        public string Fk_importador { get; set; }
        public Nullable<int> Fk_codevento { get; set; }
        public Nullable<int> Fk_codobs { get; set; }
        public bool Debito_cliente { get; set; }
    }
}
