using System;

namespace MSBiblioteca.DTO
{
    public abstract class UsuarioLogDTO
    {
        public int PkUsuarioLog { get; set; }
        public int FkUsuario { get; set; }
        public int Movimentacao { get; set; }
        public string Descricao { get; set; }
        public DateTime Data { get; set; }
        public string FkProcesso { get; set; }
        public int Sistema { get; set; }
    }
}
