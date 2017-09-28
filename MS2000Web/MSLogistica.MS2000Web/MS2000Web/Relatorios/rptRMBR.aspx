<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="rptRMBR.aspx.cs" Inherits="MS2000Web.Relatorios.rptRMBR" %>

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
                width: w - 450, //900,
                modal: true,
                resizable: true,
                open: function () {
                    $(this).parent().appendTo("form:first");
                },
                close: function () {
                    window.location = "../Menu/Processos/frmRMBR.aspx";
                }
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="modalAMB" style="text-align: center; width: 100%;">
        <rsweb:ReportViewer ID="ReportViewer1" runat="server" 
            Width="100%" Height="90%" Font-Names="Verdana" InteractiveDeviceInfos="(Collection)" Font-Size="8pt" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt" ZoomMode="FullPage">
            <LocalReport ReportPath="Relatorios\rptRMBR.rdlc" ReportEmbeddedResource="MS2000Web.Relatorios.rptRMBR.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="dsRMBR" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" OldValuesParameterFormatString="original_{0}" SelectMethod="BuscarPorPeriodoData" TypeName="MSBiblioteca.BLL.RMBR, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data_ini" SessionField="sDataInicial" Type="DateTime" />
                <asp:SessionParameter DefaultValue="" Name="data_fin" SessionField="sDataFinal" Type="DateTime" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
