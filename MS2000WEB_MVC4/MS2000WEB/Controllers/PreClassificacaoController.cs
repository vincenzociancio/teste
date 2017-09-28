using System;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using MS2000WEB.Models;
using System.Data.SqlClient;
using System.IO;
using System.Web.UI.WebControls;
using System.Web.UI;
using Bytescout.Spreadsheet;


namespace MS2000WEB.Controllers
{
    public class PreClassificacaoController : Controller
    {
        private MS2000Context db = new MS2000Context();

        public ActionResult Index(int id = 0, int? statusclassificacao = null, string fk_importador = null)
        {
            ViewBag.id_preprocessos = id;
            ViewBag.fk_importador = fk_importador;
            ViewBag.status_classificacao = statusclassificacao;
            if (statusclassificacao != 0)
            {
                return RedirectToAction("IndexItens", new { id = id, statusClassificacao = statusclassificacao });
            }
            return View();
        }

        [HttpPost]
        public ActionResult ConfirmarImportacao(HttpPostedFileBase file, int pk_preprocesso = 0, string fk_importador = null, int? statusClassificacao = null)
        {
            try
            {
                string filePath = file.FileName;

                byte[] arrFileByte = new byte[file.ContentLength];

                Stream stream = file.InputStream;

                stream.Read(arrFileByte, 0, file.ContentLength);

                Spreadsheet document = new Spreadsheet();

                document.LoadFromStream(stream);

                Worksheet worksheet = document.Workbook.Worksheets[0];

                Session["dados"] = (Worksheet)worksheet;

                string row = worksheet.UsedRangeRowMax.ToString();
                string col = Convert.ToString(worksheet.UsedRangeColumnMax + 1);

                TempData["Sucesso"] = string.Format("<p>A planilha foi importada com <b>{0}</b> linha(s) e <b>{1}</b> coluna(s), pressione o botão <b>''Confirmar''</b> para gravar os dados e prosseguir com a classificação.</p>",
                row, col);

                var sql = "select l.Id, l.Nome from Pre_Classificacao_Layout l " +
                    "inner join Pre_Classificacao_Importador_Layout il on (il.Fk_Layout = l.Id)And(il.Fk_Importador = @fk_importador)";

                var _layout_Importadores = db.Database.SqlQuery<Pre_Classificacao_Layout>(sql, new SqlParameter("@fk_importador", fk_importador)).ToList();

                // Atribuição ViewBag
                ViewBag.Layout = new SelectList(_layout_Importadores, "Id", "Nome");
                ViewBag.id_preprocessos = pk_preprocesso;
                ViewBag.fk_importador = fk_importador;
                ViewBag.status_classificacao = statusClassificacao;
                //**************************

                return View(worksheet);
            }
            catch (Exception ex)
            {
                TempData["Erro"] = "Erro: " + ex.Message;
                return View();
            }
        }

