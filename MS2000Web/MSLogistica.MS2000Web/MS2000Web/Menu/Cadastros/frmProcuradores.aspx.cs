using System;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSBiblioteca.BLL;
using System.Data;
using System.Web.Services;
using Idioma = Resources.resxIdioma;
using MSBiblioteca.Constante;

namespace MS2000Web.Menu.Cadastros
{
    public partial class frmProcuradores : System.Web.UI.Page
    {
        public static DataTable objTable;

        Usuario objUsuario = null;        
        static bool canAlterar;
        static bool canApagar;
        static bool canIncluir;
        static bool canRelatorio;

        public frmProcuradores()
        {
            this.objUsuario = new Usuario();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                CarregandoPerfilAcesso();
                CarregaIdioma();
                CarregarGrView();
                PreencherPais();
                PreencherUF();               
            }
        }

        protected void CarregandoPerfilAcesso()
        {
            // Autorização
            canAlterar = objUsuario.AcessoOK(Operacao.Alterar, this.Page);
            canApagar = objUsuario.AcessoOK(Operacao.Apagar, this.Page);
            canIncluir = objUsuario.AcessoOK(Operacao.Incluir, this.Page);
            canRelatorio = objUsuario.AcessoAcaoEspecificaOK("Relatório de Procuradores",
                                                             "frmProcuradores.aspx",
                                                             "frmProcuradoresRelatorio");
            // controles
            btnIncluir.Enabled = canIncluir;
            btnRelatorio.Enabled = canRelatorio;
        }

        protected void PreencherPais()
        {
            SiscomexPais pais = new SiscomexPais();            
            ddlPais.DataTextField = "Descricao";
            ddlPais.DataValueField = "Codigo";
            ddlPais.DataSource = pais.Listar().DefaultView;
            ddlPais.DataBind();
            ddlPais.Items.Insert(0, "");
        }

        protected void PreencherUF()
        {
            SiscomexUF UF = new SiscomexUF();            
            ddlUF.DataTextField = "Descricao";
            ddlUF.DataValueField = "Codigo";
            ddlUF.DataSource = UF.Listar().DefaultView;
            ddlUF.DataBind();
            ddlUF.Items.Insert(0, "");
        }

        /// <summary>
        /// Carregando idioma nos componentes
        /// </summary>
        protected void CarregaIdioma()
        {
            lbNomePesq.Text = Idioma.nome;
            btnPesquisar.Text = Idioma.pesquisar;
            btnVoltar.Text = Idioma.voltar;
            lbTitulo.Text = Idioma.procuradores;
            btnIncluir.Text = Idioma.incluir;
            btnRelatorio.Text = Idioma.relatorio;

            //Modal Procuradores
            lbNome.Text = Idioma.nome_completo;
            lbEndereco.Text = Idioma.endereco;
            lbNumero.Text = Idioma.numero;
            lbComplet.Text = Idioma.complemento;
            lbTelefone.Text = Idioma.telefone;
            lbBairro.Text = Idioma.bairro;
            lbCidade.Text = Idioma.cidade;
            lbCep.Text = Idioma.cep;
            lbEstado.Text = Idioma.estado;
            lbPais.Text = Idioma.pais;
            lbRegistro.Text = Idioma.registro;
            lbMsgCheck.Text = Idioma.msg_exibe_info_complentares;
            //
        }

        protected void CarregarGrView()
        {
            Procurador objProcurador = new Procurador();
            objTable = objProcurador.Buscar();
            grvProcurador.DataSource = objTable;
            grvProcurador.DataBind();
        }

        protected void PesquisarProcurador()
        {
            Procurador objProcurador = new Procurador();
            objTable = objProcurador.BuscarRazaoSocial(txtParametro.Text.ToUpper());
            grvProcurador.DataSource = objTable;
            grvProcurador.DataBind();
        }

        protected void btnPesquisar_Click(object sender, EventArgs e)
        {
            PesquisarProcurador();
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            txtParametro.Text = string.Empty;
            CarregarGrView();
        }

