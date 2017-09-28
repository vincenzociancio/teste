using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class MSLOGIN_Solucoes_Usuarios_Acessos_Horarios
    {
        public int PK_USUARIO_ACESSO_HORARIO { get; set; }
        public Nullable<int> FK_SOLUCAO { get; set; }
        public Nullable<int> FK_USUARIO { get; set; }
        public string HORARIO_INICIAL { get; set; }
        public string HORARIO_FINAL { get; set; }
        public Nullable<int> SEGUNDA { get; set; }
        public Nullable<int> TERCA { get; set; }
        public Nullable<int> QUARTA { get; set; }
        public Nullable<int> QUINTA { get; set; }
        public Nullable<int> SEXTA { get; set; }
        public Nullable<int> SABADO { get; set; }
        public Nullable<int> DOMINGO { get; set; }
        public Nullable<int> FERIADOS { get; set; }
    }
}
