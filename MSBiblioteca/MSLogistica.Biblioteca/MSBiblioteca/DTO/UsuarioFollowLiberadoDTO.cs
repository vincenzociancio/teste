
namespace MSBiblioteca.DTO
{
    public class UsuarioFollowLiberadoDTO
    {
        public UsuarioFollowLiberadoDTO()
        {

        }

        public UsuarioFollowLiberadoDTO(int id, string fk_processo, string fk_usuario)
        {
            this.PK_ID = id;
            this.FK_Processo = fk_processo;
            this.FK_Usuario = fk_usuario;
        }

        public int PK_ID { get; set; }
        public string FK_Processo { get; set; }
        public string FK_Usuario { get; set; }
    }
}
