using System;
using System.Linq;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.ViewModels;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Net.Mail;
using System.Net;
using System.Net.Mime;
using Newtonsoft.Json;
using System.Web.Helpers;
using MSBiblioteca.MSUtil;


namespace MS2000WEB.Controllers
{
    public class PreProcessosEmailsController : Controller
    {
        private MS2000Context db = new MS2000Context();
        //
        // GET: /PreProcessosEmails/

        public ActionResult Index(int id)
        {
            
                var query = "select ppe.PK_ID, ppe.Email_De, ppe.Email_Assunto, ppe.DT_Email " +
                             " from pre_processos_emails ppe" +                             
                             " where ppe.fk_preprocesso = @id " +
                             " order by ppe.DT_Email desc ";

                var model = db.Database.SqlQuery<PreProcessosEmailsViewModel>(query, new SqlParameter("@id", id)).ToList();

                ViewBag.fk_preprocessos = id;
                return View(model);            
        }

        public ActionResult MostraDetalhe(int id)
        {            
            string Email_BodyHTML = "";
            int PK_ID = 0;
            int FK_preProcesso = 0;
            string Email_De = "";
            string Email_Para = "";
            string Email_CC = "";
            string Email_Assunto = "";
            DateTime DT_Email = DateTime.Now;      
            
                 var query = "select Case When ppea.Descricao is null then '' else ppea.Descricao End as Descricao, Case When ppea.Caminho is null then '' else ppea.Caminho End as Caminho, Case When ppea.PK_Anexos is null then '' else ppea.PK_Anexos End as PK_Anexos " +
                             " from Pre_Processos_Emails ppe " +
                             " right join Pre_Processos_Emails_Anexos ppea on ppe.PK_ID = ppea.FK_Email and ppea.CID = '' " +
                             " where ppe.PK_ID = @id  " +
                             " order by  ppea.CID, ppea.PK_Anexos ";                             

                var model = db.Database.SqlQuery<PreProcessosEmailsViewModel>(query, new SqlParameter("@id", id)).ToList();
                
                var preprocessoemail = db.Pre_Processos_Emails.Where(c => c.PK_ID == id).FirstOrDefault();               

                PK_ID = Convert.ToInt32(preprocessoemail.PK_ID);
                Email_BodyHTML = preprocessoemail.Email_BodyHTML;
                FK_preProcesso = Convert.ToInt32(preprocessoemail.FK_preProcesso);
                Email_De = preprocessoemail.Email_De;
                Email_Para = preprocessoemail.Email_Para;
                Email_CC = preprocessoemail.Email_CC;
                Email_Assunto = preprocessoemail.Email_Assunto;
                DT_Email = Convert.ToDateTime(preprocessoemail.DT_Email);

                ViewBag.DT_Email = Convert.ToString(DT_Email);
                ViewBag.Email_De = Email_De;
                ViewBag.Email_Para = Email_Para;
                ViewBag.Email_CC = Email_CC;
                ViewBag.Email_Assunto = Email_Assunto;

                ViewBag.Email_BodyHTML = Email_BodyHTML;
                ViewBag.fk_preprocessos = FK_preProcesso;
                ViewBag.PK_ID = PK_ID;
               
                return View(model);            
        }


        public ActionResult GetFile(int id = 0)
        {
            Pre_Processos_Emails_Anexos preprocessoemailanexo = db.Pre_Processos_Emails_Anexos.Find(id);
            if (preprocessoemailanexo == null)
            {
                return HttpNotFound();
            }
            string nomeDoArquivo = preprocessoemailanexo.Descricao;
            string ipRemoteAddr = HttpContext.Request.ServerVariables["SERVER_NAME"];
                        
            //codigo = pasta           
            string caminhoDoArquivo = preprocessoemailanexo.Caminho.ToString() + @"\" + preprocessoemailanexo.Descricao.ToString();
           
            return new DownloadResult { VirtualPath = GetVirtualPath(caminhoDoArquivo), FileDownloadName = nomeDoArquivo };

        }        


        private string GetVirtualPath(string physicalPath)
        {
            string rootpath = Server.MapPath("~/");

            physicalPath = physicalPath.Replace(rootpath, "");
            physicalPath = physicalPath.Replace("\\", "/");

         //   return "/" + physicalPath;
            return  physicalPath;
        }


        private class DownloadResult : ActionResult
        {
            public DownloadResult()
            {
            }

            public DownloadResult(string virtualPath)
            {
                this.VirtualPath = virtualPath;
            }

            public string VirtualPath
            {
                get;
                set;
            }

            public string FileDownloadName
            {
                get;
                set;
            }


            public override void ExecuteResult(ControllerContext context)
            {
                if (!String.IsNullOrEmpty(FileDownloadName))
                {
                    context.HttpContext.Response.AddHeader("content-disposition",
                    "attachment; filename=" + this.FileDownloadName);
                }
                                
              //  string filePath = context.HttpContext.Server.MapPath(this.VirtualPath);
                string filePath = this.VirtualPath;                
                context.HttpContext.Response.TransmitFile(filePath);                
            }
        }

        //
        // GET: /PreProcessosEmails/Details/5

        public ActionResult Details(int id)
        {
           return View();
        }

        //
        // GET: /PreProcessosEmails/Create

        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /PreProcessosEmails/Create

