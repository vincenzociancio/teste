using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Followup
    {
        public string Processo { get; set; }
        public int Sequencial { get; set; }
        public string Codevento { get; set; }
        public string Codobs { get; set; }
        public string Obs_especifica { get; set; }
        public Nullable<System.DateTime> Data { get; set; }
        public string Hora { get; set; }
        public string link { get; set; }
        public Nullable<System.DateTime> Data_final { get; set; }
        public string Hora_final { get; set; }
        public Nullable<int> Duracao { get; set; }
        public string Usuario { get; set; }
        public Nullable<int> Ref_Follow { get; set; }
        public Nullable<int> Follow_auto { get; set; }
        public Nullable<int> Follow_ativo { get; set; }
    }
}
