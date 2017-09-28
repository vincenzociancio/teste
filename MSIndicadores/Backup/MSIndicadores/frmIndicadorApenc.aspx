<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="frmIndicadorApenc.aspx.cs" Inherits="MSIndicadores.frmIndicadorApenc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Chart ID="Chart1" runat="server" Height="564px" Width="992px" 
    ViewStateMode="Enabled">
        <Series>
            <asp:Series BorderWidth="3" ChartType="Bar" 
                Font="Microsoft Sans Serif, 14pt, style=Bold" IsValueShownAsLabel="True" 
                Label="#VAL%" MarkerStyle="Cross" Name="Series1" Legend="Legend1">
            </asp:Series>
            <asp:Series BorderWidth="3" ChartArea="ChartArea1" ChartType="Bar" 
                Font="Microsoft Sans Serif, 14pt, style=Bold" IsValueShownAsLabel="True" 
                Label="#VAL%" MarkerStyle="Cross" Name="Series2" Legend="Legend1">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" BackColor="OldLace" 
                BackGradientStyle="TopBottom" BackSecondaryColor="White" 
                BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
                IsSameFontSizeForAllAxes="True" ShadowColor="Transparent">
                <AxisY IsLabelAutoFit="False" Title="Percentual" 
                    TitleFont="Microsoft Sans Serif, 16pt, style=Bold">
                    <LabelStyle Font="Microsoft Sans Serif, 12pt" Format="{0}%" />
                </AxisY>
                <AxisX IsLabelAutoFit="False" Title="Meses do Ano" 
                    TitleFont="Microsoft Sans Serif, 16pt, style=Bold">
                    <LabelStyle Font="Microsoft Sans Serif, 12pt" />
                </AxisX>
            </asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend Font="Microsoft Sans Serif, 12pt" IsTextAutoFit="False" 
                Name="Legend1">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" 
                Text="APenC - Monitoração de Pendências de Clientes">
            </asp:Title>
        </Titles>
    </asp:Chart>
</asp:Content>
