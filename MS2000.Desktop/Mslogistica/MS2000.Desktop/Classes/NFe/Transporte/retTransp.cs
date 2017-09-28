namespace MS2000.Desktop.Classes.NFe.Transporte
{
    public class retTransp
    {
        private decimal _vServ;
        private decimal _vBcRet;
        private decimal _pIcmsRet;

        /// <summary>
        ///     X12 - Valor do Serviço
        /// </summary>
        public decimal vServ
        {
            get { return _vServ; }
            set { _vServ = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     X13 - BC da Retenção do ICMS
        /// </summary>
        public decimal vBCRet
        {
            get { return _vBcRet; }
            set { _vBcRet = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     X14 - Alíquota da Retenção
        /// </summary>
        public decimal pICMSRet
        {
            get { return _pIcmsRet; }
            set { _pIcmsRet = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     X15 - Valor do ICMS Retido
        /// </summary>
        public decimal vICMSRet { get; set; }

        /// <summary>
        ///     X16 - CFOP
        /// </summary>
        public int CFOP { get; set; }

        /// <summary>
        ///     X17 - Código do município de ocorrência do fato gerador do ICMS do transporte
        /// </summary>
        public long cMunFG { get; set; }
    }
}