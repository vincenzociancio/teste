<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="frmIndicadorFollow.aspx.cs" Inherits="MSIndicadores.frmIndicadorFollow" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Chart ID="chtSemanal" runat="server" Height="564px" 
    ViewStateMode="Enabled" Width="1100px">
    <Series>
        <asp:Series Font="Microsoft Sans Serif, 14pt" 
            IsValueShownAsLabel="True" Name="Series1" Label="#VAL%" 
            Color="192, 192, 0" BorderColor="Olive" ShadowColor="Black" 
            ShadowOffset="2">
        </asp:Series>
        <asp:Series BorderWidth="0" ChartArea="ChartArea1" ChartType="Line" 
            Name="Series2">
        </asp:Series>
    </Series>
    <ChartAreas>
        <asp:ChartArea Name="ChartArea1" BackColor="OldLace" 
            BackGradientStyle="TopBottom" BackSecondaryColor="White" 
            BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
            IsSameFontSizeForAllAxes="True" ShadowColor="Transparent">
            <AxisY Title="Percentual" 
                TitleFont="Microsoft Sans Serif, 16pt, style=Bold" IsLabelAutoFit="False">
                <LabelStyle Font="Microsoft Sans Serif, 12pt" />
            </AxisY>
            <AxisX Title="Dias da Semana" 
                TitleFont="Microsoft Sans Serif, 16pt, style=Bold" IsLabelAutoFit="False">
                <LabelStyle Font="Microsoft Sans Serif, 12pt" />
            </AxisX>
            <InnerPlotPosition Height="83.4617" Width="80" X="10.30528" Y="2.45206" />
            <Area3DStyle Inclination="40" LightStyle="Realistic" />
        </asp:ChartArea>
    </ChartAreas>
    <Titles>
        <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" 
            Text="Pendências Diárias de Follow-Up">
        </asp:Title>
    </Titles>
</asp:Chart>
</asp:Content>
