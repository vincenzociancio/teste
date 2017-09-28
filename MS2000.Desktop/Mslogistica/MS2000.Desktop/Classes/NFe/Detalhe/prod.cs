﻿using MS2000.Desktop.Classes.NFe.Detalhe.DeclaracaoImportacao;
using MS2000.Desktop.Classes.NFe.Detalhe.Exportacao;
using MS2000.Desktop.Classes.NFe.Detalhe.Produto_Específico;
using System;
using System.Collections.Generic;
using System.Xml.Serialization;

namespace MS2000.Desktop.Classes.NFe.Detalhe
{
    public class prod
    {
        private string _nRecopi;
        private ProdutoEspecifico _produtoEspecifico;
        private decimal _qcom;
        private decimal _qtrib;
        private decimal _vprod;
        private decimal _vUnTrib;
        private decimal? _vFrete;
        private decimal? _vSeg;
        private decimal? _vDesc;
        private decimal? _vOutro;
        private string _cEan;
        private string _cEanTrib;
        private decimal _vUnCom;

        /// <summary>
        ///     I02 - Código do produto ou serviço
        /// </summary>
        public string cProd { get; set; }

        /// <summary>
        ///     I03 - GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras
        /// </summary>
        public string cEAN
        {
            get { return _cEan; }
            set { _cEan = value ?? string.Empty; }
        }

        /// <summary>
        ///     I04 - Descrição do produto ou serviço
        /// </summary>
        public string xProd { get; set; }

        /// <summary>
        ///     I05 - Código NCM (8 posições). Em caso de item de serviço ou item que não tenham produto (Ex. transferência de
        ///     crédito, crédito do ativo imobilizado, etc.), informar o código 00 (zeros) (v2.0)
        /// </summary>
        public string NCM { get; set; }

        /// <summary>
        ///     105a - Nomenclatura de Valor aduaneio e Estatístico
        /// </summary>
        public string NVE { get; set; }

        /// <summary>
        ///     I06 - Código EX TIPI (3 posições)
        /// </summary>
        public string EXTIPI { get; set; }

        /// <summary>
        ///     I08 - Código Fiscal de Operações e Prestações
        /// </summary>
        public int CFOP { get; set; }

        /// <summary>
        ///     I09 - Unidade comercial
        /// </summary>
        public string uCom { get; set; }

        /// <summary>
        ///     I10 - Quantidade Comercial  do produto, alterado para aceitar de 0 a 4 casas decimais e 11 inteiros.
        /// </summary>
        public decimal qCom
        {
            get { return _qcom; }
            set { _qcom = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     I10a - Valor Unitário de Comercialização
        /// </summary>
        public decimal vUnCom
        {
            get { return _vUnCom; }
            set { _vUnCom = Valor.Arredondar(value, 10); }
        }

        /// <summary>
        ///     I11 - Valor Total Bruto dos Produtos ou Serviços
        /// </summary>
        public decimal vProd
        {
            get { return _vprod; }
            set { _vprod = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     I12 - GTIN (Global Trade Item Number) do produto, antigo código EAN ou código de barras
        /// </summary>
        public string cEANTrib
        {
            get { return _cEanTrib; }
            set { _cEanTrib = value ?? string.Empty; }
        }

        /// <summary>
        ///     I13 - Unidade Tributável
        /// </summary>
        public string uTrib { get; set; }

        /// <summary>
        ///     I14 - Quantidade Tributável
        /// </summary>
        public decimal qTrib
        {
            get { return _qtrib; }
            set { _qtrib = Valor.Arredondar(value, 4); }
        }

        /// <summary>
        ///     I14a - Valor Unitário de tributação
        /// </summary>
        public decimal vUnTrib
        {
            get { return _vUnTrib; }
            set { _vUnTrib = Valor.Arredondar(value, 10); }
        }

        /// <summary>
        ///     I15 - Valor Total do Frete
        /// </summary>
        public decimal? vFrete
        {
            get { return _vFrete; }
            set { _vFrete = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     I16 - Valor Total do Seguro
        /// </summary>
        public decimal? vSeg
        {
            get { return _vSeg; }
            set { _vSeg = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     I17 - Valor do Desconto
        /// </summary>
        public decimal? vDesc
        {
            get { return _vDesc; }
            set { _vDesc = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     I17a - Outras despesas acessórias
        /// </summary>
        public decimal? vOutro
        {
            get { return _vOutro; }
            set { _vOutro = Valor.Arredondar(value, 2); }
        }

        /// <summary>
        ///     I17b - Indica se valor do Item (vProd) entra no valor total da NF-e (vProd)
        /// </summary>
        public IndicadorTotal indTot { get; set; }

        /// <summary>
        ///     I18 - Declaração de Importação
        /// </summary>
        [XmlElement("DI")]
        public List<DI> DI { get; set; }

        /// <summary>
        ///     I50 - Grupo de informações de exportação para o item
        /// </summary>
        [XmlElement("detExport")]
        public List<detExport> detExport { get; set; }

        /// <summary>
        ///     I60 - Número do Pedido de Compra
        /// </summary>
        public string xPed { get; set; }

        /// <summary>
        ///     I61 - Item do Pedido de Compra
        /// </summary>
        public int nItemPed { get; set; }

        /// <summary>
        ///     I70 - Número de controle da FCI - Ficha de Conteúdo de Importação
        /// </summary>
        public string nFCI { get; set; }

        /// <summary>
        ///     <para>129 (veicProd) - Detalhamento de Veículos novos</para>
        ///     <para>K01 (med) - Detalhamento de Medicamentos e de matérias-primas farmacêuticas</para>
        ///     <para>L01 (arma) - Detalhamento de Armamento</para>
        ///     <para>LA01 (comb) - Informações específicas para combustíveis líquidos e lubrificantes</para>
        /// </summary>
        [XmlElement("veicProd", typeof (veicProd))]
        [XmlElement("med", typeof (med))]
        [XmlElement("arma", typeof (arma))]
        [XmlElement("comb", typeof (comb))]
        public ProdutoEspecifico ProdutoEspecifico
        {
            get { return _produtoEspecifico; }
            set
            {
                nRECOPI = null; //ProdutoEspecifico e nRECOPI são mutuamente exclusivos
                _produtoEspecifico = value;
            }
        }

        /// <summary>
        ///     LB01 - Número do RECOPI
        /// </summary>
        public string nRECOPI
        {
            get { return _nRecopi; }
            set
            {
                if (string.IsNullOrEmpty(value)) return;
                ProdutoEspecifico = null; //ProdutoEspecifico e nRECOPI são mutuamente exclusivos
                _nRecopi = value;
            }
        }

        public bool ShouldSerializevFrete()
        {
            return vFrete.HasValue && vFrete > 0;
        }

        public bool ShouldSerializevSeg()
        {
            return vSeg.HasValue && vSeg > 0;
        }

        public bool ShouldSerializevDesc()
        {
            return vDesc.HasValue && vDesc > 0;
        }

        public bool ShouldSerializevOutro()
        {
            return vOutro.HasValue && vOutro > 0;
        }

    }
}