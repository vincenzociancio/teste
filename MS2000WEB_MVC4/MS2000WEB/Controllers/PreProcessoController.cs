using System;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Data.SqlClient;
using MS2000WEB.Models.Security;
using System.IO;
using System.Web;

namespace MS2000WEB.Controllers
{
    public class PreProcessoController : Controller
    {
        private MS2000Context db = new MS2000Context();

        //
        // GET: /PreProcesso/
        [MSAutorizacaoAuthorize("Tela de Pré-Processo")]
        public ActionResult Index(string txtpreprocesso = null, string fk_importador = null,
                                  string fk_tipoprocesso = null, string fk_tipodeclaracao = null,
                                  string txtrefcliente = null, string txtinvoice = null,
                                  string txtdata = null)
        {
            PopulateImportadorDropDownList();
            PopulateTipoProcessoDropDownList();
            PopulateTipoDeclaracaoDropDownList();



            var query = "select top 30 pre.pk_codigo, pre.codigo, pre.fk_importador, pre.fk_tipoprocesso as cod_tipoprocesso, " +
                         " pre.fk_tipodeclaracao as cod_tipo_declaracao, i.Razao_Social as Importador, pre.data as Data, pre.pedido_compra as PO, " +
                         " pre.invoice as Invoice, pre.packing_list as PackingList, tp.descricao as TipoProcesso, td.descricao as TipoDeclaracao, " +
                         " pre.status as Status, pre.ref_cliente as RefCliente, pre.status_classificacao " +
                         " from Pre_Processos pre " +
                         " left join Importadores i on i.Codigo = pre.fk_importador " +
                         " left join Tipos_de_Processos tp on tp.CODIGO = pre.fk_tipoprocesso " +
                         " left join TAB_TIPO_DECLARACAO td on td.Codigo = pre.fk_tipodeclaracao ";

            int adiciona = 0;

            //Busca por pre-processo
            if (!String.IsNullOrEmpty(txtpreprocesso))
            {
                query += " where pre.codigo like '%" + txtpreprocesso.ToUpper().ToString() + "%' ";
                adiciona = 1;
            }

            //Busca por Importador
            if (!String.IsNullOrEmpty(fk_importador))
            {
                if (adiciona > 0)
                {
                    query += " and pre.fk_importador = '" + fk_importador.ToString() + "' ";
                }
                else
                {
                    query += " where pre.fk_importador = '" + fk_importador.ToString() + "' ";
                    adiciona = 1;
                }
            }

            //Busca por Tipo de Processo
            if (!String.IsNullOrEmpty(fk_tipoprocesso))
            {
                if (adiciona > 0)
                {
                    query += " and pre.fk_tipoprocesso = '" + fk_tipoprocesso.ToString() + "' ";
                }
                else
                {
                    query += " where  pre.fk_tipoprocesso = '" + fk_tipoprocesso.ToString() + "' ";
                    adiciona = 1;
                }
            }

            //Busca por Tipo de Declaração
            if (!String.IsNullOrEmpty(fk_tipodeclaracao))
            {
                if (adiciona > 0)
                {
                    query += " and pre.fk_tipodeclaracao = '" + fk_tipodeclaracao.ToString() + "' ";
                }
                else
                {
                    query += " where  pre.fk_tipodeclaracao = '" + fk_tipodeclaracao.ToString() + "' ";
                    adiciona = 1;
                }
            }

            //Busca por Ref. Cliente
            if (!String.IsNullOrEmpty(txtrefcliente))
            {
                if (adiciona > 0)
                {
                    query += " and pre.ref_cliente like '%" + txtrefcliente.ToUpper().ToString() + "%' ";
                }
                else
                {
                    query += " where pre.ref_cliente like '%" + txtrefcliente.ToUpper().ToString() + "%' ";
                    adiciona = 1;
                }
            }

            //Busca por Invoice
            if (!String.IsNullOrEmpty(txtinvoice))
            {
                if (adiciona > 0)
                {
                    query += " and pre.invoice like '%" + txtinvoice.ToUpper().ToString() + "%' ";
                }
                else
                {
                    query += " where pre.invoice like '%" + txtinvoice.ToUpper().ToString() + "%' ";
                    adiciona = 1;
                }
            }

            query += " order by pre.data desc";
            //  query += " order by i.Razao_Social";

            var model = db.Database.SqlQuery<PreProcessoViewModel>(query).ToList();

            return View(model);


        }

        //
        // GET: /PreProcesso/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /PreProcesso/Create       
        [HttpGet, MSAutorizacaoAuthorize("Cria Pré Processo")]
        public ActionResult Create(int id = 0)
        {
            Pre_Processos pre_processo = new Pre_Processos();

            PopulateImportadorDropDownList();
            PopulateTipoMoedaDropDownList();
            PopulateTipoProcessoDropDownList();
            PopulateTipoDeclaracaoDropDownList();

            return View(pre_processo);
        }

