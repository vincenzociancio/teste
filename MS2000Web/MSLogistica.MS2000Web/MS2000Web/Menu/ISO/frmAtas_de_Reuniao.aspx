<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="frmAtas_de_Reuniao.aspx.cs" Inherits="MS2000Web.Menu.ISO.frmAtas_de_Reuniao" %>

<%@ Import Namespace="Resources" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="../../Script/MSScript/jsAtas_de_Reuniao.js" type="text/javascript"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de Atas de Reuniões" />
    <div>
        <div id="container" class="ui-widget-content">
            <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
                <asp:Label ID="lbTitulo" runat="server" Text="Atas de reunião"></asp:Label>
            </h3>
            <div class="content_post" style="padding-bottom: 10px;">
                <input id="btnIncluir" type="button" value="<%=resxIdioma.incluir%>" />
            </div>
            <div class="content_post" style="border-top: thin solid #79b7e7; padding-top: 10px;">
                <asp:RadioButtonList ID="rblOpcao" runat="server" Font-Names="Verdana" Font-Size="12px"
                    Height="24px" RepeatDirection="Horizontal">
                </asp:RadioButtonList>
                &nbsp;&nbsp;&nbsp;<asp:Label ID="lbFiltrarPor" runat="server" Text="Filtrar por "></asp:Label>
                &nbsp;<asp:DropDownList ID="ddlOpcao" runat="server" CssClass="text ui-widget-content ui-corner-all"
                    Width="150px">
                </asp:DropDownList>
                &nbsp;<asp:TextBox ID="txtParametro" runat="server" Width="300px" CssClass="text ui-widget-content ui-corner-all"></asp:TextBox>&nbsp;
                <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" Width="90px" OnClick="btnPesquisar_Click" />&nbsp;
                <asp:Button ID="btnVoltar" runat="server" Text="Voltar" Width="80px" OnClick="btnVoltar_Click" />
            </div>
            <br />
            <asp:UpdatePanel ID="uppAtas" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="grvAtas" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                        CellPadding="2" CssClass="listaArquivos" EmptyDataText="Nenhum registro foi encontrado."
                        PageSize="11" Width="735px" OnRowDataBound="grvAtas_RowDataBound" OnPageIndexChanging="grvAtas_PageIndexChanging">
                        <Columns>
                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText='Abrir' ItemStyle-HorizontalAlign="Center"
                                ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnAbrir" runat="server" CausesValidation="False" ImageUrl="~/Layout/Imagens/btn_Abrir.png"
                                        CommandArgument='<%# Eval("pk_atas") %>' OnClick="btnAbrirAtas_Click" OnClientClick='<%# string.Format("Editar(\"{0}\"); return true;", Eval("pk_atas").ToString()) %>' />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Apagar" ItemStyle-HorizontalAlign="Center"
                                ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnApagar" runat="server" CausesValidation="False" CommandArgument='<%# Eval("pk_atas") %>'
                                        ImageUrl="~/Layout/Imagens/btn_del.png" OnClick="btnApagar_Click" OnClientClick="return confirmaApagar(this);" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderText="Upload">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnUpload" runat="server" CausesValidation="False" CommandArgument='<%# Eval("pk_atas") %>'
                                        ImageUrl="~/Layout/Imagens/upload.jpg" OnClientClick="AbrirUpload();" OnClick="btnUpload_Click" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Data" HeaderText="Data" DataFormatString="{0:dd/MM/yyyy}">
                                <HeaderStyle Width="80px" HorizontalAlign="Center" />
                                <ItemStyle Width="80px" />
                            </asp:BoundField>
                            <asp:BoundField DataField="Tema" HeaderText="Tema" />
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
    </div>
    <div id="modalAtas" title="<%=resxIdioma.atas_de_reuniao%>" style="display: none; width: 600px; height: 900px; overflow: hidden;">
        <div id="accordion" style="width: 600px;">
            <h3>
                <a href="#">
                    <%=resxIdioma.dados_da_reuniao%></a></h3>
            <div style="overflow: hidden;">
                <div style="height: 230px;">
                    <div style="position: static; width: 400px; float: left; padding-right: 20px;">
                        <asp:Label ID="lbTema" runat="server" Text="Tema"></asp:Label>
                        <input type="text" id="txtTema" name="txtTema" style="width: 400px;" class="text ui-widget-content ui-corner-all"
                            maxlength="200" />
                    </div>
                    <div style="position: static; width: 110px; float: left;">
                        <asp:Label ID="lbData" runat="server" Text="Data"></asp:Label>
                        <input type="text" id="txtData" name="txtData" style="width: 110px;" class="text ui-widget-content ui-corner-all" />
                    </div>
                    <br />
                    <br />
                    <br />
                    <br />
                    <div style="width: 535px; position: static; padding-right: 0px; float: none;">
                        <asp:Label ID="lbResponsavel" runat="server" Text="Responsável"></asp:Label>
                        <asp:DropDownList ID="ddlResponsavel" runat="server" Width="535px" CssClass="text ui-widget-content ui-corner-all">
                        </asp:DropDownList>
                    </div>
                    <div style="width: 535px; height: 50px; position: static; font-family: Verdana; font-size: 12px; float: none;">
                        <fieldset style="height: 40px; padding-top: 10px;" class="text ui-widget-content ui-corner-all">
                            <legend>
                                <%=resxIdioma.tipo%></legend>
                            <input type="radio" name="rdTipo" value="0" checked="checked" /><%=resxIdioma.operacional%>&nbsp;&nbsp;
                            <input type="radio" name="rdTipo" value="1" />SGI
                        </fieldset>
                    </div>
                    <br />
                    <div style="width: 535px; position: static; padding-right: 0px;">
                        <asp:Label ID="lbImportador" runat="server" Text="Importador"></asp:Label>
                        <asp:DropDownList ID="ddlImportador" runat="server" Width="535px" CssClass="text ui-widget-content ui-corner-all">
                        </asp:DropDownList>
                    </div>
                    <br />
                    <br />
                </div>
            </div>
            <h3>
                <a href="#">
                    <%=resxIdioma.participante%></a></h3>
            <div>
                <div style="height: 230px;">
                    <div style="width: 530px; position: static; padding-bottom: 5px; float: left;">
                        <asp:Label ID="lbParticipante" runat="server" Text="Participante"></asp:Label>
                        <asp:DropDownList ID="ddlParticipante" runat="server" Width="530px" CssClass="text ui-widget-content ui-corner-all">
                        </asp:DropDownList>
                    </div>
                    <div class="content" style="width: 530px; position: static; padding-bottom: 5px; text-align: right;">
                        <input id="btnIncluirParticipante" name="btnIncluirParticipante" type="button" value="<%=resxIdioma.incluir%>" />
                    </div>
                    <asp:UpdatePanel ID="uppParticipantes" runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="grvParticipantes" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                CellPadding="2" CssClass="listaArquivos" EmptyDataText="Nenhum participante foi encontrado"
                                PageSize="4" Width="530px" OnRowDataBound="grvParticipantes_RowDataBound" OnPageIndexChanging="grvParticipantes_PageIndexChanging">
                                <Columns>
                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Apagar" ItemStyle-HorizontalAlign="Center"
                                        ItemStyle-Width="50px">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="btnApagarParticipante" runat="server" CausesValidation="False"
                                                CommandArgument='<%# Eval("pk_atas_participante") %>' ImageUrl="~/Layout/Imagens/btn_del.png"
                                                OnClientClick="" OnClick="btnApagarParticipante_Click" />
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                    </asp:TemplateField>
                                    <asp:BoundField DataField="fk_usuario" HeaderText="Participante">
                                        <HeaderStyle Width="400px" />
                                    </asp:BoundField>
                                    <asp:BoundField DataField="data_aceite" HeaderText="Data do aceite" DataFormatString="{0:dd/MM/yyyy}">
                                        <HeaderStyle HorizontalAlign="Center" Wrap="True" Width="100px" />
                                        <ItemStyle HorizontalAlign="Center" />
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
                            <asp:AsyncPostBackTrigger ControlID="btnAtualizaGrvParticipantes" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                    <asp:Button ID="btnAtualizaGrvParticipantes" runat="server" Text="" Style="display: none;"
                        OnClick="btnAtualizaGrvParticipantes_Click" />
                    <br />
                    <br />
                </div>
            </div>
            <h3>
                <a href="#">
                    <%=resxIdioma.arquivos%></a></h3>
            <div>
                <div class="content" style="height: 230px;">
                    <%--      <input type="file" id="filUpload" name="filUpload" style="display: none; font-size: 9px;"
                        runat="server" />
                    <input type="text" id="tmpPath" name="tmpPath" style="width: 370px; font-size: 9px;"
                        class="text ui-widget-content ui-corner-all" disabled="disabled" readonly="readonly" />
                    <input id="Button1" type="button" value="<%=resxIdioma.pesquisar%>" style="width: 80px;"
                        onclick="filUpload.click();tmpPath.value=filUpload.value;" runat="server" />
                    <input id="btnUpLoad" type="button" value="<%=resxIdioma.incluir%>" style="width: 60px;" />--%>
                    <%--              <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:FileUpload ID="fupArquivos" runat="server" Width="480px" />
                            <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click" />
                        </ContentTemplate>
                        <Triggers>
                            <asp:PostBackTrigger ControlID="btnEnviar" />
                        </Triggers>
                    </asp:UpdatePanel>
                    <br />
                    <br />--%>
                    <asp:UpdatePanel ID="uppArquivos" runat="server">
                        <ContentTemplate>
                            <asp:GridView ID="grvArquivos" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                                CellPadding="2" CssClass="listaArquivos" EmptyDataText="Nenhum arquivo foi encontrado"
                                PageSize="4" Width="100%" OnRowDataBound="grvArquivos_RowDataBound" OnPageIndexChanging="grvArquivos_PageIndexChanging"
                                DataKeyNames="pk_atas_arquivos">
                                <Columns>
                                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Apagar" ItemStyle-HorizontalAlign="Center"
                                        ItemStyle-Width="50px">
                                        <ItemTemplate>
                                            <asp:ImageButton ID="btnApagarArquivo" runat="server" CausesValidation="False" CommandArgument='<%# Eval("pk_atas_arquivos") %>'
                                                ImageUrl="~/Layout/Imagens/btn_del.png" OnClick="btnApagarArquivo_Click" />
                                        </ItemTemplate>
                                        <HeaderStyle HorizontalAlign="Center" />
                                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Descrição">
                                        <ItemTemplate>
                                            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# String.Format("{0}{1}{2}", Eval("caminho").ToString().Replace("F:", ipRemoteAddr).Replace(@"\", @"/"), Eval("pk_atas_arquivos"),Eval("tipo_arquivo")) %>'
                                                Target="_blank"><%#Eval("descricao_arquivo")%></asp:HyperLink>
                                        </ItemTemplate>
                                    </asp:TemplateField>
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
                            <asp:AsyncPostBackTrigger ControlID="btnAtualizaGrvArquivos" EventName="Click" />
                        </Triggers>
                    </asp:UpdatePanel>
                    <asp:Button ID="btnAtualizaGrvArquivos" runat="server" Text="" OnClick="btnAtualizaGrvArquivos_Click"
                        Style="display: none;" />
                </div>
            </div>
        </div>
        <div style="text-align: left; padding-top: 20px; width: 200px; height: 40px; float: left;">
            <span class="content">
                <input id="btnAceite" type="button" value="<%=resxIdioma.aceite%>" /></span>
        </div>
        <div style="text-align: right; padding-top: 20px; width: 400px; height: 40px; float: left;">
            <span class="content">
                <input id="btnSalvar" type="button" value="<%=resxIdioma.salvar%>" />
                <input id="btnCancelar_Modal" type="button" value="<%=resxIdioma.cancelar%>" /></span>&nbsp;
        </div>
    </div>
    <div id="dvUpload" title="Upload" style="display: none; text-align: center; width: 600px; height: 120px;">
        <p>
            <br />
            <asp:UpdatePanel ID="uppUp" runat="server">
                <ContentTemplate>
                    <asp:FileUpload ID="fupArquivos" runat="server" Width="400px" />
                    <asp:Button ID="btnEnviar" runat="server" Text="Enviar" OnClick="btnEnviar_Click"
                        Width="60px" /><br />
                </ContentTemplate>
                <Triggers>
                    <asp:PostBackTrigger ControlID="btnEnviar" />
                </Triggers>
            </asp:UpdatePanel>
        </p>
    </div>
    <div id="avUpload" title="<%=resxIdioma.informacao%>" style="display: none; text-align: center;">
        <p>
            <br />
            <span>
                <asp:Label ID="lbUpload" runat="server" Text="Label"></asp:Label></span>
        </p>
    </div>
</asp:Content>
