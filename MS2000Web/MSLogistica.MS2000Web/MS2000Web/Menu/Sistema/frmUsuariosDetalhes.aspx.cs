using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MSBiblioteca.BLL;
using Idioma = Resources.resxIdioma;
using MSBiblioteca.Constante;
using System.Collections;

namespace MS2000Web.Menu.Sistema
{
    public partial class frmUsuariosIncluirAlterar : System.Web.UI.Page
    {
        Usuario objUsuario = null;
        UsuarioFollowLiberado followLiberado = null;
        static bool canIncluir = false;
        static bool canAlterar = false;
        protected static string id = string.Empty;

        public frmUsuariosIncluirAlterar()
        {
            this.objUsuario = new Usuario();
            this.followLiberado = new UsuarioFollowLiberado();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                id = (string)Session["idUsuario"];
                Session.Remove("idUsuario");
                if (!string.IsNullOrEmpty(id))
                {
                    //Buscando todos supervisor
                    CarregarSupervisor(true);
                    //Buscando todos Setor
                    CarregarSetor(true);
                    //Buscando Follow liberado
                    CarregarFollowLiberado(id);

                    //Buscando Usuário atual
                    //Usuario usuario = new Usuario();
                    //usuario = usuario.BuscarUsuario(id);
                    objUsuario = objUsuario.BuscarUsuario(id);
                    txtNomeCompleto.Text = objUsuario.NomeCompleto;
                    txtEmail.Text = objUsuario.Email;
                    txtRamal.Text = objUsuario.Ramal;
                    txtUsuario.Text = objUsuario.Usuario;
                    txtSenha.Text = objUsuario.Senha;
                    txtSenha.Attributes.Add("value", txtSenha.Text);
                    chkAcessaWeb.Checked = objUsuario.AcessoWeb;
                    chkAtivo.Checked = objUsuario.Ativo;
                    ddlHierarquia.SelectedValue = Convert.ToString(objUsuario.Hierarquia);
                    txtCelular.Text = objUsuario.Celular;
                    ckbAvisoOper.Checked = Convert.ToBoolean(objUsuario.EmailAvisoOperacional);
                    ckbAvisoFin.Checked = Convert.ToBoolean(objUsuario.EmailAvisoFinanceiro);
                    ckbAvisoSist.Checked = Convert.ToBoolean(objUsuario.EmailAvisoSistema);
                    ckbAvisoSolNum.Checked = Convert.ToBoolean(objUsuario.EmailAvisoSolicNumerario);
                    ckbDigitalizado.Checked = Convert.ToBoolean(objUsuario.Digitalizador);
                    ckbRespOperProcess.Checked = Convert.ToBoolean(objUsuario.ResponsavelOperacional);
                    ckbRespComProcess.Checked = Convert.ToBoolean(objUsuario.ResponsavelComercial);
                    ckbScanner.Checked = objUsuario.Scanner;
                    ckbArquivista.Checked = objUsuario.Arquivista;
                    ddlSupervisor.Items.Add(new ListItem(objUsuario.SupervisorOperacional.NomeCompleto, objUsuario.SupervisorOperacional.Usuario));
                    ddlSupervisor.SelectedValue = objUsuario.SupervisorOperacional.Usuario;
                    ddlSetor.Items.Add(new ListItem(objUsuario.Setor.Descricao, objUsuario.Setor.Codigo));
                    ddlSetor.SelectedValue = objUsuario.Setor.Codigo;

                    //---------------------------
                    //Meus Grupos 
                    ltbMeusGrupos.DataSource = objUsuario.Grupos;
                    ltbMeusGrupos.DataValueField = "PK_AcessoGrupo";
                    ltbMeusGrupos.DataTextField = "Descricao";
                    ltbMeusGrupos.DataBind();

                    //Grupos
                    AcessoGrupo grupo = new AcessoGrupo();
                    ltbGrupos.DataSource = grupo.BuscarNaoVinculadoGrupoUsuario(id);
                    ltbGrupos.DataValueField = "PK_AcessoGrupo";
                    ltbGrupos.DataTextField = "Descricao";
                    ltbGrupos.DataBind();
                    //----------------------------
                    //Permissão
                    canAlterar = objUsuario.AcessoOK(Operacao.Alterar, "frmUsuarios.aspx");
                    btnGravarUsuario.Enabled = canAlterar;
                    btnIncluirGrupo.Enabled = canAlterar;
                    btnRemoveGrupo.Enabled = canAlterar;
                    //----------------------------
                    //Meus Acessos a clientes                    
                    //Usuario usuClientes = new Usuario();
                    lbMeusClientes.DataSource = objUsuario.BuscarClientesAcessoDoUsuario(id).Select(x => new { x.Codigo, Full = x.Codigo.PadRight(x.Codigo.Length, ' ') + " - " + x.RazaoSocial }); ;
                    lbMeusClientes.DataValueField = "Codigo";
                    lbMeusClientes.DataTextField = "Full";
                    lbMeusClientes.DataBind();
                    //----------------------------
                    //Não acessos clientes
                    //Usuario naoClientes = new Usuario();
                    lbCliente.DataSource = objUsuario.BuscarNaoClientesAcessoDoUsuario(id).Select(x => new { x.Codigo, Full = x.Codigo.PadRight(x.Codigo.Length, ' ') + " - " + x.RazaoSocial });
                    lbCliente.DataValueField = "Codigo";
                    lbCliente.DataTextField = "Full";
                    lbCliente.DataBind();
                    //----------------------------
                    //Meus clientes check-in
                    //Usuario usuClientesCheck = new Usuario();
                    lbClientesCheck.DataSource = objUsuario.BuscarClientesCheckingDoUsuario(id).Select(x => new { x.Codigo, Full = x.Codigo.PadRight(x.Codigo.Length, ' ') + " - " + x.RazaoSocial }); ;
                    lbClientesCheck.DataValueField = "Codigo";
                    lbClientesCheck.DataTextField = "Full";
                    lbClientesCheck.DataBind();
                    //----------------------------
                    //Meus clientes check-in
                    //Usuario usuClientesNaoCheck = new Usuario();
                    lbClientesNaoCheck.DataSource = objUsuario.BuscarNaoClientesCheckingDoUsuario(id).Select(x => new { x.Codigo, Full = x.Codigo.PadRight(x.Codigo.Length, ' ') + " - " + x.RazaoSocial }); ;
                    lbClientesNaoCheck.DataValueField = "Codigo";
                    lbClientesNaoCheck.DataTextField = "Full";
                    lbClientesNaoCheck.DataBind();
                    //----------------------------
                    //Meus tipos de processo                    
                    lbMeusTiposProcessos.DataSource = objUsuario.BuscarTiposProcessoDoUsuario(id).Select(x => new { x.Codigo, Full = x.Codigo.PadRight(x.Codigo.Length, ' ') + " - " + x.Descricao }); ;
                    lbMeusTiposProcessos.DataValueField = "Codigo";
                    lbMeusTiposProcessos.DataTextField = "Full";
                    lbMeusTiposProcessos.DataBind();
                    //----------------------------
                    //Meus tipos de processo                    
                    lbTiposProcessos.DataSource = objUsuario.BuscarNaoTiposProcessoDoUsuario(id).Select(x => new { x.Codigo, Full = x.Codigo.PadRight(x.Codigo.Length, ' ') + " - " + x.Descricao }); ;
                    lbTiposProcessos.DataValueField = "Codigo";
                    lbTiposProcessos.DataTextField = "Full";
                    lbTiposProcessos.DataBind();
                    //----------------------------

                }
                else
                {
                    canIncluir = objUsuario.AcessoOK(Operacao.Incluir, "frmUsuarios.aspx");
                    if (!canIncluir)
                    {
                        Response.Redirect(string.Format("~/frmAcessoNegado.aspx?voltar={0}", "~/Menu/Processos/Sistema/frmUsuarios.aspx"));
                    }
                    else
                    {
                        // Desabilidando Tabs
                        ScriptManager.RegisterStartupScript(this, Page.GetType(), "_disable", "$('#tabs').tabs({ disabled: [1, 2, 3, 4] });", true);
                        CarregarSupervisor(true);
                        CarregarSetor(true);
                    }
                }
            }
        }

