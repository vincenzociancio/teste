using System;

namespace MSBiblioteca.DTO
{
    public class ControleDePastaDTO
    {
        public string Empresa { get; set; }
        public string Filial { get; set; }
        public string FK_Processo { get; set; }
        public string FK_Usuario { get; set; }
        public int Aceite { get; set; }
        public DateTime Data { get; set; }      
    }
}
