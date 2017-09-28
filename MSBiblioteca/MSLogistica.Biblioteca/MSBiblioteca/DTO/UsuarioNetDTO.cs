
namespace MSBiblioteca.DTO
{
    public abstract class UsuarioNetDTO
    {
        public string CgcCpf { get; set; }
        public string Usuario { get; set; }
        public string Senha { get; set; }
        public string NomeCompleto { get; set; }
        public string Email { get; set; }
        public string Nivel { get; set; }
        public int AcessoHabilitado { get; set; }
        public int PKUsuario { get; set; }
    }
}
