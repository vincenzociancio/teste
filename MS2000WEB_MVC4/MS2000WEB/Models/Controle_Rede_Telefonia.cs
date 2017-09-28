using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Rede_Telefonia
    {
        public string PONTO { get; set; }
        public string Setor { get; set; }
        public string Usuario { get; set; }
        public string TELEFONE_RAMAL { get; set; }
        public Nullable<short> POSICAO_CENTRAL { get; set; }
        public string ID01 { get; set; }
        public Nullable<short> ID01_BLOCO { get; set; }
        public Nullable<short> ID01_PAR { get; set; }
        public string ID02 { get; set; }
        public Nullable<short> ID02_PORTA { get; set; }
        public string Descricao { get; set; }
        public string DetalheS { get; set; }
    }
}
