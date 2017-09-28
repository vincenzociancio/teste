using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal.Tipos;
namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal
{
    public class IPITrib : IPIBasico
    {
        private decimal? _vBc;
        private decimal? _pIpi;
        private decimal? _qUnid;
        private decimal? _vUnid;
        private decimal? _vIpi;

        /// <summary>
        ///     O09 - Código da Situação Tributária do IPI:
        /// </summary>
        public CSTIPI CST { get; set; }

        /// <summary>
        ///     O10 - Valor da BC do IPI
        /// </summary>
        public decimal? vBC
        {
            get { return Valor.Arredondar(_vBc, 2); }
            set { _vBc = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     O13 - Alíquota do IPI
        /// </summary>
        public decimal? pIPI
        {
            get { return Valor.Arredondar(_pIpi, 4); }
            set { _pIpi = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     O11 - Quantidade total na unidade padrão para tributação (somente para os produtos tributados por unidade)
        /// </summary>
        public decimal? qUnid
        {
            get { return Valor.Arredondar(_qUnid, 4); }
            set { _qUnid = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     O12 - Valor por Unidade Tributável
        /// </summary>
        public decimal? vUnid
        {
            get { return Valor.Arredondar(_vUnid, 4); }
            set { _vUnid = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     O14 - Valor do IPI
        /// </summary>
        public decimal? vIPI
        {
            get { return Valor.Arredondar(_vIpi, 2); }
            set { _vIpi = Valor.Arredondar(value, 2); }
        }

        public bool ShouldSerializevBC()
        {
            return vBC.HasValue;
        }

        public bool ShouldSerializepIPI()
        {
            return pIPI.HasValue;
        }

        public bool ShouldSerializeqUnid()
        {
            return qUnid.HasValue;
        }

        public bool ShouldSerializevUnid()
        {
            return vUnid.HasValue;
        }

        public bool ShouldSerializevIPI()
        {
            return vIPI.HasValue;
        }
    }
}
