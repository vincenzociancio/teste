using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Rede_Logica
    {
        public string PONTO { get; set; }
        public string Setor { get; set; }
        public string Usuario { get; set; }
        public string PATCH_PANEL { get; set; }
        public Nullable<short> PORTA_PATCH_PANEL { get; set; }
        public string SWITCH { get; set; }
        public Nullable<short> PORTA_SWITCH { get; set; }
        public string Descricao { get; set; }
        public string DetalheS { get; set; }
        public string Plaqueta { get; set; }
    }
}
