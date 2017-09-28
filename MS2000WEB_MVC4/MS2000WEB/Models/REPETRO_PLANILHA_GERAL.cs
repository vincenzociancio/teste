using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class REPETRO_PLANILHA_GERAL
    {
        public string Empresa { get; set; }
        public string Contratos_Descricao { get; set; }
        public string Local_Inventario { get; set; }
        public string cod_tipo_local { get; set; }
        public string tipo_local { get; set; }
        public string Doc_Importacao { get; set; }
        public string REF_ITEM { get; set; }
        public string Numero_serie { get; set; }
        public string DESCBEM { get; set; }
        public string DESCBEM_Ing { get; set; }
        public Nullable<double> Quantidade { get; set; }
    }
}
