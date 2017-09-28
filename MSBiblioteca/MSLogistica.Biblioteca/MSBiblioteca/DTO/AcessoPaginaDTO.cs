
namespace MSBiblioteca.DTO
{
    public class AcessoPaginaDTO
    {
        public int PK_AcessoPaginas { get; set; }
        public string Titulo { get; set; }
        public string Pagina { get; set; }
        public bool Ativa { get; set; }
        
        //Navegabilidade        
        public AcessoGrupoDTO Grupos { get; set; }
    }
}
