<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmRMBR.aspx.cs" Inherits="MS2000Web.Menu.Processos.frmRMBR" %>

<%@ Import Namespace="Resources" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            $("#<%=txtFiltrar.ClientID %>").mask('99.9999-9');
            $('#<%=txtDT01.ClientID %>').datepicker();
            $('#<%=txtDT02.ClientID %>').datepicker();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de RMBR" />
    <div id="container" class="ui-widget-content">
        <h3 class="ui-widget-header" style="font-family: Verdana; font-size: 13pt;">
            <asp:Label ID="lbTitulo" runat="server" Text="RMBR"></asp:Label>
        </h3>
        <div class="content_post" style="vertical-align: super; padding-bottom: 10px;">
            <asp:Button ID="btnIncluir" runat="server" Text="Incluir" PostBackUrl="~/Menu/Processos/frmRMBRDetalhes.aspx" />
                <asp:Button ID="btnRelatorio" runat="server" Text="Relatório" OnClick="btnRelatorio_Click" />
        </div>
        <div class="content_post" style="border-top: thin solid #79b7e7; border-bottom: thin solid #79b7e7;padding-top: 10px; padding-bottom: 10px;vertical-align: super;">
            <asp:Label ID="Label1" runat="server" Text="Nº do RMBR"></asp:Label>&nbsp;
            <asp:TextBox ID="txtFiltrar" runat="server" Width="120px"></asp:TextBox>&nbsp;
            <asp:Label ID="Label2" runat="server" Text="Vencimento de:"></asp:Label>&nbsp;
            <asp:TextBox ID="txtDT01" runat="server" Width="80px"></asp:TextBox>&nbsp;
              <asp:Label ID="Label3" runat="server" Text="até" ></asp:Label>&nbsp;
            <asp:TextBox ID="txtDT02" runat="server" Width="80px"></asp:TextBox>
            <asp:Button ID="btnPesquisar" runat="server" Text="Pesquisar" Width="90px" OnClick="btnPesquisar_Click" />
            <asp:Button ID="btnVoltar" runat="server" Text="Voltar" OnClick="btnVoltar_Click" Width="90px" />
        </div>
        <br />
        <div>
            <asp:GridView ID="grdRMBR" runat="server" AutoGenerateColumns="False" Font-Names="Verdana" Font-Size="10pt" PageSize="12" Width="100%" CellPadding="2" DataKeyNames="PK_ID" DataSourceID="odsRMBR">
                <AlternatingRowStyle BackColor="White" />
                <Columns>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText='Abrir' ItemStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnAbrir" runat="server" CausesValidation="False" ImageUrl="~/Layout/Imagens/btn_Abrir.png" CommandArgument='<%# Eval("PK_ID") %>' OnClick="btnAbrir_Click" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:TemplateField HeaderStyle-HorizontalAlign="Center" HeaderText="Apagar" ItemStyle-HorizontalAlign="Center"
                        ItemStyle-Width="50px">
                        <ItemTemplate>
                            <asp:ImageButton ID="btnApagar" runat="server" CommandName="Delete" CausesValidation="False" ImageUrl="~/Layout/Imagens/btn_del.png" OnClientClick="return confirmaApagar(this);" />
                        </ItemTemplate>
                        <HeaderStyle HorizontalAlign="Center" />
                        <ItemStyle HorizontalAlign="Center" Width="50px" />
                    </asp:TemplateField>
                    <asp:BoundField HeaderText="RMBR" DataField="Numero_RMBR">
                        <ControlStyle Font-Names="Verdana" Font-Size="10pt" />
                        <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DT_Inicial" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Data inicial">
                        <HeaderStyle Width="90px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="DT_Final" DataFormatString="{0:dd/MM/yyyy}" HeaderText="Data final">
                        <HeaderStyle Width="90px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="fk_processo" HeaderText="Nº processo">
                        <HeaderStyle Width="100px" />
                    </asp:BoundField>
                    <asp:BoundField DataField="Numero_DI" HeaderText="Nº DI" />
                </Columns>
                <EditRowStyle Wrap="True" />
                <EmptyDataRowStyle Wrap="True" />
                <HeaderStyle ForeColor="White" />
                <RowStyle BackColor="#F3F4FA" Wrap="True" />
                <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" />
            </asp:GridView>
            <asp:ObjectDataSource ID="odsRMBR" runat="server" SelectMethod="BuscarTodos" TypeName="MSBiblioteca.BLL.RMBR" DeleteMethod="Excluir" 
                
                OnFiltering="odsRMBR_Filtering">
                <FilterParameters>
                    <asp:ControlParameter Name="Numero_RMBR" ControlID="txtFiltrar" />                    
                    <asp:ControlParameter Name="DT_Final01" ControlID="txtDT01" /> 
                    <asp:ControlParameter Name="DT_Final02" ControlID="txtDT02" /> 
                </FilterParameters>                
                <DeleteParameters>
                    <asp:Parameter Name="pk_id" Type="Int32" />
                </DeleteParameters>
            </asp:ObjectDataSource>
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
</asp:Content>
