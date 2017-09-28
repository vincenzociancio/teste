﻿namespace MS2000.Desktop.Classes.NFe.Transporte
{
    public class reboque
    {
        /// <summary>
        ///     X23 - Placa do Veículo
        /// </summary>
        public string placa { get; set; }

        /// <summary>
        ///     X24 - Sigla da UF
        /// </summary>
        public string UF { get; set; }

        /// <summary>
        ///     X25 - Registro Nacional de Transportador de Carga (ANTT)
        /// </summary>
        public string RNTC { get; set; }

        /// <summary>
        ///     X25a - Identificação do vagão
        /// </summary>
        public string vagao { get; set; }

        /// <summary>
        ///     X25b - Identificação da balsa
        /// </summary>
        public string balsa { get; set; }
    }
}