        protected void CarregarFollowLiberado(string fk_usuario)
        {
            grdFollowLiberado.DataSource = followLiberado.BuscarUsuario(fk_usuario);
            grdFollowLiberado.DataBind();
        }

        protected void CarregarSupervisor(bool todos)
        {
            Supervisor super = new Supervisor();
            ddlSupervisor.DataTextField = "NomeCompleto";
            ddlSupervisor.DataValueField = "Usuario";
            ddlSupervisor.DataSource = super.BuscarTodos(todos);
            ddlSupervisor.DataBind();
            ddlSupervisor.Items.Insert(0, "");
        }

        protected void CarregarSetor(bool todos)
        {
            Setor setor = new Setor();
            ddlSetor.DataTextField = "Descricao";
            ddlSetor.DataValueField = "Codigo";
            ddlSetor.DataSource = setor.BuscarTodos(todos);
            ddlSetor.DataBind();
            ddlSetor.Items.Insert(0, "");
        }

        protected void btnGravarUsuario_Click(object sender, EventArgs e)
        {
            Usuario usuario = new Usuario();
            usuario.NomeCompleto = txtNomeCompleto.Text;
            usuario.Ramal = txtRamal.Text;
            usuario.Email = txtEmail.Text;
            usuario.Usuario = txtUsuario.Text;
            txtSenha.Attributes.Add("value", txtSenha.Text);
            usuario.Senha = txtSenha.Text;
            usuario.Ativo = chkAtivo.Checked;
            usuario.AcessoWeb = chkAcessaWeb.Checked;
            usuario.Hierarquia = Convert.ToInt32(ddlHierarquia.SelectedValue);
            usuario.Celular = txtCelular.Text;
            usuario.EmailAvisoOperacional = Convert.ToInt16(ckbAvisoOper.Checked);
            usuario.EmailAvisoFinanceiro = Convert.ToInt16(ckbAvisoFin.Checked);
            usuario.EmailAvisoSistema = Convert.ToInt16(ckbAvisoSist.Checked);
            usuario.EmailAvisoSolicNumerario = Convert.ToInt16(ckbAvisoSolNum.Checked);
            usuario.Digitalizador = Convert.ToInt16(ckbDigitalizado.Checked);
            usuario.ResponsavelOperacional = Convert.ToInt16(ckbRespOperProcess.Checked);
            usuario.ResponsavelComercial = Convert.ToInt16(ckbRespComProcess.Checked);
            usuario.Scanner = ckbScanner.Checked;
            usuario.Arquivista = ckbArquivista.Checked;
            usuario.FKSupervisorOperacional = ddlSupervisor.SelectedValue;
            usuario.FKSetor = ddlSetor.SelectedValue;

            if (string.IsNullOrEmpty(id))
            {
                // Inclusão 
                if (usuario.Incluir(usuario))
                {
                    id = usuario.Usuario;
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_disable", "$('#tabs').tabs({ disabled: [] });", true);
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_OK_inclusao", "$('#modalSucesso').dialog('open');", true);
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_ERRO_inclusao", "$('#modalErro').dialog('open');", true);
                }
            }
            else
            {
                // Edição
                if (usuario.Alterar(usuario))
                {
                    //Transfere responsabilidade de processos para supervisor?                    
                    if (!ckbRespOperProcess.Checked)
                    {
                        ScriptManager.RegisterStartupScript(this, Page.GetType(), "_check", "$('#modalConfirmaTrocaResposabilidade').dialog('open');", true);
                    }
                    else
                    {
                        ScriptManager.RegisterStartupScript(this, Page.GetType(), "_OK_Edicao", "$('#modalSucesso').dialog('open');", true);
                    }
                }
                else
                {
                    ScriptManager.RegisterStartupScript(this, Page.GetType(), "_ERRO_Edicao", "$('#modalErro').dialog('open');", true);
                }
                //----------
            }
        }

