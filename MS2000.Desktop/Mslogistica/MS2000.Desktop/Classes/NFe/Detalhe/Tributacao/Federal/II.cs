namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal
{
    public class II
    {
        private decimal _vBc;
        private decimal _vDespAdu;
        private decimal _vIi;
        private decimal _vIof;

        /// <summary>
        ///     P02 - Valor BC do Imposto de Importação
        /// </summary>
        public decimal vBC
        {
            get { return _vBc; }
            set { _vBc = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     P03 - Valor despesas aduaneiras
        /// </summary>
        public decimal vDespAdu
        {
            get { return _vDespAdu; }
            set { _vDespAdu = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     P04 - Valor Imposto de Importação
        /// </summary>
        public decimal vII
        {
            get { return _vIi; }
            set { _vIi = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     P05 - Valor Imposto sobre Operações Financeiras
        /// </summary>
        public decimal vIOF
        {
            get { return _vIof; }
            set { _vIof = Valor.Arredondar(value, 2); }
        }
    }
}