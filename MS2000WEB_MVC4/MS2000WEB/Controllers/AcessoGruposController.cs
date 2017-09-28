using System.Collections.Generic;
using System.Linq;
using System.Web.Mvc;
using MS2000WEB.Models;
using MS2000WEB.Models.Repository;
using MS2000WEB.ViewModels;
using System.Data.SqlClient;
using System.Data.Entity;
using MS2000WEB.Models.Security;
using System;

namespace MS2000WEB.Controllers
{
    public class AcessoGruposController : Controller
    {
        private readonly IAcessoGruposRepository acessogruposRepository;        
        public AcessoGruposController()
            : this(new AcessoGruposRepository())
        {
        }

        public AcessoGruposController(IAcessoGruposRepository acessogruposRepository)
        {
            this.acessogruposRepository = acessogruposRepository;
        }

        //
        // GET: /AcessoGrupos/
        [MSAutorizacaoAuthorize("Tela de Grupos de Acesso")]
        public ViewResult Index(string nome = null)
        {
            if (string.IsNullOrEmpty(nome))
            {
                return View(acessogruposRepository.All);
            }
            else
            {
                return View(acessogruposRepository.GetGruposByNome(nome));
            }
        }

        //
        // GET: /AcessoGrupos/Create
        [HttpGet, MSAutorizacaoAuthorizeAttribute("Cria grupo de acesso")]
        public ActionResult Create()
        {
            return View();
        }

        //
        // POST: /AcessoGrupos/Create

        [HttpPost]
        public ActionResult Create(AcessoGrupos acessogrupos)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    acessogruposRepository.InsertOrUpdate(acessogrupos);
                    acessogruposRepository.Save();
                    TempData["Sucesso"] = "Registro gravado com sucesso!";
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    TempData["Erro"] = ex.Message;
                    return View();
                }
            }
            else
            {
                return View();
            }
        }

        //
        // GET: /AcessoGrupos/Edit/5
        [HttpGet, MSAutorizacaoAuthorize("Edita grupo de acesso")]
        public ActionResult Edit(int id)
        {
            return View(acessogruposRepository.Find(id));
        }

        //
        // POST: /AcessoGrupos/Edit/5

        [HttpPost]
        public ActionResult Edit(AcessoGrupos acessogrupos)
        {
            if (ModelState.IsValid)
            {
                try
                {
                    acessogruposRepository.InsertOrUpdate(acessogrupos);
                    acessogruposRepository.Save();
                    TempData["Sucesso"] = "Alteração realizada com sucesso!";
                    return RedirectToAction("Index");
                }
                catch (Exception ex)
                {
                    TempData["Erro"] = ex.Message;
                    return View();
                }                            
            }
            else
            {
                return View();
            }
        }

        //
        // GET: /AcessoGrupos/Delete/5
        [HttpGet, MSAutorizacaoAuthorize("Deleta grupo acesso")]
        public ActionResult Delete(int id)
        {
            return View(acessogruposRepository.Find(id));
        }

        //
        // POST: /AcessoGrupos/Delete/5

        [HttpPost, ActionName("Delete")]
        public ActionResult DeleteConfirmed(int id)
        {
            acessogruposRepository.Delete(id);
            acessogruposRepository.Save();

            return RedirectToAction("Index");
        }
        

        //Permissões de acesso
        [MSAutorizacaoAuthorize("Edita permissões de acesso")]
        public ActionResult EditPermisaoDeAcesso(int id = 0, string descricao = null)
        {
            try
            {
                using (MS2000Context db = new MS2000Context())
                {
                    // Buscando páginas e suas permissões
                    var query_pagina = "select p.Titulo as descricao, pg.acessa, pg.PK_PaginaGrupo as id, p.PK_AcessoPaginas from AcessoPaginas p " +
                                "inner join AcessoPaginaGrupo pg on p.PK_AcessoPaginas = pg.FK_AcessoPaginas and pg.FK_AcessoGrupo = @id ";
                    var _paginas = db.Database.SqlQuery<AcessoPaginaViewModel>(query_pagina, new SqlParameter("@id", id)).ToList();

                    // Buscando permissões de acões
                    var query_acoes = "select a.descricao, ag.acessa, ag.PK_AcaoEspecificaGrupo as id, a.FK_AcessoPaginas from AcessoAcaoEspecifica a " +
                                "inner join AcessoAcaoEspecificaGrupo ag on a.PK_AcaoEspecifica = ag.FK_AcaoEspecifica and ag.FK_Grupo = @id";
                    var _acaoes = db.Database.SqlQuery<AcessoAcaoViewModel>(query_acoes, new SqlParameter("@id", id)).ToList();

                    var _paginas_e_acoes = new List<AcessoPaginaViewModel>();

                    // Montado model
                    foreach (var pag in _paginas)
                    {
                        var temp = new AcessoPaginaViewModel();
                        temp = pag;
                        foreach (var acao in _acaoes)
                        {
                            if (pag.PK_AcessoPaginas == acao.FK_AcessoPaginas)
                            {
                                temp.Acoes.Add(acao);
                            }
                        }
                        _paginas_e_acoes.Add(temp);
                    }
                    AcessoGruposViewModel model = new AcessoGruposViewModel(id, descricao, _paginas_e_acoes);
                    return View(model);
                }
            }
            finally
            {
                //acessopaginagrupoRepository.Dispose();
                //acessoacaogrupoRepository.Dispose();
            }
        }

        [HttpPost]
        public ActionResult EditPermisaoDeAcesso(int id, AcessoGruposViewModel model = null)
        {            
            try
            {
                using (MS2000Context db = new MS2000Context())
                {
                    #region atualizando pagina

                    List<AcessoPaginaGrupo> _paginasDB = db.AcessoPaginaGrupoes.Where(c => c.FK_AcessoGrupo == id).ToList();
                    List<AcessoAcaoEspecificaGrupo> _acoesDB = db.AcessoAcaoEspecificaGrupoes.Where(c => c.FK_Grupo == id).ToList();

                    foreach (var pagina in _paginasDB)
                    {
                        var _paginaNew = model.PaginaList.Where(c => c.id == pagina.PK_PaginaGrupo).FirstOrDefault();

                        if (_paginaNew != null)
                        {
                            if (_paginaNew.acessa != pagina.Acessa)
                            {
                                pagina.Acessa = _paginaNew.acessa;
                                db.Entry(pagina).State = System.Data.Entity.EntityState.Modified;
                                db.SaveChanges();
                            }
                        }
                        ///

                        foreach (var acao in _acoesDB)
                        {
                            var _acaoNew = _paginaNew.Acoes.Where(c => c.id == acao.PK_AcaoEspecificaGrupo).FirstOrDefault();

                            if (_acaoNew != null)
                            {
                                if (_acaoNew.acessa != acao.Acessa)
                                {
                                    acao.Acessa = _acaoNew.acessa;
                                    db.Entry(acao).State = System.Data.Entity.EntityState.Modified;
                                    db.SaveChanges();
                                }
                            }
                        }

                    }
                    #endregion
                }
                TempData["Sucesso"] = "Suas alterações foram gravadas com sucesso!";
            }
            catch
            {
                TempData["Erro"] = "Ocorreu uma erro e não foi possível gravar as alterações!";
            }

            return RedirectToAction("Index");
        }


        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                acessogruposRepository.Dispose();
            }
            base.Dispose(disposing);
        }
    }
}

