using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Acrescimos_ICMS
    {
        public string PROCESSO { get; set; }
        public string FATURA { get; set; }
        public int CD_ACRESC_ICMS { get; set; }
        public double VL_ACRESCIMO { get; set; }
    }
}
