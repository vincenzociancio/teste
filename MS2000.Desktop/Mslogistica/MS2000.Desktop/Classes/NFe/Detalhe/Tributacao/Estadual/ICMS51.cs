using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual.Tipos;

namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual
{
    public class ICMS51 : ICMSBasico
    {
        private decimal? _pRedBc;
        private decimal? _vBc;
        private decimal? _pIcms;
        private decimal? _vIcmsOp;
        private decimal? _pDif;
        private decimal? _vIcmsDif;
        private decimal? _vIcms;

        /// <summary>
        ///     N11 - Origem da Mercadoria
        /// </summary>
        public OrigemMercadoria orig { get; set; }

        /// <summary>
        ///     N12- Situação Tributária
        /// </summary>
        public Csticms CST { get; set; }

        /// <summary>
        ///     N13 - Modalidade de determinação da BC do ICMS
        /// </summary>
        public DeterminacaoBaseIcms? modBC { get; set; }

        /// <summary>
        ///     N14 - Percentual de redução da BC
        /// </summary>
        public decimal? pRedBC
        {
            get { return _pRedBc; }
            set { _pRedBc = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N15 - Valor da BC do ICMS
        /// </summary>
        public decimal? vBC
        {
            get { return _vBc; }
            set { _vBc = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N16 - Alíquota do imposto
        /// </summary>
        public decimal? pICMS
        {
            get { return _pIcms; }
            set { _pIcms = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N16a - Valor do ICMS da Operação
        /// </summary>
        public decimal? vICMSOp
        {
            get { return _vIcmsOp; }
            set { _vIcmsOp = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N16b - Percentual do diferimento
        /// </summary>
        public decimal? pDif
        {
            get { return _pDif; }
            set { _pDif = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N16c - Valor do ICMS diferido
        /// </summary>
        public decimal? vICMSDif
        {
            get { return _vIcmsDif; }
            set { _vIcmsDif = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N17 - Valor do ICMS
        /// </summary>
        public decimal? vICMS
        {
            get { return _vIcms; }
            set { _vIcms = Valor.Arredondar(value, 2); }
        }

        public bool ShouldSerializemodBC()
        {
            return modBC.HasValue;
        }

        public bool ShouldSerializepRedBC()
        {
            return pRedBC.HasValue;
        }

        public bool ShouldSerializevBC()
        {
            return vBC.HasValue;
        }

        public bool ShouldSerializepICMS()
        {
            return pICMS.HasValue;
        }

        public bool ShouldSerializevICMSOp()
        {
            return vICMSOp.HasValue;
        }

        public bool ShouldSerializepDif()
        {
            return pDif.HasValue;
        }

        public bool ShouldSerializevICMSDif()
        {
            return vICMSDif.HasValue;
        }

        public bool ShouldSerializevICMS()
        {
            return vICMS.HasValue;
        }
    }
}