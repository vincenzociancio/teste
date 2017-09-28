namespace MS2000.Desktop.Classes.NFe.Detalhe.Produto_Específico
{
    public class CIDE
    {
        private decimal _qBcProd;
        private decimal _vAliqProd;
        private decimal _vCide;

        /// <summary>
        ///     LA08 - BC da CIDE
        /// </summary>
        public decimal qBCProd
        {
            get { return _qBcProd; }
            set { _qBcProd = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     LA09 - Valor da alíquota da CIDE
        /// </summary>
        public decimal vAliqProd
        {
            get { return _vAliqProd; }
            set { _vAliqProd = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     LA10 - Valor da CIDE
        /// </summary>
        public decimal vCIDE
        {
            get { return _vCide; }
            set { _vCide = Valor.Arredondar(value, 2); }
        }
    }
}