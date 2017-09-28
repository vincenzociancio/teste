using System;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using MS2000WEB.Models;

namespace MS2000WEB.Controllers
{
    public class ProcessosController : Controller
    {
        private MS2000Context db = new MS2000Context();

        //
        // GET: /Processos/

        public ActionResult Index()
        {
            PopulateCentroCustosDropDownList();
            PopulateImportadorDropDownList();
            PopulateTipoProcessoDropDownList();
            PopulateTipoDeclaracaoDropDownList();

            PopulateContratoDropDownList();
            PopulateLocalDropDownList();
            PopulateTipoUrgenciaDropDownList();
            return View();
        }

        //
        // GET: /Processos/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /Processos/Create

        public ActionResult Create()
        {
            Processo processo = new Processo();

            PopulateCentroCustosDropDownList();
            PopulateImportadorDropDownList();
            PopulateTipoProcessoDropDownList();
            PopulateTipoDeclaracaoDropDownList();
            // PopulateContratoDropDownList();
            PopulateTipoUrgenciaDropDownList();
            //   ViewBag.C = "0";
            ViewBag.Usu = User.Identity.Name.ToUpper();
            //   PopulateLocalInventarioDropDownList();

            processo.FK_Processos_Tipo_Urgencia = 0;
            processo.Pag_proporcional = 0;

            return View(processo);
        }