        protected void grvProcurador_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grvProcurador.PageIndex = e.NewPageIndex;
            grvProcurador.DataSource = objTable;
            grvProcurador.DataBind();
        }

        protected void btnApagar_Click(object sender, EventArgs e)
        {
            string codigo = string.Empty;

            ImageButton objbtn = sender as ImageButton;
            codigo = objbtn.CommandArgument.ToString();

            Procurador pro = new Procurador();
            if (pro.Excluir(codigo))
            {
                foreach (DataRow r in objTable.Rows)
                {
                    if (r["Codigo"].Equals(codigo))
                    {
                        r.Delete();
                        break;
                    }
                }
                objTable.AcceptChanges();
                grvProcurador.DataSource = objTable;
                grvProcurador.DataBind();
            }
        }

        protected void AtualizaGridView()
        {
            grvProcurador.DataSource = objTable;
            grvProcurador.DataBind();
        }

        protected void btnAtualizarGrid_Click(object sender, EventArgs e)
        {
            AtualizaGridView();
        }

        protected void grvProcurador_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.Header)
            {
                e.Row.Cells[0].Text = Idioma.abrir;
                e.Row.Cells[1].Text = Idioma.apagar;
                e.Row.Cells[3].Text = Idioma.nome_completo;
            }

            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                //Permissão para Apagar
                var imageButton = e.Row.FindControl("btnApagar") as ImageButton;
                if (imageButton == null)
                    return;
                imageButton.Enabled = canApagar;

                //Permissão para Alterar
                var imageButton2 = e.Row.FindControl("btnAbrir") as ImageButton;
                if (imageButton2 == null)
                    return;
                imageButton2.Enabled = canAlterar;
            }
        }

        [WebMethod]
        public static string Incluir(Procurador arg)
        {            
            string codigo = string.Empty;
            Procurador pro = new Procurador();
            codigo = pro.Incluir(arg);
            DataRow dri = objTable.NewRow();
            dri["Empresa"] = arg.PKEmpresa;
            dri["Filial"] = arg.PKFilial;
            dri["Codigo"] = codigo;
            dri["Razao_Social"] = arg.RazaoSocial;
            dri["Pais"] = arg.Pais;
            dri["Cgc_Cpf"] = arg.CgcCpf;
            dri["Endereco"] = arg.Endereco;
            dri["Numero"] = arg.Numero;
            dri["Complemento"] = arg.Complemento;
            dri["Bairro"] = arg.Bairro;
            dri["Cidade"] = arg.Cidade;
            dri["CEP"] = arg.CEP;
            dri["UF"] = arg.UF;
            dri["Estado"] = arg.Estado;
            dri["Registro"] = arg.Registro;
            dri["Telefone"] = arg.Telefone;
            dri["Exibe_Complementares"] = arg.ExibeComplementares;           
            objTable.Rows.Add(dri);
            objTable.AcceptChanges();            
            return codigo;
        }

        [WebMethod]
        public static Procurador BuscarProcurador(string codigo)
        {
            var registro = from r in objTable.AsEnumerable()
                           where r.Field<string>("Codigo").Trim() == codigo.Trim()
                           select r;
            Procurador p = new Procurador();
            foreach (var item in registro)
            {
                p.RazaoSocial = item["Razao_Social"].ToString();
                p.CgcCpf = item["Cgc_Cpf"].ToString();
                p.Endereco = item["Endereco"].ToString();
                p.Numero = item["Numero"].ToString();
                p.Complemento = item["Complemento"].ToString();
                p.Telefone = item["Telefone"].ToString();
                p.Bairro = item["Bairro"].ToString();
                p.Cidade = item["Cidade"].ToString();
                p.CEP = item["CEP"].ToString();
                p.Estado = item["Estado"].ToString();
                p.UF = item["UF"].ToString();
                p.Pais = item["Pais"].ToString();
                p.Registro = item["Registro"].ToString();
                p.ExibeComplementares = (int)item["Exibe_Complementares"];
            }
            return p;
        }

        [WebMethod]
        public static bool Editar(Procurador arg)
        {
            bool OK = false;
            Procurador p = new Procurador();            
            try
            {
                OK = p.Alterar(arg);
                DataRow[] dra = objTable.Select("Codigo = '" + arg.PKCodigo + "'");
                dra[0]["Empresa"] = arg.PKEmpresa;
                dra[0]["Filial"] = arg.PKFilial;
                dra[0]["Codigo"] = arg.PKCodigo;
                dra[0]["Razao_Social"] = arg.RazaoSocial;
                dra[0]["Pais"] = arg.Pais;
                dra[0]["Cgc_Cpf"] = arg.CgcCpf;
                dra[0]["Endereco"] = arg.Endereco;
                dra[0]["Numero"] = arg.Numero;
                dra[0]["Complemento"] = arg.Complemento;
                dra[0]["Bairro"] = arg.Bairro;
                dra[0]["Cidade"] = arg.Cidade;
                dra[0]["CEP"] = arg.CEP;
                dra[0]["UF"] = arg.UF;
                dra[0]["Estado"] = arg.Estado;
                dra[0]["Registro"] = arg.Registro;
                dra[0]["Telefone"] = arg.Telefone;
                dra[0]["Exibe_Complementares"] = arg.ExibeComplementares;
                objTable.AcceptChanges();
            }
            catch
            {
                OK = false;
            }
            return OK;
        }              
        
    }
}