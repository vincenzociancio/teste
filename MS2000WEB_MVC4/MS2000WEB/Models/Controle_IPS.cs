using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_IPS
    {
        public short IP1 { get; set; }
        public short IP2 { get; set; }
        public short IP3 { get; set; }
        public short IP4 { get; set; }
        public string Setor { get; set; }
        public string Usuario { get; set; }
        public string MASCARA { get; set; }
        public string GATEWAY { get; set; }
        public string PROXY { get; set; }
        public string DNS1 { get; set; }
        public string DNS2 { get; set; }
        public string Descricao { get; set; }
        public string DetalheS { get; set; }
        public string Plaqueta { get; set; }
        public string ICONE { get; set; }
    }
}
