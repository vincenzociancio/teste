using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Web;
using System.Data.Entity;
using System.Data.SqlClient;

namespace MS2000WEB.Controllers
{
    public class DistribuicaoOperacionalController : Controller
    {
        private MS2000Context db = new MS2000Context();
        //
        // GET: /DistribuicaoOperacional/

        public ActionResult Index()
        {

            var _distribui = db.Usuarios.FirstOrDefault(c => c.Usuario1 == User.Identity.Name.ToUpper());

            if (_distribui.Distribui_processo == 0)
            {
                TempData["Erro"] = "Acesso não Permitido!";
                return  RedirectToAction("Index","home");
            }
            else
            {
                PopulateCoordenadorResponsavelDropDownList();
                PopulateSupervisorResponsavelDropDownList();
                PopulateResponsavelClienteDropDownList();
                PopulateResponsavelMSDropDownList();
                return View();
            }
        }


        private void PopulateResponsavelMSDropDownList(object selectedResponsavelMS = null)
        {
            string[] arrSetor = new string[] { "OPN", "SECR", "RECP", "VIT" };
            var ResponsavelMS = (from i in db.Usuarios
                                 where (i.Responsavel == 1 && i.Ativo == true && arrSetor.Contains(i.Setor))
                                 orderby i.Nome_Completo
                                 select new { Codigo = i.Usuario1, Descricao = i.Nome_Completo });

            ViewBag.Resp_ms = new SelectList(ResponsavelMS, "Codigo", "Descricao", selectedResponsavelMS);
        }

        private void PopulateResponsavelClienteDropDownList(object selectedResponsavelCliente = null)
        {
            var ResponsavelCliente = (from i in db.Responsaveis_por_Importador
                                      orderby i.Nome_completo
                                      select new { Codigo = i.Nome, Descricao = i.Nome_completo });

            ViewBag.Resp_Cliente = new SelectList(ResponsavelCliente, "Codigo", "Descricao", selectedResponsavelCliente);
        }

        private void PopulateSupervisorResponsavelDropDownList(object selectedSupervisorResponsavel = null)
        {
            int[] arr = new int[] { 2, 3 };
            var SupervisorResponsavel = (from i in db.Usuarios
                                         where arr.Contains(i.Hierarquia) && i.Ativo == true
                                         orderby i.Nome_Completo
                                         select new { Codigo = i.Usuario1, Descricao = i.Nome_Completo });

            ViewBag.Superv_Resp = new SelectList(SupervisorResponsavel, "Codigo", "Descricao", selectedSupervisorResponsavel);
        }

        private void PopulateCoordenadorResponsavelDropDownList(object selectedCoordenadorResponsavel = null)
        {
            int[] arr = new int[] { 2, 1 };
            string[] arrUsu = new string[] { "MANUEL", "DUDA", "MROCHA" };
            var CoordenadorResponsavel = (from i in db.Usuarios
                                          where arr.Contains(i.Hierarquia) && i.Ativo == true && !arrUsu.Contains(i.Usuario1)
                                          orderby i.Nome_Completo
                                          select new { Codigo = i.Usuario1, Descricao = i.Nome_Completo });

            ViewBag.Coord_Resp = new SelectList(CoordenadorResponsavel, "Codigo", "Descricao", selectedCoordenadorResponsavel);
        }