        protected void btnIncluirGrupo_Click(object sender, EventArgs e)
        {
            if (ltbGrupos.SelectedIndex >= 0)
            {
                AcessoGrupoUsuario grupoUsuario = new AcessoGrupoUsuario();
                grupoUsuario.FK_AcessoGrupo = Convert.ToInt32(ltbGrupos.SelectedValue);
                grupoUsuario.FK_Usuario = id;
                grupoUsuario.Incluir(grupoUsuario);
                // Lê todos os itens do ListBox1 
                foreach (ListItem item in ltbGrupos.Items)
                {
                    // Verifica se o item está selecionado 
                    if (item.Selected)
                    {
                        // Remove a seleção do item 
                        item.Selected = false;
                        // Adiciona o item ao ListBox2 
                        ltbMeusGrupos.Items.Add(item);
                    }
                }

                // Lê todos os itens do ListBox2 
                foreach (ListItem item in ltbMeusGrupos.Items)
                {
                    // Verifica se o ListBox1 contém o item 
                    if (ltbGrupos.Items.Contains(item))
                        // Remove o item do ListBox1 
                        ltbGrupos.Items.Remove(item);
                }
            }
        }

        protected void btnRemoveGrupo_Click(object sender, EventArgs e)
        {
            if (ltbMeusGrupos.SelectedIndex >= 0)
            {
                AcessoGrupoUsuario grupoUsuario = new AcessoGrupoUsuario();
                grupoUsuario.FK_AcessoGrupo = Convert.ToInt32(ltbMeusGrupos.SelectedValue);
                grupoUsuario.FK_Usuario = id;
                grupoUsuario.Excluir(grupoUsuario);
                // Lê todos os itens do ListBox1 
                foreach (ListItem item in ltbMeusGrupos.Items)
                {
                    // Verifica se o item está selecionado 
                    if (item.Selected)
                    {
                        // Remove a seleção do item 
                        item.Selected = false;
                        // Adiciona o item ao ListBox2 
                        ltbGrupos.Items.Add(item);
                    }
                }

                // Lê todos os itens do ListBox2 
                foreach (ListItem item in ltbGrupos.Items)
                {
                    // Verifica se o ListBox1 contém o item 
                    if (ltbMeusGrupos.Items.Contains(item))
                        // Remove o item do ListBox1 
                        ltbMeusGrupos.Items.Remove(item);
                }
            }
        }

