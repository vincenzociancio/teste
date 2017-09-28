<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="frmIndicadorRejeicaoVsAnalisados.aspx.cs" Inherits="MSIndicadores.frmIndicadorRejeicaoVsAnalisados" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CHART ID="ChartRj" runat="server" BackColor="" 
            BackGradientStyle="TopBottom" BorderColor="#B54001" BorderlineDashStyle="Solid" 
            BorderWidth="2px" Height="564px" ImageLocation="" Width="1044px" 
            ViewStateMode="Enabled">
        <legends>
            <asp:Legend BackColor="Transparent" Font="Trebuchet MS, 12pt" 
                    IsTextAutoFit="False" Name="Default">
            </asp:Legend>
        </legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" 
                    Text="Indicador de Rejeição">
            </asp:Title>
        </Titles>
        <series>
            <asp:Series BorderColor="180, 26, 59, 105" BorderWidth="3" ChartType="Line" 
                    Color="220, 65, 140, 240" IsValueShownAsLabel="True" MarkerSize="8" 
                    MarkerStyle="Circle" Name="Series1" ShadowColor="Black" ShadowOffset="2" 
                    Font="Microsoft Sans Serif, 10pt">
            </asp:Series>
            <asp:Series BorderColor="180, 26, 59, 105" BorderWidth="3" ChartType="Line" 
                    Color="220, 224, 64, 10" IsValueShownAsLabel="True" MarkerSize="9" 
                    MarkerStyle="Circle" Name="Series2" ShadowColor="Black" ShadowOffset="2" 
                    Font="Microsoft Sans Serif, 10pt" Label="#VAL%" YAxisType="Secondary">
            </asp:Series>
            <asp:Series BorderColor="180, 26, 59, 105" BorderWidth="3" ChartArea="ChartArea1" ChartType="Line" Color="DarkGreen" Font="Microsoft Sans Serif, 10pt" IsValueShownAsLabel="True" Label="#VAL%" Legend="Default" MarkerSize="9" MarkerStyle="Circle" Name="Series3" ShadowColor="Black" ShadowOffset="2" YAxisType="Secondary">
            </asp:Series>
        </series>
        <chartareas>
            <asp:ChartArea BackColor="OldLace" BackGradientStyle="TopBottom" 
                    BackSecondaryColor="White" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
                    IsSameFontSizeForAllAxes="True" Name="ChartArea1" ShadowColor="Transparent">
                <AxisY2 Title="Percetual de Rejeição" TitleFont="Microsoft Sans Serif, 12pt">
                </AxisY2>
                <area3dstyle Inclination="40" IsClustered="False" LightStyle="Realistic" 
                        Rotation="25" WallWidth="3" />
                <axisy IsLabelAutoFit="False" LineColor="64, 64, 64, 64" 
                        Title="Quantidade de Processos" TitleFont="Microsoft Sans Serif, 12pt" crossing="Min">
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
