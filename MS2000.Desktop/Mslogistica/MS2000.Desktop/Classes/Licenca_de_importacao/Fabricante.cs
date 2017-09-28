using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MS2000.Desktop.Classes.Licenca_de_importacao
{
    public class Fabricante
    {
        public string Nome { get; set; }
        public string PaisDeOrigem { get; set; }
        public Endereco Endereco { get; set; }
        public Fabricante()
        {
            Endereco = new Endereco();
        }
    }
}
