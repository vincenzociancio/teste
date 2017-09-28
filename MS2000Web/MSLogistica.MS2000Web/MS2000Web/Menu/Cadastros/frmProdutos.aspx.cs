using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using MSBiblioteca.BLL;
using System.Web.Services;
using Idioma = Resources.resxIdioma;


namespace MS2000Web.Menu.Cadastros
{
    public partial class frmProdutos : System.Web.UI.Page
    {
       static DataTable objTabela;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {   
                CarregaIdioma();
                CarregarGrdView();
            }
        }
        /// <summary>
        /// Carregando idioma nos componentes
        /// </summary>
        protected void CarregaIdioma()
        {
            lbPesqCodigo.Text = Idioma.codigo;
            lbPesqDescricao.Text = Idioma.descricao;
          //  btnPesquisar.Text = Idioma.pesquisar;
            btnVoltar.Text = Idioma.voltar;
            lbTitulo.Text = Idioma.atividade_economica;
            lbCodigo.Text = Idioma.codigo;
            lbDescricao.Text = Idioma.descricao;
            lbDescricaoIng.Text = Idioma.descricao_ing;

            //GridView
            BoundField bfDescricao = new BoundField();
            bfDescricao.DataField = Idioma.db_descricao;
            bfDescricao.HeaderText = Idioma.descricao;
            grvProdutos.Columns.Add(bfDescricao);
            //
        }

        protected void CarregarGrdView()
        {
            Produto Produtos = new Produto();
            objTabela = Produtos.Buscar();
            grvProdutos.DataSource = objTabela;
            grvProdutos.DataBind();
        }

        protected void AtualizaGridView()
        {
            grvProdutos.DataSource = objTabela;
            grvProdutos.DataBind();
        }

        protected void grvProdutos_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvProdutos.PageIndex = e.NewPageIndex;
            grvProdutos.DataSource = objTabela;
            grvProdutos.DataBind();
        }

        protected void btnApagar_Click(object sender, EventArgs e)
        {
           string codigoProdutos = string.Empty;

            ImageButton objbtn = sender as ImageButton;
            codigoProdutos = objbtn.CommandArgument.ToString();

            Produto produtos = new Produto();
         /*   if (produtos.Excluir(codigoProdutos))
            {
                foreach (DataRow r in objTabela.Rows)
                {
                    if (r["Codigo"].Equals(codigoProdutos))
                    {
                        r.Delete();
                        break;
                    }
                }
                objTabela.AcceptChanges();
                grvProdutos.DataSource = objTabela;
                grvProdutos.DataBind();
            }*/
        }

        [WebMethod]
         public static Produto BuscarProdutos(string codigo)
        {
           var registro = from r in objTabela.AsEnumerable()
                           where r.Field<string>("Codigo").Trim() == codigo.Trim()
                           select r;
            Produto c = new Produto();
            foreach (var item in registro)
            {
                c.Fabricante = item["Codigo"].ToString();
                c.Descricao = item["Descricao"].ToString();
                c.Descricao_Ing = item["descricao_ing"].ToString();
            }
            return c;
        }

        [WebMethod]
      /*  public static bool Incluir(string codigo, string descricao, string descricaoIng)
        {
            bool OK = false;
            Produto produtos = new Produto();
            produtos.PKCodigo = codigo.ToUpper();
            produtos.Descricao = descricao.ToUpper();
            produtos.DescricaoING = descricaoIng.ToUpper();
            try
            {
                OK = produtos.Incluir(produtos);
                DataRow dri = objTabela.NewRow();
                dri["Codigo"] = produtos.PKCodigo;
                dri["Descricao"] = produtos.Descricao;
                dri["descricao_ing"] = produtos.DescricaoING;
                objTabela.Rows.Add(dri);
                objTabela.AcceptChanges();
            }
            catch
            {
                OK = false;
            }
            return OK;
        }
    
        [WebMethod]
        public static bool Editar(string codigo, string descricao, string descricaoIng)
        {
           /* bool OK = false;
            Produto produtos = new Produto();
            produtos.PKCodigo = codigo.ToUpper(); ;
            produtos.Descricao = descricao.ToUpper();
            produtos.DescricaoING = descricaoIng.ToUpper();
            try
            {
                OK = produtos.Alterar(produtos);
                DataRow[] dra = objTabela.Select("Codigo = '" + produtos.PKCodigo + "'");
                dra[0]["Codigo"] = produtos.PKCodigo;
                dra[0]["Descricao"] = produtos.Descricao;
                dra[0]["descricao_ing"] = produtos.DescricaoING;
                objTabela.AcceptChanges();
            }
            catch
            {
                OK = false;
            }
            return OK;
        }*/

        protected void btnAtualizarGrid_Click(object sender, EventArgs e)
        {
            AtualizaGridView();
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            CarregarGrdView();
        }

     /* protected void btnPesquisar_Click(object sender, EventArgs e)
        {
           if ((!string.IsNullOrEmpty(txtPesqCodigo.Text)) || (!string.IsNullOrEmpty(txtPesqDescricao.Text)))
            {
                Produto produtos = new Produto();
                if (!string.IsNullOrEmpty(txtPesqDescricao.Text))
                {
                    objTabela = produtos.BuscarDescricao(txtPesqDescricao.Text.ToUpper());
                }
                else
                {
                    objTabela = produtos.BuscarCodigo(txtPesqCodigo.Text.ToUpper());
                }
                grvProdutos.DataSource = objTabela;
                grvProdutos.DataBind();
            }
        }*/

        protected void txtPesqDescricao_TextChanged(object sender, EventArgs e)
        {
            txtPesqCodigo.Text = string.Empty;
        }

        protected void txtPesqCodigo_TextChanged(object sender, EventArgs e)
        {
            txtPesqDescricao.Text = string.Empty;
        }

      

        protected void grvProdutos_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = Idioma.abrir;
                e.Row.Cells[1].Text = Idioma.apagar;
                e.Row.Cells[2].Text = Idioma.codigo;
            }
        }

  

    }
    
}