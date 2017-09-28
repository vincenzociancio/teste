using System;
namespace MSBiblioteca.DTO

{
    public class RMBR_DTO
    {
        public int PK_ID { get; set; }
        public string Numero_RMBR { get; set; }
        public string FK_Processo { get; set; }
        public DateTime DT_Inicial { get; set; }
        public DateTime DT_Final { get; set; }
        public DateTime? DT_Baixa { get; set; }
        public DateTime? DT_Prorrogacao { get; set; }
        public string Numero_DI { get; set; }
        public int Status { get; set; }
    }
}
