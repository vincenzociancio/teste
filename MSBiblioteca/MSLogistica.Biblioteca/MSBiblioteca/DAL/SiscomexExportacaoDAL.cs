using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MSBiblioteca.DTO.SiscomexExpotacao;
using MSBiblioteca.BLL;


namespace MSBiblioteca.DAL
{
    internal class SiscomexExportacaoDAL : BancoDados
    {
        internal registro_exportacao BuscarLote(string processo)
        {

            Processo objProcesso = new Processo(processo);

            registro_exportacao objlote = new registro_exportacao();
         //   objlote.adicao_re_lote = "N";
        //    objlote.enquadramento.codigo_enquadramento = "80000";
            objlote.orgao_rf_despacho = objProcesso.Conhecimento.URF_Despacho;
            objlote.fabricante.cpf_cnpj = objProcesso.Importador.CnpjCpfCompleto;

            foreach (var fatura in objProcesso.Fatura)
            {
                objlote.cnpj_exportador = fatura.Exportador.CgcCpf;
                objlote.nome_importador = fatura.Exportador.Importador.RazaoSocial;
                objlote.endereco_importador = fatura.Exportador.Importador.Endereco;
                objlote.pais_importador = fatura.Exportador.Importador.Pais;
                objlote.moeda = fatura.Moeda;
                objlote.re_base.valor_com_cobertura = fatura.Valor_Total;
                objlote.fabricante.qtd_estatistica_fabric = fatura.Peso_Total;
                objlote.fabricante.peso_liquido_fabric = fatura.Peso_Total;
                objlote.fabricante.valor_moeda_local_embarque = fatura.Valor_Total;
                objlote.condicao_venda = fatura.Incoterm;

                foreach (var item in fatura.ItensFatura)
                {
                    objlote.mercadoria_destaque = item.NCM;
                    objlote.naladi = item.NALADI;
                    // objlote.descricao_unidade_medida_comercial = item.
                    objlote.item_mercadoria.Add(new item_mercadoria { descricao = item.Descricao_Produto, valor_condicao_venda = item.Valor_Total, valor_local_embarque = item.Valor_Total, quantidade_comercializada = item.Quantidade, quantidade_estatistica = item.Peso_Total, numero_peso_liquido = item.Peso_Total });
                }
            }
            return objlote;
        }
    }
}
