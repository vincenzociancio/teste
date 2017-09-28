<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmCaeDetalhes.aspx.cs" Inherits="MS2000Web.Menu.Cadastros.frmCAEIncluirAlterar" %>

<%@ Import Namespace="Resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            // Destruido dialog
            $('#dialog:ui-dialog').dialog('destroy');
            // Montando o Modal
            $('#modalCAE').dialog({
                autoOpen: true,
                height: 270,
                width: 550,
                modal: true,
                resizable: false,
                open: function (type, data) {
                    $(this).parent().appendTo("form:first");
                },
                close: function () {
                    window.location = "frmCAE.aspx";
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

            //-----------------------Validando-----------------------
            $("#aspnetForm").validate();

            $("#<%=txtCodigo.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });

            $("#<%=txtDescricao.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });

            $("#<%=txtDescricaoIng.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });

            $("#<%=btnFechar.ClientID %>").click(function (e) {
                e.preventDefault();
                window.location = "frmCAE.aspx";
            });

            $("#<%=btnSalvar.ClientID %>").click(function () {
                if ($("#aspnetForm").valid()) {
                    $("#<%=txtCodigo.ClientID %>").attr('readonly', true).attr("disabled", "disabled");
                    return true
                }
                else {
                    return false
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="modalCAE" title="<%=resxIdioma.atividade_economica%>" style="display: block; overflow:hidden;">
        <div style="position: static; width: 160px; padding-right: 15px; padding-bottom: 10px; padding-top: 10px;">
            <asp:Label ID="lbCodigo" runat="server" Text="Código"></asp:Label>
            <asp:TextBox ID="txtCodigo" runat="server" MaxLength="15" Width="160px"></asp:TextBox>
        </div>
        <div style="position: static; width: 520px; padding-right: 15px; padding-bottom: 10px;">
            <asp:Label ID="lbDescricao" runat="server" Text="Descrição"></asp:Label>
            <asp:TextBox ID="txtDescricao" runat="server" MaxLength="254" Width="520px"></asp:TextBox>
        </div>
        <div style="position: static; width: 520px; padding-right: 15px; padding-bottom: 10px;">
            <asp:Label ID="lbDescricaoIng" runat="server" Text="Descrição Inglês"></asp:Label>
            <asp:TextBox ID="txtDescricaoIng" runat="server" MaxLength="254" Width="520"></asp:TextBox>
        </div>
        <div style="text-align: right; padding-top: 20px; width: 525px; height: 40px;">
            <span class="content_post">
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                &nbsp;<asp:Button ID="btnFechar" runat="server" Text="Fechar" OnClick="btnFechar_Click" />
            </span>
        </div>
        <asp:UpdatePanel ID="uppbtnSalvar" runat="server">
            <ContentTemplate>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnSalvar" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>
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
</asp:Content>
