using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Anl_Des_Resultados
    {
        public int Fk_Analise { get; set; }
        public int Codigo { get; set; }
        public string Colaborador { get; set; }
        public string Nome { get; set; }
        public int Fk_Competencia { get; set; }
        public int Fk_Pergunta { get; set; }
        public Nullable<int> Resp_Usuario { get; set; }
        public Nullable<int> Resp_Supervisor { get; set; }
        public Nullable<int> Resp_Gestor { get; set; }
        public Nullable<int> Result_Usuario { get; set; }
        public Nullable<int> Result_Supervisor { get; set; }
        public Nullable<int> Result_Gestor { get; set; }
    }
}
