<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="frmSiscomexExportacao.aspx.cs" Inherits="MS2000Web.Menu.Processos.frmSiscomexExportacao" %>

<%@ Import Namespace="Resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#dialog:ui-dialog').dialog('destroy');
            $('#modalNaoExisteProcesso').dialog({
                autoOpen: false,
                height: 180,
                width: 400,
                modal: true,
                resizable: false,
                close: function () {
                    $(this).dialog('close');
                }
            });

            $('#modalSalvoSucesso').dialog({
                autoOpen: false,
                height: 180,
                width: 400,
                modal: true,
                resizable: false,
                close: function () {
                    $(this).dialog('close');
                }
            });
        });
        $("#<%=txtProcesso.ClientID %>").mask('99999/99');
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div id="container" class="ui-widget-content">
        <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
            <asp:Label ID="lbTitulo" runat="server" Text="Tela de Siscomex Exportação"></asp:Label>
        </h3>
        <div class="content_post" style="vertical-align: super;">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Digite o N° do Processo:"></asp:Label>
            <asp:TextBox ID="txtProcesso" runat="server" Width="300px" MaxLength="8"></asp:TextBox>
            <asp:Button ID="btnArquivo" runat="server" Text="Gerar Arquivo " OnClick="btnArquivo_Click" />&nbsp;
        </div>
        <br />
    </div>
    <%--<div>
        <asp:UpdatePanel ID="uppGerar" runat="server">
             <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnArquivo" EventName="Click" />
                </Triggers>
        </asp:UpdatePanel>
    </div>--%>
    <div id="modalNaoExisteProcesso" title="<%=resxIdioma.informacao%>" style="display: none; text-align: center;">
        <p style="padding-bottom: 10px;">
            <br />
            <span>Processo não encontrado!</span>
        </p>
    </div>

</asp:Content>
