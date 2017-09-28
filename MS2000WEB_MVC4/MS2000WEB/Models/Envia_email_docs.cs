using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Envia_email_docs
    {
        public int REG { get; set; }
        public string Codigo { get; set; }
        public string Email { get; set; }
        public Nullable<int> Enviou { get; set; }
    }
}
