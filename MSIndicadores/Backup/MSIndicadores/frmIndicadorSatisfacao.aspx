<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true"
    CodeBehind="frmIndicadorSatisfacao.aspx.cs" Inherits="MSIndicadores.frmIndicadorSatisfacao" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Chart ID="Chart1" runat="server" BackColor="" BackGradientStyle="TopBottom"
        BorderColor="#B54001" BorderlineDashStyle="Solid" BorderWidth="2px" Height="564px"
        ImageLocation="" Width="992px" ViewStateMode="Enabled">
        <Legends>
            <asp:Legend BackColor="Transparent" Font="Trebuchet MS, 16pt, style=Bold" IsTextAutoFit="False"
                Name="Default">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" Text="Pesquisa de Satisfação">
            </asp:Title>
        </Titles>
        <Series>
            <asp:Series BorderColor="DimGray" BorderWidth="3" Color="Red" IsValueShownAsLabel="True"
                MarkerSize="8" MarkerStyle="Triangle" Name="Series1" ShadowColor="Black" ShadowOffset="2"
                Font="Microsoft Sans Serif, 14pt, style=Bold" YValuesPerPoint="6" 
                LabelFormat="{0}%">
            </asp:Series>
            <asp:Series BorderColor="Gray" BorderWidth="3" ChartArea="ChartArea1" Color="Yellow"
                Font="Microsoft Sans Serif, 14pt, style=Bold" IsValueShownAsLabel="True" Legend="Default"
                Name="Series2" ShadowColor="Black" ShadowOffset="2" YValuesPerPoint="6" 
                LabelFormat="{0}%">
            </asp:Series>
            <asp:Series BorderColor="64, 64, 64" BorderWidth="3" ChartArea="ChartArea1" Color="Green"
                Font="Microsoft Sans Serif, 14pt, style=Bold" IsValueShownAsLabel="True" Legend="Default"
                Name="Series3" ShadowColor="Black" ShadowOffset="2" YValuesPerPoint="6" 
                LabelFormat="{0}%">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea BackColor="OldLace" BackGradientStyle="TopBottom" BackSecondaryColor="White"
                BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" IsSameFontSizeForAllAxes="True"
                Name="ChartArea1" ShadowColor="Transparent">
                <Area3DStyle Inclination="40" IsClustered="False" LightStyle="None" Rotation="25"
                    WallWidth="3" />
                <AxisY IsLabelAutoFit="False" LineColor="64, 64, 64, 64" Title="Notas" TitleFont="Microsoft Sans Serif, 14pt">
                    <LabelStyle Font="Trebuchet MS, 14pt, style=Bold" Format="{0}%" />
                    <MajorGrid LineColor="64, 64, 64, 64" />
                </AxisY>
                <AxisX IsLabelAutoFit="False" Title="Notas de 1 a 10" TitleFont="Microsoft Sans Serif, 16pt, style=Bold">
                    <LabelStyle Font="Trebuchet MS, 14pt, style=Bold" IsStaggered="True" />
                    <MajorGrid LineColor="64, 64, 64, 64" />
                </AxisX>
            </asp:ChartArea>
        </ChartAreas>
    </asp:Chart>
</asp:Content>
