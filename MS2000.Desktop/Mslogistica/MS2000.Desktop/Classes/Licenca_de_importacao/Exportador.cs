
namespace MS2000.Desktop.Classes.Licenca_de_importacao
{
    public class Exportador
    {
        public string Nome { get; set; }
        public string PaisDeAquisicao { get; set; }
        public Endereco Endereco { get; set; }
        public Exportador()
        {
            Endereco = new Endereco();
        }
    }
}
