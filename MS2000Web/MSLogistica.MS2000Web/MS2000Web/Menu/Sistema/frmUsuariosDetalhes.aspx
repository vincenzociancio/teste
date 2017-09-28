<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmUsuariosDetalhes.aspx.cs" Inherits="MS2000Web.Menu.Sistema.frmUsuariosIncluirAlterar" %>

<%@ Import Namespace="Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            // Dialog
            //$('#dialog:ui-dialog').dialog('destroy');
            //$('#modal_Campos').dialog({
            //    autoOpen: true,
            //    height: 500,
            //    width: 700,
            //    modal: true,
            //    resizable: false,
            //    open: function (type, data) {
            //        // Tabs
            //        $("#tabs").tabs({
            //            ajaxOptions: {
            //                error: function (xhr, status, index, anchor) {
            //                    $(anchor.hash).html(
            //                        "Couldn't load this tab. We'll try to fix this as soon as possible. " +
            //                        "If this wouldn't be a demo.");
            //                }
            //            }
            //        });
            //        $(this).parent().appendTo("#frmMaster");
            //    },
            //    close: function () {
            //        window.location = "frmUsuarios.aspx";
            //    }
            //});

            $('#dialog:ui-dialog').dialog('destroy');
            //inicio
            $("#tabs").tabs().dialog({
                autoOpen: true,
                height: 600,
                width: 770,
                modal: true,
                resizable: false,
                open: function (type, data) {
                    // Tabs
                    //$("#tabs").tabs({
                    //    ajaxOptions: {
                    //        error: function (xhr, status, index, anchor) {
                    //            $(anchor.hash).html(
                    //                "Couldn't load this tab. We'll try to fix this as soon as possible. " +
                    //                "If this wouldn't be a demo.");
                    //        }
                    //    }
                    //});
                    $(this).parent().appendTo("form:first");
                },
                close: function () {
                    window.location = "frmUsuarios.aspx";
                }
            });
            //fim
            // Mensagem de Sucesso
            $('#modalSucesso').dialog({
                autoOpen: false,
                height: 150,
                width: 300,
                modal: true,
                resizable: false,
                buttons: {
                    Ok: function () {
                        $(this).dialog('close');
                    }
                }
            });
            // Mensagem de Erro
            $('#modalErro').dialog({
                autoOpen: false,
                height: 150,
                width: 300,
                modal: true,
                resizable: false,
                buttons: {
                    Ok: function () {
                        $(this).dialog('close');
                    }
                }
            });

            $("#<%=btnFechar.ClientID %>").click(function (e) {
                e.preventDefault();
                window.location = "frmUsuarios.aspx";
            });

            //-----------------------Validando-----------------------
            $('#aspnetForm').validate();
            $("#<%=txtNomeCompleto.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });
            $("#<%=txtUsuario.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });
            $("#<%=txtSenha.ClientID %>").rules("add", {
                minlength: 6,
                required: true,
                messages: {
                    minlength: 'Mínimo de 6 caracteres.',
                    required: ''
                }
            });

            $('#ContentPlaceHolder1_btnGravarUsuario').click(function () {
                if ($("#aspnetForm").valid()) {
                    return true
                }
                else {
                    return false
                }
            });
            //-------------------------------------------------------
            $("#<%=txtEmail.ClientID %>").css('text-transform', 'lowercase');

            //CHECKBOX ckbRespOperProcess     
            $('#modalConfirmaTrocaResposabilidade').dialog({
                autoOpen: false,
                height: 180,
                width: 400,
                modal: true,
                resizable: false,
                open: function (type, data) {
                    $(this).parent().appendTo("#aspnetForm");
                },
                close: function () {
                    $(this).dialog('close');
                }
            });
            $("#<%=txtFollow.ClientID %>").mask('99999/99');
            $("#<%=txtCPF.ClientID %>").mask('999.999.999-99');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="tabs" <%if (string.IsNullOrEmpty(id))
                     { %>title="Inclusão"
        <%}
                     else
                     {%>title="Edição"
        <%} %>>
        <ul>
            <li><a href="#tbCadastro">Dados Cadastrais</a></li>
            <li><a href="#tbGrupos">Grupos de acesso</a></li>
            <li><a href="#tbClientes">Acesso a Clientes</a></li>
            <li><a href="#tbChecking">Config. Check-In</a></li>
            <li><a href="#tbLiberaFollow">Liberar Follow p/ Processo</a></li>
        </ul>
        <div class="content_post" id="tbCadastro" style="position: static; width: 720px; height: 500px;">
            <br />
            <div style="position: static; vertical-align: super; width: 305px; padding-right: 15px; padding-bottom: 10px; float: left;">
                <asp:Label ID="lbNome" runat="server" Text="Nome Completo"></asp:Label><br />
                <asp:TextBox ID="txtNomeCompleto" runat="server" MaxLength="45" Width="305px"></asp:TextBox>
            </div>
            <div style="position: static; vertical-align: super; width: 130px; float: left; padding-bottom: 10px; padding-right: 15px">
                <asp:Label ID="lbCPF" runat="server" Text="CPF"></asp:Label><br />
                <asp:TextBox ID="txtCPF" runat="server" MaxLength="14" Width="130px"></asp:TextBox>
            </div>
            <div style="position: static; vertical-align: super; width: 80px; float: left; padding-right: 15px; padding-bottom: 10px;">
                <asp:Label ID="lbRamal" runat="server" Text="Ramal"></asp:Label><br />
                <asp:TextBox ID="txtRamal" runat="server" MaxLength="10" Width="80px"></asp:TextBox>
            </div>
            <div style="position: static; vertical-align: super; width: 160px; float: left; padding-bottom: 10px;">
                <asp:Label ID="Label8" runat="server" Text="Hierarquia"></asp:Label><br />
                <asp:DropDownList ID="ddlHierarquia" runat="server" Width="160px">
                    <asp:ListItem Value="0">VAZIO</asp:ListItem>
                    <asp:ListItem Value="1">GERÊNCIA</asp:ListItem>
                    <asp:ListItem Value="2">COORDENAÇÃO</asp:ListItem>
                    <asp:ListItem Value="3">SUPERVISOR</asp:ListItem>
                    <asp:ListItem Value="4">ANALISTA</asp:ListItem>
                </asp:DropDownList>
            </div>
            <div style="position: static; vertical-align: super; width: 305px; float: left; padding-right: 15px; padding-bottom: 10px;">
                <asp:Label ID="lbEmail" runat="server" Text="E-mail"></asp:Label><br />
                <asp:TextBox ID="txtEmail" runat="server" Width="305px"></asp:TextBox>
            </div>
            <div style="position: static; float: left; vertical-align: super; width: 110px; padding-bottom: 10px; padding-right: 15px">
                <asp:Label ID="lbCelular" runat="server" Text="Celular"></asp:Label><br />
                <asp:TextBox ID="txtCelular" runat="server" MaxLength="10" Width="110px"></asp:TextBox>
            </div>
            <div style="position: static; vertical-align: super; width: 275px; float: left; padding-bottom: 10px;">
                <asp:Label ID="lbSetor" runat="server" Text="Setor"></asp:Label><br />
                <asp:DropDownList ID="ddlSetor" runat="server" Width="275px"></asp:DropDownList>
            </div>
            <div style="position: static; vertical-align: super; width: 305px; padding-bottom: 10px;">
                <asp:Label ID="lbSupervisor" runat="server" Text="Supervisor Operacional"></asp:Label><br />
                <asp:DropDownList ID="ddlSupervisor" runat="server" Width="305px"></asp:DropDownList>
            </div>
            <br />
            <fieldset style="width: 340px; height: 120px; float: left; padding-bottom: 10px;">
                <legend>E-mail aviso automático</legend>
                <div style="position: static; vertical-align: super; width: 340px; float: left; padding-bottom: 10px; background-color: lightyellow; padding-bottom: 10px;">
                    <asp:CheckBox ID="ckbAvisoOper" runat="server" Font-Bold="False" Text="Operacional" /><br />
                    <asp:CheckBox ID="ckbAvisoFin" runat="server" Font-Bold="False" Text="Financeiro" /><br />
                    <asp:CheckBox ID="ckbAvisoSist" runat="server" Font-Bold="False" Text="Sistema" /><br />
                    <asp:CheckBox ID="ckbAvisoDiret" runat="server" Font-Bold="False" Text="Diretoria" /><br />
                    <asp:CheckBox ID="ckbAvisoSolNum" runat="server" Font-Bold="False" Text="Solicitação de numerários" /><br />
                </div>
            </fieldset>
            <fieldset style="width: 355px; height: 120px; float: right; padding-bottom: 10px;">
                <legend>Permissões por usuário</legend>
                <div style="position: static; vertical-align: super; width: 355px; float: left; padding-bottom: 10px; background-color: lightyellow; padding-bottom: 10px;">
                    <asp:CheckBox ID="ckbDigitalizado" runat="server" Font-Bold="False" Text="Digitaliza documentos" /><br />
                    <asp:CheckBox ID="ckbRespOperProcess" runat="server" Font-Bold="False" Text="Resp. operacional por processos" /><br />
                    <asp:CheckBox ID="ckbScanner" runat="server" Font-Bold="False" Text="Scanner" /><br />
                    <asp:CheckBox ID="ckbArquivista" runat="server" Font-Bold="False" Text="Arquivista" /><br />
                    <asp:CheckBox ID="ckbRespComProcess" runat="server" Font-Bold="False" Text="Resp. comercial por processos" Visible="False" /><br />
                </div>
            </fieldset>
            <fieldset style="width: 710px;">
                <legend>Login</legend>
                <div style="width: 710px; height: 130px; position: static; background-color: lightyellow; text-align: center;">
                    <asp:Label ID="Label2" runat="server" Text="Senha deverá: " ForeColor="Red" Font-Names="verdana"></asp:Label><br />
                    <asp:Label ID="Label3" runat="server" Text="ser diferente de branco; " ForeColor="Red" Font-Names="verdana"></asp:Label>
                    <asp:Label ID="Label4" runat="server" Text="ser diferente do nome do usuário; " ForeColor="Red" Font-Names="verdana"></asp:Label>
                    <asp:Label ID="Label5" runat="server" Text="possuír no mínimo 6 caracteres; " ForeColor="Red" Font-Names="verdana"></asp:Label><br />
                    <asp:Label ID="Label6" runat="server" Text="possuír números ou letras DISTINTOS; " ForeColor="Red" Font-Names="verdana"></asp:Label>
                    <asp:Label ID="Label7" runat="server" Text="possuír no máximo de 10 caracteres. " ForeColor="Red" Font-Names="verdana"></asp:Label><br />
                    <br />
                    <asp:Label ID="lbUsuario" runat="server" Text="Usuário"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="txtUsuario" runat="server" MaxLength="10" Width="150px"></asp:TextBox>
                    &nbsp;&nbsp;&nbsp;
                <asp:Label ID="lbSenha" runat="server" Text="Senha"></asp:Label>
                    &nbsp;
                <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" MaxLength="10" Width="150px"></asp:TextBox><br />
                    <br />
                    <asp:CheckBox ID="chkAtivo" runat="server" Text="Usuário ativo?" ViewStateMode="Inherit" Font-Bold="False" />&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:CheckBox ID="chkAcessaWeb" runat="server" Checked="False" Text="Acessa MS2000 Web?" Font-Bold="False" />
                </div>
            </fieldset>
            <div style="position: static; width: 100%; text-align: right; padding-top: 10px;">
                <asp:Button ID="btnGravarUsuario" runat="server" Text="Salvar" OnClick="btnGravarUsuario_Click" />
                &nbsp;<asp:Button ID="btnFechar" runat="server" Text="Fechar" />
            </div>
            <asp:UpdatePanel ID="uppCadastro" runat="server">
                <ContentTemplate>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnGravarUsuario" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
        <div class="content_post" id="tbGrupos" style="position: static; width: 720px; height: 500px; padding-left: 20px;">
            <div style="float: left; width: 320px; height: 450px;">
                <div style="height: 20px;">
                    <asp:Label ID="lbGrupo" runat="server" Text="Selecione um grupo"></asp:Label>
                </div>
                <asp:UpdatePanel ID="uppGrupos" runat="server">
                    <ContentTemplate>
                        <asp:ListBox ID="ltbGrupos" runat="server" Height="450px" Width="320px" Font-Names="Verdana" Font-Size="9pt" BackColor="LightYellow"></asp:ListBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnIncluirGrupo" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnRemoveGrupo" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
            <div style="display: table; width: 60px; height: 450px; position: relative; overflow: hidden; float: left;">
                <div style="position: absolute; top: 40%; display: table-cell; vertical-align: middle;">
                    <div class="content_post" style="position: relative; _top: -50%; width: 60px; text-align: center;">
                        <asp:Button ID="btnIncluirGrupo" runat="server" Text="&gt;&gt;" OnClick="btnIncluirGrupo_Click" /><br />
                        <br />
                        <asp:Button ID="btnRemoveGrupo" runat="server" Text="&lt;&lt;" OnClick="btnRemoveGrupo_Click" />
                    </div>
                </div>
            </div>
            <div style="float: left; width: 320px; height: 450px;">
                <div style="height: 20px;">
                    <asp:Label ID="lbGrupoUsuario" runat="server" Text="Grupo(s) do usuário"></asp:Label>
                </div>
                <asp:UpdatePanel ID="uppMeusGrupos" runat="server">
                    <ContentTemplate>
                        <asp:ListBox ID="ltbMeusGrupos" runat="server" Height="450px" Width="320px" Font-Names="Verdana" Font-Size="9pt" BackColor="LightYellow"></asp:ListBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnIncluirGrupo" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnRemoveGrupo" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="content_post" id="tbClientes" style="position: static; width: 720px; height: 500px; padding-left: 20px;">
            <div style="float: left; width: 320px; height: 450px;">
                <div style="height: 20px;">
                    <asp:Label ID="Label1" runat="server" Text="Selecione o(s) cliente(s)"></asp:Label>
                </div>
                <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                    <ContentTemplate>
                        <asp:ListBox ID="lbCliente" runat="server" Height="450px" Width="320px" Font-Names="Verdana" Font-Size="9pt" BackColor="LightYellow" SelectionMode="Multiple"></asp:ListBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnIncluirCliente" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnRemoveCliente" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
            <div style="display: table; width: 60px; height: 450px; position: relative; overflow: hidden; float: left;">
                <div style="position: absolute; top: 40%; display: table-cell; vertical-align: middle;">
                    <div class="content_post" style="position: relative; _top: -50%; width: 60px; text-align: center;">
                        <asp:Button ID="btnIncluirCliente" runat="server" Text="&gt;&gt;" OnClick="btnIncluirCliente_Click" /><br />
                        <br />
                        <asp:Button ID="btnRemoveCliente" runat="server" Text="&lt;&lt;" OnClick="btnRemoveCliente_Click" />
                    </div>
                </div>
            </div>
            <div style="float: left; width: 320px; height: 450px;">
                <div style="height: 20px;">
                    <asp:Label ID="Label9" runat="server" Text="Cliente(s) do usuário"></asp:Label>
                </div>
                <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                    <ContentTemplate>
                        <asp:ListBox ID="lbMeusClientes" runat="server" Height="450px" Width="320px" Font-Names="Verdana" Font-Size="9pt" BackColor="LightYellow" SelectionMode="Multiple"></asp:ListBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnIncluirCliente" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnRemoveCliente" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="content_post" id="tbChecking" style="position: static; width: 720px; height: 500px; padding-left: 20px;">
            <div style="position: static; height: 280px;">
                <div style="float: left; width: 320px; height: 250px;">
                    <div style="height: 20px;">
                        <asp:Label ID="Label10" runat="server" Text="Selecione o(s) cliente(s)"></asp:Label><br />
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel3" runat="server">
                        <ContentTemplate>
                            <asp:ListBox ID="lbClientesNaoCheck" runat="server" Height="250px" Width="320px" Font-Names="Verdana" Font-Size="9pt" BackColor="LightYellow" SelectionMode="Multiple"></asp:ListBox>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnIncluirClienteCheck" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnRemoveClienteCheck" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
                <div style="display: table; width: 60px; height: 250px; position: relative; overflow: hidden; float: left;">
                    <div style="position: absolute; top: 40%; display: table-cell; vertical-align: middle;">
                        <div class="content_post" style="position: relative; _top: -50%; width: 60px; text-align: center;">
                            <asp:Button ID="btnIncluirClienteCheck" runat="server" Text="&gt;&gt;" OnClick="btnIncluirClienteCheck_Click" /><br />
                            <br />
                            <asp:Button ID="btnRemoveClienteCheck" runat="server" Text="&lt;&lt;" OnClick="btnRemoveClienteCheck_Click" />
                        </div>
                    </div>
                </div>
                <div style="float: left; width: 320px; height: 250px;">
                    <div style="height: 20px;">
                        <asp:Label ID="Label11" runat="server" Text="Cliente(s) do usuário"></asp:Label><br />
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel4" runat="server">
                        <ContentTemplate>
                            <asp:ListBox ID="lbClientesCheck" runat="server" Height="250px" Width="320px" Font-Names="Verdana" Font-Size="9pt" BackColor="LightYellow" SelectionMode="Multiple"></asp:ListBox>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnIncluirClienteCheck" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnRemoveClienteCheck" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
            <div style="position: static; height: 200px;">
                <div style="float: left; width: 320px; height: 180px;">
                    <div style="height: 20px;">
                        <asp:Label ID="Label12" runat="server" Text="Selecione o(s) tipo(s) de processo"></asp:Label>
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                        <ContentTemplate>
                            <asp:ListBox ID="lbTiposProcessos" runat="server" Height="180px" Width="320px" Font-Names="Verdana" Font-Size="9pt" BackColor="LightYellow" SelectionMode="Multiple"></asp:ListBox>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnIncluirTipos" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnRemoveTipos" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
                <div style="display: table; width: 60px; height: 180px; position: relative; overflow: hidden; float: left;">
                    <div style="position: absolute; top: 40%; display: table-cell; vertical-align: middle;">
                        <div class="content_post" style="position: relative; _top: -50%; width: 60px; text-align: center;">
                            <asp:Button ID="btnIncluirTipos" runat="server" Text="&gt;&gt;" OnClick="btnIncluirTipos_Click" /><br />
                            <br />
                            <asp:Button ID="btnRemoveTipos" runat="server" Text="&lt;&lt;" OnClick="btnRemoveTipos_Click" />
                        </div>
                    </div>
                </div>
                <div style="float: left; width: 320px; height: 180px;">
                    <div style="height: 20px;">
                        <asp:Label ID="Label13" runat="server" Text="Tipos de processo do usuário"></asp:Label>
                    </div>
                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                        <ContentTemplate>
                            <asp:ListBox ID="lbMeusTiposProcessos" runat="server" Height="180px" Width="320px" Font-Names="Verdana" Font-Size="9pt" BackColor="LightYellow" SelectionMode="Multiple"></asp:ListBox>
                        </ContentTemplate>
                        <Triggers>
                            <asp:AsyncPostBackTrigger ControlID="btnIncluirTipos" EventName="Click" />
                            <asp:AsyncPostBackTrigger ControlID="btnRemoveTipos" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                </div>
            </div>
        </div>
        <div id="tbLiberaFollow" style="position: static; width: 720px; height: 300px; padding-left: 20px;">
            <div class="content_post" style="position: static; height: 30px; vertical-align: super; padding-top: 20px;">
                <asp:TextBox ID="txtFollow" runat="server"></asp:TextBox>&nbsp;
                <asp:Button ID="btnIncluirFollow" runat="server" Text="Incluir Liberação" OnClick="btnIncluirFollow_Click" />&nbsp;
                <asp:Button ID="btnExcluirFollow" runat="server" Text="Excluir Liberação" OnClick="btnExcluirFollow_Click" />
            </div>
            <div style="height: 350px; overflow: auto; padding: 5px 5px 5px 5px">
                <asp:UpdatePanel ID="uppFollowLIberado" runat="server">
                    <ContentTemplate>
                        <div style="height:20px;">
                            <asp:Label ID="lbAvisos" runat="server" Font-Names="Verdana" Font-Size="9pt" ForeColor="Red"></asp:Label>
                        </div>
                        <asp:GridView ID="grdFollowLiberado" runat="server" DataKeyNames="PK_ID" AutoGenerateColumns="False" Font-Names="Verdana" Font-Size="9pt" PageSize="12" CellPadding="2" Width="366px" OnPageIndexChanging="grdFollowLiberado_PageIndexChanging">
                            <Columns>
                                <asp:TemplateField HeaderText="Excluir">
                                    <ItemTemplate>
                                        <asp:CheckBox ID="chkAcessa" runat="server" />
                                    </ItemTemplate>
                                    <HeaderStyle Font-Names="Verdana" Font-Size="9pt" />
                                    <ItemStyle Width="50px" HorizontalAlign="Center" />
                                </asp:TemplateField>
                                <asp:TemplateField HeaderText="Processo">
                                    <ItemTemplate>
                                        <asp:HiddenField ID="hdPK_ID" runat="server" Value='<%# Eval("PK_ID") %>' />
                                        <asp:HiddenField ID="hdFK_Processo" runat="server" Value='<%# Eval("FK_Processo") %>' />
                                        <%# DataBinder.Eval(Container.DataItem, "FK_Processo")%>
                                    </ItemTemplate>
                                    <HeaderStyle Font-Names="Verdana" Font-Size="9pt" Width="550px" />
                                </asp:TemplateField>
                            </Columns>
                            <AlternatingRowStyle BackColor="White" />
                            <EditRowStyle Wrap="True" />
                            <EmptyDataRowStyle Wrap="True" />
                            <HeaderStyle ForeColor="White" />
                            <PagerStyle HorizontalAlign="Center" />
                            <RowStyle BackColor="#F3F4FA" Wrap="True" />
                            <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" />
                        </asp:GridView>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnExcluirFollow" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnIncluirFollow" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
    </div>
    <div id="modalSucesso" title="<%=resxIdioma.informacao%>" style="display: none; text-align: center;">
        <p>
            <br />
            <span>
                <%=resxIdioma.msg_gravadoOk%></span>
        </p>
    </div>
    <div id="modalErro" title="<%=resxIdioma.erro%>" style="display: none; text-align: center;">
        <p>
            <br />
            <span>
                <%=resxIdioma.msg_gravadoErro%></span>
        </p>
    </div>
    <div id="modalConfirmaTrocaResposabilidade" title="<%=resxIdioma.confirmacao%>" style="display: none; text-align: center;">
        <p style="padding-bottom: 10px;">
            <br />
            <span>ATENÇÃO! Usuário não é responsável por processos, deseja passar a responsabilidade de PROCESSOS para o SUPERVISOR deste usuário?</span>
        </p>
        <div class="content_post" style="text-align: right; padding-top: 10px; border-top: thin solid #79b7e7;">
            <span class="content_post">
                <asp:Button ID="btnSim" runat="server" Text="Sim" OnClick="btnSim_Click" /><asp:Button ID="btnNao" runat="server" Text="Não" OnClick="btnNao_Click" /></span>
        </div>
        <asp:UpdatePanel ID="uppmodalConfirmaTrocaResposabilidade" runat="server">
            <ContentTemplate>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnSim" EventName="Click" />
                <asp:AsyncPostBackTrigger ControlID="btnNao" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
    </div>
</asp:Content>
