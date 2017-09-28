
namespace MS2000.Desktop.Classes.Licenca_de_importacao
{
    public class CoberturaCambial
    {
        public int Tipo { get; set; } // descricao

        //Com combertura até 180 dias, tem:
        //Modalidade de Pagamento;
        //Qtde. Dias Limite pagto
        //public int ModalidadeDePagamento { get; set; }
        //public int QuantidadeDiaLimitePgto { get; set; }
        
        //Com combertura de 180 até 360 dias, tem:
        //Modalidade de Pagamento;


        //Com combertura acima de 360 dias, tem:
        //Modalidade de Pagamento;
        //public string InstituicaoFinanciadora { get; set; }

        // Sem cobertura, tem:
        // Motivo
        //public int MotivoSemCobertura { get; set; }
        
    }

    public class Ate180dias : CoberturaCambial
    {
        public string ModalidadeDePagamento { get; set; }
        public int QuantidadeDiaLimitePgto { get; set; }        
    }

    public class De180Ate360dias : CoberturaCambial
    {
        public string ModalidadeDePagamento { get; set; }        
    }

    public class AcimaDe360dias : CoberturaCambial
    {
        public string InstituicaoFinanceira { get; set; }
    }
    public class SemCobertura : CoberturaCambial
    {
        public string Motivo { get; set; }
    }

    public static class FactoryCoberturaCambial
    {
        /// <summary>
        /// Decides which class to instantiate.
        /// </summary>
        public static CoberturaCambial Get(int tipo)
        {
            switch (tipo)
            {
                case 1:
                    return new Ate180dias();
                    break;
                case 2:
                    return new De180Ate360dias();
                    break;
                case 3:
                    return new AcimaDe360dias();
                    break;
                default:              
                    return new SemCobertura();                    
            }
        }      
    }
}
