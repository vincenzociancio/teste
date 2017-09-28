<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="frmIndicadorTurnover.aspx.cs" Inherits="MSIndicadores.frmIndicadorTurnover" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CHART ID="Chart1" runat="server" BackColor="243, 223, 193" 
            BackGradientStyle="TopBottom" BorderColor="#B54001" BorderlineDashStyle="Solid" 
            BorderWidth="2px" Height="564px" ImageLocation="" Width="992px" 
            ViewStateMode="Enabled">
    <legends>
        <asp:Legend BackColor="Transparent" Font="Trebuchet MS, 16pt, style=Bold" 
                    IsTextAutoFit="False" Name="Default">
        </asp:Legend>
    </legends>
    <Titles>
        <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" 
                    Text="Employee Turnover">
        </asp:Title>
    </Titles>
    <borderskin SkinStyle="Emboss" />
    <series>
        <asp:Series BorderColor="180, 26, 59, 105" BorderWidth="3" ChartType="Line" 
                    Color="0, 192, 0" IsValueShownAsLabel="True" MarkerSize="8" 
                    MarkerStyle="Circle" Name="Series1" ShadowColor="Black" ShadowOffset="2" 
                    Font="Microsoft Sans Serif, 12pt">
        </asp:Series>
        <asp:Series BorderColor="180, 26, 59, 105" BorderWidth="3" ChartType="Line" 
                    Color="220, 224, 64, 10" IsValueShownAsLabel="True" MarkerSize="9" 
                    MarkerStyle="Circle" Name="Series2" ShadowColor="Black" ShadowOffset="2" 
                    Font="Microsoft Sans Serif, 12pt">
        </asp:Series>
    </series>
    <chartareas>
        <asp:ChartArea BackColor="OldLace" BackGradientStyle="TopBottom" 
                    BackSecondaryColor="White" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
                    IsSameFontSizeForAllAxes="True" Name="ChartArea1" ShadowColor="Transparent">
            <area3dstyle Inclination="40" IsClustered="False" LightStyle="Realistic" 
                        Rotation="25" WallWidth="3" />
            <axisy IsLabelAutoFit="False" LineColor="64, 64, 64, 64" 
                        Title="Quantidade" TitleFont="Microsoft Sans Serif, 14pt">
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
