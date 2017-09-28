<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="frmErro.aspx.cs" Inherits="MS2000Web.frmErro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="erro">
        <h3>
            <asp:Image ID="imgErro" runat="server" ImageUrl="~/layout/Imagens/bto_erro.gif" />
        </h3>
        <asp:Label ID="lbErro" runat="server" Font-Size="Large" ForeColor="Red" Text="Erro "></asp:Label>
        <br />
        <br />
        <asp:Label ID="lbErroSer" runat="server" Font-Bold="True" Font-Size="Small" ForeColor="Black"></asp:Label>
    </div>
</asp:Content>

