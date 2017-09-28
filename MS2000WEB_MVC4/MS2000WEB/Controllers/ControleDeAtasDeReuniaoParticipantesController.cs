using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Collections;
using Newtonsoft.Json;
using MS2000WEB.Models.Security;



namespace MS2000WEB.Controllers
{
    public class ControleDeAtasDeReuniaoParticipantesController : Controller
    {

        private MS2000Context db = new MS2000Context();

        //
        // GET: /ControleDeAtasDeReuniaoParticipantes/

        public ActionResult Index(int id = 0)
        {
            //   return View(db.Controle_Atas_Participantes.Find(id));//.ToList());

            var model = (from cap in db.Controle_Atas_Participantes
                         join u in db.Usuarios on cap.fk_usuario equals u.Usuario1
                         where cap.lixo == 0 && cap.fk_ata == id
                         select new UsuariosListViewModel
                         {
                             fk_ata = cap.fk_ata,
                             pk_atas_participante = cap.pk_atas_participante,
                             Usuario = u.Usuario1,
                             Nome_Completo = u.Nome_Completo
                         }).Distinct().ToList();

            ViewBag.fk_atas = id;
            
            //   var controle_atas_participantes = db.Controle_Atas_Participantes.Include(c => c.Controle_Atas);
            //    return View(controle_atas_participantes.ToList());
            return View(model);
        }

        //
        // GET: /ControleDeAtasDeReuniaoParticipantes/Create

        public ActionResult Create(int id = 0)
        {
            Controle_Atas_Participantes controle_atas_participantes = new Controle_Atas_Participantes();
            PopulateParticipanteDropDownList();
            ViewBag.fk_atas = id;
            return View(controle_atas_participantes);            
        }

        //
        // POST: /ControleDeAtasDeReuniaoParticipantes/Create

        [HttpPost]
        public ActionResult Create(Controle_Atas_Participantes controle_atas_participantes,  int id = 0, FormCollection form = null)
        {
            if (ModelState.IsValid)
            {
                controle_atas_participantes.fk_ata = id;
                db.Controle_Atas_Participantes.Add(controle_atas_participantes);
                db.SaveChanges();

                // processo de enviar email para o participante
                // precisa do email participante(tb usuarios), da data da reunião(tb car), do tema(car), e do responsável pela reuniao(car e usuarios)

                string emailparticipante = "";
                string tema = "";
                string resp = "";
                DateTime data = DateTime.Now ;
                
                
                // buscando email do participante
                var participante = (from cap in db.Controle_Atas_Participantes
                                    join u in db.Usuarios on cap.fk_usuario equals u.Usuario1
                                    where u.Usuario1 == controle_atas_participantes.fk_usuario && cap.fk_ata == id
                                    select new { u.Email });

                foreach (var item in participante)
                {
                    emailparticipante = item.Email;
                }
                // ------------------------------------------

                // buscando data, responsavel e tema da ata
                var ata = (from ca in db.Controle_Atas
                           join u in db.Usuarios on ca.fk_usuario equals u.Usuario1
                           where ca.pk_atas == id
                           select new { ca.data, ca.tema, u.Nome_Completo });

                foreach (var item in ata)
                {
                    resp = item.Nome_Completo;
                    tema = item.tema;
                    data = item.data;
                }
                // ------------------------------------------

                string mensagem = string.Format("<BR>Prezado(a),<BR><BR>Por meio deste, informamos a necessidade do aceite no Controle de Atas de Reuniões<BR><BR>MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.<BR><BR><BR>Segue as informações do processo abaixo:<BR><BR><B>Tema</B>: {0} <BR><B>Responsável</B>: {1}<BR><B>Data</B>: {2}<BR><BR><BR>Este e-mail é automático e não necessita de resposta. Qualquer dúvida <BR>e/ou esclarecimento, favor entrar em contato com o responsável pela ata.<BR><BR><BR>Atenciosamente,<BR><BR>MS2000WEB - SISTEMA GERENCIAL ADUANEIRO<BR><BR>", tema, resp, data.ToString("dd/MM/yyyy"));
                                
                // inserindo dados da reunião na tabela Email_auto 
                Email_auto novo = new Email_auto()
                {
                    Programa = "CATA",
                    Assunto = "Controle de atas de reunião",
                    Titulo = "Controle de atas de reunião",
                    Body = mensagem,
                    HTML = 1,
                    De = "MS2000 <auditoria@logistic-ms.com.br>",
                    Para = emailparticipante,
                    Anexo = "",
                    CC = "",
                    CCO = "",
                    Data = DateTime.Now,
                    Hora = DateTime.Now,
                    Lixo = 0
                };                
                db.Email_auto.Add(novo);                
                db.SaveChanges();

                TempData["Sucesso"] = "Participante incluído com sucesso!"; 
                return RedirectToAction("Index", new { id = id });
            }           
            return View(controle_atas_participantes);
        }

        //
        // GET: /ControleDeAtasDeReuniaoParticipantes/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /ControleDeAtasDeReuniaoParticipantes/Edit/5

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
        // GET: /ControleDeAtasDeReuniaoParticipantes/Delete/5
        [MSAutorizacaoAuthorize("Controle de Atas de Reunião - Deleta Participantes")]
        public ActionResult Delete(int id = 0)
        {
            Controle_Atas_Participantes controle_atas_participantes = db.Controle_Atas_Participantes.Find(id);
            if (controle_atas_participantes == null)
            {
                return HttpNotFound();
            }
            return View(controle_atas_participantes);
        }

        //
        // POST: /ControleDeAtasDeReuniaoParticipantes/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            Controle_Atas_Participantes controle_atas_participantes = db.Controle_Atas_Participantes.Find(id);
            db.Controle_Atas_Participantes.Remove(controle_atas_participantes);
            db.SaveChanges();
            TempData["Sucesso"] = "Participante excluído com sucesso!";
            return RedirectToAction("Index", new { id = controle_atas_participantes.fk_ata });
        }



        //------------Preenche Combobox dos Participantes------------------------------
        private void PopulateParticipanteDropDownList(object selectedParticipante = null)
        {
            {
                var Participante = (from u in db.Usuarios
                                    where u.Ativo == true
                                    orderby u.Nome_Completo
                                    select new { Usuario = u.Usuario1, Nome = u.Nome_Completo });

             //   ViewData["Participante"] = new SelectList(Participante, "fk_usuario", "Nome");
                ViewBag.fk_usuario = new SelectList(Participante, "Usuario", "Nome", selectedParticipante);

            }
        }


       
        public ActionResult AtualizaDataAceiteParticipante(int id = 0)
        {            
            Controle_Atas_Participantes controle_atas_participantes = db.Controle_Atas_Participantes.Find(id);
            if ((User.Identity.Name.ToUpper() == controle_atas_participantes.fk_usuario.ToUpper()) && controle_atas_participantes.data_aceite == null)
            {
                controle_atas_participantes.data_aceite = DateTime.Now;
                db.SaveChanges();
            }
            return RedirectToAction("Index", new { id = controle_atas_participantes.fk_ata });
        }


        



    }
}
