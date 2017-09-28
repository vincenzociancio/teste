
namespace MSBiblioteca.DTO
{
    public class AcessoAcaoEspecificaGrupoDTO
    {
        public AcessoAcaoEspecificaGrupoDTO()
        {
            this.AcaoEspecifica = new AcessoAcaoEspecificaDTO();
        }

        public int PK_AcaoEspecificaGrupo { get; set; }
        public int FK_AcaoEspecifica { get; set; }
        public int FK_Grupo { get; set; }
        public bool Acessa { get; set; }

        public AcessoAcaoEspecificaDTO AcaoEspecifica { get; set; }
    }
}
