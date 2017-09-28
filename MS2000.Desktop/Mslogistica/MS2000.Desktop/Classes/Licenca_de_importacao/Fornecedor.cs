
namespace MS2000.Desktop.Classes.Licenca_de_importacao
{
    public class Fornecedor
    {
        public int Tipo { get; set; }
        public Exportador Exportador { get; set; }
        public Fabricante Fabricante { get; set; }

        public Fornecedor()
        {
            Exportador = new Exportador();
            Fabricante = new Fabricante();
        }
    }
}
