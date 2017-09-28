using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Data.SqlClient;
using Microsoft.Reporting.WebForms;

namespace MS2000WEB.Controllers
{
    public class CartaGarantidorController : Controller
    {
        //
        // GET: /CartaGarantidor/
        private MS2000Context db = new MS2000Context();

        public ActionResult Index()
        {
            PopulateFiadorDropDownList();
            return View();
        }

        //
        [HttpPost]
        public ActionResult PrintReport(FormCollection form, Processo_Carta_Garantidor ProcessoCartaGarantidor)
        {
            string Processo = form["txtprocesso"];
            string CodFiador = form["Fiadores"];

            var _fiador = db.Processos.FirstOrDefault(c => c.Codigo == Processo.Trim());

            var _codFiador = db.Fiadores.FirstOrDefault(x => x.Codigo == CodFiador);

            if (_codFiador != null)
            {
                string endereco = "";

                if (!string.IsNullOrEmpty(_codFiador.Endereco))
                {
                    endereco = _codFiador.Endereco;
                    if (!string.IsNullOrEmpty(_codFiador.Numero))
                    {
                        endereco = endereco + ',' + _codFiador.Numero;

                        if (!string.IsNullOrEmpty(_codFiador.Complemento))
                        {
                            endereco = endereco + '/' + _codFiador.Complemento;
                        }
                    }
                    endereco = endereco + ',';
                }

                if (!string.IsNullOrEmpty(_codFiador.Bairro))
                {
                    endereco = endereco + _codFiador.Bairro;
                }

                if (!string.IsNullOrEmpty(_codFiador.Cidade))
                {
                    endereco = endereco + '-' + _codFiador.Cidade;
                }

                if (!string.IsNullOrEmpty(_codFiador.UF))
                {
                    endereco = endereco + '-' + _codFiador.UF;
                }

                _fiador.nome_fiador_GAR = _codFiador.Razao_Social;
                _fiador.CNPJ_fiador_GAR = _codFiador.CGC_CPF;
                _fiador.endereco_fiador_GAR = endereco;
                db.Entry(_fiador).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }

            var _PeriodoFianca = db.Processo_Carta_Garantidor.FirstOrDefault(c => c.Processo == Processo.Trim());
            if (_PeriodoFianca != null)
            {
                _PeriodoFianca.Processo = Processo;
                _PeriodoFianca.Periodo_fianca_inicial = ProcessoCartaGarantidor.Periodo_fianca_inicial;
                _PeriodoFianca.Periodo_fianca_final = ProcessoCartaGarantidor.Periodo_fianca_final;
                db.Entry(_PeriodoFianca).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
            }
            else
            {
                ProcessoCartaGarantidor.Processo = Processo;
                db.Processo_Carta_Garantidor.Add(ProcessoCartaGarantidor);
                db.SaveChanges();
            }

            var query = "select P.Codigo,P.NR_DECLARACAO_IMP as DI,i.Razao_Social AS Importador,i.CNPJ_CPF_COMPLETO ,P.CNPJ_fiador_GAR,P.endereco_fiador_GAR," +
                        "Cast(P.TR_VAL_COFINS AS DECIMAL(18,4)) as TR_VAL_COFINS ,Cast(P.TR_VAL_II AS DECIMAL(18,4)) as TR_VAL_II ,Cast(P.TR_VAL_PIS AS DECIMAL(18,4)) as TR_VAL_PIS ,Cast(p.TR_VAL_IPI AS DECIMAL(18,4)) as TR_VAL_IPI," +
                        "Cast(P.TR_VAL_COFINS+P.TR_VAL_II+P.TR_VAL_PIS + p.TR_VAL_IPI AS DECIMAL(18,2)) as TOTAL,  " +
                        "P.nome_fiador_GAR ,R.Numero_Rat,C.Vigencia_inicial,C.Vigencia_final,C.Data_prorrogacao,CP.URF_Despacho,PCG.Periodo_fianca_inicial,PCG.Periodo_fianca_Final,RR.Num_Rat " +
                        "from Processos P " +
                        "left join RAT R on P.Codigo = R.Fk_Processo " +
                        "left join RAT_Repetro RR on P.Codigo = RR.Fk_Processo " +
                        "left join Contratos C on C.Importador = P.Importador and C.Contrato = P.Contrato " +
                        "left join Conhecimento_Processo CP on P.Codigo = CP.Processo " +
                        "inner join Importadores I on I.Codigo = P.Importador " +
                        "inner join Processo_carta_garantidor PCG on PCG.Processo = P.Codigo " +
                        "where P.Codigo = @codigo ";

            var dadosProcesso = db.Database.SqlQuery<CartaGarantidorViewModel>(query, new SqlParameter("@codigo", Processo)).First();

            LocalReport localReport = new LocalReport();
            localReport.EnableExternalImages = true;
            localReport.ReportPath = Server.MapPath("~/Views/CartaGarantidor/rptCartaGarantidor.rdlc");
            localReport.DataSources.Clear();

            IList<ReportParameter> parametros = new List<ReportParameter>();

            parametros.Add(new ReportParameter("RazaoSocialFiador", dadosProcesso.nome_fiador_GAR));
            parametros.Add(new ReportParameter("Endereco", dadosProcesso.endereco_fiador_GAR));
            parametros.Add(new ReportParameter("Telefone", ""));
            parametros.Add(new ReportParameter("Termo", form["Termo"]));
            if (!string.IsNullOrEmpty(dadosProcesso.Numero_Rat))
            {
                parametros.Add(new ReportParameter("Rat", dadosProcesso.Numero_Rat));
            }
            else
            {
                parametros.Add(new ReportParameter("Rat", dadosProcesso.Num_Rat));
            }
            parametros.Add(new ReportParameter("DI", Convert.ToUInt64(dadosProcesso.DI).ToString(@"00/0000000-0")));
            parametros.Add(new ReportParameter("Importador", dadosProcesso.Importador));
            parametros.Add(new ReportParameter("VigenciaInicial", string.IsNullOrEmpty(dadosProcesso.Vigencia_inicial.ToString()) ? null : dadosProcesso.Vigencia_inicial.ToString()));
            if (string.IsNullOrEmpty(dadosProcesso.Data_prorrogacao.ToString()))
            {
                parametros.Add(new ReportParameter("VigenciaFinal", string.IsNullOrEmpty(dadosProcesso.Vigencia_final.ToString()) ? null : dadosProcesso.Vigencia_final.ToString()));
            }
            else
            {
                parametros.Add(new ReportParameter("VigenciaFinal", string.IsNullOrEmpty(dadosProcesso.Data_prorrogacao.ToString()) ? null : dadosProcesso.Data_prorrogacao.ToString()));  
            }
            parametros.Add(new ReportParameter("Processo", dadosProcesso.Codigo));
            parametros.Add(new ReportParameter("II", dadosProcesso.TR_VAL_II.ToString()));
            parametros.Add(new ReportParameter("IPI", dadosProcesso.TR_VAL_IPI.ToString()));
            parametros.Add(new ReportParameter("PIS", dadosProcesso.TR_VAL_PIS.ToString()));
            parametros.Add(new ReportParameter("COFINS", dadosProcesso.TR_VAL_COFINS.ToString()));
            parametros.Add(new ReportParameter("TOTAL", dadosProcesso.TOTAL.ToString()));
            parametros.Add(new ReportParameter("Garantidor", dadosProcesso.nome_fiador_GAR));
            parametros.Add(new ReportParameter("CNPJFiador", Convert.ToUInt64(dadosProcesso.CNPJ_fiador_GAR).ToString(@"00\.000\.000\/0000\-00")));
            parametros.Add(new ReportParameter("CNPJImportador", Convert.ToUInt64(dadosProcesso.CNPJ_CPF_COMPLETO).ToString(@"00\.000\.000\/0000\-00")));
            parametros.Add(new ReportParameter("Data", DateTime.Now.ToString("dd/MM/yyyy")));
            if (dadosProcesso.URF_Despacho == "0717600")
            {
                parametros.Add(new ReportParameter("Descricao", "Ilmo. Sr. Inspetor da Alfandega no Porto do Rio de Janeiro."));
                parametros.Add(new ReportParameter("DescricaoInicial", "Ao"));
            }
            else if (dadosProcesso.URF_Despacho == "0710200")
            {
                parametros.Add(new ReportParameter("Descricao", "Delegacia da Receita Federal em Niterói"));
                parametros.Add(new ReportParameter("DescricaoInicial", "À"));
            }
            else
            {
                parametros.Add(new ReportParameter("Descricao", ""));
                parametros.Add(new ReportParameter("DescricaoInicial", ""));
            }
            parametros.Add(new ReportParameter("FiancaInicial", string.IsNullOrEmpty(dadosProcesso.Periodo_fianca_inicial.ToString()) ? null : dadosProcesso.Periodo_fianca_inicial.ToString()));
            parametros.Add(new ReportParameter("FiancaFinal", string.IsNullOrEmpty(dadosProcesso.Periodo_fianca_final.ToString()) ? null : dadosProcesso.Periodo_fianca_final.ToString()));

            localReport.SetParameters(parametros);

            string reportType = "PDF";
            string mimeType;
            string encoding;
            string fileNameExtension;
            //The DeviceInfo settings should be changed based on the reportType             
            //http://msdn2.microsoft.com/en-us/library/ms155397.aspx             
            //string deviceInfo =
            //    "<DeviceInfo>" +
            //    "  <OutputFormat>PDF</OutputFormat>" +
            //    "  <PageWidth>8.5in</PageWidth>" +
            //    "  <PageHeight>11in</PageHeight>" +
            //    "  <MarginTop>0.5in</MarginTop>" +
            //    "  <MarginLeft>1in</MarginLeft>" +
            //    "  <MarginRight>1in</MarginRight>" +
            //    "  <MarginBottom>0.5in</MarginBottom>" +
            //    "</DeviceInfo>";
            Warning[] warnings;
            string[] streams;
            byte[] renderedBytes;
            //Render the report             
            renderedBytes = localReport.Render(
                reportType,
                null,
                out mimeType,
                out encoding,
                out fileNameExtension,
                out streams,
                out warnings);
            //Response.AddHeader("content-disposition", "attachment; filename=NorthWindCustomers." + fileNameExtension);             

            //download pdf
            var response = System.Web.HttpContext.Current.Response;
            response.Clear();
            Response.AddHeader("Content-Type", "binary/octet-stream");
            Response.AddHeader("content-disposition",
                               "attachment; filename=CartaGarantidor_" + DateTime.Now.ToString("MM-dd-yyyy") + "." +
                               fileNameExtension);
            response.Flush();
            response.BinaryWrite(renderedBytes);
            response.Flush();
            response.End();

            //TempData["Sucesso"] = "Formulário de Desunitização gerado com sucesso!";

            return View();
        }

