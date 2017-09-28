using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class ItensFaturas_LOG
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public string Fatura { get; set; }
        public string Sequencial { get; set; }
        public Nullable<int> Revisado { get; set; }
        public Nullable<System.DateTime> Revisao_Data { get; set; }
        public string Revisao_Usuario { get; set; }
        public string Revisao_OBS { get; set; }
    }
}
