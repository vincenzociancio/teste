<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmExpirou.aspx.cs" Inherits="MS2000Web.frmExpirou" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Layout/Acesso/Acesso.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form class="form_acesso" runat="server">
    <div class="frmAcesso">
        <table class="tb_acesso">
            <tr>
                <td>
                    <asp:Label ID="lbMsg" runat="server" Text="A página expirou ! Caso deseje acessar novamente clique no link abaixo:"
                        CssClass="site_erro"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:HyperLink ID="hlTelaAcesso" runat="server" Font-Bold="True">Ir para tela de acesso !</asp:HyperLink>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