        //
        // POST: /PreProcesso/Create

        [HttpPost]
        public ActionResult Create(PreProcessoMetadata metadata, Pre_Processos pre_processo)
        {
            if (ModelState.IsValid)
            {
                Decimal valor;
                //validando o valor 
                if (!(Decimal.TryParse(Convert.ToString(pre_processo.valor), out valor)))
                {
                    TempData["Erro"] = "Campo valor está inválido";
                    PopulateImportadorDropDownList(pre_processo.fk_importador);
                    PopulateTipoMoedaDropDownList(pre_processo.fk_tipomoeda);
                    PopulateTipoProcessoDropDownList(pre_processo.fk_tipoprocesso);
                    PopulateTipoDeclaracaoDropDownList(pre_processo.fk_tipodeclaracao);
                    return View(pre_processo);
                }

                if (String.IsNullOrEmpty(Convert.ToString(pre_processo.valor)))
                {
                    pre_processo.valor = 0;
                }

                // Criando e formatando um novo codigo do pre-processo                
                string scodigo = "";
                int numero = 1;// 0;
                string anoCorrente = Convert.ToString(DateTime.Now.Year);
                anoCorrente = anoCorrente.Substring(2, 2);
                string sanoCodigo = "";


                var query = "select MAX(pk_codigo) as pk_codigo, year(data) as Ano, codigo from Pre_Processos group by data, codigo ";

                var ultimocodigo = db.Database.SqlQuery<PreProcessoViewModel>(query).ToList();

                // se não existir registro, será o primeiro, senão, ver o ano, se for diferente, o mesmo voltará a ser 1, senão, pega o ultimo codigo, e incrementa mais 1
                if (ultimocodigo.Any())
                {
                    foreach (var item in ultimocodigo)
                    {
                        scodigo = item.codigo;
                        sanoCodigo = Convert.ToString(item.Ano);
                    }

                    sanoCodigo = sanoCodigo.Substring(2, 2);

                    // verificando se o ano do código é igual ao ano corrente
                    if (sanoCodigo.ToString() == anoCorrente)
                    {
                        numero = Convert.ToInt32(scodigo.Substring(0, 5));
                        numero += 1;
                    }
                }
                scodigo = Convert.ToString(numero);
                scodigo = scodigo.PadLeft(5, '0');
                scodigo = scodigo + "/" + Convert.ToString(anoCorrente);


                // -------------------------------------------------


                var preprocessoNovo = new Pre_Processos();

                preprocessoNovo.codigo = scodigo; // pre_processo.codigo;
                preprocessoNovo.data = DateTime.Now;
                preprocessoNovo.invoice = pre_processo.invoice.ToUpper();
                if (!String.IsNullOrEmpty(pre_processo.packing_list))
                {
                    preprocessoNovo.packing_list = pre_processo.packing_list.ToUpper();
                }
                if (!String.IsNullOrEmpty(pre_processo.pedido_compra))
                {
                    preprocessoNovo.pedido_compra = pre_processo.pedido_compra.ToUpper();
                }
                preprocessoNovo.fk_importador = pre_processo.fk_importador;
                preprocessoNovo.valor = pre_processo.valor;//
                preprocessoNovo.fk_tipomoeda = pre_processo.fk_tipomoeda;
                preprocessoNovo.fk_tipoprocesso = pre_processo.fk_tipoprocesso;
                preprocessoNovo.fk_tipodeclaracao = pre_processo.fk_tipodeclaracao;
                preprocessoNovo.ref_cliente = pre_processo.ref_cliente;//
                preprocessoNovo.dta = pre_processo.dta;
                preprocessoNovo.descricao = pre_processo.descricao;
                preprocessoNovo.status = "PRE-PROCESSO";//
                preprocessoNovo.status_classificacao = 0;
                preprocessoNovo.usuario = User.Identity.Name.ToUpper();

                db.Pre_Processos.Add(preprocessoNovo);
                db.SaveChanges();
                TempData["Sucesso"] = "Pré Processo de código <b>" + preprocessoNovo.codigo + "</b> gerado com sucesso!";
                return RedirectToAction("Index");
            }

            PopulateImportadorDropDownList();
            PopulateTipoMoedaDropDownList();
            PopulateTipoProcessoDropDownList();
            PopulateTipoDeclaracaoDropDownList();

            return View(pre_processo);
        }

