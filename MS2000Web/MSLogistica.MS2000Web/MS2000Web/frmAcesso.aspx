<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="frmAcesso.aspx.cs" Inherits="MS2000Web.frmAcesso" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>MS2000Web - Tela de Acesso</title>
    <link href="Layout/Acesso/Acesso.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="frmAcesso" runat="server">
    <div class="logo">
        <table>
            <tr>
                <td>
                    <asp:Image ID="Image1" runat="server" ImageUrl="~/Layout/Imagens/logotipo.png" Height="47px"
                        Width="203px" />
                </td>
            </tr>
        </table>
    </div>
    <div class="form_acesso">
        <table class="tb_acesso">
            <tr>
                <td colspan="2">
                    &nbsp;
                </td>
            </tr>
            <tr>
                <td colspan="2" class="titulo_acesso">
                    <asp:Label ID="lbTitAcesso" runat="server" Text="Tela de acesso"></asp:Label>
                </td>
            </tr>
            <tr>
                <td class="lb">
                    <asp:Label ID="lbUsuario" runat="server" Text="Usuário:"></asp:Label>
                </td>
                <td class="campos">
                    <asp:TextBox ID="txtUsuario" runat="server" Width="227px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lb">
                    <asp:Label ID="lbSenha" runat="server" Text="  Senha:" CssClass="lb"></asp:Label>
                </td>
                <td class="campos">
                    <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" Width="227px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="lb">
                    <asp:Label ID="lbIdioma" runat="server" Text="  Idioma:" CssClass="lb"></asp:Label>
                </td>
                <td class="campos">
                    <asp:DropDownList ID="ddlIdioma" runat="server" Width="230px" OnSelectedIndexChanged="ddlIdioma_SelectedIndexChanged"
                        AutoPostBack="True">
                        <asp:ListItem Selected="True" Value="pt-BR">Português(Brasil)</asp:ListItem>
                        <asp:ListItem Value="en-US">English</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr class="campos">
                <td colspan="2" class="botao_acesso">
                    <asp:Button ID="btnEntrar" runat="server" OnClick="btnEntrar_Click" Text="Entrar"
                        CssClass="entrar" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="">
                    <asp:Label ID="lbMsg" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
