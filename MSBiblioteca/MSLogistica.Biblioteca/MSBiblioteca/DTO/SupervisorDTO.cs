
namespace MSBiblioteca.DTO
{
    public class SupervisorDTO : UsuarioDTO
    {
        public SupervisorDTO()
        {

        }

        public SupervisorDTO(string usuario, string nome)
        {
            this.Usuario = usuario;
            this.NomeCompleto = nome;
        }
    }
}