        //
        // GET: /PreProcesso/Edit/5
        [HttpGet, MSAutorizacaoAuthorize("Edita Pré Processo")]
        public ActionResult Edit(int id = 0)
        {
            Pre_Processos preprocesso = db.Pre_Processos.Find(id);

            if (preprocesso == null)
            {
                return HttpNotFound();
            }


            if (!(preprocesso.status == "PRE-PROCESSO"))
            {
                TempData["Erro"] = "Este pré processo não pode mais ser alterado, pois já foi gerado processo ou cancelado!!!";
                //return View();
                return RedirectToAction("Index");
            }

            PopulateImportadorDropDownList(preprocesso.fk_importador);
            PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
            PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
            PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);

            return View(preprocesso);
        }

        //
        // POST: /PreProcesso/Edit/5

        [HttpPost]
        public ActionResult Edit(PreProcessoMetadata metadata, Pre_Processos preprocesso, int id, FormCollection collection)
        {
            if (ModelState.IsValid)
            {
                Decimal valor;
                if (!(Decimal.TryParse(Convert.ToString(preprocesso.valor), out valor)))
                {
                    TempData["Erro"] = "Campo valor está inválido";
                    PopulateImportadorDropDownList(preprocesso.fk_importador);
                    PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
                    PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
                    PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
                    return View(preprocesso);
                }


                if (String.IsNullOrEmpty(Convert.ToString(preprocesso.valor)))
                {
                    preprocesso.valor = 0;
                }

                preprocesso.invoice = preprocesso.invoice.ToUpper();

                if (!String.IsNullOrEmpty(preprocesso.packing_list))
                {
                    preprocesso.packing_list = preprocesso.packing_list.ToUpper();
                }
                if (!String.IsNullOrEmpty(preprocesso.pedido_compra))
                {
                    preprocesso.pedido_compra = preprocesso.pedido_compra.ToUpper();
                }

                preprocesso.usuario = User.Identity.Name.ToUpper();

                db.Entry(preprocesso).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                TempData["Sucesso"] = "Pré Processo <b>" + preprocesso.codigo + "</b> alterado com sucesso!";
                return RedirectToAction("Index");
            }

            PopulateImportadorDropDownList(preprocesso.fk_importador);
            PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
            PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
            PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
            return View(preprocesso);
        }

        //
        // GET: /PreProcesso/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /PreProcesso/Delete/5

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



        public ActionResult GerarProcesso(int id = 0)
        {
            Pre_Processos preprocesso = db.Pre_Processos.Find(id);

            if (preprocesso == null)
            {
                return HttpNotFound();
            }


            if (!(preprocesso.status == "PRE-PROCESSO"))
            {
                TempData["Erro"] = "Este pré processo não pode mais ser alterado, pois já foi gerado processo ou cancelado!!!";
                //return View();
                return RedirectToAction("Index");
            }

            PopulateImportadorDropDownList(preprocesso.fk_importador);
            PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
            PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
            PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);

