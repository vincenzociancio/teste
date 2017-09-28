using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DTO
{
    public abstract class MenuDTO
    {
        public string PKCodigo { get; set; }
        public string Descricao { get; set; }
        public string Nivel { get; set; }
        public int Habilitado { get; set; }
        public string Web_Form { get; set; }
    }
}
