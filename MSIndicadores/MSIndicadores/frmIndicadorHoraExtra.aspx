<%@ Page Title="" Language="C#" MasterPageFile="~/master.Master" AutoEventWireup="true" CodeBehind="frmIndicadorHoraExtra.aspx.cs" Inherits="MSIndicadores.frmIndicadorHoraExtra" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:CHART ID="Chart1" runat="server" BackColor="" 
            BackGradientStyle="TopBottom" BorderColor="#B54001" BorderlineDashStyle="Solid" 
            BorderWidth="2px" Height="564px" ImageLocation="" Width="1035px" 
            ViewStateMode="Enabled"> 
             <legends>
                <asp:Legend BackColor="Transparent" Font="Trebuchet MS, 16pt, style=Bold" 
                    IsTextAutoFit="False" Name="Default" >
                </asp:Legend>
            </legends>
        <Titles>
            <asp:Title Font="Microsoft Sans Serif, 18pt, style=Bold" Name="Title1" 
                    Text="Horas Extras">
            </asp:Title>
        </Titles>
        <series>
            <asp:Series BorderColor="180, 26, 59, 105" BorderWidth="5" ChartType="Line" IsValueShownAsLabel="True" MarkerSize="8" 
                    MarkerStyle="Circle" Name="Series1" ShadowColor="Black" ShadowOffset="2" 
                    Font="Microsoft Sans Serif, 12pt" CustomProperties="IsXAxisQuantitative=False" >
            </asp:Series>
            <asp:Series BorderWidth="5"  
                ChartType="Line" Name="Series3" Font="Microsoft Sans Serif, 12pt" IsValueShownAsLabel="True" MarkerSize="8" MarkerStyle="Circle" ShadowColor="Black" ShadowOffset="2">
            </asp:Series>
            <asp:Series BorderWidth="5" ChartType="Line" Font="Microsoft Sans Serif, 12pt" IsValueShownAsLabel="True" MarkerSize="8" MarkerStyle="Circle" Name="Series4" ShadowColor="Black" ShadowOffset="2">
            </asp:Series>
        </series>
       <%-- <chartareas>
            <asp:ChartArea BackColor="OldLace" BackGradientStyle="TopBottom" 
                    BackSecondaryColor="White" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" Name="ChartArea1" ShadowColor="Transparent">
                <InnerPlotPosition Height="78.55758" Width="79" X="9.98128" Y="2.45206" />
                <area3dstyle Inclination="40" IsClustered="False" LightStyle="Realistic" 
                        Rotation="25" WallWidth="3" />
                <axisy IsLabelAutoFit="False" LineColor="64, 64, 64, 64" 
                        Title="Quantidade de horas extras por mês" 
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
        </chartareas>--%>


            <chartareas>
                <asp:ChartArea BackColor="OldLace" BackGradientStyle="TopBottom" 
                    BackSecondaryColor="White" BorderColor="64, 64, 64, 64" BorderDashStyle="Solid" 
                    IsSameFontSizeForAllAxes="True" Name="ChartArea1" ShadowColor="Transparent">
                    <area3dstyle Inclination="40" IsClustered="False" LightStyle="Realistic" 
                        Rotation="25" WallWidth="3" />
                    <axisy IsLabelAutoFit="False" LineColor="64, 64, 64, 64" 
                        Title="Quantidade Horas" TitleFont="Microsoft Sans Serif, 14pt">
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
