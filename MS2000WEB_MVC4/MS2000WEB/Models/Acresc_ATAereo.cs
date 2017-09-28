using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Acresc_ATAereo
    {
        public string processo { get; set; }
        public float valor { get; set; }
        public Nullable<short> Aliq { get; set; }
        public Nullable<float> ICMS { get; set; }
        public Nullable<float> FECP { get; set; }
    }
}
