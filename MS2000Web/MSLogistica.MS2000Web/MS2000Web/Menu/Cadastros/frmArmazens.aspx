<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="frmArmazens.aspx.cs" Inherits="MS2000Web.Menu.Cadastros.frmArmazens" %>

<%@ Import Namespace="Resources" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de Amazens" />
    <div>
        <div id="container" class="ui-widget-content">
            <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
                <asp:Label ID="lbTitulo" runat="server" Text="Armazéns"></asp:Label>
            </h3>
            <div class="content_post" style="padding-bottom: 10px;">
                <asp:Button ID="btnIncluir" runat="server" Text="Incluir" PostBackUrl="~/Menu/Cadastros/frmArmazensDetalhes.aspx" />
                <input id="btnRelatorio" type="button" value="<%=resxIdioma.relatorio%>" />
            </div>
            <div class="content_post" style="border-top: thin solid #79b7e7; padding-top: 10px;">
                <asp:Label ID="lbDescricaoPesq" runat="server" Text="Descrição "></asp:Label>
                <asp:TextBox ID="txtParametro" runat="server" Width="250px" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox>&nbsp;
                <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" Width="90px" OnClick="btnPesquisar_Click" />&nbsp;
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="80px" OnClick="btnVoltar_Click" />
            </div>
            <br />
            <asp:GridView ID="grvArmazens" runat="server" AutoGenerateColumns="False"
                CellPadding="2" CssClass="listaArquivos" EmptyDataText="Nenhum registro foi encontrado."
                PageSize="13" Width="735px" OnPageIndexChanging="grvArmazens_PageIndexChanging"
                OnRowDataBound="grvArmazens_RowDataBound">
                <Columns>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText='Abrir' ItemStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:ImageButton ID="ImageButton1" runat="server" CausesValidation="False" ImageUrl="~/Layout/Imagens/btn_Abrir.png" CommandArgument='<%# Eval("Codigo") %>' OnClick="btnAbrir_Click" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Apagar" ItemStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnApagar" runat="server" CausesValidation="False" CommandArgument='<%# Eval("Codigo") %>'
                                ImageUrl="~/Layout/Imagens/btn_del.png" OnClick="btnApagar_Click" OnClientClick="return confirmaApagar(this);" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="Codigo" HeaderText="Código">
                        <HeaderStyle Width="80px" HorizontalAlign="Center" />
                        <ItemStyle Width="80px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Descricao" HeaderText="Descrição" />
                </Columns>
                <EmptyDataRowStyle BorderStyle="None" Font-Names="Verdana" Font-Size="10pt" HorizontalAlign="Center"
                    VerticalAlign="Middle" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F3F4FA" Font-Names="Verdana" Font-Size="8pt" />
                <EditRowStyle BackColor="#2461BF" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BorderStyle="None" Font-Bold="False" Font-Names="Verdana" Font-Size="9pt"
                    HorizontalAlign="Center" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </div>
        <div id="modalApagar" title="<%=resxIdioma.confirmacao%>" style="display: none;">
            <p style="padding-bottom: 10px;">
                <span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>
                <br />
                <span>
                    <%=resxIdioma.msg_apagar%></span>
            </p>
            <div class="content_post" style="text-align: right; padding-top: 10px; border-top: thin solid #79b7e7;">
                <span>
                    <input id="btnConfirmarApagar" type="button" value="<%=resxIdioma.confirmar%>" />
                    <input id="btnCancelarApagar" type="button" value="<%=resxIdioma.cancelar%>" /></span>
            </div>
        </div>
    </div>
</asp:Content>
