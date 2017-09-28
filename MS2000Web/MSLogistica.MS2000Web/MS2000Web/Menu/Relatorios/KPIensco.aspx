<%@ Page Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="KPIensco.aspx.cs" Inherits="MS2000Web.Menu.Relatorios.KPIensco" %>

<%@ Register Assembly="Microsoft.ReportViewer.WebForms, Version=11.0.0.0, Culture=neutral, PublicKeyToken=89845dcd8080cc91" Namespace="Microsoft.Reporting.WebForms" TagPrefix="rsweb" %>

<%@ Register Assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" Namespace="System.Web.UI.DataVisualization.Charting" TagPrefix="asp" %>
<%@ Register Src="~/Componentes/AutorizarLeituraDePagina.ascx" TagPrefix="uc1" TagName="AutorizarLeituraDePagina" %>


<%@ Import Namespace="Resources" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .FundoTransparente {
            position: fixed;
            width: 100%;
            height: 100%;
            /* background-color: #aaaaaa;
            opacity: 0.35;
            -moz-opacity: 0.35;
            filter: alpha(opacity=35);*/
            z-index: 100000;
            top: 0;
            left: 0;
            right: 0;
            background: #aaaaaa url(../../Script/jquery-ui-1.8.22.custom/css/redmond/images/ui-bg_flat_0_aaaaaa_40x100.png) 50% 50% repeat-x;
            opacity: .30;
            filter: Alpha(Opacity=30);
            text-align: center;
        }

        /*style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background: #aaaaaa url(../../Script/jquery-ui-1.8.22.custom/css/redmond/images/ui-bg_flat_0_aaaaaa_40x100.png) 50% 50% repeat-x; opacity: .30; filter: Alpha(Opacity=30);*/
    </style>
    <script type="text/javascript">
        function iniciaJquery() {
            $('#<%=grdProcessos.ClientID %>').Scrollable({
                IsInUpdatePanel: true,
                ScrollHeight: 70
            });
        }
        
        $(function () {
            $('#dialog:ui-dialog').dialog('destroy');
            $("#modalKPIensco").dialog({
                autoOpen: true,
                height: 650,
                width: 650,
                modal: true,
                resizable: false,
                open: function (type, data) {
                    $(this).parent().appendTo("form:first");
                },
                close: function () {
                    $.ajax({
                        url: "KPIensco.aspx/RemoveSession",
                        type: "POST",
                        data: {},
                        contentType: "application/json; charset=utf-8",
                        dataType: "json"
                    });
                    window.location = "../../MenuPrincipal.aspx";
                }
            });

            $("#<%=btnProcessar.ClientID%>").click(function () {
                //$("#ctl00_ContentPlaceHolder1_pnlLoad").css("display", "block");

            });

            $("#<%=btnRelatorio.ClientID%>").click(function () {
                //$("#ctl00_ContentPlaceHolder1_pnlLoad").css("display", "block");

            });

            $("#<%=txtMesAno.ClientID %>").mask('99/9999');

            $('#<%=grdProcessos.ClientID %>').Scrollable({
                IsInUpdatePanel: true,
                ScrollHeight: 70
            });
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <uc1:AutorizarLeituraDePagina runat="server" ID="AutorizarLeituraDePagina" PaginaAtiva="True" PaginaTitulo="Tela de Grafico - KPI Ensco" />
    <div id="modalKPIensco" style="position: static; width: 630px; height: 750px; overflow: hidden;" title="KPI Ensco">
        <div class="content_post" style="vertical-align: super; padding-bottom: 10px; padding-top: 10px; background-color: lightyellow; border-top: thin solid #79b7e7; border-bottom: thin solid #79b7e7; height: 20px; margin-bottom: 10px;">
            <div style="width: 650px; position: static; vertical-align: super;">
                <asp:Label ID="Label1" runat="server" Text="Digite o mês e o ano:" Style="padding-right: 5px;"></asp:Label>&nbsp;
                <asp:TextBox ID="txtMesAno" runat="server" Width="100px"></asp:TextBox>&nbsp;
                <asp:Button ID="btnProcessar" runat="server" Text="Processar" OnClick="btnProcessar_Click" />
                <asp:Button ID="btnRelatorio" runat="server" Text="Exportar .PDF" OnClick="btnRelatorio_Click" />
            </div>
        </div>
        <asp:Panel ID="pan1" runat="server" ScrollBars="Auto" Height="400px" Width="100%" BorderStyle="Solid" BorderWidth="1px">
            <div class="content_post" style="position: static;">
                <div style="text-align: center;">
                    <asp:Chart ID="Chart1" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" Label="#VAL" Legend="Legend1" Color="LimeGreen"></asp:Series>
                            <asp:Series ChartArea="ChartArea2" Color="Green" IsValueShownAsLabel="True" Label="#VAL" Legend="Legend1" Name="Series2">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            <asp:ChartArea Name="ChartArea2">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Cabo Frio - Aéreo - Consumo - Verde" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea1" IsDockedInsideChartArea="False">
                            </asp:Title>
                            <asp:Title Alignment="TopCenter" DockedToChartArea="ChartArea2" IsDockedInsideChartArea="False" Name="Title2" Text="Galeão - Aéreo - Consumo - Verde" Visible="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico01" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False" AutoPostBack="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart2" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Gold"></asp:Series>
                            <asp:Series ChartArea="ChartArea2" Color="Yellow" IsValueShownAsLabel="True" Label="#VAL" Legend="Legend1" Name="Series2">
                            </asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            <asp:ChartArea Name="ChartArea2"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Cabo Frio - Aéreo - Consumo - Amarelo" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea1" IsDockedInsideChartArea="False">
                            </asp:Title>
                            <asp:Title Name="Title2" Text="Galeão - Aéreo - Consumo - Amarelo" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea2" IsDockedInsideChartArea="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico02" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart3" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Red"></asp:Series>
                            <asp:Series ChartArea="ChartArea2" Name="Series2" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="IndianRed"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            <asp:ChartArea Name="ChartArea2"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Cabo Frio - Aéreo - Consumo - Vermelho" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea1" IsDockedInsideChartArea="False">
                            </asp:Title>
                            <asp:Title Name="Title2" Text="Galeão - Aéreo - Consumo - Vermelho" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea2" IsDockedInsideChartArea="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico03" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart4" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Gold"></asp:Series>
                            <asp:Series ChartArea="ChartArea2" Name="Series2" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Yellow"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            <asp:ChartArea Name="ChartArea2"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Cabo Frio - Aéreo - Admissão Temporaria - Amarelo" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea1" IsDockedInsideChartArea="False">
                            </asp:Title>
                            <asp:Title Name="Title2" Text="Galeão - Aéreo - Admissão Temporaria - Amarelo" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea2" IsDockedInsideChartArea="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico04" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart5" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Red"></asp:Series>
                            <asp:Series ChartArea="ChartArea2" Name="Series2" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="IndianRed"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            <asp:ChartArea Name="ChartArea2"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Cabo Frio - Aéreo - Admissão Temporaria - Vermelho" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea1" IsDockedInsideChartArea="False">
                            </asp:Title>
                            <asp:Title Name="Title2" Text="Galeão - Aéreo - Admissão Temporaria - Vermelho" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea2" IsDockedInsideChartArea="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico05" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart6" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Gold"></asp:Series>
                            <asp:Series ChartArea="ChartArea2" Name="Series2" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Yellow"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            <asp:ChartArea Name="ChartArea2"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Cabo Frio - Aéreo - Consumo e Admissão Temporária - Amarelo" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea1" IsDockedInsideChartArea="False">
                            </asp:Title>
                            <asp:Title Name="Title2" Text="Galeão - Aéreo - Consumo e Admissão Temporária - Amarelo" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea2" IsDockedInsideChartArea="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico06" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart7" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Red"></asp:Series>
                            <asp:Series ChartArea="ChartArea2" Name="Series2" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="IndianRed"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                            <asp:ChartArea Name="ChartArea2"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Cabo Frio - Aéreo - Consumo e Admissão Temporária - Vermelho" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea1" IsDockedInsideChartArea="False">
                            </asp:Title>
                            <asp:Title Name="Title2" Text="Cabo Frio - Aéreo - Consumo e Admissão Temporária - Vermelho" Visible="False" Alignment="TopCenter" DockedToChartArea="ChartArea2" IsDockedInsideChartArea="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico07" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart8" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="LimeGreen"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Marítimo - Consumo - Verde" Visible="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico08" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart9" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Gold"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Marítimo - Consumo - Amarelo" Visible="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico09" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart10" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Red"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Marítimo - Consumo - Vermelho" Visible="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico10" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart11" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Gold"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Marítimo - Admissão Temporária - Amarelo" Visible="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico11" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart12" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Red"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Marítimo - Admissão Temporária - Vermelho" Visible="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico12" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart13" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Gold"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Marítimo - Consumo e Admissão Temporária - Amarelo" Visible="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico13" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart14" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Red"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Marítimo - Consumo e Admissão Temporária - Vermelho" Visible="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                    <div style="float: left; padding-bottom: 40px">
                        <asp:TextBox ID="txtGrafico14" runat="server" Height="81px" MaxLength="300" Style="margin-left: 45px" TextMode="MultiLine" Width="535px" Visible="False"></asp:TextBox>
                    </div>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart15" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Red" ChartType="Line"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1"></asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Aéreo - Média de Dias" Visible="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </div>
                <div style="text-align: center;">
                    <asp:Chart ID="Chart16" runat="server" Width="601px">
                        <Series>
                            <asp:Series Name="Series1" IsValueShownAsLabel="True" IsVisibleInLegend="False" Label="#VAL" Legend="Legend1" Color="Red" ChartType="Line"></asp:Series>
                        </Series>
                        <ChartAreas>
                            <asp:ChartArea Name="ChartArea1">
                            </asp:ChartArea>
                        </ChartAreas>
                        <Legends>
                            <asp:Legend Name="Legend1" Enabled="False">
                            </asp:Legend>
                        </Legends>
                        <Titles>
                            <asp:Title Name="Title1" Text="Marítimo - Média de Dias" Visible="False">
                            </asp:Title>
                        </Titles>
                    </asp:Chart>
                </div>
            </div>
        </asp:Panel>
        <br />
        <asp:Panel ID="pnlProcessos" runat="server" ScrollBars="None" Height="150px" Width="600px" Style="padding-left: 5px;" Visible="False">
            <asp:DropDownList ID="ddlselecaoProcesso" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddlselecaoProcesso_SelectedIndexChanged" Width="625px" Font-Bold="False">
                <asp:ListItem Value="1">Cabo Frio - Aéreo - Consumo - Verde</asp:ListItem>
                <asp:ListItem Value="2">Galeão - Aéreo - Consumo - Verde</asp:ListItem>
                <asp:ListItem Value="3">Cabo Frio - Aéreo - Consumo - Amarelo</asp:ListItem>
                <asp:ListItem Value="4">Galeão - Aéreo - Consumo - Amarelo</asp:ListItem>
                <asp:ListItem Value="5">Cabo Frio - Aéreo - Consumo - Vermelho</asp:ListItem>
                <asp:ListItem Value="6">Galeão - Aéreo - Consumo - Vermelho</asp:ListItem>
                <asp:ListItem Value="7">Cabo Frio - Aéreo - Admissão Temporária - Amarelo</asp:ListItem>
                <asp:ListItem Value="8">Galeão - Aéreo - Admissão Temporária - Amarelo</asp:ListItem>
                <asp:ListItem Value="9">Cabo Frio - Aéreo - Admissão Temporária - Vermelho</asp:ListItem>
                <asp:ListItem Value="10">Galeão - Aéreo - Admissão Temporária - Vermelho</asp:ListItem>
                <asp:ListItem Value="11">Cabo Frio - Aéreo - Consumo e Admissão Temporária - Amarelo</asp:ListItem>
                <asp:ListItem Value="12">Galeão - Aéreo - Consumo e Admissão Temporária - Amarelo</asp:ListItem>
                <asp:ListItem Value="13">Cabo Frio - Aéreo - Consumo e Admissão Temporária - Vermelho</asp:ListItem>
                <asp:ListItem Value="14">Galeão - Aéreo - Consumo e Admissão Temporária - Vermelho</asp:ListItem>
                <asp:ListItem Value="15">Marítimo - Consumo - Verde</asp:ListItem>
                <asp:ListItem Value="16">Marítimo - Consumo - Amarelo</asp:ListItem>
                <asp:ListItem Value="17">Marítimo - Consumo - Vermelho</asp:ListItem>
                <asp:ListItem Value="18">Marítimo - Admissão Temporária - Amarelo</asp:ListItem>
                <asp:ListItem Value="19">Marítimo - Admissão Temporária - Vermelho</asp:ListItem>
                <asp:ListItem Value="20">Marítimo - Consumo e Admissão Temporária - Amarelo</asp:ListItem>
                <asp:ListItem Value="21">Marítimo - Consumo e Admissão Temporária - Vermelho</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:UpdatePanel runat="server" ID="uppgrid" UpdateMode="Conditional" ChildrenAsTriggers="False">
                <ContentTemplate>
                    <asp:GridView ID="grdProcessos" runat="server" AutoGenerateColumns="False" Width="610px" PageSize="500">
                        <Columns>
                            <asp:BoundField DataField="Codigo" HeaderText="Nº Processo" />
                            <asp:BoundField DataField="Data_Chegada_URF_Cheg" HeaderText="Data de Chegada" />
                            <asp:BoundField DataField="DT_DESEMBARACO" HeaderText="Data de Desembaraço" />
                            <asp:BoundField DataField="Dias" HeaderText="Dias">
                                <HeaderStyle HorizontalAlign="Center" />
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:BoundField>
                        </Columns>
                    </asp:GridView>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="ddlselecaoProcesso" EventName="SelectedIndexChanged" />
                </Triggers>
            </asp:UpdatePanel>
        </asp:Panel>
    </div>
    <asp:ObjectDataSource ID="ObjectDataSource1" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="D" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0710200" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource18" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="D" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0717700" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource2" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0710200" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource19" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0717700" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource3" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0710200" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource20" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0717700" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource4" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="05" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0710200" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource21" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="05" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0717700" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource5" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="05" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0710200" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource22" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="05" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0717700" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource6" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="12" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0710200" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource23" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="12" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0717700" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource7" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="12" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0710200" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource24" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="12" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="0717700" Name="local" Type="String"></asp:Parameter>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource8" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="D" Name="canal" Type="String"></asp:Parameter>
            <%--<asp:ControlParameter ControlID="DropDownList1" Name="local" PropertyName="SelectedValue" Type="String" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource9" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            <%--<asp:ControlParameter ControlID="DropDownList1" Name="local" PropertyName="SelectedValue" Type="String" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource10" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="01" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            <%--<asp:ControlParameter ControlID="DropDownList1" Name="local" PropertyName="SelectedValue" Type="String" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource11" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="05" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            <%--<asp:ControlParameter ControlID="DropDownList1" Name="local" PropertyName="SelectedValue" Type="String" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource12" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="05" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            <%--<asp:ControlParameter ControlID="DropDownList1" Name="local" PropertyName="SelectedValue" Type="String" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource13" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="12" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="V" Name="canal" Type="String"></asp:Parameter>
            <%--<asp:ControlParameter ControlID="DropDownList1" Name="local" PropertyName="SelectedValue" Type="String" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource14" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="12" Name="declaracao" Type="String"></asp:Parameter>
            <asp:Parameter DefaultValue="L" Name="canal" Type="String"></asp:Parameter>
            <%--<asp:ControlParameter ControlID="DropDownList1" Name="local" PropertyName="SelectedValue" Type="String" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource15" runat="server" SelectMethod="BuscarMediaDias" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="11" Name="tipo" Type="String"></asp:Parameter>
            <%--<asp:ControlParameter ControlID="DropDownList1" Name="local" PropertyName="SelectedValue" Type="String" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource16" runat="server" SelectMethod="BuscarMediaDias" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <asp:Parameter DefaultValue="12" Name="tipo" Type="String"></asp:Parameter>
            <%--<asp:ControlParameter ControlID="DropDownList1" Name="local" PropertyName="SelectedValue" Type="String" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:ObjectDataSource ID="ObjectDataSource17" runat="server" SelectMethod="BuscarDados" TypeName="MSBiblioteca.BLL.EnscoGrafico, MSBiblioteca, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null" OldValuesParameterFormatString="original_{0}">
        <SelectParameters>
            <asp:SessionParameter DefaultValue="" Name="data" SessionField="sMesAno" Type="String" />
            <%--<asp:ControlParameter ControlID="DropDownList1" Name="local" PropertyName="SelectedValue" Type="String" />--%>
        </SelectParameters>
    </asp:ObjectDataSource>
    <asp:Panel ID="pnlLoad" runat="server" CssClass="PnlFundo" Style="display: none;">
        <div class="FundoTransparente">
        </div>
        <asp:Panel ID="pnlConteudo" runat="server" HorizontalAlign="Center" Style="position: fixed; z-index: 100001; top: 50%; left: 50%;">
            <div style="width: 130px; height: 20px; padding: 10px; position: fixed; top: 45%; left: 45%;">
                <%--<asp:Image ID="imgUpdateProgress" ImageUrl="../../Layout/Imagens/loading.gif" Style="padding: 10px; position: fixed; top: 45%; left: 45%;" Height="150px" Width="150px" />--%>
                <img alt="Loading..." src="../../Layout/Imagens/loading.gif" style="height: 150px; width: 150px;" />
            </div>
        </asp:Panel>
    </asp:Panel>
</asp:Content>

