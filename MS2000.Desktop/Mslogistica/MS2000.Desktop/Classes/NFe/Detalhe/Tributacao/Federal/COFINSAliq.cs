using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal.Tipos;
namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal
{
    public class COFINSAliq : COFINSBasico
    {
        private decimal _vBc;
        private decimal _pCofins;
        private decimal _vCofins;

        /// <summary>
        ///     S06 - Código de Situação Tributária da COFINS
        /// </summary>
        public CSTCOFINS CST { get; set; }

        /// <summary>
        ///     S07 - Valor da Base de Cálculo da COFINS
        /// </summary>
        public decimal vBC
        {
            get { return _vBc; }
            set { _vBc = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     S08 - Alíquota da COFINS (em percentual)
        /// </summary>
        public decimal pCOFINS
        {
            get { return _pCofins; }
            set { _pCofins = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     S09 - Valor da COFINS
        /// </summary>
        public decimal vCOFINS
        {
            get { return _vCofins; }
            set { _vCofins = Valor.Arredondar(value, 2); }
        }
    }
}