        protected void btnIncluirCliente_Click(object sender, EventArgs e)
        {
            if (lbCliente.SelectedIndex >= 0)
            {
                UsuarioCliente adicionar = new UsuarioCliente();
                // Lê todos os itens do ListBox1 
                foreach (ListItem item in lbCliente.Items)
                {
                    // Verifica se o item está selecionado 
                    if (item.Selected)
                    {
                        adicionar.FKUsuario = id;
                        adicionar.FKImportador = lbCliente.SelectedValue;
                        adicionar.Incluir(adicionar);
                        // Remove a seleção do item 
                        item.Selected = false;
                        // Adiciona o item ao ListBox2 
                        lbMeusClientes.Items.Add(item);
                    }
                }
                // Lê todos os itens do ListBox2 
                foreach (ListItem item in lbMeusClientes.Items)
                {
                    // Verifica se o ListBox1 contém o item 
                    if (lbCliente.Items.Contains(item))
                        // Remove o item do ListBox1 
                        lbCliente.Items.Remove(item);
                }

            }
        }

        protected void btnRemoveCliente_Click(object sender, EventArgs e)
        {
            if (lbMeusClientes.SelectedIndex >= 0)
            {
                UsuarioCliente remover = new UsuarioCliente();
                // Lê todos os itens do ListBox1 
                foreach (ListItem item in lbMeusClientes.Items)
                {
                    // Verifica se o item está selecionado 
                    if (item.Selected)
                    {
                        remover.FKUsuario = id;
                        remover.FKImportador = lbMeusClientes.SelectedValue;
                        remover.Excluir(remover);
                        // Remove a seleção do item 
                        item.Selected = false;
                        // Adiciona o item ao ListBox2 
                        lbCliente.Items.Add(item);
                    }
                }
                // Lê todos os itens do ListBox2 
                foreach (ListItem item in lbCliente.Items)
                {
                    // Verifica se o ListBox1 contém o item 
                    if (lbMeusClientes.Items.Contains(item))
                        // Remove o item do ListBox1 
                        lbMeusClientes.Items.Remove(item);
                }
            }
        }

