
namespace MSBiblioteca.DTO
{
    public class AcessoPaginaGrupoDTO
    {
        public AcessoPaginaGrupoDTO()
        {
            this.Paginas = new AcessoPaginaDTO();
        }
        public int PK_PaginaGrupo { get; set; }
        public int FK_AcessoPaginas { get; set; }
        public int FK_AcessoGrupo { get; set; }
        public bool C { get; set; }
        public bool R { get; set; }
        public bool U { get; set; }
        public bool D { get; set; }

        //Navegabilidade
        public AcessoPaginaDTO Paginas { get; set; }
        //public AcessoGruposDTO Grupos { get; set; }
    }
}
