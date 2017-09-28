using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual.Tipos;

namespace MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Estadual
{
    public class ICMSSN101 : ICMSBasico
    {
        private decimal _pCredSn;
        private decimal _vCredIcmssn;

        /// <summary>
        ///     N11 - Origem da Mercadoria
        /// </summary>
        public OrigemMercadoria orig { get; set; }

        /// <summary>
        ///     N12a - Código de Situação da Operação – Simples Nacional
        /// </summary>
        public Csosnicms CSOSN { get; set; }

        /// <summary>
        ///     N29 - pCredSN - Alíquota aplicável de cálculo do crédito (Simples Nacional).
        /// </summary>
        public decimal pCredSN
        {
            get { return _pCredSn; }
            set { _pCredSn = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     N30 - Valor crédito do ICMS que pode ser aproveitado nos termos do art. 23 da LC 123 (Simples Nacional)
        /// </summary>
        public decimal vCredICMSSN
        {
            get { return _vCredIcmssn; }
            set { _vCredIcmssn = Valor.Arredondar(value, 2); }
        }
    }
}