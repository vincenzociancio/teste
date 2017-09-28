using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Processos_Docs_Instrucao
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string Processo { get; set; }
        public int REG { get; set; }
        public string NR_DCTO_INSTRUCAO { get; set; }
        public string CD_TIPO_DCTO_INSTR { get; set; }
        public string NM_DCTO_INSTRUCAO { get; set; }
    }
}
