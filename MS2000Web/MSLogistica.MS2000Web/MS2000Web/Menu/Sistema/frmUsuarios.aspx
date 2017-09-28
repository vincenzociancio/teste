<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmUsuarios.aspx.cs" Inherits="MS2000Web.Menu.Sistema.frmUsuarios" %>

<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=GridView1.ClientID %>').Scrollable({
                    IsInUpdatePanel: false
                });
            });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de Usuários" />
    <div id="container" class="ui-widget-content">
        <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
            <asp:Label ID="lbTitulo" runat="server" Text="Usuários do sistema"></asp:Label>
        </h3>
        <div class="content_post" style="vertical-align: super; padding-bottom: 10px;">
            <asp:Button ID="btnIncluir" runat="server" Text="Incluir" PostBackUrl="~/Menu/Sistema/frmUsuariosDetalhes.aspx" />
        </div>
        <div class="content_post" style="border-top: thin solid #79b7e7; padding-top: 10px;">
            <asp:Label ID="Label1" runat="server" Text="Nome  Completo "></asp:Label>
            <asp:TextBox ID="txtFiltrarNome" runat="server" Width="300px"></asp:TextBox>
            <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />&nbsp;
            <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" />
        </div>
        <br />
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="odsGrid" Font-Names="Verdana" Font-Size="9pt" PageSize="300" Width="725px" ShowHeaderWhenEmpty="True" CellPadding="2" OnRowDataBound="GridView1_RowDataBound">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText='Abrir' ItemStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnAbrir" runat="server" CausesValidation="False" ImageUrl="~/Layout/Imagens/btn_Abrir.png" CommandArgument='<%# Eval("usuario") %>' OnClick="btnAbrir_Click" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Apagar" ItemStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnApagar" runat="server" CausesValidation="False" CommandArgument='<%# Eval("usuario") %>' ImageUrl="~/Layout/Imagens/btn_del.png" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="nome_completo" HeaderText="Nome">
                        <HeaderStyle Width="70%" />
                    </asp:BoundField>
                    <asp:BoundField DataField="ramal" HeaderText="Ramal">
                        <HeaderStyle Width="200px" />
                        <ItemStyle HorizontalAlign="Center" />
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
    <asp:ObjectDataSource ID="odsGrid" runat="server" SelectMethod="BuscarTodos" TypeName="MSBiblioteca.BLL.Usuario">
        <SelectParameters>
            <asp:Parameter DefaultValue="true" Name="SomenteRegistrosAtivos" Type="Boolean" />
        </SelectParameters>
    </asp:ObjectDataSource>
</asp:Content>