        protected void btnIncluirClienteCheck_Click(object sender, EventArgs e)
        {
            if (lbClientesNaoCheck.SelectedIndex >= 0)
            {
                FollowUpCheckCliente adicionar = new FollowUpCheckCliente();
                // Lê todos os itens do ListBox1 
                foreach (ListItem item in lbClientesNaoCheck.Items)
                {
                    // Verifica se o item está selecionado 
                    if (item.Selected)
                    {
                        adicionar.FK_Usuario = id;
                        adicionar.FK_Importador = lbClientesNaoCheck.SelectedValue;
                        adicionar.Incluir(adicionar);
                        // Remove a seleção do item 
                        item.Selected = false;
                        // Adiciona o item ao ListBox2 
                        lbClientesCheck.Items.Add(item);
                    }
                }
                // Lê todos os itens do ListBox2 
                foreach (ListItem item in lbClientesCheck.Items)
                {
                    // Verifica se o ListBox1 contém o item 
                    if (lbClientesNaoCheck.Items.Contains(item))
                        // Remove o item do ListBox1 
                        lbClientesNaoCheck.Items.Remove(item);
                }
            }
        }

        protected void btnRemoveClienteCheck_Click(object sender, EventArgs e)
        {
            if (lbClientesCheck.SelectedIndex >= 0)
            {
                FollowUpCheckCliente remover = new FollowUpCheckCliente();
                // Lê todos os itens do ListBox1 
                foreach (ListItem item in lbClientesCheck.Items)
                {
                    // Verifica se o item está selecionado 
                    if (item.Selected)
                    {
                        remover.FK_Usuario = id;
                        remover.FK_Importador = lbClientesCheck.SelectedValue;
                        remover.Excluir(remover);
                        // Remove a seleção do item 
                        item.Selected = false;
                        // Adiciona o item ao ListBox2 
                        lbClientesNaoCheck.Items.Add(item);
                    }
                }
                // Lê todos os itens do ListBox2 
                foreach (ListItem item in lbClientesNaoCheck.Items)
                {
                    // Verifica se o ListBox1 contém o item 
                    if (lbClientesCheck.Items.Contains(item))
                        // Remove o item do ListBox1 
                        lbClientesCheck.Items.Remove(item);
                }
            }
        }

        protected void btnIncluirTipos_Click(object sender, EventArgs e)
        {
            if (lbTiposProcessos.SelectedIndex >= 0)
            {
                FollowUpCheckTipoProcesso adicionar = new FollowUpCheckTipoProcesso();
                // Lê todos os itens do ListBox1 
                foreach (ListItem item in lbTiposProcessos.Items)
                {
                    // Verifica se o item está selecionado 
                    if (item.Selected)
                    {
                        adicionar.FK_Usuario = id;
                        adicionar.FK_TipoProcesso = lbTiposProcessos.SelectedValue;
                        adicionar.Incluir(adicionar);
                        // Remove a seleção do item 
                        item.Selected = false;
                        // Adiciona o item ao ListBox2 
                        lbMeusTiposProcessos.Items.Add(item);
                    }
                }
                // Lê todos os itens do ListBox2 
                foreach (ListItem item in lbMeusTiposProcessos.Items)
                {
                    // Verifica se o ListBox1 contém o item 
                    if (lbTiposProcessos.Items.Contains(item))
                        // Remove o item do ListBox1 
                        lbTiposProcessos.Items.Remove(item);
                }
            }
        }

