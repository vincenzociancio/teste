
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Municipal;
using NFe.Classes.Informacoes.Detalhe.Tributacao.Federal;
namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao
{
    public class imposto
    {
        private decimal? _vTotTrib;

        /// <summary>
        ///     M02 - Valor estimado total de impostos federais, estaduais e municipais
        /// </summary>
        public decimal? vTotTrib
        {
            get { return _vTotTrib; }
            set { _vTotTrib = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N01 - Dados do ICMS Normal e ST
        /// </summary>
        public ICMS ICMS { get; set; }

        /// <summary>
        ///     O01 - Grupo IPI
        /// </summary>
        public IPI IPI { get; set; }

        /// <summary>
        ///     P01 - Grupo Imposto de Importação
        /// </summary>
        public II II { get; set; }

        /// <summary>
        ///     Q01 - Grupo PIS
        /// </summary>
        public PIS PIS { get; set; }

        /// <summary>
        ///     R01 - Grupo PIS Substituição Tributária
        /// </summary>
        public PISST PISST { get; set; }

        /// <summary>
        ///     S01 - Grupo COFINS
        /// </summary>
        public COFINS COFINS { get; set; }

        /// <summary>
        ///     T01 - Grupo COFINS Substituição Tributária
        /// </summary>
        public COFINSST COFINSST { get; set; }

        /// <summary>
        ///     U01 - Grupo ISSQN
        /// </summary>
        public ISSQN ISSQN { get; set; }

        public bool ShouldSerializevTotTrib()
        {
            return vTotTrib.HasValue;
        }
    }
}