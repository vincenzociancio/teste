<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmGruposDetalhes.aspx.cs" Inherits="MS2000Web.frmGruposIncluirAlterar" %>

<%@ Import Namespace="Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">  
    <script type="text/javascript">
        $(function () {
            $('#dialog:ui-dialog').dialog('destroy');
            //inicio
            $("#tabs").tabs().dialog({
                autoOpen: true,
                height: 600,
                width: 700,
                modal: true,
                resizable: false,
                open: function (type, data) {     
                    $(this).parent().appendTo("form:first");
                },
                close: function () {
                    window.location = "frmGrupos.aspx";
                    //window.location = "../Grupos";
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
            
           
            $("#<%=btnFechar.ClientID %>").click(function (e) {
                e.preventDefault();
                window.location = "frmGrupos.aspx";
                //window.location = "../Grupos";
            });

            //-----------------------Validando-----------------------
            $("#aspnetForm").validate();
                        
            $("#<%=txtDescricao.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });     
           
            $("#<%=btnGravarGrupo.ClientID %>").click(function () {
                if ($("#aspnetForm").valid()) {
                    return true;
                }
                else {
                    return false;
                }
            });
            //--------------------------------------------------------

            $('#<%=grdAcessos.ClientID %>').Scrollable({
                IsInUpdatePanel: true,
                ScrollHeight:220
            });

            $('#<%=grdAcao.ClientID %>').Scrollable({
                IsInUpdatePanel: true,
                ScrollHeight: 130
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="tabs" <% if (id > 0)
                      {%>title="Edição"
        <%}
                      else
                      {%>title="Inclusão"
        <%}%> style="width: 640px;">
        <fieldset class="ui-widget ui-widget-content">
            <legend class="ui-widget-header ui-corner-all">Nome do grupo</legend>
            <div id="tbCadastro" style="vertical-align: super; padding-left: 10px; padding-bottom: 5px;">
                <div style="vertical-align: super; width: 100%;" class="content_post" >
                    <asp:TextBox ID="txtDescricao" runat="server" MaxLength="45" Width="400px"></asp:TextBox>&nbsp;
                    <asp:Button ID="btnGravarGrupo" runat="server" Text="Salvar" OnClick="btnGravarGrupo_Click"/>
                    <asp:Button ID="btnFechar" runat="server" Text="Fechar" />
                </div>
            </div>
        </fieldset>
        <asp:UpdatePanel ID="uppCadastro" runat="server">
            <ContentTemplate>
            </ContentTemplate>
            <Triggers>
                <asp:AsyncPostBackTrigger ControlID="btnGravarGrupo" EventName="Click" />
            </Triggers>
        </asp:UpdatePanel>        
        <div id="tbAcesso" style="height: 500px; overflow: hidden;">
         <%--   <asp:UpdatePanel ID="uppAcessos" runat="server">
                <ContentTemplate>--%>
                    <fieldset style="background-color: Azure;">
                        <legend>Acessos a telas do sistema</legend>
                        <div style="height: 250px; padding: 5px 0px 5px 5px">
                            <asp:GridView ID="grdAcessos" runat="server" AutoGenerateColumns="False" Font-Names="Verdana" Font-Size="9pt" PageSize="500" Width="643px" CellPadding="2" DataKeyNames="PK_PaginaGrupo" OnRowDataBound="grdAcessos_RowDataBound" ShowHeaderWhenEmpty="True">
                                <AlternatingRowStyle BackColor="White" />
                                <Columns>
                                    <asp:TemplateField HeaderText="Descrição" HeaderStyle-Width="55%">
                                        <ControlStyle Font-Names="Verdana" Font-Size="9pt" />
                                        <ItemTemplate>
                                            <%# DataBinder.Eval(Container.DataItem, "Paginas.Titulo")%>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Names="Verdana" Font-Size="9pt" Width="443px" />
                                        <ItemStyle Width="443px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Consultar">
                                        <HeaderStyle Font-Names="Verdana" Font-Size="9pt" Width="50px" />
                                        <ItemStyle Width="50px" HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <asp:CheckBox runat="server" ID="chkConsultar"
                                                Checked='<%# Eval("R") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Incluir">
                                        <HeaderStyle Font-Names="Verdana" Font-Size="9pt" Width="50px" />
                                        <ItemStyle Width="50px" HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <asp:CheckBox runat="server" ID="chkIncluir"
                                                Checked='<%# Eval("C") %>' />
                                            <asp:HiddenField ID="hdPK" runat="server" Value='<%# Eval("PK_PaginaGrupo") %>' />
                                            <asp:HiddenField ID="hdFkGrupo" runat="server" Value='<%# Eval("FK_AcessoGrupo") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Editar">
                                        <HeaderStyle Font-Names="Verdana" Font-Size="9pt" Width="50px" />
                                        <ItemStyle Width="50px" HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <asp:CheckBox runat="server" ID="chkEditar"
                                                Checked='<%# Eval("U") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Excluir">
                                        <HeaderStyle Font-Names="Verdana" Font-Size="9pt" Width="50px" />
                                        <ItemStyle Width="50px" HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <asp:CheckBox runat="server" ID="chkExcluir"
                                                Checked='<%# Eval("D") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <EditRowStyle Wrap="True" />
                                <EmptyDataRowStyle Wrap="True" />
                                <HeaderStyle ForeColor="White" />
                                <RowStyle BackColor="#F3F4FA" Wrap="True" />
                                <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" />
                            </asp:GridView>
                        </div>
                    </fieldset>
                    <br />
                    <fieldset style="background-color: Azure;">
                        <legend>Acesso a acões específicas do sistema</legend>
                        <div style="height: 150px; padding: 5px 0px 5px 5px">
                            <asp:GridView ID="grdAcao" runat="server" AutoGenerateColumns="False" Font-Names="Verdana" Font-Size="9pt" PageSize="500" CellPadding="2" Width="643px" ShowHeaderWhenEmpty="True">
                                <Columns>
                                    <asp:TemplateField HeaderText="Descrição">
                                        <ItemTemplate>
                                            <asp:HiddenField ID="hdPK" runat="server" Value='<%# Eval("PK_AcaoEspecificaGrupo") %>' />
                                            <%# DataBinder.Eval(Container.DataItem, "AcaoEspecifica.Descricao")%>
                                        </ItemTemplate>
                                        <HeaderStyle Font-Names="Verdana" Font-Size="9pt" Width="580px" />
                                        <ItemStyle Width="580px" />
                                    </asp:TemplateField>
                                    <asp:TemplateField HeaderText="Acessa">
                                        <HeaderStyle Font-Names="Verdana" Font-Size="9pt" Width="50px" />
                                        <ItemStyle Width="50px" HorizontalAlign="Center" />
                                        <ItemTemplate>
                                            <asp:CheckBox runat="server" ID="chkAcessa"
                                                Checked='<%# Eval("Acessa") %>' />
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <AlternatingRowStyle BackColor="White" />
                                <EditRowStyle Wrap="True" />
                                <EmptyDataRowStyle Wrap="True" />
                                <HeaderStyle ForeColor="White" />
                                <RowStyle BackColor="#F3F4FA" Wrap="True" />
                                <SelectedRowStyle BackColor="#D1DDF1" ForeColor="#333333" />
                            </asp:GridView>
                        </div>
                    </fieldset>
      <%--          </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnGravarGrupo" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>--%>
        </div>
    </div>
    <div id="modalSucesso" title="<%=resxIdioma.informacao%>" style="display: none; text-align: center;">
        <p>
            <br />
            <span>
                <%=Resources.resxIdioma.msg_gravadoOk%></span>
        </p>
    </div>
    <div id="modalErro" title="<%=resxIdioma.erro%>" style="display: none; text-align: center;">
        <p>
            <br />
            <span>
                <%=resxIdioma.msg_gravadoErro%></span>
        </p>
    </div>
</asp:Content>
