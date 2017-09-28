namespace MS2000.Desktop.Classes.NFe.Pagamento
{
    public class pag
    {
        private decimal _vPag;

        /// <summary>
        ///     YA02 - Forma de pagamento
        /// </summary>
        public FormaPagamento tPag { get; set; }

        /// <summary>
        ///     YA03 - Valor do Pagamento
        /// </summary>
        public decimal vPag
        {
            get { return _vPag; }
            set { _vPag = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     YA04 - Grupo de Cartões
        /// </summary>
        public card card { get; set; }
    }
}