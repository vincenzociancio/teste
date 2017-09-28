
using MS2000.Desktop.Classes.NFe;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal.Tipos;

namespace NFe.Classes.Informacoes.Detalhe.Tributacao.Federal
{
    public class PISQtde : PISBasico
    {
        private decimal _qBcProd;
        private decimal _vAliqProd;
        private decimal _vPis;

        /// <summary>
        ///     Q06 - Código de Situação Tributária do PIS
        /// </summary>
        public CSTPIS CST { get; set; }

        /// <summary>
        ///     Q10 - Quantidade Vendida
        /// </summary>
        public decimal qBCProd
        {
            get { return _qBcProd; }
            set { _qBcProd = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     Q11 - Alíquota do PIS (em reais)
        /// </summary>
        public decimal vAliqProd
        {
            get { return _vAliqProd; }
            set { _vAliqProd = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     Q09 - Valor do PIS
        /// </summary>
        public decimal vPIS
        {
            get { return _vPis; }
            set { _vPis = Valor.Arredondar(value, 2); }
        }
    }
}