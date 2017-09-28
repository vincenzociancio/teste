
namespace MSBiblioteca.DTO
{
    public class AcessoGrupoUsuarioDTO
    {
        public int PK_GrupoUsuario { get; set; }
        public string FK_Usuario { get; set; }
        public int FK_AcessoGrupo { get; set; }

        //Navegabilidade
        public AcessoGrupoDTO Grupos { get; set; }
        public UsuarioDTO Usuarios  { get; set; }
    }
}