        //
        // POST: /Processos/Create
        [HttpGet]
        public JsonResult VerificarProcessos(string Processo)
        {

            //    var _result = AcessaPasta(Processo);

            var _processos = db.Processos.Where(x => x.Codigo == Processo.Trim()).FirstOrDefault();

            // PopulateContratoDropDownList(null,_processos.Importador);
            // PopulateLocalDropDownList(_processos.Importador, _processos.Contrato,_processos.Local_Inventario);

            if (_processos == null)
            {
                return Json(new { centro_custo = "", importador = "", tipo = "", numero_rtc = "", material_usado = "", tipo_declaracao = "", pag_proporcional = "", contrato = "", local_inventario = "", msg = "<p><b>Processo não existe!</b></p>" }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { centro_custo = _processos.Centro_Custo, importador = _processos.Importador, tipo = _processos.Tipo, numero_rtc = _processos.Numero_RTC, material_usado = _processos.Material_Usado, tipo_declaracao = _processos.Tipo_Declaracao, pag_proporcional = _processos.Pag_proporcional, contrato = _processos.Contrato, local_inventario = _processos.Local_Inventario, msg = "" }, JsonRequestBehavior.AllowGet);
            }
        }
        [HttpPost]
        public ActionResult SalvarProcesso(FormCollection form, Processo processo)
        {
            //var Processos = db.Processos.Where(x => x.Codigo == form["txtprocesso"]);

            var Processos = (from p in db.Processos
                             from i in db.Importadores
                             from c in db.Contratos
                             from l in db.Locais_Inventario
                             where p.Importador == i.Codigo &&
                                   p.Importador == c.Importador &&
                                   p.Contrato == c.Contrato1 &&
                                   p.Local_Inventario == l.Local &&
                                   p.Importador == l.Importador &&
                                   p.Codigo == form["txtprocesso"]

                             select p
                               ).FirstOrDefault();




            if ((processo.Tipo == "22") || (processo.Tipo == "6A") || (processo.Tipo == "23") || (processo.Tipo == "RM") || (processo.Tipo == "PD"))
            {
                if (String.IsNullOrEmpty(processo.Contrato))
                {
                    PopulateCentroCustosDropDownList(processo.Centro_Custo);
                    PopulateImportadorDropDownList(processo.Importador);
                    PopulateTipoProcessoDropDownList(processo.Tipo);
                    PopulateTipoDeclaracaoDropDownList(processo.Tipo_Declaracao);
                    //   PopulateContratoDropDownList();
                    PopulateTipoUrgenciaDropDownList(processo.FK_Processos_Tipo_Urgencia);
                    PopulateContratoDropDownList(processo.Importador);

                    TempData["Erro"] = "Por favor, para o Tipo de Processo selecionado, informe o Contrato!!! ";
                    return View(processo);
                }
                else if (String.IsNullOrEmpty(processo.Local_Inventario))
                {
                    PopulateCentroCustosDropDownList(processo.Centro_Custo);
                    PopulateImportadorDropDownList(processo.Importador);
                    PopulateTipoProcessoDropDownList(processo.Tipo);
                    PopulateTipoDeclaracaoDropDownList(processo.Tipo_Declaracao);
                    //   PopulateContratoDropDownList();
                    PopulateTipoUrgenciaDropDownList(processo.FK_Processos_Tipo_Urgencia);
                    PopulateContratoDropDownList(processo.Importador);

                    TempData["Erro"] = "Por favor, para o Tipo de Processo selecionado, informe o Local de Inventário!!! ";
                    return View(processo);
                }

            }


            if ((processo.Urgente == 1) && (String.IsNullOrEmpty(processo.FK_Processos_Tipo_Urgencia.ToString())))
            {
                PopulateCentroCustosDropDownList(processo.Centro_Custo);
                PopulateImportadorDropDownList(processo.Importador);
                PopulateTipoProcessoDropDownList(processo.Tipo);
                PopulateTipoDeclaracaoDropDownList(processo.Tipo_Declaracao);
                //   PopulateContratoDropDownList();
                PopulateTipoUrgenciaDropDownList(processo.FK_Processos_Tipo_Urgencia);
                PopulateContratoDropDownList(processo.Importador);

                TempData["Erro"] = "Selecione um tipo de urgência para o processo!!!! ";
                return View(processo);
            }

            if (String.IsNullOrEmpty(processo.Importador.ToString()))
            {
                PopulateCentroCustosDropDownList(processo.Centro_Custo);
                PopulateImportadorDropDownList(processo.Importador);
                PopulateTipoProcessoDropDownList(processo.Tipo);
                PopulateTipoDeclaracaoDropDownList(processo.Tipo_Declaracao);
                //   PopulateContratoDropDownList();
                PopulateTipoUrgenciaDropDownList(processo.FK_Processos_Tipo_Urgencia);
                PopulateContratoDropDownList(processo.Importador);

                TempData["Erro"] = "Selecione um cliente para o processo!!!! ";
                return View(processo);
            }


            Importadore importador = db.Importadores.FirstOrDefault(c => c.Codigo == processo.Importador);
            if (!(importador.Ativo == 1))
            {
                PopulateCentroCustosDropDownList(processo.Centro_Custo);
                PopulateImportadorDropDownList(processo.Importador);
                PopulateTipoProcessoDropDownList(processo.Tipo);
                PopulateTipoDeclaracaoDropDownList(processo.Tipo_Declaracao);
                //   PopulateContratoDropDownList();
                PopulateTipoUrgenciaDropDownList(processo.FK_Processos_Tipo_Urgencia);
                PopulateContratoDropDownList(processo.Importador);

                TempData["Erro"] = "Este Cliente está Inativo. Somente usuários habilitados em editar clientes inativos poderão alterar as informações do processo!!!! ";
                return View(processo);
            }

            if (processo.Tipo_Declaracao == "05")
            {
                if (String.IsNullOrEmpty(processo.Contrato))
                {
                    PopulateCentroCustosDropDownList(processo.Centro_Custo);
                    PopulateImportadorDropDownList(processo.Importador);
                    PopulateTipoProcessoDropDownList(processo.Tipo);
                    PopulateTipoDeclaracaoDropDownList(processo.Tipo_Declaracao);
                    //   PopulateContratoDropDownList();
                    PopulateTipoUrgenciaDropDownList(processo.FK_Processos_Tipo_Urgencia);
                    PopulateContratoDropDownList(processo.Importador);

                    TempData["Erro"] = "Tipo de declaração igual a Admissão Temporária, o campo contrato não pode ser vazio!!! ";
                    return View(processo);
                }
                else if (String.IsNullOrEmpty(processo.Local_Inventario))
                {
                    PopulateCentroCustosDropDownList(processo.Centro_Custo);
                    PopulateImportadorDropDownList(processo.Importador);
                    PopulateTipoProcessoDropDownList(processo.Tipo);
                    PopulateTipoDeclaracaoDropDownList(processo.Tipo_Declaracao);
                    //   PopulateContratoDropDownList();
                    PopulateTipoUrgenciaDropDownList(processo.FK_Processos_Tipo_Urgencia);
                    PopulateContratoDropDownList(processo.Importador);

                    TempData["Erro"] = "Tipo de declaração igual a Admissão Temporária, o campo local de inventário não pode ser vazio!!! ";
                    return View(processo);
                }
                else
                {
                    Contrato contrato = db.Contratos.FirstOrDefault(c => c.Contrato1 == processo.Contrato);
                    Locais_Inventario local = db.Locais_Inventario.FirstOrDefault(c => c.Contrato == processo.Contrato && c.Local == processo.Local_Inventario);
                    if ((contrato.Descricao == "S/CONTRATO") || (contrato.Descricao == "SEM CONTRATO") || (local.Descricao == "SEM CONTRATO") || (local.Descricao == "SEM CONTRATO (PRAZO 90 DIAS)") || (local.Descricao == "SEM CONTRATO / BRUTE TIDE") || (local.Descricao == "SEM CONTRATO / OCEAN WHITTINGTON") || (contrato.Descricao == "") ||
                         (local.Descricao == "S/LOCAL DE INVENTÁRIO") || (local.Descricao == "SEM LOCAL DE INVENTÁRIO") || (local.Descricao == ""))
                        PopulateCentroCustosDropDownList(processo.Centro_Custo);
                    PopulateImportadorDropDownList(processo.Importador);
                    PopulateTipoProcessoDropDownList(processo.Tipo);
                    PopulateTipoDeclaracaoDropDownList(processo.Tipo_Declaracao);
                    //   PopulateContratoDropDownList();
                    PopulateTipoUrgenciaDropDownList(processo.FK_Processos_Tipo_Urgencia);
                    PopulateContratoDropDownList(processo.Importador);

                    TempData["Erro"] = "Para o Contrato de Admissão Temporária, Informe o Contrato e/ou Local de inventário!!! ";
                    return View(processo);
                }
            }

            // Validar vinculacao/desvinculacao e referencia de cliente

            //select codigo_cliente, codigo from Processos where Codigo_Cliente = :p0 and Status in( ''0'',''01'')');
            //   if verifica
            //   then MessageDlg('A Referência Cliente está cadastrado no processo: '+ Processo +'', mtWarning, [mbOk], 0)
            //        else MessageDlg('A Referência Cliente não está cadastrada', mtWarning, [mbOk], 0);



            //salvar processo

            if (ModelState.IsValid)
            {
                try
                {
                    //   pegando o ultimo numerador de processo
                    string scodigo = "";
                    int numero = 1;

                    string ano = Convert.ToString(DateTime.Now.Year);
                    ano = ano.Substring(2, 2);

                    var ultimocodigo = (from pn in db.Processos_Numerador.Take(1)
                                        where pn.Empresa == "1" && pn.Filial == "RJO"
                                        select new { codigo = pn.Numerador_Processos }).ToList();


                    //    se não existir registro, será o primeiro
                    if (ultimocodigo.Any())
                    {
                        foreach (var item in ultimocodigo)
                        {
                            scodigo = item.codigo;
                        }
                        numero = Convert.ToInt32(scodigo.Substring(0, 5));
                        numero += 1;
                    }
                    scodigo = Convert.ToString(numero);
                    scodigo = scodigo.PadLeft(5, '0');
                    scodigo = scodigo + "/" + ano;
                    //      ------------------------------------------------

                    var processosnumerador = db.Processos_Numerador.First(c => c.Empresa == "1" && c.Filial == "RJO");
                    processosnumerador.Empresa = "1";
                    processosnumerador.Filial = "RJO";
                    processosnumerador.Numerador_Processos = scodigo;
                    db.Entry(processosnumerador).State = EntityState.Modified;
                    db.SaveChanges();

                    string sdata = String.Format("{0:dd/MM/yyyy}", DateTime.Now.Date);
                    var processoNovo = new Processo();

                    processoNovo.Codigo = scodigo;
                    processoNovo.Data = Convert.ToDateTime(sdata);
                    processoNovo.Material_Usado = Convert.ToInt16(processo.Material_Usado);
                    processoNovo.Codigo_Cliente = processo.Codigo_Cliente; ;
                    processoNovo.Tipo_Declaracao = processo.Tipo_Declaracao;
                    processoNovo.Pag_proporcional = processo.Pag_proporcional;
                    processoNovo.Contrato = processo.Contrato;
                    processoNovo.Local_Inventario = processo.Local_Inventario;
                    processoNovo.Empresa = "1";
                    processoNovo.Filial = "RJO";

                    db.Processos.Add(processoNovo);
                    db.SaveChanges();


                    //Grava no controle de pastas
                    var controle = new Controle_Pastas();
                    controle.Empresa = "1";
                    controle.Filial = "RJO";
                    controle.Processo = scodigo;
                    controle.Usuario = User.Identity.Name.ToUpper();
                    controle.Aceite = 1;
                    controle.Data = DateTime.Now;
                    db.Controle_Pastas.Add(controle);
                    db.SaveChanges();


                    //Grava follow de abertura
                    var follow = new Followup();
                    follow.Processo = scodigo;
                    follow.Codevento = "412";
                    follow.Codobs = "0";
                    follow.Data = Convert.ToDateTime(DateTime.Now.ToString("dd/MM/yyyy"));
                    follow.Hora = DateTime.Now.ToString("HH:mm");
                    follow.Usuario = User.Identity.Name.ToUpper();


                    //Verifica se o cliente tem faturamento, se não tiver enviar email para financeiro.
                    var parametrosfaturamento = db.Parametros_Faturamento.FirstOrDefault(c => c.ATIVO == 1 && c.Importador == processo.Importador);
                    if (parametrosfaturamento == null)
                    {
                        EnviaEmailAuto("<BR>" +
                                       "Prezado(a),<BR>" +
                                       "<BR>" +
                                       "Por meio deste, informamos que foi aberto o Processo " + scodigo +
                                       ",<BR>" +
                                       "do importador " + importador.Razao_Social + ", <BR>" +
                                       "porém não existem parâmetros de faturamento cadastrados ou ativos para esse importador.<BR><BR><BR><BR>" +
                                       "Este e-mail é automático e não necessita de resposta. <BR><BR><BR>" +
                                       "Atenciosamente,<BR><BR>" +
                                       "MS2000WEB - SISTEMA GERENCIAL ADUANEIRO<BR><BR>", "financeiro@mslogistica.com.br", "MS2000 WEB - Ausência de Parâmetros de Faturamento", "MS2000 WEB - Sistema Gerencial Aduaneiro");
                    }

                    TempData["Sucesso"] = "Processo de código <b>" + processoNovo.Codigo + "</b> gerado com sucesso!";
                    return RedirectToAction("Index");

                }

                catch (Exception ex)
                {
                    EnviaEmailAuto("Erro ao gerar Processo <br> Usuário - " + User.Identity.Name.ToUpper() + "<br> Mensagem de Erro - " + ex.Message, "mssistemas@mslogistica.com.br", "Erro de Geração Processo", "Erro de Geração de Processo");
                    TempData["Erro"] = ex.Message;
                }
            }

            // teste
            PopulateCentroCustosDropDownList(processo.Centro_Custo);
            PopulateImportadorDropDownList(processo.Importador);
            PopulateTipoProcessoDropDownList(processo.Tipo);
            PopulateTipoDeclaracaoDropDownList(processo.Tipo_Declaracao);
            //   PopulateContratoDropDownList();
            PopulateTipoUrgenciaDropDownList(processo.FK_Processos_Tipo_Urgencia);
            PopulateContratoDropDownList(processo.Importador);

            //ViewBag.Usu = User.Identity.Name.ToUpper();
            //ViewBag.Centro_Custo = processo.Centro_Custo;
            //ViewBag.Importador = db.Importadores.ToList();
            //ViewBag.Tipo = db.Tipos_de_Processos.ToList();
            //ViewBag.Tipo_Declaracao = db.TAB_TIPO_DECLARACAO.ToList();
            //ViewBag.FK_Processos_Tipo_Urgencia = db.Processos_Tipo_Urgencia.ToList();
            TempData["Erro"] = "Teste!!!";

            return View(processo);

        }

