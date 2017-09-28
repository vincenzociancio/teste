
namespace MSBiblioteca.DTO
{
    public abstract class UsuarioMenu
    {
        public string FKUsuario { get; set; }
        public string FKMenu { get; set; }
        public bool Ler { get; private set; }
        public bool Editar { get; private set; }
        public bool Excluir { get; private set; }
        public bool Incluir { get; private set; }
    }
}
