<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmAcessoNegado.aspx.cs" Inherits="MS2000Web.frmAcessoNegado" %>
<%@ Import Namespace="Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#dialog:ui-dialog').dialog('destroy');
            $('#NaoAutorizado').dialog({
                autoOpen: true,
                height: 180,
                width: 320,
                modal: true,
                resizable: false,
                close: function () {                    
                    var btn = $('#<%=btnRedirect.ClientID%>');                                     
                    btn.trigger('click');
                },
                buttons: {
                    Ok: function () {
                        $(this).dialog('close');
                    }
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="NaoAutorizado" style="display: block; text-align: center;" title="<%=resxIdioma.informacao%>">
        <p>
            <span>                
                <asp:Image ID="Image1" runat="server" style="float: left; margin: 0 7px 20px 0; width: 50px; height: 50px;" Visible="True" ImageUrl="~/Layout/Imagens/informacao.png" AlternateText="<%=resxIdioma.informacao%>" />
            </span>            
            <br />
            <br />
            <span style="font-family: Verdana; font-size: 14px; font-weight: bold;"><%=resxIdioma.msg_acesso_nao_autorizado%></span>
        </p>
    </div>
    <asp:Button  ID="btnRedirect" runat="server" Text="OK" OnClick="btnRedirect_Click" Style="display: none;" Width="60px" />
</asp:Content>
