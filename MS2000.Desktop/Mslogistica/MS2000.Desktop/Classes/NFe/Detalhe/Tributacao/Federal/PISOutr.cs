﻿using MS2000.Desktop.Classes.NFe;
using MS2000.Desktop.Classes.NFe.Detalhe.Tributacao.Federal.Tipos;

namespace NFe.Classes.Informacoes.Detalhe.Tributacao.Federal
{
    public class PISOutr : PISBasico
    {
        private decimal? _vBc;
        private decimal? _pPis;
        private decimal? _qBcProd;
        private decimal? _vAliqProd;
        private decimal? _vPis;

        /// <summary>
        ///     Q06 - Código de Situação Tributária do PIS
        /// </summary>
        public CSTPIS CST { get; set; }

        /// <summary>
        ///     Q07 - Valor da Base de Cálculo do PIS
        /// </summary>
        public decimal? vBC
        {
            get { return _vBc; }
            set { _vBc = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     Q08 - Alíquota do PIS (em percentual)
        /// </summary>
        public decimal? pPIS
        {
            get { return _pPis; }
            set { _pPis = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     Q10 - Quantidade Vendida
        /// </summary>
        public decimal? qBCProd
        {
            get { return _qBcProd; }
            set { _qBcProd = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     Q11 - Alíquota do PIS (em reais)
        /// </summary>
        public decimal? vAliqProd
        {
            get { return _vAliqProd; }
            set { _vAliqProd = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     Q09 - Valor do PIS
        /// </summary>
        public decimal? vPIS
        {
            get { return _vPis; }
            set { _vPis = Valor.Arredondar(value, 2); }
        }

        public bool ShouldSerializevBC()
        {
            return vBC.HasValue;
        }

        public bool ShouldSerializepPIS()
        {
            return pPIS.HasValue;
        }

        public bool ShouldSerializeqBCProd()
        {
            return qBCProd.HasValue;
        }

        public bool ShouldSerializevAliqProd()
        {
            return vAliqProd.HasValue;
        }

        public bool ShouldSerializevPIS()
        {
            return vPIS.HasValue;
        }
    }
}