
namespace MSBiblioteca.DTO
{
    public abstract class PlataformaDTO
    {
        public int PK_Plataforma { get; set; }
        public string FK_Importador { get; set; }
        public string Plataforma { get; set; }
        public string Sigla { get; set; }
        public int Lixo { get; set; }
    }
}
