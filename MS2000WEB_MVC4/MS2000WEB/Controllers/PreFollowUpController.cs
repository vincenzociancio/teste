using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using MS2000WEB.Models.Security;

namespace MS2000WEB.Controllers
{  
    public class PreFollowUpController : Controller
    {
        private MS2000Context db = new MS2000Context();

        //
        // GET: /PreFollowUp/
        [MSAutorizacaoAuthorize("Tela de Pré Follow")]
        public ActionResult Index(int id)
        {            
            
                var query = "select pf.pk_codigo, pf.data as Data, pf.hora as Hora, ev.Descricao as Evento, oev.Descricao as ObsEvento " + 
                             " from pre_followup pf " + 
                             " left join eventos ev on ev.Codigo = pf.fk_evento " + 
                             " left join Obs_Eventos oev on oev.Evento = pf.fk_evento and oev.Codigo = pf.fk_observacao " + 
                             " where pf.fk_preprocesso = @id " + 
                             " order by pf.data " ;

                var model = db.Database.SqlQuery<PreFollowUpViewModel>(query, new SqlParameter("@id", id)).ToList();

                ViewBag.fk_preprocessos = id;
                return View(model);
                       
        }

        //
        // GET: /PreFollowUp/Details/5

        public ActionResult Details(int id)
        {
            return View();
        }

        //
        // GET: /PreFollowUp/Create      
        [HttpGet, MSAutorizacaoAuthorize("Cria Pré Follow")]
        public ActionResult Create(int id = 0)
        {
            Pre_Followup prefolloeup = new Pre_Followup();           
         
            ViewBag.fk_preprocessos = id;

            // Buscando todos os eventos e observacoes do Evento
            ViewBag.fk_evento = db.Eventos.Where(e => e.Ativo == 1).ToList();
          
            return View(prefolloeup);
        }

        //
        // POST: /PreFollowUp/Create        
        [HttpPost]
        public ActionResult Create(PreFollowUpMetadata model,  Pre_Followup prefollowup, int id = 0, FormCollection form = null)
        {   
            if (ModelState.IsValid)
            {

                //validando a hora            
                //if (ValidaHora(prefollowup.hora) == false)
                //{
                //    TempData["Erro"] = "Hora inválida";
                //    Pre_Followup prefolloeup = new Pre_Followup();
                //    ViewBag.fk_preprocessos = id;
                //    ViewBag.fk_evento = db.Eventos.Where(e => e.Ativo == 1).ToList();
                //    return View(prefolloeup);
                //}            

                prefollowup.usuario = User.Identity.Name.ToUpper();
                prefollowup.data = DateTime.Now.Date; //Convert.ToDateTime(DateTime.Now.ToShortDateString());
                // prefollowup.hora = Convert.ToString(DateTime.Now.Hour.ToString() + ":" + DateTime.Now.Minute.ToString());
                prefollowup.hora = Convert.ToString(DateTime.Now.Hour.ToString().PadLeft(2,'0') + ":" + DateTime.Now.Minute.ToString().PadLeft(2,'0'));                
                prefollowup.fk_preprocesso = id;
                db.Pre_Followup.Add(prefollowup);
                db.SaveChanges();

                TempData["Sucesso"] = "Registro gravado com sucesso!";
                return RedirectToAction("Index", new { id = id });
            }

            ViewBag.fk_preprocessos = id;
            ViewBag.fk_evento = db.Eventos.Where(e => e.Ativo == 1).ToList();         

            return View(prefollowup);
        }

