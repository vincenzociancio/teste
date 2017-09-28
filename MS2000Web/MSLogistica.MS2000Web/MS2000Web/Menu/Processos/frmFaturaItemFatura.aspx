<%@ Page Language="C#"  AutoEventWireup="true" CodeBehind="frmFaturaItemFatura.aspx.cs" Inherits="MS2000Web.Menu.Processos.frmFaturaItemFatura" %>

<%@ Import Namespace="Resources" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <link href="Script/jquery-ui-1.8.22.custom/css/redmond/jquery-ui-1.8.22.custom.css"
        rel="stylesheet" type="text/css" media="all" />

    <script src="../../Script/jquery-ui-1.8.22.custom/js/jquery-1.7.2.min.js"></script>
    <script src="../../Script/jquery-ui-1.8.22.custom/js/jquery-ui-1.8.22.custom.min.js"></script>
    <script src="../../Script/MSScript/jsDefault.js"></script>
    <script type="text/javascript">
        $(function () {

            $('#dialog:ui-dialog').dialog('destroy');
            //inicio

            //fim
            // Mensagem de Sucesso
            $('#modalSucesso').dialog({
                autoOpen: false,
                height: 150,
                width: 300,
                modal: true,
                resizable: false,
                buttons: {
                    Ok: function () {
                        $(this).dialog('close');
                    }
                }
            });
            // Mensagem de Erro
            $('#modalErro').dialog({
                autoOpen: false,
                height: 150,
                width: 300,
                modal: true,
                resizable: false,
                buttons: {
                    Ok: function () {
                        $(this).dialog('close');
                    }
                }
            });


            $('#ContentPlaceHolder1_btnFechar').click(function (e) {
                e.preventDefault();
                window.location = "frmFaturaCambio.aspx";
            });


            $('#ContentPlaceHolder1_btnGravarUsuario').click(function () {
                if ($("#frmMaster").valid()) {
                    return true
                }
                else {
                    return false
                }
            });
            //-------------------------------------------------------        
        });
    </script>
    <title></title>
</head>