        [HttpPost]
        public ActionResult GravarDadosImportados(int layout = 0, int pk_preprocesso = 0, string fk_importador = null)
        {
            try
            {
                if (layout <= 0)
                {
                    ModelState.AddModelError("", "Layout do cliente é obrigatório.");                    
                    ViewBag.id_preprocessos = pk_preprocesso;
                    ViewBag.status_classificacao = 0;
                    ViewBag.fk_importador = fk_importador;

                    //melhorar depois
                    var sql = "select l.Id, l.Nome from Pre_Classificacao_Layout l " +
                               "inner join Pre_Classificacao_Importador_Layout il on (il.Fk_Layout = l.Id)And(il.Fk_Importador = @fk_importador)";

                    var _layout_Importadores = db.Database.SqlQuery<Pre_Classificacao_Layout>(sql, new SqlParameter("@fk_importador", fk_importador)).ToList();

                    // Atribuição ViewBag
                    ViewBag.Layout = new SelectList(_layout_Importadores, "Id", "Nome");

                    Worksheet session01 = (Worksheet)Session["dados"];
                    return View("ConfirmarImportacao", session01);
                }

                Worksheet worksheet = (Worksheet)Session["dados"];
                //Session.Remove("dados");

                //
                for (int linha = 0; linha <= worksheet.UsedRangeRowMax; linha++)
                {
                    if (linha != 0)
                    {
                        for (int coluna = 0; coluna <= worksheet.UsedRangeColumnMax; coluna++)
                        {
                            Cell currentCell = worksheet.Cell(linha, coluna);
                            if (currentCell.Value != null)
                            {
                                Pre_Classificacao _classificacao = new Pre_Classificacao();
                                _classificacao.Conteudo = currentCell.ToString();
                                _classificacao.Tipo = currentCell.ValueDataType.ToString().ToLower();
                                _classificacao.TipoFormato = currentCell.ValueDataTypeByNumberFormatString.ToString().ToLower();
                                _classificacao.Coluna = coluna;
                                _classificacao.Linha = linha;
                                _classificacao.FK_PreProcesso = pk_preprocesso;
                                _classificacao.FK_Layout = layout;
                                db.Entry(_classificacao).State = System.Data.Entity.EntityState.Added;
                            }
                        }
                    }
                }
                db.SaveChanges();

                Pre_Processos _preprocesso = db.Pre_Processos.FirstOrDefault(c => c.pk_codigo == pk_preprocesso);
                if (_preprocesso != null)
                {
                    _preprocesso.status_classificacao = 1;
                    db.Entry(_preprocesso).State = System.Data.Entity.EntityState.Modified;
                    db.SaveChanges();
                }
                Session.Remove("dados");
                return RedirectToAction("IndexItens", new { id = pk_preprocesso, statusClassificacao = 1 });
            }
            catch (Exception ex)
            {
                TempData["Erro"] = ex.Message;
                //melhorar depois
                var sql = "select l.Id, l.Nome from Pre_Classificacao_Layout l " +
                           "inner join Pre_Classificacao_Importador_Layout il on (il.Fk_Layout = l.Id)And(il.Fk_Importador = @fk_importador)";

                var _layout_Importadores = db.Database.SqlQuery<Pre_Classificacao_Layout>(sql, new SqlParameter("@fk_importador", fk_importador)).ToList();

                // Atribuição ViewBag
                ViewBag.Layout = new SelectList(_layout_Importadores, "Id", "Nome");
                ViewBag.id_preprocessos = pk_preprocesso;
                ViewBag.status_classificacao = 0;
                ViewBag.fk_importador = fk_importador;
                Worksheet worksheet02 = (Worksheet)Session["dados"];
                return View("ConfirmarImportacao", worksheet02);
            }
        }

        public ActionResult IndexItens(int id = 0, int statusclassificacao = 0, string descricao_ingles = null, string colunas_titulos = null)
        {
            System.Data.DataTable dataTable = null;
            try
            {
                using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MS2000Context"].ConnectionString))
                {
                    using (var cmd = new SqlCommand("SP_Classificacao_GET_PIVOT", conn))
                    {
                        conn.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@FK_PreProcesso", id);
                        cmd.Parameters.AddWithValue("@P_Exibir", 1);

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                dataTable = new System.Data.DataTable();
                                dataTable.Load(dr);
                            }
                        }
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }

            if (dataTable != null)
            {
                var _preClassificacao = db.Pre_Classificacao.FirstOrDefault(c => c.FK_PreProcesso == id);

                var _classificacaoMatriz = db.Pre_Classificacao_Matriz.Where(c => c.Fk_layout == _preClassificacao.FK_Layout && c.Exibir == true).Select(x => new { colunaExcel = x.Coluna_Excel, coluna_Descricao = x.Descricao_Coluna }).ToList();

                foreach (var col in dataTable.Columns)
                {
                    int coluna;
                    if (int.TryParse(col.ToString(), out coluna))
                    {
                        var _matriz = _classificacaoMatriz.FirstOrDefault(c => c.colunaExcel == coluna.ToString());

                        if (_matriz != null)
                        {
                            dataTable.Columns[coluna.ToString()].ColumnName = _matriz.coluna_Descricao.Trim();
                        }
                    }
                }
            }

            ViewBag.colunas_titulos = new SelectList(dataTable.Columns.Cast<System.Data.DataColumn>().Select(c => c.ColumnName).ToList(), null, null, null);
            ViewBag.id_preprocessos = id;
            ViewBag.status_classificacao = statusclassificacao;


            // Parâmetros da Pesquisa
            if (!string.IsNullOrEmpty(descricao_ingles) &&
             !string.IsNullOrEmpty(colunas_titulos))
            {
                string _parametro = "";
                if (colunas_titulos.ToLower() == "linha")
                {
                    _parametro = string.Format("Convert([{0}], 'System.String') like '%{1}%'", colunas_titulos, descricao_ingles);
                }
                else
                {
                    _parametro = string.Format("[{0}] like '%{1}%'", colunas_titulos, descricao_ingles);
                }
                System.Data.DataTable dtNew = new System.Data.DataTable();

                try
                {
                    dtNew = dataTable.Select(_parametro).CopyToDataTable();
                    return View(dtNew);
                }
                catch
                {
                    TempData["Erro"] = "Pesquisa não encontrada!";
                    return View(dataTable);
                }
            }

            return View(dataTable);
        }

