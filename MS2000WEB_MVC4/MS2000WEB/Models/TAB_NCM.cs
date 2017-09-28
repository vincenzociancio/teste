using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class TAB_NCM
    {
        public string CODIGO { get; set; }
        public string DESCRICAO { get; set; }
        public string UNIDADE_MEDIDA { get; set; }
        public string ALIQUOTA_II { get; set; }
        public string DATA_INICIO_VIG_II { get; set; }
        public string DATA_FIM_VIG_II { get; set; }
        public string ALIQUOTA_II_MERCOSUL { get; set; }
        public string DATA_INICIO_VIG_II_MSUL { get; set; }
        public string DATA_FIM_VIG_II_MSUL { get; set; }
        public string ALIQUOTA_IPI { get; set; }
        public string DATA_INICIO_VIG_IPI { get; set; }
        public string DATA_FIM_VIG_IPI { get; set; }
        public string ALIQUOTA_PIS_ADVAL { get; set; }
        public string DATA_INI_VIG_PIS_ADVAL { get; set; }
        public string DATA_FIM_VIG_PIS_ADVAL { get; set; }
        public string ALIQUOTA_COFINS_ADVAL { get; set; }
        public string DATA_INI_VIG_COFINS_ADVAL { get; set; }
        public string DATA_FIM_VIG_COFINS_ADVAL { get; set; }
    }
}
