using System;
using System.Collections.Generic;

namespace MS2000WEB.Models
{
    public partial class RH_Formularios
    {
        public int Id { get; set; }
        public string Descricao_Arquivo { get; set; }
        public string Caminho { get; set; }
        public string Tipo_Arquivo { get; set; }
        public System.DateTime Data { get; set; }
        public int Lixo { get; set; }
        public string Titulo { get; set; }
    }
}
