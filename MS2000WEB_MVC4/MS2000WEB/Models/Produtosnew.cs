using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class Produtosnew
    {
        public int REG { get; set; }
        public string Importador { get; set; }
        public string Fabricante { get; set; }
        public string CODIGO { get; set; }
        public string PART_NUMBER { get; set; }
        public string Descricao { get; set; }
        public string Descricao_ing { get; set; }
        public string NCM { get; set; }
        public string Destaque_NCM { get; set; }
        public string NALADI { get; set; }
        public string Unidade { get; set; }
        public string Unidade_Medida_Estat { get; set; }
        public Nullable<System.DateTime> DATA_INCLUSAO { get; set; }
        public string Usuario_INCLUSAO { get; set; }
        public Nullable<System.DateTime> DATA_ULTIMA_ALTERACAO { get; set; }
        public string Usuario_ALTERACAO { get; set; }
        public Nullable<int> Revisado { get; set; }
        public Nullable<System.DateTime> Revisao_Data { get; set; }
        public string Revisao_Usuario { get; set; }
        public string Revisao_OBS { get; set; }
        public string PaisOrigem { get; set; }
    }
}
