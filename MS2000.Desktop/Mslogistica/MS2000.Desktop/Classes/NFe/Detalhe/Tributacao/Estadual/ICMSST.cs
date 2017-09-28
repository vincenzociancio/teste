﻿using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual.Tipos;

namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual
{
    public class ICMSST : ICMSBasico
    {
        private decimal _vBcstRet;
        private decimal _vIcmsstRet;
        private decimal _vBcstDest;
        private decimal _vIcmsstDest;

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
        public decimal vBCSTRet
        {
            get { return _vBcstRet; }
            set { _vBcstRet = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N27 - Valor do ICMS ST retido
        /// </summary>
        public decimal vICMSSTRet
        {
            get { return _vIcmsstRet; }
            set { _vIcmsstRet = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N31 - Valor da BC do ICMS ST da UF destino
        /// </summary>
        public decimal vBCSTDest
        {
            get { return _vBcstDest; }
            set { _vBcstDest = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     N32 - Valor do ICMS ST da UF destino
        /// </summary>
        public decimal vICMSSTDest
        {
            get { return _vIcmsstDest; }
            set { _vIcmsstDest = Valor.Arredondar(value, 2); }
        }
    }
}