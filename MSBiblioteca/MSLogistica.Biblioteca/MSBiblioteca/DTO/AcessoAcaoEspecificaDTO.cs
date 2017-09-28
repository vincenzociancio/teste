
namespace MSBiblioteca.DTO
{
    public class AcessoAcaoEspecificaDTO
    {
        public int PK_AcaoEspecifica { get; set; }
        public string Descricao { get; set; }
        public int FK_AcessoPaginas { get; set; }
        public string Chave_Busca { get; set; }
    }
}
