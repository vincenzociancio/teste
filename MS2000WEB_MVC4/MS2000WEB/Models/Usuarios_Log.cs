using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Usuarios_Log
    {
        public int pk_usuario_log { get; set; }
        public int fk_usuario { get; set; }
        public int movimentacao { get; set; }
        public string descricao { get; set; }
        public System.DateTime data { get; set; }
        public string fk_processo { get; set; }
        public int sistema { get; set; }
    }
}
