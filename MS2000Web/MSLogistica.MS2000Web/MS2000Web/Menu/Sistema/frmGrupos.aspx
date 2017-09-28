<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmGrupos.aspx.cs" Inherits="MS2000Web.Menu.Sistema.frmGrupos" %>

<%@ Import Namespace="Resources" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=grdGrupos.ClientID %>').Scrollable({
                    IsInUpdatePanel: false
                });
            });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de Grupos" />
    <div id="container" class="ui-widget-content">
        <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
            <asp:Label ID="lbTitulo" runat="server" Text="Grupos do sistema"></asp:Label>
        </h3>
        <div class="content_post" style="vertical-align: super; padding-bottom: 10px;">
            <asp:Button ID="btnIncluir" runat="server" Text="Incluir" PostBackUrl="~/Menu/Sistema/frmGruposDetalhes.aspx" />
        </div>
        <div class="content_post" style="border-top: thin solid #79b7e7; padding-top: 10px;">
            <asp:Label ID="Label1" runat="server" Text="Nome do Grupo "></asp:Label>
            <asp:TextBox ID="txtFiltrarNome" runat="server" Width="300px"></asp:TextBox>
            <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />&nbsp;
            <asp:Button ID="btnVoltar" runat="server" Text="Voltar" />
        </div>
        <br />
        <div>
            <asp:GridView ID="grdGrupos" runat="server" AutoGenerateColumns="False" Font-Names="Verdana" Font-Size="10pt" PageSize="500" Width="725px" ShowHeaderWhenEmpty="True" CellPadding="2" DataKeyNames="PK_AcessoGrupo" DataSourceID="odbGrupos" OnRowDataBound="grdGrupos_RowDataBound">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText='Abrir' ItemStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnAbrir" runat="server" CausesValidation="False" ImageUrl="~/Layout/Imagens/btn_Abrir.png" CommandArgument='<%# Eval("PK_AcessoGrupo") %>' OnClick="btnAbrir_Click" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Apagar" ItemStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnApagar" runat="server" CausesValidation="False" CommandArgument='<%# Eval("PK_AcessoGrupo") %>' ImageUrl="~/Layout/Imagens/btn_del.png" OnClick="btnApagar_Click" OnClientClick="return confirmaApagar(this);" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="descricao" HeaderText="Descrição">
                        <ControlStyle Font-Names="Verdana" Font-Size="10pt" />
                        <HeaderStyle />
                    </asp:BoundField>
                </Columns>
                <EditRowStyle Wrap="True" />
                <EmptyDataRowStyle Wrap="True" />
                <HeaderStyle ForeColor="White" />
                <RowStyle BackColor="#F3F4FA" Wrap="True" />
                <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" />
            </asp:GridView>
        </div>
    </div>
    <asp:ObjectDataSource ID="odbGrupos" runat="server" SelectMethod="BuscarTodos" TypeName="MSBiblioteca.BLL.AcessoGrupo"></asp:ObjectDataSource>
    <div id="modalApagar" title="<%=resxIdioma.confirmacao%>" style="display: none;">
        <p>
            <span class="ui-icon ui-icon-alert" style="float: left; margin: 0 7px 20px 0;"></span>
            <br />
            <span>
                <%=resxIdioma.msg_apagar%></span>
        </p>
        <div style="text-align: right; padding-top: 20px;">
            <span class="content">
                <input id="btnConfirmarApagar" type="button" value="<%=resxIdioma.confirmar%>" />
                <input id="btnCancelarApagar" type="button" value="<%=resxIdioma.cancelar%>" /></span>
        </div>
    </div>
</asp:Content>
