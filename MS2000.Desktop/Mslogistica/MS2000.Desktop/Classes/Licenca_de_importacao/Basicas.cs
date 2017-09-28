
namespace MS2000.Desktop.Classes.Licenca_de_importacao
{
    public class Basicas
    {
        public string IdentificacaoDaSolicitacao { get; set; }
        public TipoDoImportador TipoDoImportador { get; set; }
        public DadosAuxiliares DadosAuxiliares { get; set; }
        public string txInfoComplementar { get; set; }

        public Basicas()
        {
            TipoDoImportador = new TipoDoImportador();
            DadosAuxiliares = new DadosAuxiliares();
        }

    }
}
