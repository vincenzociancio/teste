
namespace MSBiblioteca.DTO
{
    public class TipoNumerarioObrigatorioDTO
    {
        public int ID { get; set; }
        public string FK_Tipo_Processo { get; set; }
        public string FK_Tipo_Declaracao { get; set; }
        public string FK_Tipo_Numerario { get; set; }
        public string Plano_Contas { get; set; }        
    }
}
