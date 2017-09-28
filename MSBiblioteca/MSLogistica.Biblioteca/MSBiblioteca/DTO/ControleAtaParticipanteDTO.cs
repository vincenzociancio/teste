using System;


namespace MSBiblioteca.DTO
{
    public abstract class ControleAtaParticipanteDTO
    {
        public int PKAtasParticipante { get; set; }
        public string FKUsuario { get; set; }
        public int FKAtas { get; set; }
        public DateTime DataAceite { get; set; }
        public int Lixo { get; set; }
    }
}
