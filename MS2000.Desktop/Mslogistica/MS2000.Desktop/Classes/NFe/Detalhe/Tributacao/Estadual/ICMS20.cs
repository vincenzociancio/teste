using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual.Tipos;

namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual
{
    public class ICMS20 : ICMSBasico
    {
        private decimal _pRedBc;
        private decimal _vBc;
        private decimal _pIcms;
        private decimal _vIcms;
        private decimal? _vIcmsDeson;

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
        ///     N14 - Percentual de redução da BC
        /// </summary>
        public decimal pRedBC
        {
            get { return Valor.Arredondar(_pRedBc, 4); }
            set { _pRedBc = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N15 - Valor da BC do ICMS
        /// </summary>
        public decimal vBC
        {
            get { return Valor.Arredondar(_vBc, 2); }
            set { _vBc = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N16 - Alíquota do imposto
        /// </summary>
        public decimal pICMS
        {
            get { return Valor.Arredondar(_pIcms, 4); }
            set { _pIcms = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N17 - Valor do ICMS
        /// </summary>
        public decimal vICMS
        {
            get { return Valor.Arredondar(_vIcms, 2); }
            set { _vIcms = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N27a - Valor do ICMS desonerado
        /// </summary>
        public decimal? vICMSDeson
        {
            get { return Valor.Arredondar(_vIcmsDeson, 2); }
            set { _vIcmsDeson = value.HasValue ? decimal.Round(value.Value, 2) : (decimal?) null; }
        }

        /// <summary>
        ///     N28 - Motivo da desoneração do ICMS
        /// </summary>
        public MotivoDesoneracaoIcms? motDesICMS { get; set; }

        public bool ShouldSerializevICMSDeson()
        {
            return vICMSDeson.HasValue;
        }

        public bool ShouldSerializemotDesICMS()
        {
            return motDesICMS.HasValue;
        }
    }
}
