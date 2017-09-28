<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="frmFatura.aspx.cs" Inherits="MS2000Web.Menu.Processos.frmFatura" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>
<%@ Import Namespace="Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $('#dialog:ui-dialog').dialog('destroy');
            //inicio
            $("#tabs").tabs().dialog({
                autoOpen: true,
                height: 600,
                width: 770,
                modal: true,
                resizable: false,
                open: function (type, data) {
                    $(this).parent().appendTo("#frmMaster"); 
                },
                close: function () {
                    window.location = "frmFatura.aspx";
                }
            });
            //fim
            // Mensagem de Sucesso
            $('#modalSucesso').dialog({
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
            
            $('#ContentPlaceHolder1_btnFechar').click(function (e) {
                e.preventDefault();
                window.location = "frmFatura.aspx";
            });

            $('#ContentPlaceHolder1_btnGravarUsuario').click(function () {
                if ($("#frmMaster").valid()) {
                    return true
                }
                else {
                    return false
                }
            });            

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
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de Fatura" />
    <div id="container" class="ui-widget-content">
        <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
            <asp:Label ID="lbTitulo" runat="server" Text="Tela de Fatura"></asp:Label>
        </h3>
        <div class="content_post" style="vertical-align: super;">
            <br />
            <asp:Label ID="Label1" runat="server" Text="Digite o N° do Processo:"></asp:Label>
            <asp:TextBox ID="txtFiltrarProcesso" runat="server" Width="300px" MaxLength="8"></asp:TextBox>
            <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" OnClick="btnPesquisar_Click" />&nbsp;
            <asp:Button ID="btnIncluir" runat="server" Text="Incluir" OnClick="btnIncluir_Click"  />
        </div>
        <br />
        <div>
            <asp:UpdatePanel ID="uppPesquisar" runat="server">
                <ContentTemplate>
                    <asp:GridView ID="grdFatura" runat="server" AutoGenerateColumns="False" Font-Names="Verdana" Font-Size="10pt" PageSize="12" Width="100%" ShowHeaderWhenEmpty="True" CellPadding="2" OnRowDataBound="grdFatura_RowDataBound">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText='Abrir' ItemStyle-HorizontalAlign="Center"
                                ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnAbrir" runat="server" CausesValidation="False" ImageUrl="~/Layout/Imagens/btn_Abrir.png" CommandArgument='<%#Eval("Codigo") + "," + Eval("Processo")%>' OnClick="btnAbrir_Click1" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Apagar" ItemStyle-HorizontalAlign="Center"
                                ItemStyle-Width="50px">
                                <ItemTemplate>
                                    <asp:ImageButton ID="btnApagar" runat="server" CausesValidation="False" CommandArgument='<%#Eval("Codigo") + "," + Eval("Processo")%>' ImageUrl="~/Layout/Imagens/btn_del.png" OnClick="btnApagar_Click" OnClientClick="return confirmaApagar(this);" />
                                </ItemTemplate>
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" Width="50px" />
                            </asp:TemplateField>
                            <asp:BoundField DataField="Codigo" HeaderText="Codigo">
                                <ControlStyle Font-Names="Verdana" Font-Size="10pt" />
                                <HeaderStyle />
                            </asp:BoundField>
                            <asp:BoundField DataField="Incoterm" HeaderText="Incoterm">
                                <ControlStyle Font-Names="Verdana" Font-Size="10pt" />
                                <HeaderStyle />
                            </asp:BoundField>
                            <asp:BoundField DataField="Exportador" HeaderText="Exportador">
                                <ControlStyle Font-Names="Verdana" Font-Size="10pt" />
                                <HeaderStyle />
                            </asp:BoundField>
                            <asp:BoundField DataField="Moeda" HeaderText="Moeda">
                                <ControlStyle Font-Names="Verdana" Font-Size="10pt" />
                                <HeaderStyle />
                            </asp:BoundField>
                            <asp:BoundField DataField="Valor_Total" HeaderText="Valor Total" DataFormatString="{0:n2}">
                                <ControlStyle Font-Names="Verdana" Font-Size="10pt" />
                                <HeaderStyle />
                            </asp:BoundField>
                            <asp:BoundField DataField="Peso_Total" HeaderText="Peso Total" DataFormatString="{0:n2}">
                                <ControlStyle Font-Names="Verdana" Font-Size="10pt" />
                                <HeaderStyle />
                            </asp:BoundField>
                            <asp:BoundField DataField="Peso_Total_Acertado" HeaderText="Peso Acertado" DataFormatString="{0:n2}">
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
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnPesquisar" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
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

    <div id="modalNaoExisteProcesso" title="<%=resxIdioma.informacao%>" style="display: none; text-align: center;">
        <p style="padding-bottom: 10px;">
            <br />
            <span>Processo não encontrado!</span>
        </p>
    </div>

</asp:Content>
