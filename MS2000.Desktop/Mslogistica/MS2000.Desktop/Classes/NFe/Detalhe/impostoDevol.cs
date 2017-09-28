namespace MS2000.Desktop.Classes.NFe.Detalhe
{
    public class impostoDevol
    {
        private decimal _pDevol;

        /// <summary>
        ///     UA02 - Percentual da mercadoria devolvida
        /// </summary>
        public decimal pDevol
        {
            get { return _pDevol; }
            set { _pDevol = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     UA03 - Informação do IPI devolvido
        /// </summary>
        public IPIDevolvido IPI { get; set; }
    }
}