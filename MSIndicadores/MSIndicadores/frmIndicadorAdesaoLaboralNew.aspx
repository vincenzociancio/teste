<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="frmIndicadorAdesaoLaboralNew.aspx.cs" Inherits="MSIndicadores.frmIndicadorAdesaoLaboralNew" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CHART ID="Chart1" runat="server" BackColor="" 
            BackGradientStyle="TopBottom" BorderColor="#B54001" BorderlineDashStyle="Solid" 
            BorderWidth="2px" Height="564px" ImageLocation="" Width="1035px" 
            ViewStateMode="Enabled">
    <legends>
        <asp:Legend BackColor="Transparent" Font="Trebuchet MS, 16pt, style=Bold" 
                    IsTextAutoFit="False" Name="Default">
        </asp:Legend>
    </legends>
    <Titles>
        <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" 
                    Text="Adesão ao Programa de Ginástica Laboral">
        </asp:Title>
    </Titles>
    <series>
        <asp:Series BorderWidth="5" ChartArea="ChartArea1" ChartType="Line" IsValueShownAsLabel="True" MarkerSize="8" 
                    MarkerStyle="Circle" Name="Series1" ShadowColor="Black" ShadowOffset="3" Label="#VAL%"
                    Font="Microsoft Sans Serif, 12pt" YValuesPerPoint="6">
        </asp:Series>
        <asp:Series BorderWidth="5" ChartArea="ChartArea1" ChartType="Line" MarkerSize="8" MarkerStyle="Circle"  Label="#VAL%" Legend="Default" Name="Series3" Font="Microsoft Sans Serif, 12pt" IsValueShownAsLabel="True" ShadowColor="Black" ShadowOffset="3">
        </asp:Series>
        <asp:Series BorderWidth="5" ChartArea="ChartArea1" ChartType="Line" MarkerSize="8" MarkerStyle="Circle" Font="Microsoft Sans Serif, 12pt" IsValueShownAsLabel="True" Legend="Default" Name="Series4" ShadowColor="Black" ShadowOffset="3" Enabled="False">
        </asp:Series>
    </series>

            <chartareas>
                <asp:ChartArea BackColor="OldLace" BackGradientStyle="TopBottom" 
                    BackSecondaryColor="White" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
                    IsSameFontSizeForAllAxes="True" Name="ChartArea1" ShadowColor="Transparent">
                    <area3dstyle Inclination="40" IsClustered="False" LightStyle="Realistic" 
                        Rotation="25" WallWidth="3" />
                    <axisy IsLabelAutoFit="False" LineColor="64, 64, 64, 64" 
                        Title="Percentual" TitleFont="Microsoft Sans Serif, 14pt">
                        <LabelStyle Font="Trebuchet MS, 12pt" />
                        <MajorGrid LineColor="64, 64, 64, 64" />
                    </axisy>
                    <axisx IsLabelAutoFit="False" Title="Meses do Ano" 
                        TitleFont="Microsoft Sans Serif, 16pt, style=Bold">
                        <LabelStyle Font="Trebuchet MS, 12pt" IsStaggered="True" />
                        <MajorGrid LineColor="64, 64, 64, 64" />
                    </axisx>
                </asp:ChartArea>
            </chartareas>
</asp:CHART>
</asp:Content>