        public ActionResult EditItens(int id = 0, int statusclassificacao = 0, string Linha = null)
        {
            System.Data.DataTable dataTable = null;
            try
            {
                using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MS2000Context"].ConnectionString))
                {
                    using (var cmd = new SqlCommand("SP_Classificacao_GET_PIVOT", conn))
                    {
                        conn.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@FK_PreProcesso", id);
                        cmd.Parameters.AddWithValue("@P_Exibir", 1);

                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            if (dr.HasRows)
                            {
                                dataTable = new System.Data.DataTable();
                                dataTable.Load(dr);
                            }
                        }
                    }
                }
            }
            catch (Exception)
            {
                throw;
            }

            if (dataTable != null)
            {
                var _preClassificacao = db.Pre_Classificacao.FirstOrDefault(c => c.FK_PreProcesso == id);

                var _classificacaoMatriz = db.Pre_Classificacao_Matriz.Where(c => c.Fk_layout == _preClassificacao.FK_Layout && c.Exibir == true).Select(x => new { formatacao = x.Formatacao, colunaExcel = x.Coluna_Excel, coluna_Descricao = x.Descricao_Coluna }).ToList();

                foreach (var col in dataTable.Columns)
                {
                    int coluna;
                    if (int.TryParse(col.ToString(), out coluna))
                    {
                        var _matriz = _classificacaoMatriz.FirstOrDefault(c => c.colunaExcel == coluna.ToString());

                        if (_matriz != null)
                        {
                            dataTable.Columns[coluna.ToString()].ColumnName = _matriz.formatacao.ToString() + _matriz.coluna_Descricao.Trim();
                        }
                    }
                }
            }

            // Buscando o importador da classificacao/pre processo
           // var _importador = db.Pre_Processos.Where(c => c.pk_codigo == id).Select(x => new { x.fk_importador }).FirstOrDefault();

           // ViewBag.id_importador = _importador.fk_importador;
            ViewBag.id_preprocesso = id;
            ViewBag.status_classificacao = statusclassificacao;

            return View(dataTable.Select("Linha = " + Linha).CopyToDataTable());
        }

        [HttpPost]
        public ActionResult EditItens(int id = 0, FormCollection form = null)
        {
            var _preClassificacao = db.Pre_Classificacao.FirstOrDefault(c => c.FK_PreProcesso == id);

            var _classificacaoMatriz = db.Pre_Classificacao_Matriz.Where(c => c.Fk_layout == _preClassificacao.FK_Layout && c.Exibir == true).Select(x => new { colunaExcel = x.Coluna_Excel, coluna_Descricao = x.Descricao_Coluna, formatacao = x.Formatacao }).ToList();

            var query = "SELECT pc.ID, pc.FK_PreProcesso, pc.FK_Layout, pc.Linha, pc.Coluna, pc.Tipo, pc.TipoFormato, pc.Conteudo from " +
                        "Pre_Classificacao_Matriz pm " +
                        "INNER JOIN Pre_Classificacao pc " +
                        "ON (pm.Coluna_Excel = PC.Coluna) AND (pm.Fk_layout = pc.FK_Layout) AND (pm.Exibir = 1) " +
                        "AND(pc.FK_PreProcesso = @Fk_PreProcesso) and (pc.Linha = @Linha) AND (pm.Fk_layout = @Fk_Layout)";

            var _preclassificacao = db.Database.SqlQuery<Pre_Classificacao>(query,
                new SqlParameter("@Fk_PreProcesso", id),
                new SqlParameter("@Linha", Convert.ToInt32(form["Linha"].ToString())),
                new SqlParameter("@Fk_Layout", _preClassificacao.FK_Layout)).ToList();

            foreach (var key in form.Keys)
            {
                var _value = form[key.ToString()];

                var _matriz = _classificacaoMatriz.FirstOrDefault(c => c.coluna_Descricao.ToLower().Trim() == key.ToString().ToLower().Trim());

                if (_matriz != null)
                {
                    Pre_Classificacao classificacaoNew = new Pre_Classificacao();
                    classificacaoNew.FK_Layout = _preClassificacao.FK_Layout;
                    classificacaoNew.FK_PreProcesso = id;
                    classificacaoNew.Linha = Convert.ToInt32(form["Linha"].ToString());
                    classificacaoNew.Tipo = "string";
                    classificacaoNew.TipoFormato = "general";
                    classificacaoNew.Coluna = Convert.ToInt32(_matriz.colunaExcel.ToString());
                    classificacaoNew.Conteudo = _value.ToString();

                    Pre_Classificacao classificacaoOld = new Pre_Classificacao();

                    classificacaoOld = _preclassificacao.Where(c => c.Coluna == classificacaoNew.Coluna).FirstOrDefault();

                    if (classificacaoOld == null && !string.IsNullOrEmpty(classificacaoNew.Conteudo))
                    {
                        db.Pre_Classificacao.Add(classificacaoNew);
                        db.SaveChanges();
                    }
                    else
                        //    if (string.IsNullOrEmpty(classificacaoNew.Conteudo))
                        if (string.IsNullOrEmpty(classificacaoNew.Conteudo) && (classificacaoOld != null))
                        {
                            var sql = "delete from pre_classificacao where id = @id";
                            db.Database.ExecuteSqlCommand(sql, new SqlParameter("@id", classificacaoOld.ID));
                        }
                        else
                            //  if (classificacaoNew.Conteudo.ToLower().Trim() != classificacaoOld.Conteudo.ToLower().Trim())
                            if (classificacaoOld != null)
                            {
                                if (classificacaoNew.Conteudo.ToLower().Trim() != classificacaoOld.Conteudo.ToLower().Trim())
                                {
                                    var sql = "update pre_classificacao set conteudo = @conteudo where id = @id";
                                    db.Database.ExecuteSqlCommand(sql,
                                    new SqlParameter("@conteudo", classificacaoNew.Conteudo),
                                    new SqlParameter("@id", classificacaoOld.ID));
                                }
                            }
                }
            }

            TempData["Sucesso"] = "Registro alterado com sucesso!";
            return RedirectToAction("IndexItens", new { id = id, statusclassificacao = 0 });
        }

