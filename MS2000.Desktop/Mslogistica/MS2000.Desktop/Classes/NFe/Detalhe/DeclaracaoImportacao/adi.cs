namespace MS2000.Desktop.Classes.NFe.Detalhe.DeclaracaoImportacao
{
    public class adi
    {
        private decimal? _vDescDi;

        /// <summary>
        ///     I26 - Numero da Adição
        /// </summary>
        public int nAdicao { get; set; }

        /// <summary>
        ///     I27 - Numero sequencial do item dentro da Adição
        /// </summary>
        public int nSeqAdic { get; set; }

        /// <summary>
        ///     I28 - Código do fabricante estrangeiro
        /// </summary>
        public string cFabricante { get; set; }

        /// <summary>
        ///     I29 - Valor do desconto do item da DI – Adição
        /// </summary>
        public decimal? vDescDI
        {
            get { return _vDescDi; }
            set { _vDescDi = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     I29a - Número do ato concessório de Drawback
        /// </summary>
        public string nDraw { get; set; }

        public bool ShouldSerializevDescDI()
        {
            return vDescDI.HasValue;
        }
    }
}