        [HttpGet]
        public JsonResult VerificarFiador(string Processo)
        {
            var _fiador = db.Processos.FirstOrDefault(c => c.Codigo == Processo.Trim());

            if (_fiador == null)
            {

                return Json(new { cnpj = "", endereco = "", codfiador = "", inicial = "", Final = "", msg = "<p><b>Processo não existe!</b></p>" }, JsonRequestBehavior.AllowGet);
            }


            if (!string.IsNullOrEmpty(_fiador.CNPJ_fiador_GAR))
            {
                var _codFiador = db.Fiadores.FirstOrDefault(x => x.CGC_CPF == _fiador.CNPJ_fiador_GAR);

                var _PeriodoFianca = db.Processo_Carta_Garantidor.FirstOrDefault(x => x.Processo == Processo.Trim());
                if (_PeriodoFianca != null)
                {
                    string inicial = "";
                    string final = "";
                    if (!string.IsNullOrEmpty(_PeriodoFianca.Periodo_fianca_inicial.ToString()))
                    {
                        inicial = Convert.ToDateTime(_PeriodoFianca.Periodo_fianca_inicial.ToString()).ToString("dd/MM/yyyy");
                    }

                    if (!string.IsNullOrEmpty(_PeriodoFianca.Periodo_fianca_final.ToString()))
                    {
                       final = Convert.ToDateTime(_PeriodoFianca.Periodo_fianca_final.ToString()).ToString("dd/MM/yyyy"); 
                    }                  
                  
                    return Json(new { cnpj = _fiador.CNPJ_fiador_GAR, endereco = _fiador.endereco_fiador_GAR, codfiador = _codFiador.Codigo, inicial = inicial, Final = final, msg = "" }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { cnpj = _fiador.CNPJ_fiador_GAR, endereco = _fiador.endereco_fiador_GAR, codfiador = _codFiador.Codigo, inicial = "", Final = "", msg = "" }, JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                var _PeriodoFianca = db.Processo_Carta_Garantidor.FirstOrDefault(x => x.Processo == Processo.Trim());

                if (_PeriodoFianca != null)
                {
                    string inicial = "";
                    string final = "";
                    if (!string.IsNullOrEmpty(_PeriodoFianca.Periodo_fianca_inicial.ToString()))
                    {
                        inicial = Convert.ToDateTime(_PeriodoFianca.Periodo_fianca_inicial.ToString()).ToString("dd/MM/yyyy");
                    }

                    if (!string.IsNullOrEmpty(_PeriodoFianca.Periodo_fianca_final.ToString()))
                    {
                        final = Convert.ToDateTime(_PeriodoFianca.Periodo_fianca_final.ToString()).ToString("dd/MM/yyyy");
                    }                  
                  
                    return Json(new { cnpj = "", endereco = "", codfiador = "", inicial = inicial, Final = final, msg = "" }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    return Json(new { cnpj = "", endereco = "", codfiador = "", inicial = "", Final = "", msg = "" }, JsonRequestBehavior.AllowGet);
                }
            }

        }

        [HttpGet]
        public JsonResult getFiador(string codFiador)
        {
            var _codFiador = db.Fiadores.FirstOrDefault(x => x.Codigo == codFiador);

            string endereco = "";

            if (!string.IsNullOrEmpty(_codFiador.Endereco))
            {
                endereco = _codFiador.Endereco;
                if (!string.IsNullOrEmpty(_codFiador.Numero))
                {
                    endereco = endereco + ',' + _codFiador.Numero;

                    if (!string.IsNullOrEmpty(_codFiador.Complemento))
                    {
                        endereco = endereco + '/' + _codFiador.Complemento;
                    }
                }
                endereco = endereco + ',';
            }

            if (!string.IsNullOrEmpty(_codFiador.Bairro))
            {
                endereco = endereco + _codFiador.Bairro;
            }

            if (!string.IsNullOrEmpty(_codFiador.Cidade))
            {
                endereco = endereco + '-' + _codFiador.Cidade;
            }

            if (!string.IsNullOrEmpty(_codFiador.UF))
            {
                endereco = endereco + '-' + _codFiador.UF;
            }

            return Json(new { cnpj = _codFiador.CGC_CPF, endereco = endereco }, JsonRequestBehavior.AllowGet);

        }


        private void PopulateFiadorDropDownList(object selectedFiador = null)
        {
            var Fiador = (from i in db.Fiadores
                          orderby i.Razao_Social
                          select new { Codigo = i.Codigo, Descricao = i.Razao_Social });

            ViewBag.Fiadores = new SelectList(Fiador, "Codigo", "Descricao", selectedFiador);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