        public ActionResult ExportToExcel(int id = 0)
        {
            System.Data.DataTable dataTable = new System.Data.DataTable();
            try
            {
                using (var conn = new SqlConnection(System.Configuration.ConfigurationManager.ConnectionStrings["MS2000Context"].ConnectionString))
                {
                    using (var cmd = new SqlCommand("SP_Classificacao_GET_PIVOT", conn))
                    {
                        conn.Open();
                        cmd.CommandType = System.Data.CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@FK_PreProcesso", id);
                        using (SqlDataReader dr = cmd.ExecuteReader())
                        {
                            dataTable.Load(dr);
                        }
                    }
                }
            }
            catch (Exception)
            {

                throw;
            }

            var _preClassificacao = db.Pre_Classificacao.FirstOrDefault(c => c.FK_PreProcesso == id);

            var _classificacaoMatriz = db.Pre_Classificacao_Matriz.Where(c => c.Fk_layout == _preClassificacao.FK_Layout).Select(x => new { colunaExcel = x.Coluna_Excel, coluna_Descricao = x.Descricao_Coluna }).ToList();

            for (int i = 0; i < _classificacaoMatriz.Count; i++)
            {
                var _matriz = _classificacaoMatriz.FirstOrDefault(c => c.colunaExcel == i.ToString());

                if (_matriz != null)
                {
                    dataTable.Columns[_matriz.colunaExcel].ColumnName = _matriz.coluna_Descricao;
                }
            }

            dataTable.Columns.RemoveAt(0);

            var grid = new GridView();

            grid.DataSource = dataTable;
            grid.DataBind();

            Response.ClearContent();
            Response.Buffer = true;
            Response.AddHeader("content-disposition", "attachment; filename=MyExcelFile.xls");
            Response.ContentType = "application/ms-excel";

            Response.Charset = "";
            StringWriter sw = new StringWriter();
            HtmlTextWriter htw = new HtmlTextWriter(sw);

            grid.RenderControl(htw);

            Response.Output.Write(sw.ToString());
            Response.Flush();
            Response.End();
            return View();
        }

        [HttpGet]
        public JsonResult VerificarNCMComLI(string ncm)
        {
            var param = ncm.Replace(".", "").Replace("-", "");

            var _ncm = db.NCM_COM_LI.FirstOrDefault(c => c.CODNCM == param.Trim());

            if (_ncm == null)
            {
                return Json(new { result = false }, JsonRequestBehavior.AllowGet);
            }
            else
            {
                return Json(new { result = true }, JsonRequestBehavior.AllowGet);
            }
        }

        protected override void Dispose(bool disposing)
        {
            db.Dispose();
            base.Dispose(disposing);
        }
    }
}
