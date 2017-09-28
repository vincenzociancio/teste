using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe.Cana
{
    public class forDia
    {
        private decimal _qtde;
        private decimal _qTotMes;
        private decimal _qTotAnt;
        private decimal _qTotGer;

        /// <summary>
        ///     ZC05 - Dia
        /// </summary>
        [XmlAttribute]
        public int dia { get; set; }

        /// <summary>
        ///     ZC06 - Quantidade
        /// </summary>
        public decimal qtde
        {
            get { return _qtde; }
            set { _qtde = Valor.Arredondar(value, 10); }
        }

        /// <summary>
        ///     ZC07 - Quantidade Total do Mês
        /// </summary>
        public decimal qTotMes
        {
            get { return _qTotMes; }
            set { _qTotMes = Valor.Arredondar(value, 10); }
        }

        /// <summary>
        ///     ZC08 - Quantidade Total Anterior
        /// </summary>
        public decimal qTotAnt
        {
            get { return _qTotAnt; }
            set { _qTotAnt = Valor.Arredondar(value, 10); }
        }

        /// <summary>
        ///     ZC09 - Quantidade Total Geral
        /// </summary>
        public decimal qTotGer
        {
            get { return _qTotGer; }
            set { _qTotGer = Valor.Arredondar(value, 10); }
        }
    }
}