<body>
    <form id="frmFaturaItemFatura" runat="server">
        <div style="width: 712px">
            <div style="width: 708px">
                <div style="position: static; float: left; width: 545px;">
                    <asp:Label ID="lblFabricante" runat="server" Text="Fabricante"></asp:Label>
                    <br />
                    <asp:Label ID="lblDescFabricante" runat="server" Text="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx"></asp:Label>
                </div>
                <div style="position: static;padding-bottom :10px" class="content_post">
                    ;</div>
            </div>
        </div>
        <div style="width: 719px; position: static">
            <div>
                <div style="padding-right: 10px; padding-bottom: 10px; width: 705px;">
                    <asp:Label ID="lblDescPortugues" runat="server" Text="Descrição em Português"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDescPortugues" runat="server" Height="70px" TextMode="MultiLine" Width="700px"></asp:TextBox>
                </div>
            </div>
            <div>
                <div style="padding-right: 10px; padding-bottom: 10px; width: 703px;">
                    <asp:Label ID="lblDescIngles" runat="server" Text="Descrição em Inglês"></asp:Label>
                    <br />
                    <asp:TextBox ID="txtDescIngles" runat="server" Height="70px" TextMode="MultiLine" Width="700px"></asp:TextBox>
                </div>
            </div>
        </div>
        <div>
            <div style="position: static; float: left; width: 99px;">
                <asp:Label ID="lblSequencia" runat="server" Text="Seq."></asp:Label>
                <asp:TextBox ID="txtSequencia" runat="server" Width="67px"></asp:TextBox>
            </div>
            <div style="width: 138px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblPartNumber" runat="server" Text="Part Number"></asp:Label>
                <br />
                <asp:TextBox ID="txtPartNumber" runat="server"></asp:TextBox>
            </div>
            <div style="width: 435px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblNCM" runat="server" Text="NCM"></asp:Label>
                <br />
                <asp:TextBox ID="txt" runat="server" Width="80px"></asp:TextBox>
                <asp:DropDownList ID="ddlNCM" runat="server" Width="341px" Height="18px">
                </asp:DropDownList>
            </div>
        </div>

        <div style="position: static; width: 724px;">
            <div style="width: 324px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblUnidEstatistica" runat="server" Text="Unidade de Medida Estatística"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlUnidEstatistica" runat="server" Width="323px" Height="17px" Style="margin-bottom: 0px">
                </asp:DropDownList>
            </div>
            <div style="width: 375px; position: static; padding-right: 10px; padding-bottom: 10px; float: left">
                <asp:Label ID="lblUnidComercializada" runat="server" Text="Unidade de Medida Comercializada"></asp:Label>
                <br />
                <asp:TextBox ID="txtUnidComercializada" runat="server" Width="33px"></asp:TextBox>
                <asp:DropDownList ID="ddlUnidComercializada" runat="server" Width="329px" Height="21px">
                </asp:DropDownList>
            </div>
        </div>
        <div style="width: 691px; position: static">
            <div style="width: 97px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblRefProjeto" runat="server" Text="Ref.Projeto"></asp:Label>
                <br />
                <asp:TextBox ID="txtRefProjeto" runat="server" Width="84px"></asp:TextBox>
            </div>
            <div style="width: 97px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblRefEmb" runat="server" Text="Ref.Emb."></asp:Label>
                <br />
                <asp:TextBox ID="txtRefEmb" runat="server" Width="84px"></asp:TextBox>
            </div>
            <div style="width: 97px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblSerie" runat="server" Text="N° de Série"></asp:Label>
                <br />
                <asp:TextBox ID="txtSerie" runat="server" Width="84px"></asp:TextBox>
            </div>
            <div style="width: 113px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblPO" runat="server" Text="PO"></asp:Label>
                <br />
                <asp:TextBox ID="txtPO" runat="server" Width="101px"></asp:TextBox>
            </div>
            <div style="width: 109px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblSeqPO" runat="server" Text="Seq.PO"></asp:Label>
                <br />
                <asp:TextBox ID="txtSeqPO" runat="server" Width="100px"></asp:TextBox>
            </div>
            <div style="width: 110px; position: static; padding-right: 10px; padding-bottom: 10px; float: left">
                <asp:Label ID="lblQuantidade" runat="server" Text="Quantidade"></asp:Label>
                <br />
                <asp:TextBox ID="txtQuantidade" runat="server" Width="101px"></asp:TextBox>
            </div>
        </div>
        <div style="width: 691px; position: static">
            <div style="width: 97px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblValorUnitario" runat="server" Text="Valor Unitário"></asp:Label>
                <br />
                <asp:TextBox ID="txtValorUnitario" runat="server" Width="84px"></asp:TextBox>
            </div>
            <div style="width: 97px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblPesoUnitario" runat="server" Text="Peso Unitário"></asp:Label>
                <br />
                <asp:TextBox ID="txtPesoUnitario" runat="server" Width="84px"></asp:TextBox>
            </div>
            <div style="width: 97px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="lblPesoTotal" runat="server" Text="Peso Total"></asp:Label>
                <br />
                <asp:TextBox ID="txtPesoTotal" runat="server" Width="84px"></asp:TextBox>
            </div>
            <div style="width: 174px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="Label1" runat="server" Text="Destaque"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox1" runat="server" Width="157px"></asp:TextBox>
            </div>
            <div style="width: 171px; position: static; float: left; padding-right: 10px; padding-bottom: 10px;">
                <asp:Label ID="Label2" runat="server" Text="NALADI"></asp:Label>
                <br />
                <asp:TextBox ID="TextBox2" runat="server" Width="158px"></asp:TextBox>
            </div>
        </div>
        <div style="position: static; vertical-align: super; width: 691px; float: left; border-top: thin solid #79b7e7; padding-top: 10px;">
                <div style="vertical-align: super; width: 335px; padding-bottom: 10px; float: left;">
                   
                        <asp:Button ID="btnNovo" runat="server" Text="Abri novo processo" />
                        &nbsp;<asp:Button ID="btnFecharProcesso" runat="server" Text="Fechar processo" />
                </div>
                <div style="position: static; vertical-align: super; width: 250px; padding-bottom: 10px; float: left; text-align: right;">
                    
                        <asp:Button ID="btnGravarUsuario" runat="server" Text="salvar" />&nbsp;
                <asp:Button ID="Button1" runat="server" Text="Excluir" />
                        &nbsp;<asp:Button ID="btnFechar" runat="server" Text="fechar" />
                   
                </div>
            </div>

        <div id="modalSucesso" title="<%=resxIdioma.informacao%>" style="display: none; text-align: center;">
            <p>
                <br />
                <span>
                    <%=resxIdioma.msg_gravadoOk%></span>
            </p>
        </div>
        <div id="modalErro" title="<%=resxIdioma.erro%>" style="display: none; text-align: center;">
            <p>
                <br />
                <span>
                    <%=resxIdioma.msg_gravadoErro%></span>
            </p>
        </div>
    </form>
</body>
</html>