        protected void btnRemoveTipos_Click(object sender, EventArgs e)
        {
            if (lbMeusTiposProcessos.SelectedIndex >= 0)
            {
                FollowUpCheckTipoProcesso remover = new FollowUpCheckTipoProcesso();
                // Lê todos os itens do ListBox1 
                foreach (ListItem item in lbMeusTiposProcessos.Items)
                {
                    // Verifica se o item está selecionado 
                    if (item.Selected)
                    {
                        remover.FK_Usuario = id;
                        remover.FK_TipoProcesso = lbMeusTiposProcessos.SelectedValue;
                        remover.Excluir(remover);
                        // Remove a seleção do item 
                        item.Selected = false;
                        // Adiciona o item ao ListBox2 
                        lbTiposProcessos.Items.Add(item);
                    }
                }
                // Lê todos os itens do ListBox2 
                foreach (ListItem item in lbTiposProcessos.Items)
                {
                    // Verifica se o ListBox1 contém o item 
                    if (lbMeusTiposProcessos.Items.Contains(item))
                        // Remove o item do ListBox1 
                        lbMeusTiposProcessos.Items.Remove(item);
                }
            }
        }

        protected void btnSim_Click(object sender, EventArgs e)
        {
            if (objUsuario.TransferirResponsabilidadeSupervisor(txtUsuario.Text, ddlSupervisor.SelectedValue))
            {
                ScriptManager.RegisterStartupScript(this, Page.GetType(), "_OK_Edicao", "$('#modalSucesso').dialog('open');$('#modalConfirmaTrocaResposabilidade').dialog('close');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, Page.GetType(), "_ERRO_Edicao", "$('#modalErro').dialog('open');$('#modalConfirmaTrocaResposabilidade').dialog('close');", true);
            }
        }

        protected void btnNao_Click(object sender, EventArgs e)
        {
            ScriptManager.RegisterStartupScript(this, Page.GetType(), "_OK_Edicao", "$('#modalSucesso').dialog('open');$('#modalConfirmaTrocaResposabilidade').dialog('close');", true);
        }

        protected void btnIncluirFollow_Click(object sender, EventArgs e)
        {
            Processo proc = new Processo();
            lbAvisos.Text = "";
            bool GoOn = true;
            if (proc.ExisteProcesso(txtFollow.Text))
            {
                foreach (GridViewRow row in grdFollowLiberado.Rows)
                {
                    if (row.RowType == DataControlRowType.DataRow)
                    {
                        string processo = ((HiddenField)row.FindControl("hdFK_Processo")).Value;
                        GoOn = GoOn && (processo != txtFollow.Text);
                    }
                }
                if (GoOn)
                {
                    followLiberado.FK_Processo = txtFollow.Text;
                    followLiberado.FK_Usuario = id;
                    followLiberado.Incluir(followLiberado);
                    CarregarFollowLiberado(id);
                }
                else
                {
                    lbAvisos.Text = "Número de processo já está liberado!";
                }
            }
            else
            {
                lbAvisos.Text = "Número de processo não existe!";
            }
        }

        protected void btnExcluirFollow_Click(object sender, EventArgs e)
        {
            foreach (GridViewRow grdRow in grdFollowLiberado.Rows)
            {
                if (((CheckBox)grdRow.FindControl("chkAcessa")).Checked)
                {
                    int pk = Convert.ToInt32(((HiddenField)grdRow.FindControl("hdPK_ID")).Value);
                    followLiberado.Excluir(pk);
                }
            }
            CarregarFollowLiberado(id);
            lbAvisos.Text = "";
        }

        protected void grdFollowLiberado_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grdFollowLiberado.PageIndex = e.NewPageIndex;
            grdFollowLiberado.DataSource = followLiberado.BuscarUsuario(id);
            grdFollowLiberado.DataBind();
        }
    }
}