namespace MS2000.Desktop.Classes.NFe.Observacoes
{
    public class procRef
    {
        /// <summary>
        ///     Z11 - Identificador do processo ou ato concessório
        /// </summary>
        public string nProc { get; set; }

        /// <summary>
        ///     Z12 - Indicador da origem do processo
        /// </summary>
        public IndicadorProcesso indProc { get; set; }
    }
}