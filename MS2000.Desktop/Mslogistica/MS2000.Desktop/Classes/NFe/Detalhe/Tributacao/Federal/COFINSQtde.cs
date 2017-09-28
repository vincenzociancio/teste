
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal.Tipos;
namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal
{
    public class COFINSQtde : COFINSBasico
    {
        private decimal _qBcProd;
        private decimal _vAliqProd;
        private decimal _vCofins;

        /// <summary>
        ///     S06 - Código de Situação Tributária da COFINS
        /// </summary>
        public CSTCOFINS CST { get; set; }

        /// <summary>
        ///     S09 - Quantidade Vendida
        /// </summary>
        public decimal qBCProd
        {
            get { return _qBcProd; }
            set { _qBcProd = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     S10 - Alíquota da COFINS (em reais)
        /// </summary>
        public decimal vAliqProd
        {
            get { return _vAliqProd; }
            set { _vAliqProd = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     S11 - Valor da COFINS
        /// </summary>
        public decimal vCOFINS
        {
            get { return _vCofins; }
            set { _vCofins = Valor.Arredondar(value, 2); }
        }
    }
}