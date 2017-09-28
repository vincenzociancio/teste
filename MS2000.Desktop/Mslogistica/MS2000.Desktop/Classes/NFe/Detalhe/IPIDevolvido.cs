namespace MS2000.Desktop.Classes.NFe.Detalhe
{
    public class IPIDevolvido
    {
        private decimal _vIpiDevol;

        /// <summary>
        ///     UA04 - Valor do IPI devolvido
        /// </summary>
        public decimal vIPIDevol
        {
            get { return _vIpiDevol; }
            set { _vIpiDevol = Valor.Arredondar(value, 2); }
        }
    }
}