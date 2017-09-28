namespace MS2000.Desktop.Classes.NFe.Detalhe.Produto_Específico
{
    public class encerrante
    {

        /// <summary>
        /// LA12 - Número de identificação do bico utilizado no abastecimento
        /// </summary>
        public int nBico { get; set; }

        /// <summary>
        /// LA13 - Número de identificação da bomba ao qual o bico está interligado
        /// </summary>
        public int? nBomba { get; set; }
        public bool ShouldSerializenBomba()
        {
            return nBomba.HasValue;
        }

        /// <summary>
        /// LA14 - Número de identificação do tanque ao qual o bico está interligado
        /// </summary>
        public int nTanque { get; set; }

        /// <summary>
        /// LA15 - Valor do Encerrante no início do abastecimento
        /// </summary>
        public decimal vEncIni { get; set; }

        /// <summary>
        /// LA16 - Valor do Encerrante no final do abastecimento
        /// </summary>
        public decimal vEncFin { get; set; }

    }
}