using System;

namespace MSBiblioteca.DTO
{
    public class FollowUpDTO
    {
        public string FK_Processo { get; set; }
        public int Sequencial { get; set; }
        public string CodigoEvento { get; set; }
        public string CodigoObs { get; set; }
        public string ObsEspecifica { get; set; }
        public DateTime Data { get; set; }
        public string Hora { get; set; }
        public string Link { get; set; }
        public DateTime? DataFinal { get; set; }
        public string HoraFinal { get; set; }
        public int Duracao { get; set; }
        public string FK_Usuario { get; set; }
        public int RefFollow { get; set; }
        public int FollowAuto { get; set; }
        public int FollowAtivo { get; set; }
    }
}
