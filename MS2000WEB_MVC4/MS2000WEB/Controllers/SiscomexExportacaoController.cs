using Microsoft.Reporting.WebForms;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Xml.Serialization;

namespace MS2000WEB.Controllers
{
    public class SiscomexExportacaoController : Controller
    {
        //
        // GET: /SiscomexExportacao/
        private MS2000Context db = new MS2000Context();
        public ActionResult Index()
        {
            return View();
        }

        [HttpPost]
        public ActionResult teste(FormCollection form)
        {
            Registro_Exportacao objlote = new Registro_Exportacao();

            string Processo = form["txtprocesso"];
            var query = "Select CP.URF_Despacho, I.CNPJ_CPF_COMPLETO, I.Razao_Social,I.Endereco, I.Pais " +
                         "From Processos P Left Join " +
                         "Conhecimento_Processo CP on P.Codigo = CP.Processo inner join " +
                         "Importadores I on P.Importador = I.Codigo " +
                         "where P.Codigo = @codigo ";

            var dadosProcesso = db.Database.SqlQuery<SiscomexExportacaoViewModel>(query, new SqlParameter("@codigo", Processo)).First();


            var Fatura = "SELECT F.Moeda, Cast(F.Valor_Total AS DECIMAL(18,2)) as ValorTotalFatura,  Cast(F.Peso_Total AS DECIMAL(18,2)) as PesoTotalFatura, F.Incoterm,E.CGC_CPF " +
                         "FROM Faturas F inner join " +
                         "Exportadores E on F.Exportador = E.Codigo " +
                         "WHERE F.Processo= @codigo ";

            var dadosFaturas = db.Database.SqlQuery<SiscomexExportacaoViewModel>(Fatura, new SqlParameter("@codigo", Processo)).ToList();


            var ItensFatura = "SELECT NCM, NALADI ,Descricao_Produto, Cast(Valor_Total AS DECIMAL(18,2)) as ValorTotalItem ,Cast(Peso_Total AS DECIMAL(18,2)) as PesoTotalItem,Cast(Quantidade AS DECIMAL(10)) as Quantidade " +
                              "FROM ItensFaturas " +
                              "WHERE Sequencial <> 'XXX' and Processo = @codigo " +
                              "ORDER BY CAST(Sequencial as int) ";

            var dadosItensFaturas = db.Database.SqlQuery<SiscomexExportacaoViewModel>(ItensFatura, new SqlParameter("@codigo", Processo)).ToList();


            objlote.orgao_rf_despacho = dadosProcesso.URF_Despacho;
            objlote.fabricante.cpf_cnpj = dadosProcesso.CNPJ_CPF_COMPLETO;

            foreach (var fatura in dadosFaturas)
            {
                objlote.cnpj_exportador = fatura.CGC_CPF;
                objlote.nome_importador = fatura.Razao_Social;
                objlote.endereco_importador = fatura.Endereco;
                objlote.pais_importador = fatura.Pais;
                objlote.moeda = fatura.Moeda;
                objlote.re_base.valor_com_cobertura = Convert.ToDouble(fatura.ValorTotalFatura);
                objlote.fabricante.qtd_estatistica_fabric = Convert.ToDouble(fatura.PesoTotalFatura);
                objlote.fabricante.peso_liquido_fabric = Convert.ToDouble(fatura.PesoTotalFatura);
                objlote.fabricante.valor_moeda_local_embarque = Convert.ToDouble(fatura.ValorTotalFatura);
                objlote.condicao_venda = fatura.Incoterm;

                foreach (var item in dadosItensFaturas)
                {
                    objlote.mercadoria_destaque = item.NCM;
                    objlote.naladi = item.NALADI;
                    // objlote.descricao_unidade_medida_comercial = item.
                    objlote.item_mercadoria.Add(new item_mercadoria { descricao = item.Descricao_Produto, valor_condicao_venda = Convert.ToDouble(item.ValorTotalItem), valor_local_embarque = Convert.ToDouble(item.ValorTotalItem), quantidade_comercializada = Convert.ToDouble(item.Quantidade), quantidade_estatistica = Convert.ToDouble(item.PesoTotalItem), numero_peso_liquido = Convert.ToDouble(item.PesoTotalItem) });
                }
            }
            string processos = Processo.Replace("/", "");

            XmlSerializerNamespaces sn = new XmlSerializerNamespaces();
            sn.Add("", "");
            Registro_Exportacao xmllote = objlote;
            XmlSerializer x = new XmlSerializer(typeof(Registro_Exportacao));
            TextWriter writer = new StreamWriter(@"c:\" + processos + ".xml");
            x.Serialize(writer, xmllote, sn);
            writer.Close();

            String FileName = processos + ".xml";
            String FilePath = (@"c:\" + processos + ".xml");
            System.Web.HttpResponse response = System.Web.HttpContext.Current.Response;
            response.ClearContent();
            response.Clear();
            response.ContentType = "text/plain";
            response.AddHeader("Content-Disposition", "attachment; filename=" + FileName + ";");
            response.TransmitFile(FilePath);
            response.Flush();
            Response.End();


            return View();
        }
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