        //
        // GET: /PreFollowUp/Edit/5      
        [HttpGet, MSAutorizacaoAuthorize("Edita Pré Follow")]
        public ActionResult Edit(int id = 0)
        {
            Pre_Followup prefollowup = db.Pre_Followup.Find(id);

            if (prefollowup == null)
            {
                return HttpNotFound();
            }


           //  validando data da inclusao se é a atual
            string datapreprocesso, dataAtual;
            dataAtual = Convert.ToString(DateTime.Now.Day + "/" + DateTime.Now.Month + "/" + DateTime.Now.Year);
            datapreprocesso = Convert.ToString(prefollowup.data);
            datapreprocesso = datapreprocesso.Substring(0, 2) + "/" + datapreprocesso.Substring(3, 2) + "/" + datapreprocesso.Substring(6, 4);

            if (Convert.ToDateTime(dataAtual) > Convert.ToDateTime(datapreprocesso))
            {              
                TempData["Erro"] = "Follow não pode ser mais alterado, pois não é mais a data atual de inclusão/alteração!";
                return RedirectToAction("Index", new { id = prefollowup.fk_preprocesso });
            }                     

            ViewBag.fk_preprocesso = id;        

            ViewBag.fk_evento = new SelectList(db.Eventos.ToList(), "Codigo", "Descricao", prefollowup.fk_evento);            

            ViewBag.fk_observacao = new SelectList(db.Obs_Eventos.Where(x=>x.Evento == prefollowup.fk_evento).ToList(), "Codigo", "Descricao", prefollowup.fk_observacao);
                        
            return View(prefollowup);
        }

        //
        // POST: /PreFollowUp/Edit/5

        [HttpPost]
        public ActionResult Edit(PreFollowUpMetadata model, Pre_Followup prefollowup, int id, FormCollection collection)
        {
            if (ModelState.IsValid)
            {
                //validando a hora            
                if (ValidaHora(prefollowup.hora) == false)
                {
                    TempData["Erro"] = "Hora inválida";
                    ViewBag.fk_preprocesso = id;
                    ViewBag.fk_evento = new SelectList(db.Eventos.ToList(), "Codigo", "Descricao", prefollowup.fk_evento);
                    ViewBag.fk_observacao = new SelectList(db.Obs_Eventos.Where(x => x.Evento == prefollowup.fk_evento).ToList(), "Codigo", "Descricao", prefollowup.fk_observacao);
                    return View(prefollowup);                    
                }       
                
                prefollowup.usuario = User.Identity.Name.ToUpper();
                db.Entry(prefollowup).State = System.Data.Entity.EntityState.Modified;
                db.SaveChanges();
                TempData["Sucesso"] = "Registro alterado com sucesso!";
                return RedirectToAction("Index", new { id = prefollowup.fk_preprocesso });
            }

            //PopulateEventosDropDownList(prefollowup.fk_evento);
            //PopulateObsEventoDropDownList(prefollowup.fk_observacao);
            ViewBag.fk_preprocesso = id;
            ViewBag.fk_evento = new SelectList(db.Eventos.ToList(), "Codigo", "Descricao", prefollowup.fk_evento);
            ViewBag.fk_observacao = new SelectList(db.Obs_Eventos.Where(x => x.Evento == prefollowup.fk_evento).ToList(), "Codigo", "Descricao", prefollowup.fk_observacao);
 

            return View(prefollowup);
        }

        //
        // GET: /PreFollowUp/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /PreFollowUp/Delete/5

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


        //------------Preenche Combobox do Evento------------------------------             
        private void PopulateEventosDropDownList(object selectedEvento = null)
        {
            var Evento = (from i in db.Eventos  where i.Ativo == 1                        
                          select new { Codigo = i.Codigo, Descricao = i.Descricao });
         
            ViewBag.fk_evento = new SelectList(Evento, "Codigo", "Descricao", selectedEvento);
        }         
        
        private IList<Obs_Eventos> GetObsEvento(string id)
        {
            return db.Obs_Eventos.Where(o => o.Evento == id && o.Ativo == 1).ToList();
        }              


        [AcceptVerbs(HttpVerbs.Get)]
        public JsonResult PopulateObsEventoDropDownList(string id)
        {
            var ObsEventoList = this.GetObsEvento(id).Where(o => o.Ativo == 1);

            var ObsEventoData = ObsEventoList.Select(m => new SelectListItem()
            {
                Value = m.Codigo,
                Text = m.Descricao.ToString(),

            });

            return Json(ObsEventoData, JsonRequestBehavior.AllowGet);
        }
        
        

        public static bool ValidaHora(string hora)
        {
            if (hora == null)
            {
                hora = "99:99";
            }
            Regex r = new Regex(@"([0-1][0-9]|2[0-3]):[0-5][0-9]");
            Match m = r.Match(hora);
            return m.Success;
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }


    }
}
