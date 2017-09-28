<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmRMBRDetalhes.aspx.cs" Inherits="MS2000Web.Menu.Processos.frmRMBRDetalhe" %>

<%@ Import Namespace="Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#<%=txtDataFinal.ClientID %>').datepicker();
            $('#<%=txtDataInicial.ClientID %>').datepicker();
            $('#<%=txtDataBaixa.ClientID %>').datepicker();
            $('#<%=txtDataProrrog.ClientID %>').datepicker();
            $('#dialog:ui-dialog').dialog('destroy');
            $("#modalRMBR").dialog({
                autoOpen: true,
                height: 300,
                width: 650,
                modal: true,
                resizable: false,
                open: function (type, data) {
                    $(this).parent().appendTo("form:first");
                },
                close: function () {
                    window.location = "frmRMBR.aspx";
                }
            });

            // Mensagem de Sucesso
            $('#modalSucesso').dialog({
                autoOpen: false,
                height: 150,
                width: 290,
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

            // Mensagem de Check
            $('#modalCheck').dialog({
                autoOpen: false,
                height: 180,
                width: 330,
                modal: true,
                resizable: false,
                buttons: {
                    Ok: function () {
                        $(this).dialog('close');
                    }
                }
            });

            //-----------------------Validando-----------------------
            $("#aspnetForm").validate();

            $("#<%=txtProcesso.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });

            $("#<%=txtRMBR.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });

            $("#<%=txtDataInicial.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });

            $("#<%=txtDataFinal.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });

            $("#<%=txtDI.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });
            $("#<%=txtDI.ClientID %>").mask('99/9999999-9');
            $("#<%=txtProcesso.ClientID %>").mask('99999/99');
            $("#<%=txtRMBR.ClientID %>").mask('99.9999-9');


            var ddlStatus = $("#<%=ddlStatus.ClientID %>");

            $("#<%=btnSalvar.ClientID %>").click(function () {
                var GoOn = true;
                if (ddlStatus.val() == 0 || ddlStatus.val() == "" || ddlStatus.val() == null) {
                    //$("#<%=ddlStatus.ClientID %>").addClass('ui-state-error');
                    //GoOn = false;
                }
                else {
                    //$("#<%=ddlStatus.ClientID %>").removeClass('ui-state-error');
                    //GoOn = true;
                }

                if ($("#aspnetForm").valid() & GoOn) {
                    return true;
                }
                else {
                    return false;
                }
            });
            //--------------------------------------------------------

            $("#<%=btnFechar.ClientID %>").click(function (e) {
                e.preventDefault();
                window.location = "frmRMBR.aspx";
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="modalRMBR" style="position: static; width: 630px; height: 300px; overflow: hidden;" title="RMBR">
        <div class="content_post" style="position: static; vertical-align: super; width: 610px; padding-right: 15px; padding-top: 10px; padding-bottom: 10px; float: left; background-color: lightyellow;">
            <div style="width: 320px; float: left;">
                <asp:Label ID="lbProcesso" runat="server" Text="Digite o número do processo"></asp:Label>
                &nbsp;<asp:TextBox ID="txtProcesso" runat="server" Width="110px"></asp:TextBox>
            </div>
            <div style="width: 290px; float: left;">
                <asp:Label ID="lbErro" runat="server" ForeColor="Red"></asp:Label>
            </div>
        </div>
        <div class="content_post" style="border-top: thin solid #79b7e7; padding-top: 20px; position: static; float: left;">
            <div style="position: static; vertical-align: super; width: 150px; padding-right: 15px; padding-bottom: 10px; float: left;">
                <asp:Label ID="lbRMBR" runat="server" Text="Número RMBR"></asp:Label>
                <asp:TextBox ID="txtRMBR" runat="server" Width="150px"></asp:TextBox>
            </div>
            <div style="position: static; vertical-align: super; width: 123px; padding-right: 15px; padding-bottom: 10px; float: left;">
                <asp:Label ID="lbDataInicial" runat="server" Text="Data inicial"></asp:Label>
                <asp:TextBox ID="txtDataInicial" runat="server" Width="123px"></asp:TextBox>
            </div>
            <div style="position: static; vertical-align: super; width: 123px; padding-right: 15px; padding-bottom: 10px; float: left;">
                <asp:Label ID="lbDataFinal" runat="server" Text="Data final"></asp:Label>
                <asp:TextBox ID="txtDataFinal" runat="server" Width="123px"></asp:TextBox>
            </div>
            <div style="position: static; vertical-align: super; width: 180px; padding-bottom: 20px; float: left;">
                <asp:Label ID="lbDI" runat="server" Text="Número DI"></asp:Label>
                <asp:TextBox ID="txtDI" runat="server" Width="180px" MaxLength="12"></asp:TextBox>
            </div>
            <div style="position: static; vertical-align: super; width: 123px; padding-right: 15px; padding-bottom: 10px; float: left;">
                <asp:Label ID="lbBaixa" runat="server" Text="Data de baixa"></asp:Label>
                <asp:TextBox ID="txtDataBaixa" runat="server" Width="123px"></asp:TextBox>
            </div>
            <div style="position: static; vertical-align: super; width: 150px; padding-right: 15px; padding-bottom: 10px; float: left;">
                <asp:Label ID="lbDataProrrog" runat="server" Text="Data de prorrogação"></asp:Label>
                <asp:TextBox ID="txtDataProrrog" runat="server" Width="135px"></asp:TextBox>
            </div>
            <div style="position: static; vertical-align: super; width: 324px; padding-bottom: 40px; float: left;">
                <asp:Label ID="lbStatus" runat="server" Text="Status"></asp:Label>
                <asp:DropDownList ID="ddlStatus" runat="server" Width="324px">                    
                    <asp:ListItem Value="1">A VENCER</asp:ListItem>
                    <asp:ListItem Value="2">VENCIDO</asp:ListItem>
                    <asp:ListItem Value="3">BAIXADO</asp:ListItem>
                    <asp:ListItem Value="4">PRORROGADO</asp:ListItem>
                    <asp:ListItem Value="5">BAIXA EM ANÁLISE</asp:ListItem>
                </asp:DropDownList>
            </div>
        </div>
        <div style="position: static; vertical-align: super; width: 630px; float: left; border-top: thin solid #79b7e7; padding-top: 10px;">
            <div class="content_post" style="position: static; vertical-align: super; width: 100%; padding-bottom: 10px; float: left; text-align: right;">
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" Height="26px" />
                &nbsp;<asp:Button ID="btnFechar" runat="server" Text="Fechar" />
            </div>
        </div>
    </div>
    <asp:UpdatePanel ID="uppGravar" runat="server">
        <ContentTemplate>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSalvar" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
    <div id="modalSucesso" title="<%=resxIdioma.informacao%>" style="display: none; text-align: center;">
        <p>
            <br />
            <span>
                <%=Resources.resxIdioma.msg_gravadoOk%></span>
        </p>
    </div>
    <div id="modalErro" title="<%=resxIdioma.erro%>" style="display: none; text-align: center;">
        <p>
            <br />
            <span>
                <%=resxIdioma.msg_gravadoErro%></span>
        </p>
    </div>
    <div id="modalCheck" title="<%=resxIdioma.erro%>" style="display: none; text-align: center;">
        <p>
            <br />
            <span>Registro não foi salvo, pois o número do processo não existe.</span>
        </p>
    </div>
</asp:Content>
