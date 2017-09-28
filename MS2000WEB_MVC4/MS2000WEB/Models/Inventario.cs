using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Inventario
    {
        public int CÓD { get; set; }
        public string Produto { get; set; }
        public string descbem_ing { get; set; }
        public string descbem { get; set; }
        public string numero_serie { get; set; }
        public Nullable<double> quantidade { get; set; }
        public byte[] SSMA_TimeStamp { get; set; }
    }
}
