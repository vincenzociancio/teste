using System;

namespace MSBiblioteca.DTO
{
    public abstract class ControleAtaArquivoDTO
    {
        public int PKAtasArquivos { get; set; }
        public int FKAtas { get; set; }
        public string Caminho { get; set; }
        public string DescricaoArquivo { get; set; }
        public string TipoArquivo { get; set; }
        public DateTime Data { get; set; }
        public int Lixo { get; set; }
    }
}
