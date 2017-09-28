<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="frmIndicadorAdesaoLaboral.aspx.cs" Inherits="MSIndicadores.frmIndicadorAdesaoLaboral" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Chart ID="chtLaboral" runat="server" Height="564px" 
    ViewStateMode="Enabled" Width="992px" BackColor="" 
        BackGradientStyle="TopBottom" BorderlineDashStyle="Solid">
        <Series>
            <asp:Series Font="Microsoft Sans Serif, 14pt" 
            IsValueShownAsLabel="True" Name="Series1" Label="#VAL%" 
                YValuesPerPoint="4" BorderColor="180, 26, 59, 105" BorderWidth="3" 
                Color="220, 65, 140, 240" ShadowColor="Black" ShadowOffset="2">
                <EmptyPointStyle MarkerStyle="Circle" />
            </asp:Series>
            <asp:Series BorderWidth="4" ChartArea="ChartArea1" ChartType="Line" 
                Color="Transparent" Name="Series2" BorderDashStyle="Dash">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" BackColor="OldLace" 
                BackGradientStyle="TopBottom" BackSecondaryColor="White" 
                BorderColor="64, 64, 64, 64" IsSameFontSizeForAllAxes="True" 
                ShadowColor="Transparent">
                <AxisY Title="Percentual" 
                TitleFont="Microsoft Sans Serif, 16pt, style=Bold" IsLabelAutoFit="False">
                    <LabelStyle Font="Microsoft Sans Serif, 12pt" Format="{0}%" />
                </AxisY>
                <AxisX Title="Meses do Ano" 
                TitleFont="Microsoft Sans Serif, 16pt, style=Bold" IsLabelAutoFit="False">
                    <LabelStyle Font="Microsoft Sans Serif, 12pt" />
                </AxisX>
            </asp:ChartArea>
        </ChartAreas>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" 
            Text="Adesão ao Programa de Ginástica Laboral">
            </asp:Title>
        </Titles>
    </asp:Chart>
</asp:Content>
