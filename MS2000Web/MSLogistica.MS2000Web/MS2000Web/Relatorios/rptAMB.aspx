<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="rptAMB.aspx.cs" Inherits="MS2000Web.Relatorios.rptAMB" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            var w = $(document).width();
            var h = $(document).height();
            $('#dialog:ui-dialog').dialog('destroy');
            $('#modalAMB').dialog({
                autoOpen: true,
                height: h - 150, //500, 
                width: w - 550, //900,
                modal: true,
                resizable: true,
                open: function () {
                    $(this).parent().appendTo("form:first");
                },
                close: function () {
                    window.location = "../Menu/Processos/frmAMB.aspx";
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="modalAMB" style="text-align: center; width: 100%;">
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" Font-Names="Verdana" Font-Size="9pt"
            InteractiveDeviceInfos="(Collection)" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt"
            Width="100%" Height="90%">
            <LocalReport ReportPath="Relatorios\rptAMB.rdlc" ReportEmbeddedResource="MS2000Web.Relatorios.rptAMB.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="odsItens" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="BuscarItensDaFatura" TypeName="MSBiblioteca.BLL.Fatura, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="pk_processo" SessionField="ssProcesso" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>