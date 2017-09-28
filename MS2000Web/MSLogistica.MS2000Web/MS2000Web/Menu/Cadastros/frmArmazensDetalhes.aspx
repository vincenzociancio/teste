<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmArmazensDetalhes.aspx.cs" Inherits="MS2000Web.Menu.Cadastros.frmArmazensIncluirAlterar" %>

<%@ Import Namespace="Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            // Destruido dialog
            $('#dialog:ui-dialog').dialog('destroy');
            // Montando o Modal
            $('#modalArmazem').dialog({
                autoOpen: true,
                height: 200,
                width: 520,
                modal: true,
                resizable: false,
                open: function (type, data) {
                    $(this).parent().appendTo("form:first");
                },
                close: function () {
                    window.location = "frmArmazens.aspx";
                }
            });

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

            //-----------------------Validando-----------------------
            $("#aspnetForm").validate();

            $("#<%=txtCodigo.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });

            $("#<%=txtDescricao.ClientID %>").rules("add", {
                required: true,
                messages: {
                    required: ''
                }
            });

            $("#<%=btnFechar.ClientID %>").click(function (e) {
                e.preventDefault();
                window.location = "frmArmazens.aspx";
            });

            $("#<%=btnSalvar.ClientID %>").click(function () {
                if ($("#aspnetForm").valid()) {
                    $("#<%=txtCodigo.ClientID %>").attr('readonly', true).attr("disabled", "disabled");
                      return true
                  }
                  else {
                      return false
                  }
              });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="modalArmazem" title="<%=resxIdioma.armazens%>" style="display: block; width: 550px; height: 150px; overflow:hidden; ">
        <div style="position: static; width: 160px; padding-right: 15px; padding-bottom: 10px; padding-top: 10px;">
            <asp:Label ID="lbCodigo" runat="server" Text="Código"></asp:Label>
            <asp:TextBox ID="txtCodigo" runat="server" MaxLength="15" Width="160px"></asp:TextBox>
        </div>
        <div style="position: static; width: 490px; padding-right: 15px; padding-bottom: 20px;">
            <asp:Label ID="lbDescricao" runat="server" Text="Descrição"></asp:Label>
            <asp:TextBox ID="txtDescricao" runat="server" MaxLength="254" Width="490px"></asp:TextBox>
        </div>
        <div style="text-align: right; padding-top: 10px; width: 500px; height: 40px; border-top: thin solid #79b7e7;">
            <span class="content_post">
                <asp:Button ID="btnSalvar" runat="server" Text="Salvar" OnClick="btnSalvar_Click" />
                &nbsp;<asp:Button ID="btnFechar" runat="server" Text="Fechar" />
            </span>
        </div>
    </div>
    <asp:UpdatePanel ID="uppbtnSalvar" runat="server">
        <ContentTemplate>
        </ContentTemplate>
        <Triggers>
            <asp:AsyncPostBackTrigger ControlID="btnSalvar" EventName="Click" />
        </Triggers>
    </asp:UpdatePanel>
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
</asp:Content>
