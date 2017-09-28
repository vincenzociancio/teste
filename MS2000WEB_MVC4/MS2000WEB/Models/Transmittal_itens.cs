using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Transmittal_itens
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Codigo { get; set; }
        public int Sequencial { get; set; }
        public string Descricao { get; set; }
        public Nullable<int> Quantidade { get; set; }
        public string Remarks { get; set; }
    }
}
