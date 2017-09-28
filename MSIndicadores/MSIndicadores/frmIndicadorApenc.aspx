<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="frmIndicadorApenc.aspx.cs" Inherits="MSIndicadores.frmIndicadorApenc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Chart ID="Chart1" runat="server" Height="564px" Width="992px" 
    ViewStateMode="Enabled">
        <Series>
            <asp:Series BorderWidth="3" ChartType="Bar" 
                Font="Microsoft Sans Serif, 11pt" IsValueShownAsLabel="True" 
                Label="#VAL%" MarkerStyle="Cross" Name="Series1" Legend="Legend1">
            </asp:Series>
            <asp:Series BorderWidth="3" ChartArea="ChartArea1" ChartType="Bar" 
                Font="Microsoft Sans Serif, 11pt" IsValueShownAsLabel="True" 
                Label="#VAL%" MarkerStyle="Cross" Name="Series2" Legend="Legend1">
            </asp:Series>
            <asp:Series BorderWidth="3" ChartArea="ChartArea2" ChartType="Bar" 
                Color="0, 192, 0" Font="Microsoft Sans Serif, 11pt" IsValueShownAsLabel="True" 
                Label="#VAL%" MarkerStyle="Cross" Legend="Legend2" Name="Series3">
            </asp:Series>
            <asp:Series BorderWidth="3" ChartArea="ChartArea2" ChartType="Bar" 
                Color="192, 64, 0" Font="Microsoft Sans Serif, 11pt" IsValueShownAsLabel="True" 
                Label="#VAL%" MarkerStyle="Cross" Legend="Legend2" Name="Series4">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" BackColor="OldLace" 
                BackGradientStyle="TopBottom" BackSecondaryColor="White" 
                BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
                IsSameFontSizeForAllAxes="True" ShadowColor="Transparent">
                <AxisY 
                    TitleFont="Microsoft Sans Serif, 14pt" IsLabelAutoFit="False">
                    <LabelStyle Font="Microsoft Sans Serif, 11pt" Format="{0}%" />
                </AxisY>
                <AxisX Title="" 
                    TitleFont="Microsoft Sans Serif, 12pt, style=Bold" IsLabelAutoFit="False">
                    <LabelStyle Font="Microsoft Sans Serif, 11pt" />
                </AxisX>
            </asp:ChartArea>
              <asp:ChartArea Name="ChartArea2" BackColor="OldLace" 
                BackGradientStyle="TopBottom" BackSecondaryColor="White" 
                BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
                IsSameFontSizeForAllAxes="True" ShadowColor="Transparent">
                <AxisY 
                    TitleFont="Microsoft Sans Serif, 14pt" IsLabelAutoFit="False">
                    <LabelStyle Font="Microsoft Sans Serif, 11pt" Format="{0}%" />
                </AxisY>
                <AxisX Title="" 
                    TitleFont="Microsoft Sans Serif, 12pt, style=Bold" IsLabelAutoFit="False">
                    <LabelStyle Font="Microsoft Sans Serif, 11pt" />
                </AxisX>
            </asp:ChartArea>         
        </ChartAreas>
        <Legends>
            <asp:Legend 
                Name="Legend1" DockedToChartArea="ChartArea1" IsDockedInsideChartArea="False" TitleFont="Microsoft Sans Serif, 12pt, style=Bold">
            </asp:Legend>
            <asp:Legend 
                Name="Legend2" DockedToChartArea="ChartArea2" IsDockedInsideChartArea="False" TitleFont="Microsoft Sans Serif, 12pt, style=Bold">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" 
                Text="APenC - Monitoração de Pendências de Clientes">
            </asp:Title>
        </Titles>
    </asp:Chart>
</asp:Content>
