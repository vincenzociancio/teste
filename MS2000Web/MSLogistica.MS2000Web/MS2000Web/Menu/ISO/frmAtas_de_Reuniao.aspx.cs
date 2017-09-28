using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MSBiblioteca.BLL;
using Idioma = Resources.resxIdioma;
using System.Web.Services;
using System.Collections.Generic;
using System.IO;
using System.Text;
using System.Web;

namespace MS2000Web.Menu.ISO
{
    public class localUsuario
    {
        public string usuario { get; set; }
        public string nome_completo { get; set; }

        public localUsuario(string _usuario, string _nome_completo)
        {
            usuario = _usuario;
            nome_completo = _nome_completo;
        }
    }

    public class localImportador
    {
        public string codigo { get; set; }
        public string descricao { get; set; }

        public localImportador(string _codigo, string _descricao)
        {
            codigo = _codigo;
            descricao = _descricao;
        }
    }

    public partial class frmAtas_de_Reuniao : System.Web.UI.Page
    {
        static DataTable dtAtas;
        static DataTable dtParticipantes;
        static DataTable dtArquivos;
        static DataTable dtUsuarios;
        static string sessao_usuario;
        static int PK_Ata;

        public static string ipRemoteAddr;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CarregaIdioma();
                CarregarGrView();
                sessao_usuario = Session["Usuario"].ToString();
                ipRemoteAddr = @"//msserver01";//HttpContext.Current.Request.ServerVariables["SERVER_NAME"];          
            }
        }

        [WebMethod]
        public static List<localImportador> BuscarImportador(bool lixo)
        {
            Importador imp = new Importador();
            DataTable dt;
            List<localImportador> lista = new List<localImportador>();

            dt = imp.PreencherCombo(lixo);

            foreach (DataRow r in dt.Rows)
            {
                string text = string.Format("{0}|{1}",
                  r["Razao_Social"].ToString().ToUpper().PadRight(1, '\u00A0'),
                  r["CNPJ_CPF_COMPLETO"].ToString());
                lista.Add(new localImportador(r["codigo"].ToString(), text));
            }
            return lista;
        }

        [WebMethod]
        public static List<localUsuario> BuscarUsuario(bool lixo)
        {
            Usuario usu = new Usuario();
            //DataTable dtUsuarios;
            List<localUsuario> lista = new List<localUsuario>();

            dtUsuarios = usu.BuscarTodos(lixo);

            foreach (DataRow r in dtUsuarios.Rows)
            {
                lista.Add(new localUsuario(r["usuario"].ToString(), r["nome_completo"].ToString().ToUpper()));
            }
            return lista;
        }

        protected void CarregaIdioma()
        {
            lbFiltrarPor.Text = Idioma.filtrar_por;
            btnPesquisar.Text = Idioma.pesquisar;
            btnVoltar.Text = Idioma.voltar;
            lbTitulo.Text = Idioma.atas_de_reuniao;
            //DropDownList
            ddlOpcao.Items.Add(new ListItem(Idioma.tema.ToUpper(), "0", true));
            ddlOpcao.Items.Add(new ListItem(Idioma.responsavel.ToUpper(), "1"));
            //
            //RadioButto
            rblOpcao.Items.Add(new ListItem(Idioma.operacional, "0"));
            rblOpcao.Items.Add(new ListItem("SGI", "1"));
            rblOpcao.SelectedValue = "0";
            //
            //Modal Atas de reunião
            lbTema.Text = Idioma.tema;
            lbData.Text = Idioma.data;
            lbResponsavel.Text = Idioma.responsavel;
            lbImportador.Text = Idioma.importador;
            lbParticipante.Text = Idioma.participante;
            //
            btnEnviar.Text = Idioma.enviar;
        }

        protected void CarregarGrView()
        {
            ControleAta objAtas = new ControleAta();
            dtAtas = objAtas.Buscar();
            grvAtas.DataSource = dtAtas;
            grvAtas.DataBind();
        }

        protected void grvAtas_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = Idioma.abrir;
                e.Row.Cells[1].Text = Idioma.apagar;
                e.Row.Cells[2].Text = "Upload";
                e.Row.Cells[3].Text = Idioma.data;
                e.Row.Cells[4].Text = Idioma.tema;
            }
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            ControleAta atas = new ControleAta();
            dtAtas = atas.BuscarTema(txtParametro.Text.ToUpper(), Convert.ToInt32(rblOpcao.SelectedValue));
            grvAtas.DataSource = dtAtas;
            grvAtas.DataBind();
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            txtParametro.Text = string.Empty;
            CarregarGrView();
        }

        protected void grvAtas_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvAtas.PageIndex = e.NewPageIndex;
            grvAtas.DataSource = dtAtas;
            grvAtas.DataBind();
        }

        protected void btnApagar_Click(object sender, EventArgs e)
        {
            int codigo;
            ImageButton objbtn = sender as ImageButton;
            codigo = Convert.ToInt32(objbtn.CommandArgument.ToString());
            ControleAta ata = new ControleAta();
            if (ata.Excluir(codigo))
            {
                foreach (DataRow r in dtAtas.Rows)
                {
                    if (r["pk_Atas"].Equals(codigo))
                    {
                        r.Delete();
                        break;
                    }
                }
                dtAtas.AcceptChanges();
                grvAtas.DataSource = dtAtas;
                grvAtas.DataBind();
            }
        }

        protected void AtualizaGridView()
        {
            grvAtas.DataSource = dtAtas;
            grvAtas.DataBind();
        }

        protected void btnAtualizarGrid_Click(object sender, EventArgs e)
        {
            AtualizaGridView();
        }

        protected string PegarNomeCompleto(string fk_usuario)
        {
            string nomeCompleto = string.Empty;
            if (!string.IsNullOrEmpty(fk_usuario))
            {
                var registro = from r in dtUsuarios.AsEnumerable()
                               where r.Field<string>("usuario") == fk_usuario
                               select r;
                foreach (var item in registro)
                {
                    nomeCompleto = item["nome_completo"].ToString();
                }
            }
            return nomeCompleto;
        }

        protected void grvParticipantes_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = Idioma.apagar;
                e.Row.Cells[1].Text = Idioma.participante;
                e.Row.Cells[2].Text = Idioma.data_do_aceite;
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.Cells[1].Text = PegarNomeCompleto(e.Row.Cells[1].Text);
            }
        }

        [WebMethod]
        public static Tuple<ControleAta, string> BuscarAtas(int pk_atas)
        {
            // Dados da Ata
            var registro = from r in dtAtas.AsEnumerable()
                           where r.Field<int>("pk_atas") == pk_atas
                           select r;
            ControleAta a = new ControleAta();
            string dt = string.Empty;
            foreach (var item in registro)
            {
                a.PKAtas = (int)item["pk_atas"];
                a.Tema = item["tema"].ToString().ToUpper();
                dt = Convert.ToDateTime(item["Data"]).ToString("dd/MM/yyyy");
                a.FKImportador = item["fk_importador"].ToString();
                a.FKUsuario = item["fk_usuario"].ToString();
                a.Tipo = (int)item["tipo"];
            }
            //---
            // Retornando...
            return Tuple.Create(a, dt);
        }

        [WebMethod]
        public static int Incluir(ControleAta arg)
        {
            int pk = 0;
            ControleAta at = new ControleAta();
            pk = at.Incluir(arg);
            // Atualizando tabela de atas
            DataRow dri = dtAtas.NewRow();
            dri["pk_atas"] = pk;
            dri["tema"] = arg.Tema.ToUpper();
            dri["Data"] = arg.Data;
            dri["fk_importador"] = arg.FKImportador;
            dri["fk_usuario"] = arg.FKUsuario;
            dri["tipo"] = arg.Tipo;
            dtAtas.Rows.Add(dri);
            dtAtas.AcceptChanges();

            //gravando participantes
            ControleAtaParticipante pa = new ControleAtaParticipante();
            foreach (DataRow item in dtParticipantes.Rows)
            {
                pa.FKAtas = pk;
                pa.FKUsuario = item["fk_usuario"].ToString();
                pa.Incluir(pa);
            }
            //
            return pk;
        }

        [WebMethod]
        public static bool Editar(ControleAta arg)
        {
            bool OK = false;
            ControleAta a = new ControleAta();
            try
            {
                OK = a.Alterar(arg);
                DataRow[] dra = dtAtas.Select("pk_atas = '" + arg.PKAtas + "'");
                //dra[0]["pk_atas"] = arg.PKAtas;
                dra[0]["tema"] = arg.Tema.ToUpper();
                dra[0]["Data"] = arg.Data;
                dra[0]["fk_importador"] = arg.FKImportador;
                dra[0]["fk_usuario"] = arg.FKUsuario;
                dra[0]["tipo"] = arg.Tipo;
                dtAtas.AcceptChanges();
            }
            catch
            {
                OK = false;
            }
            return OK;
        }

        // -------------------------Participantes----------------------------//

        protected void grvParticipantes_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvParticipantes.PageIndex = e.NewPageIndex;
            grvParticipantes.DataSource = dtParticipantes;
            grvParticipantes.DataBind();
        }

        [WebMethod]
        public static void BuscarParticipantes(int fk_ata)
        {
            ControleAtaParticipante pa = new ControleAtaParticipante();
            dtParticipantes = pa.BuscarPKAta(fk_ata);
        }

        protected void btnAtualizaGrvParticipantes_Click(object sender, EventArgs e)
        {
            grvParticipantes.DataSource = dtParticipantes;
            grvParticipantes.DataBind();
        }

        protected void btnApagarParticipante_Click(object sender, EventArgs e)
        {
            int codigo;
            ImageButton objbtn = sender as ImageButton;
            codigo = Convert.ToInt32(objbtn.CommandArgument.ToString());
            ControleAtaParticipante pa = new ControleAtaParticipante();
            if (pa.Excluir(codigo))
            {
                foreach (DataRow r in dtParticipantes.Rows)
                {
                    if (r["pk_atas_participante"].Equals(codigo))
                    {
                        r.Delete();
                        break;
                    }
                }
                dtParticipantes.AcceptChanges();
                grvParticipantes.DataSource = dtParticipantes;
                grvParticipantes.DataBind();
            }
        }

        public static void ShowAlertMessage(string error)
        {
            Page page = HttpContext.Current.Handler as Page;
            if (page != null)
            {
                error = error.Replace("'", "\'");
                ScriptManager.RegisterStartupScript(page, page.GetType(), "err_msg", "alert('" + error + "');", true);
            }
        }

        protected static void IncluirEmailAuto(string participante, DateTime data, string tema, string resp)
        {
            //DataTable dtUsu = new DataTable();
            Usuario usuario = new Usuario();
            
            //dtUsu = us.BuscarUsuario(participante);
            usuario = usuario.BuscarUsuario(participante);

            string mensagem = string.Format("<BR>Prezado(a),<BR><BR>Por meio deste, informamos a necessidade do aceite no Controle de Atas de Reuniões<BR><BR>MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.<BR><BR><BR>Segue as informações do processo abaixo:<BR><BR><B>Tema</B>: {0} <BR><B>Responsável</B>: {1}<BR><B>Data</B>: {2}<BR><BR><BR>Este e-mail é automático e não necessita de resposta. Qualquer dúvida <BR>e/ou esclarecimento, favor entrar em contato com o responsável pela ata.<BR><BR><BR>Atenciosamente,<BR><BR>MS2000WEB - SISTEMA GERENCIAL ADUANEIRO<BR><BR>", tema, resp, data.ToString("dd/MM/yyyy"));

            EmailAuto mail = new EmailAuto();
            mail.Programa = "CATA";
            mail.Assunto = "Controle de atas de reunião";
            mail.Titulo = "Controle de atas de reunião";
            mail.Body = mensagem;
            mail.HTML = 1;
            mail.De = "MS2000 <auditoria@logistic-ms.com.br>";
            mail.Para = usuario.Email; //dtUsu.Rows[0]["email"].ToString();
            mail.Anexo = "";
            mail.CC = "";
            mail.CCO = "";
            mail.Data = DateTime.Now;
            mail.Hora = DateTime.Now;
            if (!mail.Incluir(mail))
            {
                // erro                
                //ShowAlertMessage("teste");
            }
        }

        [WebMethod]
        public static void incluirParticipanteTemp(string participante, DateTime data, string tema, string resp)
        {
            if (dtParticipantes == null)
            {
                dtParticipantes = new DataTable();
                dtParticipantes.Columns.Add("fk_ata", Type.GetType("System.Int32"));
                dtParticipantes.Columns.Add("pk_atas_participante", Type.GetType("System.Int32"));
                dtParticipantes.Columns.Add("data_aceite", Type.GetType("System.DateTime"));
                dtParticipantes.Columns.Add("fk_usuario", Type.GetType("System.String"));
            }
            DataRow dr = dtParticipantes.NewRow();
            dr["fk_ata"] = 0;
            dr["pk_atas_participante"] = 0;
            dr["data_aceite"] = DBNull.Value;
            dr["fk_usuario"] = participante;
            dtParticipantes.Rows.Add(dr);
            dtParticipantes.AcceptChanges();
            //Enviando email auto para participante
            IncluirEmailAuto(participante, data, tema, resp);
        }

        [WebMethod]
        public static void incluirParticipante(int fk_ata, string participante, DateTime data, string tema, string resp)
        {
            ControleAtaParticipante pa = new ControleAtaParticipante();
            pa.FKAtas = fk_ata;
            pa.FKUsuario = participante;
            int pk_participante = pa.Incluir(pa);

            if (pk_participante > 0)
            {
                DataRow dr = dtParticipantes.NewRow();
                dr["fk_ata"] = fk_ata;
                dr["pk_atas_participante"] = pk_participante;
                dr["data_aceite"] = DBNull.Value;
                dr["fk_usuario"] = participante;
                dtParticipantes.Rows.Add(dr);
                dtParticipantes.AcceptChanges();
                //Enviando email auto para participante
                IncluirEmailAuto(participante, data, tema, resp);
            }
        }

        [WebMethod]
        public static void LimparTabelaParticipantes()
        {
            if (dtParticipantes != null)
                dtParticipantes.Clear();
        }

        /// <summary>
        /// Participante Aceite  
        /// </summary>
        /// <param name="pk_ata">Chave da ata</param>
        /// <returns>bool</returns>
        [WebMethod]
        public static bool Aceite(int pk_ata)
        {
            ControleAtaParticipante c = new ControleAtaParticipante();
            bool ok = c.Aceitar(pk_ata, sessao_usuario);

            if (ok)
            {
                DataRow[] dra = dtParticipantes.Select("fk_ata = '" + pk_ata + "' and fk_usuario = '" + sessao_usuario + "'");
                if (dra.Length > 0)
                {
                    dra[0]["data_aceite"] = DateTime.Now;
                    dtParticipantes.AcceptChanges();
                }
            }
            return ok;
        }

        //------------------------------Arquivos-------------------------------//

        protected void grvArquivos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvArquivos.PageIndex = e.NewPageIndex;
            grvArquivos.DataSource = dtArquivos;
            grvArquivos.DataBind();
        }

        protected void grvArquivos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            //Idiomas
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = Idioma.apagar;
                e.Row.Cells[1].Text = Idioma.descricao;
            }
            if (e.Row.RowType == DataControlRowType.DataRow)
            {

            }
        }

        protected void btnApagarArquivo_Click(object sender, EventArgs e)
        {
            int codigo;
            ImageButton objbtn = sender as ImageButton;
            codigo = Convert.ToInt32(objbtn.CommandArgument.ToString());
            ControleAtaArquivo caa = new ControleAtaArquivo();
            if (caa.Excluir(codigo))
            {
                foreach (DataRow r in dtArquivos.Rows)
                {
                    if (r["pk_atas_arquivos"].Equals(codigo))
                    {
                        r.Delete();
                        break;
                    }
                }
                dtArquivos.AcceptChanges();
                grvArquivos.DataSource = dtArquivos;
                grvArquivos.DataBind();
            }
        }

        protected void btnAbrirAtas_Click(object sender, EventArgs e)
        {
            int codigo;
            ImageButton objbtn = sender as ImageButton;
            codigo = Convert.ToInt32(objbtn.CommandArgument.ToString());
            ControleAtaArquivo caa = new ControleAtaArquivo();
            if (codigo > 0)
            {
                dtArquivos = caa.BuscarPKAta(codigo);
            }
            btnAtualizaGrvArquivos_Click(null, null);
        }

        protected void btnAtualizaGrvArquivos_Click(object sender, EventArgs e)
        {
            grvArquivos.DataSource = dtArquivos;
            grvArquivos.DataBind();
        }

        protected void btnUpload_Click(object sender, EventArgs e)
        {
            ImageButton objbtn = sender as ImageButton;
            PK_Ata = Convert.ToInt32(objbtn.CommandArgument.ToString());
        }

        protected void btnEnviar_Click(object sender, EventArgs e)
        {
            //caminho destino
            string _arquivo_nome = Path.GetFileName(fupArquivos.FileName);
            string caminho_destino = null;
            string _arquivo_tipo = Path.GetExtension(_arquivo_nome);
            if (fupArquivos.HasFile)
            {
                caminho_destino = @"\\msserver01\ArquivosUpload\ControleAta\";

                caminho_destino += DateTime.Now.Year.ToString();
                if (!Directory.Exists(caminho_destino))
                {
                    Directory.CreateDirectory(caminho_destino);
                }

                caminho_destino += @"\" + DateTime.Now.Month.ToString();
                if (!Directory.Exists(caminho_destino))
                {
                    Directory.CreateDirectory(caminho_destino);
                }

                ControleAtaArquivo ca = new ControleAtaArquivo();
                ca.FKAtas = PK_Ata;

                ca.Data = DateTime.Now;
                ca.TipoArquivo = _arquivo_tipo;
                ca.DescricaoArquivo = _arquivo_nome;
                ca.Caminho = caminho_destino.Replace(@"\\msserver01", "f:") + @"\";

                int pk_arquivo = ca.Incluir(ca);
                if (pk_arquivo > 0)
                {
                    fupArquivos.SaveAs(caminho_destino + @"\" + pk_arquivo.ToString() + _arquivo_tipo);
                    lbUpload.Text = "Upload realizado com sucesso!";
                }
                else
                {
                    lbUpload.Text = "Não foi possível realizar o upload!";
                }
            }
            else
            {
                lbUpload.Text = "Não foi possível realizar o upload!";
            }
            StringBuilder sc02 = new StringBuilder();
            sc02.Append("<script>");
            sc02.Append("$(function(){$('#avUpload').dialog('open');});");
            sc02.Append("</script>");
            Page.RegisterStartupScript("aviso", sc02.ToString());
        }
    }
}
