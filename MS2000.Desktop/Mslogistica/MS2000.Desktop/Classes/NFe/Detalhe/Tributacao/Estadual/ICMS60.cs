using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual.Tipos;

namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual
{
    public class ICMS60 : ICMSBasico
    {
        private decimal? _vBcstRet;
        private decimal? _vIcmsstRet;

        /// <summary>
        ///     N11 - Origem da Mercadoria
        /// </summary>
        public OrigemMercadoria orig { get; set; }

        /// <summary>
        ///     N12- Situação Tributária
        /// </summary>
        public Csticms CST { get; set; }

        /// <summary>
        ///     N26 - Valor da BC do ICMS ST retido
        /// </summary>
        public decimal? vBCSTRet
        {
            get { return _vBcstRet; }
            set { _vBcstRet = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N27 - Valor do ICMS ST retido
        /// </summary>
        public decimal? vICMSSTRet
        {
            get { return _vIcmsstRet; }
            set { _vIcmsstRet = Valor.Arredondar(value, 2); }
        }

        public bool ShouldSerializevBCSTRet()
        {
            return vBCSTRet.HasValue;
        }

        public bool ShouldSerializevICMSSTRet()
        {
            return vICMSSTRet.HasValue;
        }
    }
}