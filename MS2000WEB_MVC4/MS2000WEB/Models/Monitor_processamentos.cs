using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Monitor_processamentos
    {
        public string Codigo { get; set; }
        public string Descricao { get; set; }
        public string Executavel { get; set; }
        public Nullable<int> Ligado { get; set; }
        public Nullable<short> Dia_monitor { get; set; }
        public Nullable<short> Mes_monitor { get; set; }
        public Nullable<short> Ano_monitor { get; set; }
        public Nullable<int> Segunda { get; set; }
        public Nullable<int> Terca { get; set; }
        public Nullable<int> Quarta { get; set; }
        public Nullable<int> Quinta { get; set; }
        public Nullable<int> Sexta { get; set; }
        public Nullable<int> Sabado { get; set; }
        public Nullable<int> Domingo { get; set; }
        public Nullable<System.DateTime> Horario_monitor { get; set; }
        public Nullable<System.DateTime> Data_Ultimo_Processamento { get; set; }
        public Nullable<System.DateTime> Hora_Ultimo_Processamento { get; set; }
        public Nullable<int> Tempo_repeticao { get; set; }
        public Nullable<System.DateTime> Horario_nao_processar { get; set; }
    }
}
