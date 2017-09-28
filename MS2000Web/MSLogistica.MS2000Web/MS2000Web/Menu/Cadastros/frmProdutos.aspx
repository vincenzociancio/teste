<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="frmProdutos.aspx.cs" Inherits="MS2000Web.Menu.Cadastros.frmProdutos" %>

<%@ Import Namespace="Resources" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" src="../../Script/MSScript/jsProdutos.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de Produtos" />
    <div>
        <div id="container" class="ui-widget-content">
            <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
                <asp:Label ID="lbTitulo" runat="server" Text="Produtos"></asp:Label>
            </h3>
            <div class="content_post" style="padding-bottom: 10px;">
                <input id="btnIncluir" type="button" value="<%=resxIdioma.incluir%>" />
                <input id="btnRelatorio" type="button" value="<%=resxIdioma.relatorio%>" />
            </div>
            <div class="content_post" style="border-top: thin solid #79b7e7; padding-top: 10px;">
                <asp:Label ID="lbPesqCodigo" runat="server" Text="Código: "></asp:Label>
                &nbsp;<asp:TextBox ID="txtPesqCodigo" runat="server" Width="120px" OnTextChanged="txtPesqCodigo_TextChanged"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:Label ID="lbPesqDescricao" runat="server" Text="Descrição: "></asp:Label>
                <asp:TextBox ID="txtPesqDescricao" runat="server" Width="250px" OnTextChanged="txtPesqDescricao_TextChanged"></asp:TextBox>&nbsp;
                &nbsp;
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="80px" OnClick="btnVoltar_Click" />
            </div>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="grvProdutos" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="2" CssClass="listaArquivos" EmptyDataText="Nenhum registro foi encontrado."
                        PageSize="11" Width="735px" OnPageIndexChanging="grvProdutos_PageIndexChanging" OnRowDataBound="grvProdutos_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Abrir" ItemStyle-HorizontalAlign="Center"
                                ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnAbrir0" runat="server" CausesValidation="False" ImageUrl="~/Layout/Imagens/btn_Abrir.png"
                                        OnClientClick='<%# string.Format("Editar(\"{0}\"); return false;", Eval("Codigo").ToString()) %>' />


                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" Width="50px" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText='Apagar' ItemStyle-HorizontalAlign="Center"
                                ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnApagar" runat="server" CausesValidation="False" CommandArgument='<%# Eval("Codigo") %>' ImageUrl="~/Layout/Imagens/btn_del.png" OnClick="btnApagar_Click" OnClientClick="return confirmaApagar(this);" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" Width="50px" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="codigo" HeaderText="Código">
                                <HeaderStyle Width="100px" />
                            </asp:BoundField>
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
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnAtualizarGrid" EventName="Click" />
                    <asp:AsyncPostBackTrigger ControlID="btnVoltar" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
            <asp:Button ID="btnAtualizarGrid" runat="server" Text="" Style="display: none;" OnClick="btnAtualizarGrid_Click" />
        </div>
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
        <div id="modalProdutos" title="<%=resxIdioma.atividade_economica%>" style="display: none;">
            <div style="position: static; width: 160px; padding-right: 20px;">
                <asp:Label ID="lbCodigo" runat="server" Text="Código"></asp:Label>
                <input type="text" name="txtCodigo" id="txtCodigo" class="text ui-widget-content ui-corner-all"
                    maxlength="15" style="width: 160px;" />
            </div>
            <br />
            <div style="position: static; width: 520px; padding-right: 20px;">
                <asp:Label ID="lbDescricao" runat="server" Text="Descrição"></asp:Label>
                <input type="text" name="txtDescricao" id="txtDescricao" class="text ui-widget-content ui-corner-all"
                    maxlength="254" style="width: 520px;" />
            </div>
            <br />
            <div style="position: static; width: 520px; padding-right: 20px;">
                <asp:Label ID="lbDescricaoIng" runat="server" Text="Descrição Inglês"></asp:Label>
                <input type="text" name="txtDescricaoIng" id="txtDescricaoIng" class="text ui-widget-content ui-corner-all"
                    maxlength="254" style="width: 520px;" />
            </div>
            <div style="text-align: right; padding-top: 20px; width: 530px; height: 40px;">
                <span class="content">
                    <input id="btnSalvar" type="button" value="<%=resxIdioma.salvar%>" />
                    <input id="btnCancelar_Modal" type="button" value="<%=resxIdioma.cancelar%>" /></span>
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
    </div>
</asp:Content>
