<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="frmExportacaoSeadrill.aspx.cs" Inherits="MS2000Web.Menu.Exportação.frmExportacaoSeadrill" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .FundoTransparente {
            position: fixed;
            width: 100%;
            height: 100%;
            /* background-color: #aaaaaa;
            opacity: 0.35;
            -moz-opacity: 0.35;
            filter: alpha(opacity=35);*/
            z-index: 100000;
            top: 0;
            left: 0;
            right: 0;
            background: #aaaaaa url(../../Script/jquery-ui-1.8.22.custom/css/redmond/images/ui-bg_flat_0_aaaaaa_40x100.png) 50% 50% repeat-x;
            opacity: .30;
            filter: Alpha(Opacity=30);
            text-align: center;
        }

        /*style="position: fixed; text-align: center; height: 100%; width: 100%; top: 0; right: 0; left: 0; z-index: 9999999; background: #aaaaaa url(../../Script/jquery-ui-1.8.22.custom/css/redmond/images/ui-bg_flat_0_aaaaaa_40x100.png) 50% 50% repeat-x; opacity: .30; filter: Alpha(Opacity=30);*/
    </style>
    <script type="text/javascript">
        $(function () {
            $('#dialog:ui-dialog').dialog('destroy');
            $("#modalExportacaoSeadrill").dialog({
                autoOpen: true,
                height: 650,
                width: 650,
                modal: true,
                resizable: false,
                open: function (type, data) {
                    $(this).parent().appendTo("form:first");
                },
                close: function () {
                    window.location = "../../MenuPrincipal.aspx";
                }
            });

            $("#ctl00_ContentPlaceHolder1_pnlLoad").css("display", "block");
            $("#<%=txtProcesso.ClientID %>").mask('99999/99');
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="modalExportacaoSeadrill" style="position: static; width: 630px; height: 750px; overflow: hidden;" title="Exportação Seadrill">
        <div class="content_post" style="vertical-align: super; padding-bottom: 10px; padding-top: 10px; background-color: lightyellow; border-top: thin solid #79b7e7; border-bottom: thin solid #79b7e7; height: 20px; margin-bottom: 10px;">
            <div style="width: 500px; position: static; vertical-align: super;">
                <asp:Label ID="Label1" runat="server" Text="Digite o nº do processo" Style="float: left; padding-right: 5px;"></asp:Label>&nbsp;
                <asp:TextBox ID="txtProcesso" runat="server" Width="100px" AutoPostBack="false" Style="float: left;"></asp:TextBox>&nbsp;
                <div style="float: left; padding-left: 10px;">
                    <asp:UpdatePanel ID="UpdatePanel1" runat="server" ChildrenAsTriggers="False" UpdateMode="Conditional">
                        <ContentTemplate>
                            <asp:Button ID="btnBuscarProcesso" runat="server" Text="Buscar dados" OnClick="btnBuscarProcesso_Click" />
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </div>
                <asp:Button ID="btnDownload" runat="server" Text="Download" OnClick="btnDownload_Click" />
            </div>
        </div>
        <div style="text-align: center;">
            <asp:UpdatePanel ID="UpdatePanel2" runat="server">
                <ContentTemplate>
                    <asp:Label runat="server" ID="lbMessage" ForeColor="Red" Text=""></asp:Label>
                </ContentTemplate>
            </asp:UpdatePanel>
        </div>
        <asp:UpdatePanel ID="UpdatePanel4" runat="server">
            <ContentTemplate>
                <asp:ListBox ID="ListBox1" runat="server" Width="100%" Font-Names="Verdana" Height="500px"></asp:ListBox>
            </ContentTemplate>
        </asp:UpdatePanel>
    </div>
    <asp:UpdateProgress ID="updateProgress" runat="server" AssociatedUpdatePanelID="UpdatePanel1">
        <ProgressTemplate>
            <asp:Panel ID="pnlLoad" runat="server" CssClass="PnlFundo" Style="display: none;">
                <div class="FundoTransparente">
                </div>
                <asp:Panel ID="pnlConteudo" runat="server" HorizontalAlign="Center" Style="position: fixed; z-index: 100001; top: 50%; left: 50%;">
                    <div style="width: 130px; height: 20px; padding: 10px; position: fixed; top: 45%; left: 45%;">
                        <asp:Image ID="imgUpdateProgress" runat="server" ImageUrl="../../Layout/Imagens/loading.gif" Style="padding: 10px; position: fixed; top: 45%; left: 45%;" GenerateEmptyAlternateText="True" Height="150px" Width="150px" />
                    </div>
                </asp:Panel>
            </asp:Panel>
        </ProgressTemplate>
    </asp:UpdateProgress>
</asp:Content>
