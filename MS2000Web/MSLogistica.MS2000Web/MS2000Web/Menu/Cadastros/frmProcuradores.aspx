<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="frmProcuradores.aspx.cs" Inherits="MS2000Web.Menu.Cadastros.frmProcuradores" %>

<%@ Import Namespace="Resources" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Script/MSScript/jsProcuradores.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de Procuradores" />
    <div>
        <div id="container" class="ui-widget-content">
            <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
                <asp:Label ID="lbTitulo" runat="server" Text="Procuradores"></asp:Label>
            </h3>
            <div class="content_post" style="padding-bottom: 10px;">
                <asp:Button ID="btnIncluir" runat="server" Text="Incluir" />
                <asp:Button ID="btnRelatorio" runat="server" Text="Relatório" />
            </div>
            <div class="content_post" style="border-top: thin solid #79b7e7; padding-top: 10px;">
                <asp:Label ID="lbNomePesq" runat="server" Text="Nome "></asp:Label>
                <asp:TextBox ID="txtParametro" runat="server" Width="250px" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox>&nbsp;
                <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" Width="90px" OnClick="btnPesquisar_Click" />&nbsp;
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="80px" OnClick="btnVoltar_Click" />
            </div>
            <br />
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="grvProcurador" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="2" CssClass="listaArquivos" EmptyDataText="Nenhum registro foi encontrado."
                        PageSize="11" Width="735px" OnPageIndexChanging="grvProcurador_PageIndexChanging"
                        OnRowDataBound="grvProcurador_RowDataBound">
                        <Columns>
                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText='Abrir' ItemStyle-HorizontalAlign="Center"
                                ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnAbrir" runat="server" CausesValidation="False" ImageUrl="~/Layout/Imagens//btn_Abrir.png"
                                        OnClientClick='<%# string.Format("Editar(\"{0}\"); return false;", Eval("Codigo").ToString()) %>' />
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
                            <asp:BoundField DataField="CGC_CPF" HeaderText="CNPJ/CPF">
                                <HeaderStyle Width="150px" HorizontalAlign="Center" />
                                <ItemStyle Width="150px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Razao_Social" HeaderText="Nome completo" />
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
                    <asp:AsyncPostBackTrigger ControlID="btnPesquisar" EventName="Click" />
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
        <div id="modalProcuradores" title="<%=resxIdioma.procuradores%>" style="display: none; width: 680px; height: 360px;">
            <div style="position: static; width: 450px; float: left; padding-right: 20px;">
                <asp:Label ID="lbNome" runat="server" Text="Nome"></asp:Label>
                <input type="text" id="txtNome" name="txtNome" style="width: 450px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <div style="width: 200px; position: relative; float: left">
                <asp:Label ID="lbCNPJ" runat="server" Text="CNPJ/CPF"></asp:Label>
                <input type="text" id="txtCNPJ" name="txtCNPJ" style="width: 200px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <br />
            <br />
            <br />
            <br />
            <div style="width: 400px; position: static; float: left; padding-right: 20px;">
                <asp:Label ID="lbEndereco" runat="server" Text="Endereço"></asp:Label>
                <input type="text" id="txtEndereco" name="txtEndereco" style="width: 400px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <div style="width: 100px; position: static; float: left; padding-right: 20px;">
                <asp:Label ID="lbNumero" runat="server" Text="Número"></asp:Label>
                <input type="text" id="txtNumero" name="txtNumero" style="width: 100px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <div style="width: 130px; float: left; position: static;">
                <asp:Label ID="lbComplet" runat="server" Text="Complemento"></asp:Label>
                <input type="text" id="txtComplet" name="txtComplet" style="width: 130px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <br />
            <br />
            <br />
            <br />
            <div style="width: 130px; position: static; float: left; padding-right: 20px;">
                <asp:Label ID="lbTelefone" runat="server" Text="Telefone"></asp:Label>
                <input type="text" id="txtTelefone" name="txtTelefone" style="width: 130px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <div style="width: 250px; position: static; float: left; padding-right: 20px;">
                <asp:Label ID="lbBairro" runat="server" Text="Bairro"></asp:Label>
                <input type="text" id="txtBairro" name="txtBairro" style="width: 250px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <div style="width: 250px; float: left; position: static;">
                <asp:Label ID="lbCidade" runat="server" Text="Cidade"></asp:Label>
                <input type="text" id="txtCidade" name="txtCidade" style="width: 250px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <br />
            <br />
            <br />
            <br />
            <div style="width: 130px; position: static; float: left; padding-right: 20px;">
                <asp:Label ID="lbCep" runat="server" Text="CEP"></asp:Label>
                <input type="text" id="txtCEP" name="txtCEP" style="width: 130px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <div style="width: 250px; position: static; float: left; padding-right: 20px;">
                <asp:Label ID="lbEstado" runat="server" Text="Estado"></asp:Label>
                <input type="text" id="txtEstado" name="txtEstado" style="width: 250px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <div style="width: 255px; float: left; position: static;">
                <asp:Label ID="lbUF" runat="server" Text="UF"></asp:Label>
                <asp:DropDownList ID="ddlUF" runat="server" Width="255px" CssClass="text ui-widget-content ui-corner-all">
                </asp:DropDownList>
            </div>
            <br />
            <br />
            <br />
            <br />
            <div style="width: 300px; position: static; float: left; padding-right: 20px;">
                <asp:Label ID="lbPais" runat="server" Text="País"></asp:Label>
                <asp:DropDownList ID="ddlPais" runat="server" Width="300px" CssClass="text ui-widget-content ui-corner-all">
                </asp:DropDownList>
            </div>
            <div style="width: 350px; float: left; position: static;">
                <asp:Label ID="lbRegistro" runat="server" Text="Registro"></asp:Label>
                <input type="text" id="txtRegistro" style="width: 350px;" class="text ui-widget-content ui-corner-all" />
            </div>
            <br />
            <br />
            <br />
            <br />
            <div style="width: 350px; position: relative;">
                <input id="ckbExibe" name="ckbExibe" type="checkbox" /><asp:Label ID="lbMsgCheck"
                    runat="server" Text="Exibe nas informações complemetares."></asp:Label>
            </div>
            <div style="text-align: right; padding-top: 20px; width: 670px; height: 40px;">
                <span class="content">
                    <input id="btnSalvar" type="button" value="<%=resxIdioma.salvar%>" />
                    <input id="btnCancelar_Modal" type="button" value="<%=resxIdioma.cancelar%>" /></span>&nbsp;
            </div>
        </div>
        <%--<div id="relProcuradores" style="text-align: center; display: none;">
          <iframe src="../../Relatorios/rptProcuradores.aspx" frameborder="0" scrolling="auto"
                style="width: 100%; height: 100%"></iframe>
        </div>--%>
    </div>
    <%--    <div id="loading" align="center" style="padding-right: 25px; z-index: 1; padding-left: 25px;
        left: 45%; top: 45%; padding-bottom: 15px; padding-top: 15px; position: absolute;">
        <img alt="Loading..." id="ImgLoader" runat="server" src="../../Layout/Imagens/carregando.gif" />
    </div>--%>



    <div id="relProcuradores" style="text-align: center; display: none;">
    </div>
</asp:Content>
