using MS2000WEB.Models;
using System;
using System.Data.Entity;
using System.Linq;
using System.Web.Mvc;

namespace MS2000WEB.Controllers
{
    public class ControleDeAtasDeReuniaoController : Controller
    {
        private MS2000Context db = new MS2000Context();

        //
        // GET: /AtasdeReuniao/

        public ActionResult Index(string txtTema)
        {                     

            if (!String.IsNullOrEmpty(txtTema))
            {
                var model = db.Controle_Atas.Where(c => c.lixo == 0 && c.tema.ToUpper().Contains(txtTema.ToUpper())).ToList();
                return View(model);
            }
            else
            {
                var model = db.Controle_Atas.Where(c => c.lixo == 0).ToList();
                return View(model);
            }            
        }        

        //
        // GET: /Controle_Atas/Create
        public ActionResult Create(int id = 0)
        {
            Controle_Atas controle_atas = new Controle_Atas();

            PopulateResponsavelDropDownList();
            PopulateImportadorDropDownList();            
            return View(controle_atas);
        }

        // POST: /Controle_Atas/Create
        [HttpPost]
        public ActionResult Create(Controle_Atas controle_atas, FormCollection form)
        {
            if (ModelState.IsValid)
            {
                var controleAtaNovo = new Controle_Atas();
                controleAtaNovo.tema = controle_atas.tema.ToUpper();
                controleAtaNovo.data = controle_atas.data;
                controleAtaNovo.fk_importador = controle_atas.fk_importador;
                controleAtaNovo.fk_usuario = controle_atas.fk_usuario;
                controleAtaNovo.tipo = controle_atas.tipo;
                db.Controle_Atas.Add(controleAtaNovo);
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            PopulateImportadorDropDownList();
            PopulateImportadorDropDownList();
            return View(controle_atas);
        }



        //
        // GET: /Controle_Atas/Edit/5

        public ActionResult Edit(int id = 0)
        {
            Controle_Atas controle_atas = db.Controle_Atas.Find(id);

            if (controle_atas == null)
            {
                return HttpNotFound();
            }

            if (!(controle_atas.fk_usuario.ToUpper() == User.Identity.Name.ToUpper()))
            {              
                var usuario = db.Usuarios.Where(c => c.Usuario1 == controle_atas.fk_usuario.ToUpper()).Select(x => new {NomeUsuario = x.Nome_Completo}).FirstOrDefault();                
                TempData["Erro"] = "Somente o(a) usuário(a) " + usuario.NomeUsuario + " pode alterar a Ata selecionada!!!";
                return RedirectToAction("Index");
            }
            
            PopulateResponsavelDropDownList(controle_atas.fk_usuario);
            PopulateImportadorDropDownList(controle_atas.fk_importador);
            return View(controle_atas);
        }

        //
        // POST: /Controle_Atas/Edit/5

        [HttpPost]
        public ActionResult Edit(Controle_Atas controle_atas, int id, FormCollection form)
        {
            if (ModelState.IsValid)
            {
                controle_atas.tema = controle_atas.tema.ToUpper();
                db.Entry(controle_atas).State = EntityState.Modified;
                db.SaveChanges();                
                return RedirectToAction("Index");
            }
            PopulateResponsavelDropDownList(controle_atas.fk_usuario);
            PopulateImportadorDropDownList(controle_atas.fk_importador);
            return View(controle_atas);                       
        }


        //------------Preenche Combobox do Responsável------------------------------
        private void PopulateResponsavelDropDownList(object selectedResponsavel = null)
        {
            {
                var Responsavel = (from u in db.Usuarios
                                   where u.Ativo == true
                                   orderby u.Nome_Completo
                                   select new { Usuario = u.Usuario1, Nome = u.Nome_Completo });               
                ViewBag.fk_usuario = new SelectList(Responsavel, "Usuario", "Nome", selectedResponsavel);
            }
        }


        //------------Preenche Combobox do Importador------------------------------
        private void PopulateImportadorDropDownList(object selectedImportador = null)
        {
            var Importadores = (from i in db.Importadores
                                where i.Ativo == 1
                                && i.Filial == "RJO" && i.Empresa == "1"
                                orderby i.Razao_Social
                                select new { Codigo = i.Codigo, Razao = i.Razao_Social }).Distinct().OrderBy(x => x.Razao);            
            ViewBag.fk_importador = new SelectList(Importadores, "Codigo", "Razao", selectedImportador);
        }


        //------------Preenche Combobox de Tipo de Urgencia------------------------------
        private void PopulateTipoUrgenciaDropDownList(object selectedTipoUrgencia = null)
        {
            var Urgencias = (from ptu in db.Processos_Tipo_Urgencia                               
                                orderby ptu.Sigla
                             select new { Codigo = ptu.PK_Tipo_Urgencia, Sigla = ptu.Sigla }).Distinct().OrderBy(x => x.Sigla);
            ViewBag.fk_tipourgencia = new SelectList(Urgencias, "Codigo", "Sigla", selectedTipoUrgencia);
        }
        
        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
