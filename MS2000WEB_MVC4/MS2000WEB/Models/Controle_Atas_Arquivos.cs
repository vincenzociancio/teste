using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Controle_Atas_Arquivos
    {
        public int pk_atas_arquivos { get; set; }
        public int fk_atas { get; set; }
        public string caminho { get; set; }
        public string tipo_arquivo { get; set; }
        public System.DateTime data { get; set; }
        public int lixo { get; set; }
        public string descricao_arquivo { get; set; }
        public virtual Controle_Atas Controle_Atas { get; set; }
    }
}
