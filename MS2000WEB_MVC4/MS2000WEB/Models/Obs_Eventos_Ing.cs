using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Obs_Eventos_Ing
    {
        public string Evento { get; set; }
        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string Descricao_i { get; set; }
        public Nullable<int> Ativo { get; set; }
        public Nullable<bool> cli_visu { get; set; }
    }
}