using System;

namespace MSBiblioteca.DTO
{
    public abstract class ControleAtaDTO
    {
        public int PKAtas { get; set; }
        public string Tema { get; set; }
        public DateTime Data { get; set; }
        public string FKImportador { get; set; }
        public string FKUsuario { get; set; }
        public int Tipo { get; set; }
        public int Lixo { get; set; }
    }
}