        [HttpGet]
        public JsonResult VerificarDistribuicao(string Processo)
        {

            var _result = AcessaPasta(Processo);

            var _distribuicao = (from p in db.Processos
                                 from i in db.Importadores
                                 where p.Importador == i.Codigo &&
                                       p.Codigo == Processo.Trim()
                                 select new
                                 {
                                     p.Responsavel_Empresa,
                                     p.Responsavel_Importador,
                                     p.Supervisor_Resp,
                                     p.Coordenador_Resp,
                                     p.Fechado,
                                     i.CNPJ_CPF_COMPLETO,
                                     i.Razao_Social
                                 }).FirstOrDefault();


            if (_distribuicao == null)
            {
                return Json(new { respms = "", respcli = "", superv = "", coord = "", imp = "", cnpj = "", msg = "<p><b>Processo não existe!</b></p>" }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                if (_distribuicao.Fechado == 1)
                {
                    //TempData["Erro"] = "Este processo está fechado!";
                    return Json(new { respms = "", respcli = "", superv = "", coord = "", imp = "", cnpj = "", msg = "<p><b>Este processo está fechado!</b></p>" }, JsonRequestBehavior.AllowGet);
                }
                else
                {
                    if (_result == false)
                    {
                       // TempData["Erro"] = "O processo não se encontra no seu controle, a tela será fechada!";
                     //   return Json(new { respms = "", respcli = "", superv = "", coord = "", imp = "", cnpj = "", msg = "<p><b>O processo não se encontra no seu controle!</b></p>", redirectTo = Url.Action("Index", "DistribuicaoOperacional") }, JsonRequestBehavior.AllowGet);
                        return Json(new { respms = "", respcli = "", superv = "", coord = "", imp = "", cnpj = "", msg = "<p><b>O processo não se encontra no seu controle!</b></p>" }, JsonRequestBehavior.AllowGet);
                    }
                    return Json(new { respms = _distribuicao.Responsavel_Empresa, respcli = _distribuicao.Responsavel_Importador, superv = _distribuicao.Supervisor_Resp, coord = _distribuicao.Coordenador_Resp, imp = _distribuicao.Razao_Social, cnpj = _distribuicao.CNPJ_CPF_COMPLETO, msg = ""}, JsonRequestBehavior.AllowGet);
                }               
            }
        }

        [HttpPost]
        public ActionResult SalvarDistribuicao(FormCollection form)
        {
            string processo = form["txtprocesso"];

            var _processo = db.Processos.FirstOrDefault(c => c.Codigo == processo.Trim());
            if (_processo != null)
            {
                _processo.Responsavel_Empresa = form["Resp_ms"];
                _processo.Responsavel_Importador = form["Resp_Cliente"];
                _processo.Supervisor_Resp = form["Superv_Resp"];
                _processo.Coordenador_Resp = form["Coord_Resp"];
                db.Entry(_processo).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                TempData["Sucesso"] = "Distribuição Salva com sucesso!";
                return View(form);
            }
            return View();
        }

        private bool AcessaPasta(string Proc)
        {
            bool Result = false;
            var _nivel = db.Usuarios.Where(x => x.Ativo == true && (x.Hierarquia == 1 || x.Nivel == "0")).ToList();
            foreach (var item in _nivel)
            {
                if (User.Identity.Name.ToUpper() == item.Usuario1.ToString())
                {
                    Result = true;
                    return Result;
                }
            }

            var _distribui = db.Usuarios.FirstOrDefault(c => c.Usuario1 == User.Identity.Name.ToUpper());

            if (_distribui.Distribui_processo == 1)
            {
                var _controle = db.Controle_Pastas.FirstOrDefault(y => y.Aceite == 1 && y.Usuario == User.Identity.Name.ToUpper() && y.Processo == Proc);
                if (_controle != null)
                {
                    Result = true;
                    return Result;
                }
            }

            return Result;
        }
        [HttpPost]
        public ActionResult GetAtualiza()
        {

            var query = "SELECT Usuarios.Nome_Completo, Usuarios.Usuario, Count(Processos.Codigo) AS ContarDeCodigo " +
                        "FROM Usuarios LEFT JOIN Processos ON Usuarios.Usuario = Processos.Responsavel_Empresa " +
                        "WHERE (((Usuarios.Nivel)>'0') AND ((Processos.Status)<'1')) " +
                        "GROUP BY Usuarios.Nome_Completo, Usuarios.Usuario " +
                        "ORDER BY Count(Processos.Codigo) ";

            var dadosUsuario = db.Database.SqlQuery<DistribuicaoOperacionalViewModel>(query).ToList();

            ViewBag.dados = dadosUsuario;

            return PartialView("ProcessosAndamento",ViewBag.dados);
           
        }
        
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
