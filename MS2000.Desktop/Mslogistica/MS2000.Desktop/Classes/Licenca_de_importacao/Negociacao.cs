
namespace MS2000.Desktop.Classes.Licenca_de_importacao
{
    public class Negociacao
    {
        public RegimeDeTributacao RegimeDeTributacao { get; set; }
        public AcordoTarifario AcordoTarifario { get; set; }
        public CoberturaCambial CoberturaCambial { get; set; }
        public Ate180dias Ate180dias { get; set; }        
        public De180Ate360dias De180Ate360dias { get; set; }
        public AcimaDe360dias AcimaDe360dias { get; set; }
        public SemCobertura SemCobertura { get; set; }

        public Negociacao()
        {
            RegimeDeTributacao = new RegimeDeTributacao();
            AcordoTarifario = new AcordoTarifario();
            CoberturaCambial = new CoberturaCambial();
            Ate180dias = new Ate180dias();
            De180Ate360dias = new De180Ate360dias();
            AcimaDe360dias = new AcimaDe360dias();
            SemCobertura = new SemCobertura();
        }
    }
}
