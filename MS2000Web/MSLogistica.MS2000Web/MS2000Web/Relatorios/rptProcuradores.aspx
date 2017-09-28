<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="rptProcuradores.aspx.cs"
    Inherits="MS2000Web.Relatorios.rptProcuradores" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="text-align: center; width: 100%; height: 100%;">
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="9pt"
            InteractiveDeviceInfos="(Collection)" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt"
            Width="100%" Height="90%">
            <LocalReport ReportPath="Relatorios\rptProcuradores.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="odsProcuradores" Name="dtSetProcuradores" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="odsProcuradores" runat="server" SelectMethod="BuscarTodos"
            TypeName="MSBiblioteca.BLL.Procurador"></asp:ObjectDataSource>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
    </div>
    </form>
</body>
</html>
