<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="rptKPIensco.aspx.cs" Inherits="MS2000Web.Relatorios.rptKPIEnsco" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            var w = $(document).width();
            var h = $(document).height();
            $('#dialog:ui-dialog').dialog('destroy');
            $('#modalKPI').dialog({
                autoOpen: true,
                height: h - 150, //500, 
                width: w - 550, //900,
                modal: true,
                resizable: true,
                open: function () {
                    //$(this).parent().appendTo("form:first");
                },
                close: function () {
                    //window.location = "../Menu/Relatorios/KPIensco.aspx";
                    history.back(1);
                }
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="modalKPI" style="text-align: center; width: 100%;">
        <rsweb:ReportViewer ID="ReportViewer2" runat="server" Font-Names="Verdana" Font-Size="9pt"
            InteractiveDeviceInfos="(Collection)" WaitMessageFont-Names="Verdana" WaitMessageFont-Size="14pt"
            Width="100%" Height="90%">
            <LocalReport ReportPath="Relatorios\rptKPIensco.rdlc" ReportEmbeddedResource="MS2000Web.Relatorios.rptKPIensco.rdlc">
                <DataSources>
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource1" Name="ds01" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource2" Name="ds02" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource3" Name="ds03" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource4" Name="ds04" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource5" Name="ds05" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource6" Name="ds06" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource7" Name="ds07" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource8" Name="ds08" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource9" Name="ds09" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource10" Name="ds10" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource11" Name="ds11" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource12" Name="ds12" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource13" Name="ds13" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource14" Name="ds14" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource15" Name="ds15" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource16" Name="ds16" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource17" Name="ds17" />
                    <rsweb:ReportDataSource DataSourceId="ObjectDataSource18" Name="ds0102" />
                </DataSources>
            </LocalReport>
        </rsweb:ReportViewer>
        <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="D" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="05" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="05" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="12" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="12" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="D" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource10" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource11" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="05" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource12" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="05" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource13" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="12" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource14" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="12" Name="declaracao" Type="String"></asp:Parameter>
                <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource15" runat="server" SelectMethod="BuscarMediaDias" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource16" runat="server" SelectMethod="BuscarMediaDias" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
                <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
            </SelectParameters>
        </asp:ObjectDataSource>
        <asp:ObjectDataSource ID="ObjectDataSource17" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
            <SelectParameters>
                <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            </SelectParameters>
        </asp:ObjectDataSource>
    </div>
</asp:Content>
