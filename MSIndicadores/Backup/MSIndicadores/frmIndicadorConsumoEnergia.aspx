<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="frmIndicadorConsumoEnergia.aspx.cs" Inherits="MSIndicadores.frmIndicadorConsumoEnergia" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CHART ID="Chart1" runat="server" BackColor="" 
            BackGradientStyle="TopBottom" BorderColor="#B54001" BorderlineDashStyle="Solid" 
            BorderWidth="2px" Height="564px" ImageLocation="" Width="992px" 
            ViewStateMode="Enabled">
    <legends>
        <asp:Legend BackColor="Transparent" Font="Trebuchet MS, 16pt, style=Bold" 
                    IsTextAutoFit="False" Name="Default" Enabled="False">
        </asp:Legend>
    </legends>
    <Titles>
        <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" 
                    Text="Consumo específico de energia elétrica">
        </asp:Title>
    </Titles>
    <series>
        <asp:Series BorderColor="180, 26, 59, 105" BorderWidth="5" ChartType="Spline" 
                    Color="220, 65, 140, 240" IsValueShownAsLabel="True" MarkerSize="8" 
                    MarkerStyle="Circle" Name="Series1" ShadowColor="Black" ShadowOffset="3" 
                    Font="Microsoft Sans Serif, 12pt" YValuesPerPoint="6">
        </asp:Series>
        <asp:Series BorderWidth="0" ChartArea="ChartArea1" ChartType="Line" Color="Green" 
            IsVisibleInLegend="False" Legend="Default" Name="Series2">
        </asp:Series>
    </series>
    <chartareas>
        <asp:ChartArea BackColor="OldLace" BackGradientStyle="TopBottom" 
                    BackSecondaryColor="White" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
                    IsSameFontSizeForAllAxes="True" Name="ChartArea1" ShadowColor="Transparent">
            <area3dstyle Inclination="40" IsClustered="False" LightStyle="Realistic" 
                        Rotation="25" WallWidth="3" />
            <axisy IsLabelAutoFit="False" LineColor="64, 64, 64, 64" 
                        Title="Consumo de Energia x Efetivo(KW/h)" 
                TitleFont="Microsoft Sans Serif, 14pt">
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
