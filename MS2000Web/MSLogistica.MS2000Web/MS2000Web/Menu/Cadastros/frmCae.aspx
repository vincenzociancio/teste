<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="frmCae.aspx.cs" Inherits="MS2000Web.Menu.Cadastros.frmCAE" %>

<%@ Import Namespace="Resources" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
    <script type="text/javascript">
        $(document).ready(function () {
            $('#<%=grvCAE.ClientID %>').Scrollable({
                IsInUpdatePanel: false
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de CAE" />
    <div>
        <div id="container" class="ui-widget-content">
            <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
                <asp:Label ID="lbTitulo" runat="server" Text="Atividade Econômica"></asp:Label>
            </h3>
            <div class="content_post" style="padding-bottom: 10px;">
                <asp:Button ID="btnIncluir" runat="server" Text="Incluir" PostBackUrl="~/Menu/Cadastros/frmCaeDetalhes.aspx" />
                <input id="btnRelatorio" type="button" value="Relatório" runat="server" />
            </div>
            <div class="content_post" style="border-top: thin solid #79b7e7; padding-top: 10px;">
                <asp:Label ID="lbPesqCodigo" runat="server" Text="Código: "></asp:Label>
                &nbsp;<asp:TextBox ID="txtPesqCodigo" runat="server" Width="120px" OnTextChanged="txtPesqCodigo_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:Label ID="lbPesqDescricao" runat="server" Text="Descrição: "></asp:Label>
                <asp:TextBox ID="txtPesqDescricao" runat="server" Width="250px" OnTextChanged="txtPesqDescricao_TextChanged"></asp:TextBox>&nbsp;
                <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" Width="90px" OnClick="btnPesquisar_Click" />&nbsp;
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="80px" OnClick="btnVoltar_Click" />
            </div>
            <br />
            <asp:GridView ID="grvCAE" runat="server" AutoGenerateColumns="False"
                CellPadding="2" CssClass="listaArquivos" EmptyDataText="Nenhum registro foi encontrado."
                PageSize="100" Width="725px" OnRowDataBound="grvCAE_RowDataBound" DataSourceID="odsGrid" OnPageIndexChanging="grvCAE_PageIndexChanging">
                <Columns>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText='Abrir' ItemStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnAbrir" runat="server" CausesValidation="False" ImageUrl="~/Layout/Imagens/btn_Abrir.png" CommandArgument='<%# Eval("PKCodigo") %>' OnClick="btnAbrir_Click" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="50px" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Apagar" ItemStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnApagar" runat="server" CausesValidation="False" CommandArgument='<%# Eval("PKCodigo") %>'
                                ImageUrl="~/Layout/Imagens/btn_del.png" OnClick="btnApagar_Click" OnClientClick="return confirmaApagar(this);" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" Width="50px" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:BoundField DataField="pkcodigo" HeaderText="Código">
                        <HeaderStyle Width="100px" />
                        <ItemStyle Width="100px" />
                    </asp:BoundField>
                </Columns>
                <EmptyDataRowStyle BorderStyle="None" Font-Names="Verdana" Font-Size="10pt" HorizontalAlign="Center"
                    VerticalAlign="Middle" />
                <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <RowStyle BackColor="#F3F4FA" Font-Names="Verdana" Font-Size="8pt" Wrap="True" />
                <EditRowStyle BackColor="#2461BF" />
                <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                <PagerStyle BorderStyle="None" Font-Bold="False" Font-Names="Verdana" Font-Size="9pt"
                    HorizontalAlign="Center" />
                <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
            </asp:GridView>
        </div>
        <asp:ObjectDataSource ID="odsGrid" runat="server" SelectMethod="Buscar" TypeName="MSBiblioteca.BLL.Cae"></asp:ObjectDataSource>
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
    </div>
</asp:Content>
