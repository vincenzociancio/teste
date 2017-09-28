<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmAbertura.aspx.cs" Inherits="MS2000Web.Menu.Processos.frmAbertura" %>

<%@ Import Namespace="Resources" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .PnlFundo {
            position: fixed;
            width: 100%;
            height: 100%;
            top: 0;
            left: 0;
        }

        .FundoTransparente {
            position: absolute;
            width: 100%;
            height: 100%;
            /* background-color: #aaaaaa;
            opacity: 0.35;
            -moz-opacity: 0.35;
            filter: alpha(opacity=35);*/
            z-index: 100000;
            top: 0;
            left: 0;
            background: #aaaaaa url(../../Script/jquery-ui-1.8.22.custom/css/redmond/images/ui-bg_flat_0_aaaaaa_40x100.png) 50% 50% repeat-x;
            opacity: .30;
            filter: Alpha(Opacity=30);
        }
    </style>
    <script type="text/javascript">
        $(function () {
            $("#<%=pnlAvisos.ClientID %>").css("display", "block");
            $('#<%=txtData.ClientID %>').datepicker();
            $('#dialog:ui-dialog').dialog('destroy');
            $("#modalAbertura").dialog({
                autoOpen: true,
                height: 650,
                width: 650,
                modal: true,
                resizable: false,
                open: function (type, data) {
                    $(this).parent().appendTo("form:first");
                },
                close: function () {
                    window.location = "../../MenuPrincipal.aspx";
                }
            });

            $('#toolTipCliente').dialog({
                autoOpen: false,
                height: 200,
                width: 500,
                modal: true,
                resizable: false,
                buttons: {
                    Ok: function () {
                        $(this).dialog('close');
                    }
                }
            });

            $("#<%=btnAvisos.ClientID %>").click(function () {
                $("#modalAbertura").dialog({
                    height: 'auto'
                });
                $('#pnlMessagens').slideToggle("slow");
                return false;
            });

            $("#<%=btnDadosCliente.ClientID %>").click(function () {
                if ($("#<%=ddlCliente.ClientID %>").val() != 0) {
                    $('#toolTipCliente').dialog('open');
                }
                //$('#panel').slideToggle("slow");
                return false;
            });

            $("#<%=txtProcesso.ClientID %>").mask('99999/99');
            $("#<%=txtVincular.ClientID %>").mask('99999/99');

            $("#<%=txtProcesso.ClientID %>").keyup(function () {
                if ($(this).val().length >= 8) {
                    $("#<%=btnBuscarProcesso.ClientID %>").trigger('click');
                }
            });

            $("#<%=btnFechar.ClientID%>").click(function (e) {
                e.preventDefault();
                window.location = "../../MenuPrincipal.aspx";
            });

        });
        var OK = false;
        function ConfirmaVinculacao(obj, txt) {
            if (!OK) {
                $("#dialog:ui-dialog").dialog("destroy");
                $("#modalConfirmaViculacao").dialog({
                    resizable: false,
                    height: 170,
                    width: 550,
                    modal: true,
                    open: function (e) {
                        $(this).parent().appendTo("form:first");
                    }
                });
                var YES = function () {
                    $('#modalConfirmaViculacao').dialog('close');
                    OK = true;
                    obj.click();
                };
                var NO = function () {
                    $('#modalConfirmaViculacao').dialog('close');
                    OK = false;
                };
                $('#btnYes2').bind('click', YES);
                $('#btnNo2').bind('click', NO);
            }
            return OK;
        }
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de Abertura de Processos" />
    <div id="modalAbertura" style="position: static; width: 630px; height: 750px; overflow: hidden;" title="Abertura de processo">
        <div id="pnlMessagens" style="position: static; display: none; vertical-align: super; border-bottom: thin solid #79b7e7; padding-top: 10px; height: 50px; width: 100%; background-color: #FFCC00;">
            <asp:Label ID="lbMessagens" runat="server" ForeColor="Black"></asp:Label>
        </div>
        <div class="content_post" style="vertical-align: super; padding-bottom: 10px; padding-top: 10px;">
            <asp:Button ID="btnAbrirProcesso" runat="server" Text="Abri novo processo" Width="140px" OnClick="btnAbrirProcesso_Click" />&nbsp;
            <asp:Button ID="btnAlterar" runat="server" Text="Alterar processo" Width="140px" Enabled="False" OnClick="btnAlterar_Click" />&nbsp;
            <asp:Button ID="btnAvisos" runat="server" Text="Avisos do processo" ToolTip="Avisos referente ao processo" Enabled="False" />&nbsp;
            <asp:Button ID="btnLocalizar" runat="server" Text="Localizar processo" Width="140px" OnClick="btnLocalizar_Click" Visible="False" />
        </div>
        <div class="content_post" style="vertical-align: super; padding-bottom: 10px; padding-top: 10px; background-color: lightyellow; border-top: thin solid #79b7e7; border-bottom: thin solid #79b7e7; height: 20px;">
            <div style="width: 170px; float: left;">
                <asp:Label ID="Label1" runat="server" Text="Digite o nº do processo"></asp:Label>&nbsp;
            </div>
            <div style="width: 120px; float: left;">
                <asp:TextBox ID="txtProcesso" runat="server" Width="100px" AutoPostBack="false"></asp:TextBox>&nbsp;      
                <asp:Button ID="btnBuscarProcesso" runat="server" OnClick="btnBuscarProcesso_Click" Text="" Style="display: none;" />
            </div>
            <asp:UpdatePanel ID="uppCNPJ" runat="server">
                <ContentTemplate>
                    <asp:Label ID="lbCnpj" runat="server" Text=""></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:Panel ID="pnlCampos" runat="server" Enabled="false" Visible="False">
            <div class="content_post" style="/*border-top: thin solid #79b7e7; */ padding-top: 20px; padding-left: 20px;">
                <div style="position: static; vertical-align: super; width: 123px; padding-right: 15px; padding-bottom: 10px; float: left;">
                    <asp:Label ID="lbData" runat="server" Text="Data"></asp:Label>
                    <asp:TextBox ID="txtData" runat="server" Width="123px" Enabled="False" ReadOnly="True"></asp:TextBox>
                </div>
                <div style="position: static; vertical-align: super; width: 450px; padding-bottom: 10px; float: left;">
                    <asp:UpdatePanel ID="UpdatePanel5" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="lbCentro" runat="server" Text="Centro de custo"></asp:Label>
                            <asp:DropDownList ID="ddlCentro" runat="server" Width="452px" Height="18px"></asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="content" style="position: static; vertical-align: super; width: 555px; padding-bottom: 10px; float: left;">
                    <asp:Label ID="lbCliente" runat="server" Text="Cliente"></asp:Label>
                    <asp:UpdatePanel ID="uppCliente" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlCliente" runat="server" Width="555px" AutoPostBack="True" Height="18px" OnSelectedIndexChanged="ddlCliente_SelectedIndexChanged"></asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div class="content" style="position: static; vertical-align: super; width: 20px; padding-top: 13px; padding-left: 3px; float: left;">
                    <asp:Button ID="btnDadosCliente" runat="server" Text="..." />
                </div>
                <%--  <div id="panel" style="display:none;">testet<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></div> --%>
                <div style="position: static; vertical-align: super; width: 590px; padding-bottom: 10px; float: left;">
                    <asp:Label ID="lbTProcesso" runat="server" Text="Tipo de processo"></asp:Label>
                    <asp:DropDownList ID="ddlTProcesso" runat="server" Width="590px" Height="18px" AutoPostBack="True" OnSelectedIndexChanged="ddlTProcesso_SelectedIndexChanged"></asp:DropDownList>
                </div>
                <div style="position: static; vertical-align: super; width: 120px; padding-right: 5px; padding-bottom: 10px; float: left;">
                    <asp:UpdatePanel ID="uppUrgencia" runat="server">
                        <ContentTemplate>
                            <fieldset class="ui-widget ui-widget-content" style="height: 50px; padding-left: 5px;">
                                <legend>
                                    <asp:CheckBox ID="ckbUrgente" runat="server" Font-Bold="False" Text="Urgente?" OnCheckedChanged="ckbUrgente_CheckedChanged" AutoPostBack="True" />
                                </legend>
                                <div style="padding-top: 5px;">
                                    <asp:DropDownList ID="ddlTUrgencia" runat="server" Width="100px" Height="18px" Font-Bold="False" AutoPostBack="True" Enabled="False"></asp:DropDownList>
                                </div>
                            </fieldset>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div style="position: static; vertical-align: super; width: 180px; padding-bottom: 10px; float: left; padding-right: 5px;">
                    <fieldset class="ui-widget ui-widget-content" style="height: 50px; padding-left: 5px;">
                        <legend>
                            <asp:Label ID="Label2" runat="server" Text="Utiliza material usado?" Font-Bold="False"></asp:Label></legend>
                        <div style="padding-top: 5px;">
                            <asp:RadioButtonList ID="rdlMaterial" runat="server" RepeatDirection="Horizontal" Font-Bold="False" Width="150px" Font-Size="10pt">
                                <asp:ListItem Selected="True" Value="0">Não</asp:ListItem>
                                <asp:ListItem Value="1">Sim</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                    </fieldset>
                </div>
                <asp:Panel ID="pnlViculacao" runat="server" Enabled="false">
                    <div style="position: static; vertical-align: super; width: 280px; padding-bottom: 10px; float: left; padding-right: 5px;">
                        <fieldset class="ui-widget ui-widget-content" style="height: 50px; padding-left: 5px;">
                            <legend>
                                <%--<asp:CheckBox ID="ckbVincular" runat="server" Font-Bold="False" Text="Processo vinculado? " AutoPostBack="True" OnCheckedChanged="ckbVincular_CheckedChanged" />--%>
                                <asp:Label ID="Label4" runat="server" Text="Processo vinculado"></asp:Label>
                            </legend>
                            <div style="padding-top: 5px; vertical-align: super;">
                                <div style="width: 90px; float: left;">
                                    <asp:TextBox ID="txtVincular" runat="server" Width="80px"></asp:TextBox>
                                </div>
                                <div style="width: 170px; float: left;">
                                    <asp:Button ID="btnVincular" runat="server" Text="Vincular" OnClick="btnVincular_Click"
                                        OnClientClick="return ConfirmaVinculacao(this, '')" />
                                    <asp:Button ID="btnDesvincular" runat="server" Text="Desvincular" OnClick="btnDesvincular_Click"
                                        OnClientClick="return Confirma(this, 'Este processo será desvinculado e todas as faturas e itens serão excluídas! Confirma?')" />
                                </div>
                            </div>
                        </fieldset>
                    </div>
                </asp:Panel>
                <div style="position: static; vertical-align: super; width: 590px; padding-bottom: 10px; float: left;">
                    <asp:UpdatePanel ID="UpdatePanel6" runat="server">
                        <ContentTemplate>
                            <asp:Label ID="Label3" runat="server" Text="Código do cliente" Font-Bold="False"></asp:Label>
                            <asp:TextBox ID="txtCodigoCliente" runat="server" MaxLength="60" Width="585px"></asp:TextBox>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div style="position: static; vertical-align: super; width: 590px; padding-bottom: 10px; float: left;">
                    <asp:Label ID="lbTDeclaracao" runat="server" Text="Tipo declaração"></asp:Label>
                    <asp:UpdatePanel ID="uppTipoDEclaracao" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlTDeclaracao" runat="server" Width="590px" Height="18px" OnSelectedIndexChanged="ddlTDeclaracao_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div style="position: static; vertical-align: super; width: 590px; padding-bottom: 10px; float: left;">
                    <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                        <ContentTemplate>
                            <asp:CheckBox ID="ckbPgProporcional" runat="server" Font-Bold="False" Text="Pagamento proporcional" Enabled="False" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div style="position: static; vertical-align: super; width: 590px; padding-bottom: 10px; float: left;">
                    <asp:Label ID="lbContrato" runat="server" Text="Contrato"></asp:Label>
                    <asp:UpdatePanel ID="uppContrato" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlContrato" runat="server" Width="590px" AutoPostBack="True" Height="18px" OnSelectedIndexChanged="ddlContrato_SelectedIndexChanged"></asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div style="position: static; vertical-align: super; width: 590px; padding-bottom: 40px; float: left;">
                    <asp:Label ID="lbLocal" runat="server" Text="Local de inventário"></asp:Label>
                    <asp:UpdatePanel ID="uppLocal" runat="server">
                        <ContentTemplate>
                            <asp:DropDownList ID="ddlLocal" runat="server" Width="590px" Height="18px" AutoPostBack="True"></asp:DropDownList>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <div style="position: static; vertical-align: super; width: 590px; float: left; border-top: thin solid #79b7e7; padding-top: 10px;">
                    <div class="content_post" style="position: static; vertical-align: super; width: 590px; padding-bottom: 10px; float: left; text-align: right;">
                        <asp:Button ID="btnSalvar" runat="server" Text="Salvar" Width="100px" OnClick="btnSalvar_Click" />&nbsp;
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" Width="100px" OnClick="btnCancelar_Click" />
                        &nbsp;<asp:Button ID="btnFechar" runat="server" Text="Fechar" Width="100px" OnClick="btnFechar_Click" />
                    </div>
                </div>
            </div>
        </asp:Panel>
        <div id="modalConfirmaViculacao" title="<%=resxIdioma.confirmacao%>" style="display: none">
            <p style="padding-bottom: 10px; text-align: center;">
                <asp:Label ID="Label5" runat="server" Text="Este processo será vinculado, marque a opção abaixo se quizer copiar as faturas do processo vinculado!"></asp:Label>
                <br />
                <br />
                <asp:CheckBox ID="ckbCopiar" runat="server" Text="Copiar as faturas do processo viculado para processo atual?" ForeColor="Red" AutoPostBack="false" OnCheckedChanged="ckbCopiar_CheckedChanged" />
            </p>
            <div class="content" style="text-align: right; padding-top: 5px;">
                <input id="btnYes2" type="button" value="<%=resxIdioma.sim%>" />
                <input id="btnNo2" type="button" value="<%=resxIdioma.nao%>" />
            </div>
        </div>
    </div>
    <div style="position: static; vertical-align: super; background-color: lightyellow;" id="toolTipCliente" title="Dados do cliente">
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Label ID="lbTool01" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="15px"></asp:Label><br />
                <asp:Label ID="lbTool02" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="15px"></asp:Label><br />
                <asp:Label ID="lbTool03" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="15px"></asp:Label><br />
                <asp:Label ID="lbTool04" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="15px"></asp:Label><br />
                <asp:Label ID="lbTool05" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="15px"></asp:Label><br />
                <asp:Label ID="lbTool06" runat="server" Font-Names="Verdana" Font-Size="8pt" Height="15px"></asp:Label><br />
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:Panel ID="pnlAvisos" runat="server" CssClass="PnlFundo" Visible="false" Style="display: none;">
        <div class="FundoTransparente">
        </div>
        <asp:Panel ID="pnlConteudo" runat="server" HorizontalAlign="Center" Style="position: absolute; z-index: 100001; padding-top: 20%; padding-left: 35%;">
            <div id="container" class="ui-widget-content content_post" style="width: 400px; height: 150px; text-align: center;">
                <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt; text-align: left;">
                    <asp:Label ID="lbTitulo" runat="server" Text="Informação"></asp:Label>
                </h3>
                <p style="padding-bottom: 10px;">
                    <span style="font-family: Verdana; font-size: medium;">
                        <asp:Label ID="lbAviso" runat="server" Text=""></asp:Label></span>
                </p>
                <asp:Button ID="btnAvisoOK" runat="server" Text="OK" OnClick="btnAvisoOK_Click" />
            </div>
        </asp:Panel>
    </asp:Panel>
</asp:Content>
