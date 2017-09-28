using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace MSBiblioteca.DTO
{
    public class FollowUpCheckClienteDTO
    {
        public int PK_ID { get; set; }
        public string FK_Importador { get; set; }
        public string FK_Usuario { get; set; }
    }
}