        //
        // GET: /Processos/Edit/5

        public ActionResult Edit(string id = null)
        {
            Processo processo = new Processo();
            processo = db.Processos.Where(x => x.Codigo == id).FirstOrDefault();

            if (processo == null)
            {
                return HttpNotFound();
            }

            PopulateCentroCustosDropDownList(processo.Centro_Custo);
            PopulateImportadorDropDownList(processo.Importador);
            PopulateTipoProcessoDropDownList(processo.Tipo);
            PopulateTipoDeclaracaoDropDownList(processo.Tipo_Declaracao);
            // PopulateContratoDropDownList();
            PopulateTipoUrgenciaDropDownList(processo.Tipo_Garantia);

            ViewBag.Usu = User.Identity.Name.ToUpper();

            return View(processo);
        }

        //
        // POST: /Processos/Edit/5

        [HttpPost]
        public ActionResult Edit(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add update logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /Processos/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /Processos/Delete/5

        [HttpPost]
        public ActionResult Delete(int id, FormCollection collection)
        {
            try
            {
                // TODO: Add delete logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }



        private void EnviaEmailAuto(string body, string para, string assunto, string titulo)
        {
            //   mensagem = string.Format("<BR>Prezado(a),<BR><BR>Por meio deste, informamos a necessidade do aceite no Controle de Atas de Reuniões<BR><BR>MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.<BR><BR><BR>Segue as informações do processo abaixo:<BR><BR><B>Tema</B>: {0} <BR><B>Responsável</B>: {1}<BR><B>Data</B>: {2}<BR><BR><BR>Este e-mail é automático e não necessita de resposta. Qualquer dúvida <BR>e/ou esclarecimento, favor entrar em contato com o responsável pela ata.<BR><BR><BR>Atenciosamente,<BR><BR>MS2000WEB - SISTEMA GERENCIAL ADUANEIRO<BR><BR>", tema, resp, data.ToString("dd/MM/yyyy"));

            // inserindo dados da reunião na tabela Email_auto 
            Email_auto novo = new Email_auto()
            {
                Programa = "SITE-MVC",
                Assunto = assunto, // "Erro de Geração de Pré Processo para Processo ",
                Titulo = titulo, // "Erro de Geração de Processo",
                Body = body,
                HTML = 1,
                De = "MS2000 <auditoria@logistic-ms.com.br>",
                Para = para, // "mssistemas@mslogistica.com.br",
                Anexo = "",
                CC = "",
                CCO = "",
                Data = DateTime.Now,
                Hora = DateTime.Now,
                Lixo = 0
            };
            db.Email_auto.Add(novo);
            db.SaveChanges();
        }

        //------------Preenche Combobox do Centro de Custos------------------------------
        private void PopulateCentroCustosDropDownList(object selectedCentroCustos = null)
        {
            var CentrosCustos = (from cc in db.Centros_Custos
                                 orderby cc.Descricao ascending
                                 select new { Codigo = cc.Codigo, Descricao = cc.Descricao }).Distinct().OrderBy(c => c.Descricao); ;
            ViewBag.Centro_Custo = new SelectList(CentrosCustos, "Codigo", "Descricao", selectedCentroCustos);
        }


        //------------Preenche Combobox do Importador------------------------------
        private void PopulateImportadorDropDownList(object selectedImportador = null)
        {
            var Importadores = (from i in db.Importadores
                                //  where i.Ativo == 1
                                where i.Filial == "RJO" && i.Empresa == "1"
                                orderby i.Razao_Social ascending
                                select new { Codigo = i.Codigo, Razao = i.Razao_Social + " - " + i.CNPJ_CPF_COMPLETO }).Distinct().OrderBy(c => c.Razao); ;
            ViewBag.Importador = new SelectList(Importadores, "Codigo", "Razao", selectedImportador);
        }

        //------------Preenche Combobox do Tipo de Processo------------------------------
        private void PopulateTipoProcessoDropDownList(object selectedTipoProcesso = null)
        {
            var TipoProcesso = (from tp in db.Tipos_de_Processos
                                where tp.Ativo == 1
                                orderby tp.DESCRICAO ascending
                                select new { Codigo = tp.CODIGO, Descricao = tp.DESCRICAO }).Distinct().OrderBy(c => c.Descricao);
            ViewBag.Tipo = new SelectList(TipoProcesso, "Codigo", "Descricao", selectedTipoProcesso);
        }


        //------------Preenche Combobox do Tipo de Ugência------------------------------
        private void PopulateTipoUrgenciaDropDownList(object selectedTipoUrgencia = null)
        {
            var TipoUrgencia = (from tu in db.Processos_Tipo_Urgencia
                                orderby tu.Sigla ascending
                                select new { PK_Tipo_Urgencia = tu.PK_Tipo_Urgencia, Sigla = tu.Sigla }).Distinct().OrderBy(c => c.Sigla);
            ViewBag.FK_Processos_Tipo_Urgencia = new SelectList(TipoUrgencia, "PK_Tipo_Urgencia", "Sigla", selectedTipoUrgencia);
        }


        //------------Preenche Combobox do Tipo de Declaração------------------------------
        private void PopulateTipoDeclaracaoDropDownList(object selectedTipoDeclaracao = null)
        {
            var TipoDeclaracao = (from td in db.TAB_TIPO_DECLARACAO
                                  orderby td.Descricao ascending
                                  select new { Codigo = td.Codigo, Descricao = td.Descricao }).Distinct().OrderBy(c => c.Descricao);
            ViewBag.Tipo_Declaracao = new SelectList(TipoDeclaracao, "Codigo", "Descricao", selectedTipoDeclaracao);
        }




        //------------Preenche Combobox do Contrato------------------------------
        //private IList<Contrato> GetContrato(string importador = null)//, string contrato = "")
        //{
        //    return db.Contratos.Where(s => s.Importador == importador && (s.Ativo == 1 || s.Contrato1 == "")).ToList();
        //    // return db.Contratos.Where(s => s.Importador == importador && (s.Ativo == 1)).ToList();
        //}

        //private void PopulateContratoDropDownList(string importador = null,object selectedContrato = null)
        //{
        //    if (importador == null)
        //    {
        //        var _contrato = (from c in db.Contratos
        //                         where c.Ativo == 1
        //                         orderby c.Descricao ascending
        //                         select new { Codigo = c.Contrato1, Descricao = c.Descricao }).Distinct().OrderBy(x => x.Descricao);
        //        ViewBag.Contrato = new SelectList(_contrato, "Codigo", "Descricao", selectedContrato);
        //    }
        //    else
        //    {
        //        var _contrato = (from c in db.Contratos
        //                         where c.Ativo == 1 && c.Importador == importador
        //                         orderby c.Descricao ascending
        //                         select new { Codigo = c.Contrato1, Descricao = c.Descricao }).Distinct().OrderBy(x => x.Descricao);
        //        ViewBag.Contrato = new SelectList(_contrato, "Codigo", "Descricao", selectedContrato);
        //    }
        //}


        [AcceptVerbs(HttpVerbs.Get)]
        public JsonResult PopulateContratoDropDownList(string imp = null, string processo = null)//, string contrato)
        {
            if (imp == null)
            {
                if (processo == null)
                {
                    var ContratoList = db.Contratos.Where(s => s.Ativo == 1).ToList();

                    var ContratoData = ContratoList.Select(m => new SelectListItem()
                    {
                        Value = m.Contrato1,
                        Text = m.Descricao.ToString(),

                    });

                    return Json(ContratoData, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    var _processo = db.Processos.Where(x => x.Codigo == processo).FirstOrDefault();

                    var ContratoList = db.Contratos.Where(s => s.Ativo == 1 && s.Importador == _processo.Importador).ToList();

                    var ContratoData = ContratoList.Select(m => new SelectListItem()
                    {
                        Value = m.Contrato1,
                        Text = m.Descricao.ToString(),

                    });

                    return Json(ContratoData, JsonRequestBehavior.AllowGet);                  
                }
            }
            else
            {
                var ContratoList = db.Contratos.Where(s => s.Importador == imp && s.Ativo == 1).ToList();

                var ContratoData = ContratoList.Select(m => new SelectListItem()
                {
                    Value = m.Contrato1,
                    Text = m.Descricao.ToString(),

                });

                return Json(ContratoData, JsonRequestBehavior.AllowGet);
            }
        }


        //------------Preenche Combobox do Local------------------------------
        //private IList<Locais_Inventario> GetLocal(string importador = null, string contrato = "")
        //{
        //    return db.Locais_Inventario.Where(s => s.Importador == importador && s.Contrato == contrato && (s.Ativo == 1 || s.Local == "")).ToList();
        //    //  return db.Contratos.Where(s => s.Importador == importador && (s.Ativo == 1)).ToList();
        //}

        [AcceptVerbs(HttpVerbs.Get)]
        public JsonResult PopulateLocalDropDownList(string imp = null, string contrato = null, string Processo = null)
        {
            if (imp == null)
            {
                if (Processo == null)
                {
                    var LocalList = db.Locais_Inventario.Where(s => s.Ativo == 1).ToList();

                    var LocalData = LocalList.Select(m => new SelectListItem()
                    {
                        Value = m.Local,
                        Text = m.Descricao.ToString(),

                    });

                    return Json(LocalData, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    var LocalList = db.Locais_Inventario.Where(s => s.Ativo == 1).ToList();

                    var LocalData = LocalList.Select(m => new SelectListItem()
                    {
                        Value = m.Local,
                        Text = m.Descricao.ToString(),

                    });

                    return Json(LocalData, JsonRequestBehavior.AllowGet);
                }
            }
            else
            {
                var LocalList = db.Locais_Inventario.Where(s => s.Importador == imp && s.Contrato == contrato && s.Ativo == 1).ToList();

                var LocalData = LocalList.Select(m => new SelectListItem()
                {
                    Value = m.Local,
                    Text = m.Descricao.ToString(),

                });

                return Json(LocalData, JsonRequestBehavior.AllowGet);
            }
        }


        //[AcceptVerbs(HttpVerbs.Get)]
        //public JsonResult VerificaReferencia(string codcli)
        //{


        //    var aux = db.Processos.FirstOrDefault(c => c.Codigo_Cliente == codcli.Trim());

        //    if (codcli == null)
        //    {
        //        return Json(new { result = false }, JsonRequestBehavior.AllowGet);
        //    }
        //    else
        //    {
        //        return Json(new { result = true }, JsonRequestBehavior.AllowGet);
        //    }
        //}



        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }



    }
}
