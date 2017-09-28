﻿using System;

namespace MS2000.Desktop.Classes.NFe
{
    public class retirada
    {
        private const string ErroCpfCnpjPreenchidos = "Somente preencher um dos campos: CNPJ ou CPF, para um objeto do tipo retirada!";
        private string cnpj;
        private string cpf;

        /// <summary>
        ///     F02 - CNPJ
        /// </summary>
        public string CNPJ
        {
            get { return cnpj; }
            set
            {
                if (string.IsNullOrEmpty(value)) return;
                if (string.IsNullOrEmpty(cpf))
                    cnpj = value;
                else
                {
                    throw new ArgumentException(ErroCpfCnpjPreenchidos);
                }
            }
        }

        /// <summary>
        ///     F02a - CPF
        /// </summary>
        public string CPF
        {
            get { return cpf; }
            set
            {
                if (string.IsNullOrEmpty(value)) return;
                if (string.IsNullOrEmpty(cnpj))
                    cpf = value;
                else
                {
                    throw new ArgumentException(ErroCpfCnpjPreenchidos);
                }
            }
        }

        /// <summary>
        ///     F03 - Logradouro
        /// </summary>
        public string xLgr { get; set; }

        /// <summary>
        ///     F04 - Número
        /// </summary>
        public string nro { get; set; }

        /// <summary>
        ///     F05 - Complemento
        /// </summary>
        public string xCpl { get; set; }

        /// <summary>
        ///     F06 - Bairro
        /// </summary>
        public string xBairro { get; set; }

        /// <summary>
        ///     F07 - Código do município
        ///     <para>Código do município (utilizar a tabela do IBGE), informar 9999999 para operações com o exterior.</para>
        /// </summary>
        public long cMun { get; set; }

        /// <summary>
        ///     F08 - Nome do município, informar EXTERIOR para operações com o exterior.
        /// </summary>
        public string xMun { get; set; }

        /// <summary>
        ///     F09 - Sigla da UF, informar EX para operações com o exterior.
        /// </summary>
        public string UF { get; set; }
    }
}