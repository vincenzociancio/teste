<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmAMB.aspx.cs" Inherits="MS2000Web.Menu.Processos.frmAMB" %>

<%@ Import Namespace="Resources" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--<script src="../../Script/MSScript/jsAMB.js" type="text/javascript"></script>--%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de AMB" />
    <div>
        <div id="container" class="ui-widget-content">
            <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
                <asp:Label ID="lbTitulo" runat="server" Text="Autorização de Movimentação de Bens Submetidos ao Regime de Admissão Temporário"></asp:Label>
            </h3>
            <div class="content_post" style="padding-bottom: 10px;">
                <asp:Button ID="btnImprimir" runat="server" Text="Imprimir" OnClick="btnImprimir_Click" />
            </div>
            <div class="content_post" style="border-top: thin solid #79b7e7; padding-top: 10px; padding-bottom:10px;">
                <asp:Label ID="lblProcesso" runat="server" Text="Número do Processo: "></asp:Label>
                <asp:TextBox ID="txtProcesso" runat="server" Width="250px" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox>&nbsp;
                <br />
                <asp:Label ID="lblProcessoRCR" runat="server" Text="Número do Processo RCR: "></asp:Label>
                <asp:TextBox ID="txtProcessoRCR" runat="server" Width="250px" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox>&nbsp;                
            </div>
            <div style="border-top: thin solid #79b7e7; padding-top: 10px;">
                <fieldset>
                    <legend>
                        <asp:Label ID="lblViaTransporte" runat="server" Text="Via de Transporte "></asp:Label></legend>
                    <asp:RadioButtonList ID="rblVia" runat="server" Font-Bold="False" Font-Names="Verdana" Font-Size="9pt" RepeatDirection="Horizontal">
                        <asp:ListItem Value="T">Terrestre</asp:ListItem>
                        <asp:ListItem Value="A">Aérea</asp:ListItem>
                        <asp:ListItem Value="M">Marítima</asp:ListItem>
                        <asp:ListItem Selected="True" Value="O">Outras</asp:ListItem>
                    </asp:RadioButtonList>
                    &nbsp;<asp:Label ID="lblIdentificacao" runat="server" Text="Identificação do meio de transporte: "></asp:Label>
                    <asp:TextBox ID="txtIdentificacao" runat="server" Width="250px" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox>&nbsp;
                    <br />
                    <br />
                </fieldset>
            </div>
        </div>
    </div>
    <div id="relAMB" style="text-align: center; display: none;">
    </div>
</asp:Content>
