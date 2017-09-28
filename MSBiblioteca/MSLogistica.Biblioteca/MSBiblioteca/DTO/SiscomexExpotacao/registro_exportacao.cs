using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Xml.Serialization;

namespace MSBiblioteca.DTO.SiscomexExpotacao
{
    // [Serializable]
     [XmlRoot(ElementName = "registro-exportacao")]
    // [XmlElement("registro-exportacao")]    
    public class registro_exportacao
    {
        [XmlElement("adica-re-lote")]
        public String adicao_re_lote = "N";
        [XmlElement("nr-processo-exportador")]
        public String nr_processo_exportador = "";
        [XmlElement("cpf-exportador")]
        public String cpf_exportador = "";
        [XmlElement("cnpj-exportador")]
        public String cnpj_exportador = "";

        public enquadramento enquadramento = new enquadramento();

        [XmlElement("data-limite")]
        public String data_limite = "";
        [XmlElement("percentual-margem-nao-sacada")]
        public double percentual_margem_nao_sacada = 0.0;
        [XmlElement("numero-processo")]
        public String numero_processo = "";
        [XmlElement("rc_vinculado")]
        public String rc_vinculado = "";
        [XmlElement("rv_vinculado")]
        public String rv_vinculado = "";
        [XmlElement("re_vinculado")]
        public String re_vinculado = "";
        [XmlElement("di_vinculado")]
        public String di_vinculado = "";
        [XmlElement("dsi_vinculado")]
        public String dsi_vinculado = "";
        [XmlElement("nome-importador")]
        public String nome_importador = "";
        [XmlElement("endereco-importador")]
        public String endereco_importador = "";
        [XmlElement("pais-destino")]
        public String pais_destino = "";
        [XmlElement("pais-importador")]
        public String pais_importador = "";

        [XmlElement("instrumento-comercial")]
        public instrumento_comercial instrumento_comercial = new instrumento_comercial();

        [XmlElement("orgao-rf-despacho")]
        public String orgao_rf_despacho = "";
        [XmlElement("orgao-rf-embarque")]
        public String orgao_rf_embarque = "";
        [XmlElement("condicao-venda")]
        public String condicao_venda = "";
        [XmlElement("modalidade-pagamento")]
        public String modalidade_pagamento = "";
        public String moeda = "";

        [XmlElement("re-base")]
        public re_base re_base = new re_base();

        [XmlElement("valor_financiamento")]
        public String valor_financiamento = "";
        [XmlElement("condicao-fabricante")]
        public String condicao_fabricante = "";
        [XmlElement("mercadoria-destaque")]
        public String mercadoria_destaque = "";
        public String naladi = "";
        [XmlElement("descricao-unidade-medida-comercial")]
        public String descricao_unidade_medida_comercial = "";
        [XmlElement("prazo-pagamento")]
        public String prazo_pagamento = "";

        [XmlElement("item-mercadoria")]
        public List<item_mercadoria> item_mercadoria = new List<item_mercadoria>();

        [XmlElement("percentual-comissao-agente")]
        public String percentual_comissao_agente = "";
        [XmlElement("tipo-comissao")]
        public String tipo_comissao = "";
        [XmlElement("categoria-cota")]
        public String categoria_cota = "";
        public String observacao = "";
        [XmlElement("indicador-ccptc")]
        public String indicador_ccptc = "";
        [XmlElement("indicado-insumo-ccptc")]
        public String indicador_insumo_ccptc = "";
        [XmlElement("indicador-ccrom")]
        public String indicador_ccrom = "";

        public fabricante fabricante = new fabricante();

    }
}
