using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual.Tipos;

namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual
{
    public class ICMSPart : ICMSBasico
    {
        private decimal _vBc;
        private decimal? _pRedBc;
        private decimal _pIcms;
        private decimal _vIcms;
        private decimal? _pMvast;
        private decimal? _pRedBcst;
        private decimal _vBcst;
        private decimal _pIcmsst;
        private decimal _vIcmsst;
        private decimal _pBcOp;

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
        public DeterminacaoBaseIcms modBC { get; set; }

        /// <summary>
        ///     N15 - Valor da BC do ICMS
        /// </summary>
        public decimal vBC
        {
            get { return _vBc; }
            set { _vBc = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N14 - Percentual de redução da BC
        /// </summary>
        public decimal? pRedBC
        {
            get { return _pRedBc; }
            set { _pRedBc = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N16 - Alíquota do imposto
        /// </summary>
        public decimal pICMS
        {
            get { return _pIcms; }
            set { _pIcms = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N17 - Valor do ICMS
        /// </summary>
        public decimal vICMS
        {
            get { return _vIcms; }
            set { _vIcms = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N18 - Modalidade de determinação da BC do ICMS ST
        /// </summary>
        public DeterminacaoBaseIcmsSt modBCST { get; set; }

        /// <summary>
        ///     N19 - Percentual da margem de valor Adicionado do ICMS ST
        /// </summary>
        public decimal? pMVAST
        {
            get { return _pMvast; }
            set { _pMvast = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N20 - Percentual da Redução de BC do ICMS ST
        /// </summary>
        public decimal? pRedBCST
        {
            get { return _pRedBcst; }
            set { _pRedBcst = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N21 - Valor da BC do ICMS ST
        /// </summary>
        public decimal vBCST
        {
            get { return _vBcst; }
            set { _vBcst = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N22 - Alíquota do imposto do ICMS ST
        /// </summary>
        public decimal pICMSST
        {
            get { return _pIcmsst; }
            set { _pIcmsst = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N23 - Valor do ICMS ST
        /// </summary>
        public decimal vICMSST
        {
            get { return _vIcmsst; }
            set { _vIcmsst = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N25 - Percentual da BC operação própria
        /// </summary>
        public decimal pBCOp
        {
            get { return _pBcOp; }
            set { _pBcOp = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N24 - UF para qual é devido o ICMS ST
        /// </summary>
        public string UFST { get; set; }

        public bool ShouldSerializepRedBC()
        {
            return pRedBC.HasValue;
        }

        public bool ShouldSerializepMVAST()
        {
            return pMVAST.HasValue;
        }

        public bool ShouldSerializepRedBCST()
        {
            return pRedBCST.HasValue;
        }
    }
}