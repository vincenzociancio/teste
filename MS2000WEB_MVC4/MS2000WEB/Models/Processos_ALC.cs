using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_ALC
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public Nullable<int> Enviou { get; set; }
        public string Transportador { get; set; }
        public string Descricao_mercadoria { get; set; }
    }
}
