
namespace MSBiblioteca.DTO
{
    public class UsuarioClienteDTO
    {
        public UsuarioClienteDTO()
        {
            
        }

        public UsuarioClienteDTO(string fk_usuario, string fk_importador)
        {            
            this.FKUsuario = fk_usuario;
            this.FKImportador = fk_importador;            
        }

        public string FKUsuario { get; set; }
        public string FKImportador { get; set; }        
    }
}