            return View(preprocesso);
        }


        //  [HttpPost, ActionName("GerarProcesso")]
        //   public ActionResult GerarProcessoConfirmed(PreProcessoMetadata metadata, Pre_Processos preprocesso, int id, FormCollection collection)
        [HttpPost]
        public ActionResult GerarProcesso(PreProcessoMetadata metadata, Pre_Processos preprocesso, int id, FormCollection collection)
        {
            if (!(preprocesso.status == "PRE-PROCESSO"))
            {
                TempData["Erro"] = "Este pré processo não pode mais ser alterado, pois já foi gerado processo ou cancelado, Consulte o Administrador do Sistema!!!";
                return View(preprocesso);
                // return RedirectToAction("Index");
            }

            if ((preprocesso.fk_tipoprocesso == "22") || (preprocesso.fk_tipoprocesso == "6A"))
            {
                PopulateImportadorDropDownList(preprocesso.fk_importador);
                PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
                PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
                PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
                ViewBag.fk_preprocessos = id;

                ViewBag.fk_tipodocumento = db.Tipo_Documentos.ToList();

                //  ModelState.AddModelError("", "Este tipo de pré-processo não pode ser gerado pra processo ");
                TempData["Erro"] = "Este tipo de pré-processo não pode ser gerado pra processo!!! ";
                return View(preprocesso);
            }


            if ((preprocesso.fk_tipoprocesso == "23") || (preprocesso.fk_tipoprocesso == "RM") || (preprocesso.fk_tipoprocesso == "PD"))
            {
                PopulateImportadorDropDownList(preprocesso.fk_importador);
                PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
                PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
                PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
                ViewBag.fk_preprocessos = id;

                ViewBag.fk_tipodocumento = db.Tipo_Documentos.ToList();

                //  ModelState.AddModelError("", "Este tipo de pré-processo ainda não possui contrato ou local de inventário ");
                TempData["Erro"] = "Este tipo de processo ainda não possui contrato ou local de inventário!!! ";
                return View(preprocesso);
            }

            //if (string.IsNullOrEmpty(preprocesso.fk_importador))
            //{
            // //   ModelState.AddModelError("", "Por favor, selecione um cliente");
            //    PopulateImportadorDropDownList(preprocesso.fk_importador);
            //    PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
            //    PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
            //    PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
            //    TempData["Erro"] = "Por favor, selecione um importador!!!";
            //    return View(preprocesso);
            //}

            // verificar se importador está ativo
            Importadore importador = db.Importadores.FirstOrDefault(c => c.Codigo == preprocesso.fk_importador && c.Empresa == "1" && c.Filial == "RJO");
            if (importador.Ativo == 0)
            {
                PopulateImportadorDropDownList(preprocesso.fk_importador);
                PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
                PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
                PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
                TempData["Erro"] = "Este Importador está inativo!!!";
                return View(preprocesso);
            }

            // verificar se tem email vinculado

            //Pre_Processos_Emails preprocessosemails = db.Pre_Processos_Emails.FirstOrDefault(c => c.FK_preProcesso == preprocesso.pk_codigo);
            //if (preprocessosemails == null)
            //{
            //    PopulateImportadorDropDownList(preprocesso.fk_importador);
            //    PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
            //    PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
            //    PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
            //    TempData["Erro"] = "O Pré Processo deve ter no mínimo 1 email vinculado!!!";
            //    return View(preprocesso);
            //}


            // verificar se tem follow
            //Pre_Followup prefollow = db.Pre_Followup.FirstOrDefault(c => c.fk_preprocesso == preprocesso.pk_codigo);
            //if (prefollow == null)
            //{
            //    PopulateImportadorDropDownList(preprocesso.fk_importador);
            //    PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
            //    PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
            //    PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
            //    TempData["Erro"] = "O Pré Processo deve ter no mínimo 1 followup!!!";
            //    return View();
            //}


            // verificar se tem upload
            //Pre_Documentos predocumentos = db.Pre_Documentos.FirstOrDefault(c => c.fk_preprocesso == preprocesso.pk_codigo);
            //if (predocumentos == null)
            //{
            //    PopulateImportadorDropDownList(preprocesso.fk_importador);
            //    PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
            //    PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
            //    PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);  
            //    TempData["Erro"] = "O Pré Processo deve ter no mínimo 1 upload!!!";
            //    return View();
            //}

            if ((preprocesso.fk_tipodeclaracao == "05"))
            {
                PopulateImportadorDropDownList(preprocesso.fk_importador);
                PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
                PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
                PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);

                ViewBag.fk_preprocessos = id;

                ViewBag.fk_tipodocumento = db.Tipo_Documentos.ToList();

                //  ModelState.AddModelError("", "Este tipo de documento ainda não possui contrato ou local de inventário!");
                TempData["Erro"] = "Este tipo de documento ainda não possui contrato ou local de inventário!";

                return View(preprocesso);
            }

            if ((preprocesso.fk_tipoprocesso == "8") || (preprocesso.fk_tipoprocesso == "BT"))
            {
                preprocesso.fk_tipodeclaracao = "00";
            }
            
            
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


            //     atualizando o numerador de processos

            try
            {
                var processosnumerador = db.Processos_Numerador.First(c => c.Empresa == "1" && c.Filial == "RJO");
                processosnumerador.Empresa = "1";
                processosnumerador.Filial = "RJO";
                processosnumerador.Numerador_Processos = scodigo;
                db.Entry(processosnumerador).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();

                //      alterando o status do pre-processo para processo
                preprocesso.status = "PROCESSO";
                preprocesso.invoice = preprocesso.invoice.ToUpper();
                if (!String.IsNullOrEmpty(preprocesso.packing_list))
                {
                    preprocesso.packing_list = preprocesso.packing_list.ToUpper();
                }
                if (!String.IsNullOrEmpty(preprocesso.pedido_compra))
                {
                    preprocesso.pedido_compra = preprocesso.pedido_compra.ToUpper();
                }

                preprocesso.usuario = User.Identity.Name.ToUpper();
                db.Entry(preprocesso).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();



                //       Gerando processo
                string sdata = String.Format("{0:dd/MM/yyyy}", DateTime.Now.Date);
                var processoNovo = new Processo();

                processoNovo.Codigo = scodigo; // pre_processo.codigo;
                processoNovo.Data = Convert.ToDateTime(sdata);
                processoNovo.Importador = preprocesso.fk_importador;
                processoNovo.Tipo = preprocesso.fk_tipoprocesso;
                processoNovo.Tipo_Declaracao = preprocesso.fk_tipodeclaracao;
                processoNovo.Codigo_Cliente = preprocesso.ref_cliente;
                processoNovo.Empresa = "1";
                processoNovo.Filial = "RJO";
                db.Processos.Add(processoNovo);
                db.SaveChanges();


                //      Gerando o relacionamento entre pre processo e processo
                var processo_preprocesso = new Pre_Relacao_Processos();
                processo_preprocesso.fk_preprocesso = preprocesso.pk_codigo;
                processo_preprocesso.fk_processo = scodigo;
                db.Pre_Relacao_Processos.Add(processo_preprocesso);
                db.SaveChanges();
            }
            catch (Exception ex)
            {
                PopulateImportadorDropDownList(preprocesso.fk_importador);
                PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
                PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
                PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);

                EnviaEmailAuto("Erro ao gerar Processo através do Pré Processo! <br> Pré Processo - " + preprocesso.codigo + " <br> Usuário - " + User.Identity.Name.ToUpper() + "<br> Mensagem de Erro - " + ex.Message);
                TempData["Erro"] = ex.Message;
                return View(preprocesso);
            }


            //    Inserindo os pre follows no follows
            string codigofollow = "";
            try
            {
                var prefollowup = db.Pre_Followup.Where(c => c.fk_preprocesso == preprocesso.pk_codigo).Select(x => new { x.pk_codigo, x.fk_preprocesso, x.data, x.hora, x.fk_evento, x.fk_observacao, x.obsespecificado, x.usuario }).ToList();
                if (prefollowup.Any())
                {                    
                    Followup followup = new Followup();
                    foreach (var item in prefollowup)
                    {
                        codigofollow = Convert.ToString(item.pk_codigo);

                        followup.Processo = scodigo;
                        followup.Codevento = item.fk_evento;
                        followup.Codobs = item.fk_observacao;
                        followup.Obs_especifica = item.obsespecificado;
                        followup.Data = item.data;
                        followup.Hora = item.hora;
                        followup.Usuario = item.usuario;

                        db.Entry(followup).State = System.Data.Entity.EntityState.Added;
                    }
                    db.SaveChanges();
                }
            }
            catch (Exception ex)
            {
                PopulateImportadorDropDownList(preprocesso.fk_importador);
                PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
                PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
                PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);

                EnviaEmailAuto("Erro ao passar de Pré Followup para Followup! <br> Pré Processo - " + preprocesso.codigo + " <br> Processo - " + scodigo + " <br> Id do Followup - " + codigofollow + " <br> Usuário - " + User.Identity.Name.ToUpper() + "<br> Mensagem de Erro - " + ex.Message);
                TempData["Erro"] = ex.Message;
                return View(preprocesso);
            }

            //      Inserindo os pre uploads no uploads       
                string ipRemoteAddr = HttpContext.Request.ServerVariables["SERVER_NAME"];
                 var caminho_destino_PreUpload = "";
               //  var caminho_destino_Upload = @"//msserver01/Sistemas/MS2000/Docs/";
                 var caminho_destino_Upload = @"//" + ipRemoteAddr + "/Sistemas/MS2000/Docs/";  //VariaveisGlobais.LocalServer.ToString() + "/Sistemas/MS2000/Docs/";
                 var caminho_destino_Upload2 = "";
                 string sNumeradorDocumentos = "";
                 int iNumeradorDocumentos = 1;
                 int n,f = 0;
                 string d = "";


                 var preupload = db.Pre_Documentos.Where(c => c.fk_preprocesso == preprocesso.pk_codigo).Select(x => new { x.pk_codigo, x.fk_preprocesso, x.fk_tipodocumento, x.fk_subtipodocumento, x.numero_doc, x.pagina, x.codigo, x.arquivo, x.ftp, x.data_inclusao, x.data_envio, x.tipo_arquivo, x.descricao_arquivo, x.observacao, x.usuario, x.caminho }).ToList();
                 if (preupload.Any())
                 {
                     caminho_destino_Upload2 = caminho_destino_Upload.Replace(@"/", "\\");  // caminho_destino_Upload;
                
                     Documento documento;
                     foreach (var item in preupload)
                     {
                         try
                         {
                            documento = new Documento();
                         
                            if ((item.tipo_arquivo == ".pdf") || (item.tipo_arquivo == ".jpg") || (item.tipo_arquivo == ".jepg") )
                            {
                        
                     //        pegando o numerador dos documentos, e incrementando nos documentos 
                             Parametro parametro = db.Parametros.FirstOrDefault();

                             iNumeradorDocumentos = Convert.ToInt32(parametro.Numerador_Documentos.ToString());
                             iNumeradorDocumentos += 1;
                             sNumeradorDocumentos = Convert.ToString(iNumeradorDocumentos).PadLeft(8, '0');
                             parametro.Numerador_Documentos = sNumeradorDocumentos;
                             db.Entry(parametro).State = System.Data.Entity.EntityState.Modified;
                             db.SaveChanges();

                        //      Verificando faixa pra criar ou não uma nova pasta, pois pode-se somente ter 10000 arquivos por pasta

                             f = (iNumeradorDocumentos / 10000);
                             if (iNumeradorDocumentos % 10000 != 0)
                             {
                                 f += 1;
                             }

                             if (f >= 1 && f <= 9)
                             {
                                 d = "000" + Convert.ToString(f) + "0000";
                             }
                             else if (f >= 10 && f <= 99)
                             {
                                 d = "00" + Convert.ToString(f) + "0000";
                             }
                             else if (f >= 100 && f <= 999)
                             {
                                 d = "0" + Convert.ToString(f) + "0000";
                             }
                             else if (f >= 1000 && f <= 9999)
                             {
                                 d = "" + Convert.ToString(f) + "0000";
                             }

                             caminho_destino_Upload2 += d + "\\";
                             if (!Directory.Exists(HttpContext.Server.MapPath(caminho_destino_Upload2)))
                             {
                                 Directory.CreateDirectory(HttpContext.Server.MapPath(caminho_destino_Upload2));
                             }

                          //   caminho_destino_PreUpload  = item.caminho;
                             caminho_destino_PreUpload = item.caminho.Replace(@"F:\", "") + item.pk_codigo.ToString() + item.tipo_arquivo;

                             string rootpath = Server.MapPath("~/");
                             caminho_destino_PreUpload = caminho_destino_PreUpload.Replace(rootpath, "");
                             caminho_destino_PreUpload = caminho_destino_PreUpload.Replace("\\", "/");
                             caminho_destino_PreUpload = "/" + caminho_destino_PreUpload;

                           //  HttpPostedFileBase file = Request.Files[caminho_destino_PreUpload];

                           //  string filePath = Path.Combine(HttpContext.Server.MapPath(caminho_destino_Upload2),
                           //                                 "RJO" + sNumeradorDocumentos); // + item.descricao_arquivo); //Path.GetExtension(file.FileName));
                           //  file.SaveAs(filePath);
                             FileInfo file = new FileInfo(HttpContext.Server.MapPath(caminho_destino_PreUpload));
                             file.CopyTo(Path.Combine(caminho_destino_Upload2, "RJO" + sNumeradorDocumentos + "TESTE" + item.tipo_arquivo), true);                                         	

                             documento.Empresa = "1";
                             documento.Filial = "RJO";
                             documento.Importador = preprocesso.fk_importador;
                             documento.Processo = scodigo; //preprocesso.codigo;
                             documento.Tipo_Doc = item.fk_tipodocumento;
                             documento.Sub_Tipo_Doc = item.fk_subtipodocumento;
                             documento.Numero_Doc = item.numero_doc;
                             documento.Pagina = "1"; //item.pagina;
                             documento.Codigo = item.codigo;
                             documento.ftp = item.ftp;
                             documento.Observacoes = item.observacao;
                             documento.Data_inclusao = item.data_inclusao;
                             documento.usuario_dig = item.usuario;
                             documento.Arquivo = "RJO" + sNumeradorDocumentos;
                             documento.Codigo = "RJO" + d; //Ver como pega o código após gerar a pasta


                             if (item.tipo_arquivo == "*.pdf")
                                 documento.PDF = 1;
                             else
                                 documento.PDF = 0;

                             db.Documentos.Add(documento);
                             db.SaveChanges();
                            }

                         }
                         catch (Exception ex)
                         {
                             PopulateImportadorDropDownList(preprocesso.fk_importador);
                             PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
                             PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
                             PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
                             EnviaEmailAuto("Erro ao passar de Pré Upload  para Upload! <br> Pré Processo - " + item.codigo + " <br> Processo - " + scodigo + " <br> Id do Upload - " + item.pk_codigo + " <br> Usuário - " + User.Identity.Name.ToUpper() + "<br> Mensagem de Erro - " + ex.Message);
                             TempData["Erro"] = ex.Message;
                             return View(preprocesso);
                         }                
               
                    
                     }
                
                 }
                 
            

            //    Inserindo os pre emails vinculados no emails vinculados
            //    Observacao: ainda ser revisto
                 var preprocessoEmail = db.Pre_Processos_Emails.Where(c => c.FK_preProcesso == preprocesso.pk_codigo).Select(x => new { x.PK_ID, x.Email_ID, x.Email_De, x.Email_Para, x.Email_CC, x.Email_CCo, x.Email_Assunto, 
                                                                                                                                        x.Email_BodyHTML, x.Email_BodyTXT, x.Email_Importancia, x.DT_Email, x.DT_Cadastro, 
                                                                                                                                        x.FK_Usuario, x.Email_BodyHTMLOriginal }).ToList();


                 if (preprocessoEmail.Any())
                 {
                     Processos_Emails processosEmail; 
                     foreach (var item in preprocessoEmail)
                     {
                         try
                         {
                             processosEmail = new Processos_Emails();
                                   
                             processosEmail.FK_Processo = scodigo;
                             processosEmail.Email_ID = item.Email_ID;
                             processosEmail.Email_De = item.Email_De;
                             processosEmail.Email_Para = item.Email_Para;
                             processosEmail.Email_CC = item.Email_CC;
                             processosEmail.Email_CCo = item.Email_CC;
                             processosEmail.Email_Assunto = item.Email_Assunto;
                             processosEmail.Email_BodyHTML = item.Email_BodyHTML;
                             processosEmail.Email_BodyTXT = item.Email_BodyTXT;
                             processosEmail.Email_Importancia = item.Email_Importancia;
                             processosEmail.DT_Email = item.DT_Email;
                             processosEmail.DT_Cadastro = item.DT_Cadastro;
                             processosEmail.FK_Usuario = item.FK_Usuario;
                             processosEmail.Email_BodyHTMLOriginal = item.Email_BodyHTMLOriginal;
                             db.Processos_Emails.Add(processosEmail);
                             db.SaveChanges();
                         }
                         catch (Exception ex)
                         {
                             PopulateImportadorDropDownList(preprocesso.fk_importador);
                             PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
                             PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
                             PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
                             EnviaEmailAuto("Erro ao passar os emails vinculados do Pré Processo para Processo: <br> Pré Processo - " + preprocesso.codigo + " <br> Processo - " + scodigo  + "<br> <br> Mensagem de Erro - " + ex.Message);
                             TempData["Erro"] = ex.Message;
                             return View(preprocesso);
                         }

                         // Através do preprocessos emails, pegar os preprocessos emails em anexo(caso tenha)
                         var preprocessoEmailAnexos = db.Pre_Processos_Emails_Anexos.Where(c => c.FK_Email == item.PK_ID).Select(x => new
                         {
                             x.PK_Anexos,
                             x.FK_Email,
                             x.Descricao,
                             x.Caminho,
                             x.Tamanho,
                             x.Tipo_Anexo,
                             x.CID                                   
                         }).ToList();

                         if (preprocessoEmail.Any())
                         {
                             int codigoProcessosEmail = processosEmail.PK_ID;
                             Processos_Emails_Anexos processosEmailAnexos;
                             foreach (var itempreprocesso in preprocessoEmailAnexos)
                             {
                                 try
                                 {
                                     processosEmailAnexos = new Processos_Emails_Anexos();
                                     processosEmailAnexos.FK_Email = codigoProcessosEmail;
                                     processosEmailAnexos.Descricao = itempreprocesso.Descricao;
                                     processosEmailAnexos.Caminho = itempreprocesso.Caminho;
                                     processosEmailAnexos.Tamanho = itempreprocesso.Tamanho;
                                     processosEmailAnexos.Tipo_Anexo = itempreprocesso.Tipo_Anexo;
                                     processosEmailAnexos.CID = itempreprocesso.CID;

                                     db.Processos_Emails_Anexos.Add(processosEmailAnexos);
                                     db.SaveChanges();

                                 }
                                 catch (Exception ex)
                                 {
                                     PopulateImportadorDropDownList(preprocesso.fk_importador);
                                     PopulateTipoMoedaDropDownList(preprocesso.fk_tipomoeda);
                                     PopulateTipoProcessoDropDownList(preprocesso.fk_tipoprocesso);
                                     PopulateTipoDeclaracaoDropDownList(preprocesso.fk_tipodeclaracao);
                                     EnviaEmailAuto("Erro ao passar os anexos dos emails vinculados do Pré Processo para Processo: <br> Pré Processo - " + preprocesso.codigo + " <br> Processo - " + scodigo + " <br> Usuário: " + User.Identity.Name.ToUpper() + "<br> Mensagem de Erro - " + ex.Message);
                                     TempData["Erro"] = ex.Message;
                                     return View(preprocesso);
                                 }
                             }

                         }

                     }

                 }             


            TempData["Sucesso"] = "Pré Processo de número <b>" + preprocesso.codigo + "</b> passado para Processo, de número <b> " + scodigo + "</b> com sucesso!";
            return RedirectToAction("Index");
        }



        private void EnviaEmailAuto(string mensagem)
        {
            //   mensagem = string.Format("<BR>Prezado(a),<BR><BR>Por meio deste, informamos a necessidade do aceite no Controle de Atas de Reuniões<BR><BR>MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.<BR><BR><BR>Segue as informações do processo abaixo:<BR><BR><B>Tema</B>: {0} <BR><B>Responsável</B>: {1}<BR><B>Data</B>: {2}<BR><BR><BR>Este e-mail é automático e não necessita de resposta. Qualquer dúvida <BR>e/ou esclarecimento, favor entrar em contato com o responsável pela ata.<BR><BR><BR>Atenciosamente,<BR><BR>MS2000WEB - SISTEMA GERENCIAL ADUANEIRO<BR><BR>", tema, resp, data.ToString("dd/MM/yyyy"));

            // inserindo dados da reunião na tabela Email_auto 
            Email_auto novo = new Email_auto()
            {
                Programa = "SITE-MVC",
                Assunto = "Erro de Geração de Pré Processo para Processo ",
                Titulo = "Erro de Geração de Processo",
                Body = mensagem,
                HTML = 1,
                De = "MS2000 <auditoria@logistic-ms.com.br>",
                Para = "mssistemas@mslogistica.com.br",
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


        public ActionResult VisualizaPreProcesso(int id = 0)
        {

            var query = "select  pre.codigo, i.Razao_Social as Importador, pre.data as Data, pre.pedido_compra as PO, " +
                         " pre.invoice as Invoice, pre.packing_list as PackingList, tp.descricao as TipoProcesso, td.descricao as TipoDeclaracao, " +
                         " pre.status as Status, pre.ref_cliente as Refcliente, pre.dta as DTA, pre.descricao as Descricao, tm.DESCRICAO as TipoMoeda, pre.valor as Valor " +
                         " from Pre_Processos pre " +
                         " left join Importadores i on i.Codigo = pre.fk_importador " +
                         " left join Tipos_de_Processos tp on tp.CODIGO = pre.fk_tipoprocesso " +
                         " left join TAB_TIPO_DECLARACAO td on td.Codigo = pre.fk_tipodeclaracao " +
                         " left join TAB_MOEDA tm on tm.CODIGO = pre.fk_tipomoeda " +
                         " where pre.pk_codigo = @id ";

            var model = db.Database.SqlQuery<PreProcessoViewModel>(query, new SqlParameter("@id", id)).FirstOrDefault();

            return View(model);

        }



        //------------Preenche Combobox do Importador------------------------------
        private void PopulateImportadorDropDownList(object selectedImportador = null)
        {
            var Importadores = (from i in db.Importadores
                                //  where i.Ativo == 1
                                where i.Filial == "RJO" && i.Empresa == "1"
                                orderby i.Razao_Social ascending
                                select new { Codigo = i.Codigo, Razao = i.Razao_Social + " - " + i.CNPJ_CPF_COMPLETO }).Distinct().OrderBy(c => c.Razao); ;
            ViewBag.fk_importador = new SelectList(Importadores, "Codigo", "Razao", selectedImportador);
        }


        //------------Preenche Combobox do Tipo de Moeda------------------------------
        private void PopulateTipoMoedaDropDownList(object selectedMoeda = null)
        {
            var TipoMoeda = (from tm in db.TAB_MOEDA
                             orderby tm.DESCRICAO ascending
                             select new { Codigo = tm.CODIGO, Descricao = tm.DESCRICAO }).Distinct().OrderBy(c => c.Descricao);
            ViewBag.fk_tipomoeda = new SelectList(TipoMoeda, "Codigo", "Descricao", selectedMoeda);
        }

        //------------Preenche Combobox do Tipo de Processo------------------------------
        private void PopulateTipoProcessoDropDownList(object selectedTipoProcesso = null)
        {
            var TipoProcesso = (from tp in db.Tipos_de_Processos
                                where tp.Ativo == 1
                                orderby tp.DESCRICAO ascending
                                select new { Codigo = tp.CODIGO, Descricao = tp.DESCRICAO }).Distinct().OrderBy(c => c.Descricao);
            ViewBag.fk_tipoprocesso = new SelectList(TipoProcesso, "Codigo", "Descricao", selectedTipoProcesso);
        }


        //------------Preenche Combobox do Tipo de Declaração------------------------------
        private void PopulateTipoDeclaracaoDropDownList(object selectedTipoDeclaracao = null)
        {
            var TipoDeclaracao = (from td in db.TAB_TIPO_DECLARACAO
                                  orderby td.Descricao ascending
                                  select new { Codigo = td.Codigo, Descricao = td.Descricao }).Distinct().OrderBy(c => c.Descricao);
            ViewBag.fk_tipodeclaracao = new SelectList(TipoDeclaracao, "Codigo", "Descricao", selectedTipoDeclaracao);
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }


    }
}
