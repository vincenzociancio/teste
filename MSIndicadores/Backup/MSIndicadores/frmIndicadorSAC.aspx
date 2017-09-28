<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="frmIndicadorSAC.aspx.cs" Inherits="MSIndicadores.frmIndicadorSAC" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Chart ID="chtSAC" runat="server" BackColor="" 
        BackGradientStyle="TopBottom" BorderlineDashStyle="Solid" Height="564px" 
        ViewStateMode="Enabled" Width="992px">
        <Series>
            <asp:Series ChartArea="ChartArea1" ChartType="Pie" Name="Series1" 
                IsValueShownAsLabel="True" Label="#VAL%" Legend="Legend1" XValueType="Double" 
                YValueType="Double" LegendText="#AXISLABEL" 
                Font="Microsoft Sans Serif, 16pt, style=Bold">
            </asp:Series>
        </Series>
        <ChartAreas>
            <asp:ChartArea Name="ChartArea1" BackColor="OldLace" 
                BackGradientStyle="TopBottom" BackSecondaryColor="White" 
                BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
                IsSameFontSizeForAllAxes="True" ShadowColor="Transparent">
                <AxisY IsLabelAutoFit="False" 
                    TitleFont="Microsoft Sans Serif, 16pt, style=Bold">
                    <LabelStyle Font="Microsoft Sans Serif, 16pt" />
                </AxisY>
                <AxisX TitleFont="Microsoft Sans Serif, 16pt, style=Bold">
                </AxisX>
            </asp:ChartArea>
        </ChartAreas>
        <Legends>
            <asp:Legend Name="Legend1" Font="Microsoft Sans Serif, 16pt, style=Bold" 
                IsTextAutoFit="False">
            </asp:Legend>
        </Legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" 
                Text="SAC - Serviço de Atendimento ao Cliente">
            </asp:Title>
        </Titles>
        <Annotations>
            <asp:Border3DAnnotation BorderSkin-PageColor="Transparent" 
                BorderSkin-SkinStyle="Raised" Font="Verdana, 12pt, style=Italic" 
                Height="30" IsMultiline="True" LineColor="" Name="Border3DAnnotation1" 
                Text="Meta 2012: Elogios 30%, Críticas 5% e Reclamações 15%." Width="24" X="73" 
                Y="40">
            </asp:Border3DAnnotation>
        </Annotations>
    </asp:Chart>
</asp:Content>