        [HttpPost]
        public ActionResult Create(FormCollection collection)
        {
            try
            {
                // TODO: Add insert logic here

                return RedirectToAction("Index");
            }
            catch
            {
                return View();
            }
        }

        //
        // GET: /PreProcessosEmails/Edit/5

        public ActionResult Edit(int id)
        {
            return View();
        }

        //
        // POST: /PreProcessosEmails/Edit/5

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
        // GET: /PreProcessosEmails/Delete/5

        public ActionResult Delete(int id)
        {
            return View();
        }

        //
        // POST: /PreProcessosEmails/Delete/5

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

        
    //  [HttpPost]     
        public JsonResult EncaminharEmail(int id = 0, string txtEmail = "")  
        {           
            String[] listaEmails = null;  
          //  Regex regex = new Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");
  
            //Verifica se existe uma lista e de email seprada por "," ou ";"  
            if (txtEmail.Split(';').Length > 1)
                listaEmails = txtEmail.Split(';');
            else 
            if (txtEmail.Split(',').Length > 1)
                listaEmails = txtEmail.Split(',');
            else
                listaEmails = new string [] {txtEmail};
                        
            //Valida todos emails separados por ";" ou ","  
            if (listaEmails != null )
            {
                for (int i = 0; i < listaEmails.Length; i++)
                {
                    //Match match = regex.Match(listaEmails[i].Trim());
                    //if (!(match.Success))
                    //{
                    //    ViewBag.PK_ID = id;
                    //    TempData["Erro"] = "E-mail inválido";                        
                    //    return Json(new { result = false });
                    //}

                    if (MSFuncoes.ValidaEmail(listaEmails[i].Trim()) == false)
                    {
                        ViewBag.PK_ID = id;
                        TempData["Erro"] = "E-mail inválido";                        
                        return Json(new { result = false });
                    }                    
                }
              }  

            
            // pegando email do usuário logado
            var emailusu = (from u in db.Usuarios
                                where u.Empresa == "1" && u.Filial == "RJO" && u.Usuario1 == User.Identity.Name.ToUpper()
                                select new
                                {
                                    u.Email
                                }
                                );

            string emailusuario ="";

            foreach (var item in emailusu)
            {
                emailusuario = item.Email;
            }


            MailMessage mail = new MailMessage();
            mail.From = new MailAddress(emailusuario);
            mail.IsBodyHtml = true;
            mail.To.Add(txtEmail);
            if (string.IsNullOrEmpty(txtEmail))
            {
                mail.CC.Add(emailusuario);
            }


            string ipRemoteAddr = HttpContext.Request.ServerVariables["SERVER_NAME"];

            AlternateView htmlView = null;
            LinkedResource sampleImage = null;
            

                // buscando o email
                var query1 = " select ppe.PK_ID, ppe.FK_preProcesso, ppe.Email_De, ppe.Email_Para, ppe.Email_CC, ppe.DT_Email,ppe.Email_BodyHTML, ppe.Email_Assunto, Email_BodyHTMLOriginal " +
                             " from Pre_Processos_Emails ppe " +
                             " where ppe.PK_ID = @id ";

                var model = db.Database.SqlQuery<PreProcessosEmailsViewModel>(query1, new SqlParameter("@id", id)).ToList();

                foreach (var item in model)
                {
                    mail.Subject = "ENC: " + item.Email_Assunto.ToString();
                    htmlView = AlternateView.CreateAlternateViewFromString(item.Email_BodyHTMLOriginal.ToString(), null, MediaTypeNames.Text.Html);
                }


                try
                {
                    // buscando anexos do email
                    var query2 = " select ppea.FK_Email, ppea.Descricao, ppea.Caminho, ppea.CID " +
                                 " from Pre_Processos_Emails_Anexos ppea " +
                                 " where ppea.FK_Email = @id ";

                    var model2 = db.Database.SqlQuery<PreProcessosEmailsViewModel>(query2, new SqlParameter("@id", id)).ToList();
                                        
                    foreach (var item2 in model2)
                    {
                        if (!string.IsNullOrEmpty(item2.CID.ToString()))
                        {                         
                            sampleImage = new LinkedResource(item2.Caminho.ToString() + @"\" + item2.Descricao.ToString(), MediaTypeNames.Image.Jpeg);
                            sampleImage.ContentId = item2.CID.ToString();
                            htmlView.LinkedResources.Add(sampleImage);
                        }
                        else
                        {                           
                            mail.Attachments.Add(new Attachment(item2.Caminho + @"\" + item2.Descricao.ToString()));
                        }
                    }

                    mail.AlternateViews.Add(htmlView);
                    SmtpClient smtp = new SmtpClient("msmx01.rjo-mslogistica.com.br");
                    smtp.Credentials = new NetworkCredential("ms2000@mslogistica.com.br", "ms@12345");
                    smtp.Port = 25;
                    smtp.Send(mail);

                    TempData["Sucesso"] = "E-mail encaminhado com sucesso!!!";
                }
                catch (Exception ex)
                {
                    TempData["Erro"] = "Erro ao encaminhar E-mail!!! " + ex.Message;
                    return Json(new { result = false });
                }
          
            return Json(new { result = true });    
        }


        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);            
        }

    }
}
