<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true"
    CodeBehind="frmFaturaDetalhes.aspx.cs" Inherits="MS2000Web.Menu.Processos.frmFaturaDetalhes" %>


<%@ Import Namespace="Resources" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        $(function () {
            
            $('#dialog:ui-dialog').dialog('destroy');
            //inicio
            $("#tabs").tabs().dialog({
                autoOpen: true,
                height: 700,
                width: 800,
                modal: true,
                resizable: false,
                open: function (type, data) {
                    $("#tabsCambio").tabs();
                    // Tabs
                    //$("#tabs").tabs({
                    //    ajaxOptions: {
                    //        error: function (xhr, status, index, anchor) {
                    //            $(anchor.hash).html(
                    //                "Couldn't load this tab. We'll try to fix this as soon as possible. " +
                    //                "If this wouldn't be a demo.");
                    //        }
                    //    }
                    //});
                    $(this).parent().appendTo("#frmMaster");
                },
                close: function () {
                    window.location = "frmFatura.aspx";
                }
            });

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
                window.location = "frmFatura.aspx";
            });


            $('#ContentPlaceHolder1_btnGravarUsuario').click(function () {
                if ($("#frmMaster").valid()) {
                    return true
                }
                else {
                    return false
                }
            });
            //--------------------------------------------------------            

            // Preencher o textCodExportador de acordo com combo selecionado
            $('#ContentPlaceHolder1_ddlExportador').change(function () {
                $('#ContentPlaceHolder1_txtCodExportador').val($('#ContentPlaceHolder1_ddlExportador').val());
            });

            // Preencher o ddlExportador de acordo com text digitado
            $('#ContentPlaceHolder1_txtCodExportador').keyup(function () {
                $('#ContentPlaceHolder1_ddlExportador').val($('#ContentPlaceHolder1_txtCodExportador').val());
            });
            // Preencher o txtCodMoeda de acordo com combo selecionado
            $('#ContentPlaceHolder1_ddlMoeda').change(function () {
                $('#ContentPlaceHolder1_txtCodMoeda').val($('#ContentPlaceHolder1_ddlMoeda').val());
            });
            // Preencher o ddlMoeda de acordo com text digitado
            $('#ContentPlaceHolder1_txtCodMoeda').keyup(function () {
                $('#ContentPlaceHolder1_ddlMoeda').val($('#ContentPlaceHolder1_txtCodMoeda').val());
            });

        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="tabs" <%if (string.IsNullOrEmpty(codigo))
                     { %>title="Inclusão de Fatura"
        <%}
                     else
                     {%>title="Edição de Fatura"
        <%} %>>
        <ul>
            <li><a href="#tbFatura">Dados Fatura</a></li>
            <li><a href="frmFaturaItemFatura.aspx">Itens da Fatura</a></li>
            <li><a href="#tbAcrescimo">Acréscimo</a></li>
            <li><a href="#tbReducao">Reduções</a></li>
            <li><a href="#tbcambio">Câmbio</a></li>
            <%-- <li><a href="frmFaturaCambio.aspx">Câmbio</a></></li>--%>
        </ul>
        <div class="content_post" id="tbFatura" style="position: static; width: 733px;">
            <div>
                <div>
                    <asp:Label ID="lblImportador" runat="server" Text="xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx" ForeColor="#3399FF"></asp:Label>
                </div>
                <fieldset title="Contrato" style="padding-bottom: 15px;">
                    <legend style="padding-bottom: 15px;">Contrato
                    </legend>
                    <div style="width: 77px; float: left;">
                        <asp:Label ID="Label2" runat="server" Text="Descrição:"></asp:Label>
                    </div>
                    <div style="width: 391px; float: left;">
                        <asp:Label ID="lblDescricao" runat="server" Text="xxxxxxxx"></asp:Label>
                    </div>
                    <div style="float: left; width: 21px;">
                        <asp:Label ID="Label4" runat="server" Text="IN"></asp:Label>
                    </div>
                    <div style="float: left; width: 120px;">
                        <asp:Label ID="lblIN" runat="server" Text="INs" ForeColor="#0099FF"></asp:Label>
                    </div>
                    <div style="float: left; width: 68px;">
                        <asp:Label ID="Label6" runat="server" Text="Repetro"></asp:Label>
                    </div>
                    <div style="float: left;">
                        <asp:Label ID="lblRepetro" runat="server" Text="Sim" ForeColor="#0099FF"></asp:Label>
                    </div>
                </fieldset>
            </div>
            <div style="width: 124px; float: left; padding-right: 20px; padding-bottom: 15px;">
                <asp:Label ID="lbNumFatura" runat="server" Text="N° Fatura"></asp:Label>
                <br />
                <asp:TextBox ID="txtNumFatura" runat="server" Width="123px"></asp:TextBox>
            </div>
            <div style="width: 266px; float: left; padding-right: 10px; padding-bottom: 15px;">
                <asp:Label ID="Label1" runat="server" Text="Incoterm"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlInconterm" runat="server" Width="270px">
                </asp:DropDownList>
            </div>
            <div style="width: 311px; float: left; padding-bottom: 15px;">
                <asp:Label ID="lbExportador" runat="server" Text="Exportador"></asp:Label>
                <br>
                <asp:TextBox ID="txtCodExportador" runat="server" Width="42px"></asp:TextBox>
                <asp:DropDownList ID="ddlExportador" runat="server" Width="256px">
                </asp:DropDownList>
            </div>
            <div style="width: 730px; padding-bottom: 15px;" align="right">
                <asp:CheckBox ID="cbxPesoLibra" runat="server" Font-Bold="True" Font-Strikeout="False" Font-Underline="False" ForeColor="#0099FF" Text="Peso em LIBRA" />
            </div>
            <div style="width: 164px; float: left; padding-right: 20px; padding-bottom: 15px;">
                <asp:Label ID="lblLocalCondicao" runat="server" Text="Local da Condição"></asp:Label>
                <br />
                <asp:TextBox ID="txtLocalCondicao" runat="server" Width="161px"></asp:TextBox>
            </div>
            <div style="width: 235px; float: left; padding-right: 20px; padding-bottom: 15px;">
                <asp:Label ID="lbMoeda" runat="server" Text="Moeda"></asp:Label>
                <br />
                <asp:TextBox ID="txtCodMoeda" runat="server" Width="26px"></asp:TextBox>
                <asp:DropDownList ID="ddlMoeda" runat="server" Width="200px" Height="19px">
                </asp:DropDownList>
            </div>
            <div style="width: 76px; float: left; padding-right: 20px; padding-bottom: 15px;">
                <asp:Label ID="lbValorTotal" runat="server" Text="Valor Total"></asp:Label>
                <asp:TextBox ID="txtValorTotal" runat="server" Width="76px"></asp:TextBox>
            </div>
            <div style="width: 73px; float: left; padding-right: 20px; padding-bottom: 15px;">
                <asp:Label ID="lbPesoTotal" runat="server" Text="Peso Total"></asp:Label>
                <br />
                <asp:TextBox ID="txtPesoTotal" runat="server" Width="76px"></asp:TextBox>
            </div>
            <div style="width: 98px; float: left; padding-bottom: 15px;">
                <asp:Label ID="lbPesoAcertado" runat="server" Text="Peso Acertado"></asp:Label>
                <br />
                <asp:TextBox ID="txtPesoAcertado" runat="server" Width="91px"></asp:TextBox>
            </div>
            <div style="width: 513px; float: left; padding-bottom: 15px;">
                <asp:Label ID="lbVincImportadorExportador" runat="server" Text="Vinculação Importador / Exportador"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlVincImportadorExportador" runat="server" Width="262px" Height="17px">
                </asp:DropDownList>
            </div>
            <div style="padding-bottom: 15px;">
                <asp:Label ID="dt_Emissao" runat="server" Text="Data Emissão"></asp:Label>
                <br />
                <asp:TextBox ID="txtDt_Emissao" runat="server" TextMode="Date"></asp:TextBox>
            </div>
            <div style="width: 437px; padding-bottom: 15px;">
                <asp:CheckBox ID="cbxAcrescimo" runat="server" Text="Acréscimos / Reduções já inclusas no valor dos Itens" ForeColor="#0099FF" />
            </div>

            <div style="width: 620px; padding-bottom: 15px;">
                <asp:Label ID="lbPlataforma" runat="server" Text="Plataforma"></asp:Label>
                <br />
                <asp:DropDownList ID="ddlPlataforma" runat="server" Width="225px">
                </asp:DropDownList>
            </div>

            <div style="width: 100%; text-align: right; padding-top: 20px;">
                <asp:Button ID="btnGravarFatura" runat="server" Text="Salvar" OnClick="btnGravarFatura_Click" />
                &nbsp;<asp:Button ID="btnFechar" runat="server" Text="Fechar" />
            </div>
            <asp:UpdatePanel ID="uppCadastro" runat="server">
                <ContentTemplate>
                </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="btnGravarFatura" EventName="Click" />
                </Triggers>
            </asp:UpdatePanel>
        </div>
        <div class="content_post" id="tbAcrescimo" style="position: static; width: 640px;">
            <div style="float: left; width: 278px; height: 250px;">
                <asp:Label ID="lbTipoAcrescimo" runat="server" Text="Tipo de Acrescimo"></asp:Label>
                <asp:UpdatePanel ID="uppAcresicmo" runat="server">
                    <ContentTemplate>
                        <asp:ListBox ID="ltbTipoAcrescimo" runat="server" Height="250px" Width="267px" Font-Names="Verdana" Font-Size="10pt" SelectionMode="Multiple"></asp:ListBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnIncluirAcrescimo" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnRemoveAcrescimo" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:Label ID="lblMoedaFatura" runat="server" Text="Valor de Acréscimo na Moeda da Fatura"></asp:Label>
                <br/>
                <asp:TextBox ID="txtMoedaFatura" runat="server"></asp:TextBox>
            </div>
            <div style="display: table; width: 60px; height: 250px; position: relative; overflow: hidden; float: left;">
                <div style="position: absolute; top: 40%; display: table-cell; vertical-align: middle;">
                    <div class="content_post" style="position: relative; _top: -50%; width: 60px; text-align: center;">
                        <asp:Button ID="btnIncluirAcrescimo" runat="server" Text="&gt;&gt;" /><br />
                        <br />
                        <asp:Button ID="btnRemoveAcrescimo" runat="server" Text="&lt;&lt;" />
                    </div>
                </div>
            </div>
            <div style="float: left; width: 200px; height: 250px;">
                <asp:Label ID="lbAcrescimoFatura" runat="server" Text="Acréscimo da Fatura"></asp:Label>
                <asp:UpdatePanel ID="uppAcrescimoFatura" runat="server">
                    <ContentTemplate>
                        <asp:ListBox ID="ltbAcrescimoFatura" runat="server" Height="250px" Width="283px" Font-Names="Verdana" Font-Size="10pt"></asp:ListBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnIncluirAcrescimo" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnRemoveAcrescimo" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
        <div class="content_post" id="tbReducao" style="position: static; width: 640px;">
            <div style="float: left; width: 278px; height: 250px;">
                <asp:Label ID="lblTipoReducao" runat="server" Text="Tipo de Redução"></asp:Label>
                <asp:UpdatePanel ID="uppReducao" runat="server">
                    <ContentTemplate>
                        <asp:ListBox ID="ltbTipoReducao" runat="server" Height="250px" Width="267px" Font-Names="Verdana" Font-Size="10pt" SelectionMode="Multiple"></asp:ListBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnIncluirReducao" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnRemoveReducao" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
                <asp:Label ID="lblReducaoMoedaFatura" runat="server" Text="Valor de Acréscimo na Moeda da Fatura"></asp:Label>
                <br>
                <asp:TextBox ID="txtReducaoMoedaFatura" runat="server"></asp:TextBox>
            </div>
            <div style="display: table; width: 60px; height: 250px; position: relative; overflow: hidden; float: left;">
                <div style="position: absolute; top: 40%; display: table-cell; vertical-align: middle;">
                    <div class="content_post" style="position: relative; _top: -50%; width: 60px; text-align: center;">
                        <asp:Button ID="btnIncluirReducao" runat="server" Text="&gt;&gt;" /><br />
                        <br />
                        <asp:Button ID="btnRemoveReducao" runat="server" Text="&lt;&lt;" />
                    </div>
                </div>
            </div>
            <div style="float: left; width: 200px; height: 250px;">
                <asp:Label ID="lbReducaoFatura" runat="server" Text="Redução da Fatura"></asp:Label>
                <asp:UpdatePanel ID="uppReducaoFatura" runat="server">
                    <ContentTemplate>
                        <asp:ListBox ID="ListBox2" runat="server" Height="250px" Width="283px" Font-Names="Verdana" Font-Size="10pt"></asp:ListBox>
                    </ContentTemplate>
                    <Triggers>
                        <asp:AsyncPostBackTrigger ControlID="btnIncluirReducao" EventName="Click" />
                        <asp:AsyncPostBackTrigger ControlID="btnRemoveReducao" EventName="Click" />
                    </Triggers>
                </asp:UpdatePanel>
            </div>
        </div>
        <div id="tbcambio" style="position: static; width: 733px;">
            <div>
                <fieldset title="Cobertura Cambial" style="padding-bottom: 15px;">
                    <legend style="padding-bottom: 15px;">Cobertura Cambial
                    </legend>
                    <div style="width: 163px; float: left;">
                        <asp:RadioButton ID="rdbCambial180" runat="server" Text="1- Até 180 Dias" />
                    </div>
                    <div style="width: 197px; float: left;">
                        <asp:RadioButton ID="rdbCambial360" runat="server" Text="2 - De 181 até 360 Dias" />
                    </div>
                    <div style="float: left; width: 149px;">
                        <asp:RadioButton ID="rdbCambialMaior360" runat="server" Text="3- Acima 360 Dias" />
                    </div>
                    <div style="float: left; width: 192px;">
                        <asp:RadioButton ID="rdbCambialSemCobertura" runat="server" Text="Sem Cobertura" />
                    </div>
                    <div style="float: left; width: 0px;">
                    </div>
                </fieldset>
            </div>
            <div style="width: 720px; position: static">
                <div style="width: 202px; float: left; padding-right: 20px; padding-bottom: 15px;">
                    <asp:Label ID="lbModalidadePagamento" runat="server" Text="Modalidade de Pagamento"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlModalidadePagamento" runat="server" Width="200px" Height="19px">
                    </asp:DropDownList>
                </div>
                <div style="width: 213px; float: left; padding-right: 10px; padding-bottom: 15px;">
                    <asp:Label ID="lbInstituicaoFinanciadora" runat="server" Text="Instituição Financiadora"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlInstituicaoFinanciadora" runat="server" Width="212px" Height="19px">
                    </asp:DropDownList>
                </div>
                <div style="width: 262px; padding-bottom: 15px;">
                    <asp:Label ID="lbMotivo" runat="server" Text="Motivo"></asp:Label>
                    <br />
                    <asp:DropDownList ID="ddlMotivo" runat="server" Width="224px">
                    </asp:DropDownList>
                </div>
            </div>
            <div id="tabsCambio">
                <ul>
                    <li><a href="#tbPagAntecipado">Pagamento Antecipado</a></li>
                    <li><a href="#tbPagVista">Pagamento à Vista</a></li>
                    <li><a href="#tbPag180">Pagamento em até 180 Dias</a></li>
                </ul>

                <div class="content_post" id="tbPagAntecipado" style="position: static; width: 720px">
                    <div style="width: 720px">
                        <div style="width: 155px; float: left; padding-right: 20px; padding-bottom: 15px; height: 25px;">
                            <asp:CheckBox ID="ckbMoedaNacional" runat="server" Font-Size="Small" Text="Moeda Nacional" />
                        </div>
                        <div style="width: 501px; float: left; padding-right: 20px; padding-bottom: 15px; height: 25px;">
                            <asp:Button ID="btnVerContrato" runat="server" Text="Ver Contratos" Width="113px" />
                        </div>
                        <div style="width: 143px; float: left; padding-right: 10px; padding-bottom: 15px;">
                            <asp:Label ID="lblContrato" runat="server" Text="Contrato"></asp:Label>
                            <asp:TextBox ID="txtContrato" runat="server"></asp:TextBox>
                        </div>
                        <div style="width: 45px; float: left; padding-right: 5px; padding-bottom: 15px;">
                            <asp:Label ID="lblBanco" runat="server" Text="Banco"></asp:Label>
                            <asp:TextBox ID="txtBanco" runat="server" Width="38px"></asp:TextBox>
                        </div>
                        <div style="width: 49px; float: left; padding-right: 5px; padding-bottom: 15px;">
                            <asp:Label ID="lblPraca" runat="server" Text="Praça"></asp:Label>
                            <asp:TextBox ID="txtPraca" runat="server" Width="38px"></asp:TextBox>
                        </div>
                        <div style="width: 436px; padding-right: 5px; padding-bottom: 15px;">
                            <asp:Label ID="lblPagamento" runat="server" Text="Data Pagamento"></asp:Label>
                            <asp:TextBox ID="txtDataPagamento" runat="server" Width="108px"></asp:TextBox>
                        </div>
                        <div style="width: 144px; float: left; padding-right: 5px; padding-bottom: 15px; height: 41px;">
                            <asp:Label ID="lblValorPorcento" runat="server" Text="Valor %"></asp:Label>
                            <asp:TextBox ID="txtValorPorCento" runat="server"></asp:TextBox>
                        </div>
                        <div style="width: 144px; float: left; padding-right: 5px; padding-bottom: 15px; height: 41px;">
                            <asp:Label ID="lblValor" runat="server" Text="Valor"></asp:Label>
                            <asp:TextBox ID="txtValor" runat="server" Width="120px"></asp:TextBox>
                        </div>
                        <div style="width: 392px; padding-right: 5px; padding-bottom: 15px; height: 41px;">
                            <asp:Button ID="btnIncluirPagAntecipado" runat="server" Text="&gt;&gt;" />
                        </div>
                        <div style="width: 293px; float: left; padding-right: 5px; height: 43px;">
                            <asp:Label ID="lblComprador" runat="server" Text="Comprador"></asp:Label>
                            <asp:TextBox ID="txtComprador" runat="server" Width="269px"></asp:TextBox>
                        </div>
                        <div style="width: 391px; height: 43px;">
                            <asp:Button ID="btnRemovePagAntecipado" runat="server" Text="&lt;&lt;" />
                        </div>
                    </div>
                </div>

                <div class="content_post" id="tbPagVista" style="position: static; width: 720px">
                    <div style="width: 720px">
                        <div style="width: 155px; padding-right: 20px; padding-bottom: 15px; height: 25px;">
                            <asp:CheckBox ID="CheckBox1" runat="server" Font-Size="Small" Text="Moeda Nacional" />
                        </div>

                        <div style="width: 143px; float: left; padding-right: 10px; padding-bottom: 15px;">
                            <asp:Label ID="Label3" runat="server" Text="Contrato"></asp:Label>
                            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                        </div>
                        <div style="width: 45px; float: left; padding-right: 5px; padding-bottom: 15px;">
                            <asp:Label ID="Label5" runat="server" Text="Banco"></asp:Label>
                            <asp:TextBox ID="TextBox2" runat="server" Width="38px"></asp:TextBox>
                        </div>
                        <div style="width: 503px; padding-right: 5px; padding-bottom: 15px;">
                            <asp:Label ID="Label7" runat="server" Text="Praça"></asp:Label>
                            <br />
                            <asp:TextBox ID="TextBox3" runat="server" Width="38px"></asp:TextBox>
                        </div>

                        <div style="width: 144px; float: left; padding-right: 5px; padding-bottom: 15px; height: 41px;">
                            <asp:Label ID="Label9" runat="server" Text="Valor %"></asp:Label>
                            <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        </div>
                        <div style="width: 144px; float: left; padding-right: 5px; padding-bottom: 15px; height: 41px;">
                            <asp:Label ID="Label10" runat="server" Text="Valor"></asp:Label>
                            <asp:TextBox ID="TextBox6" runat="server" Width="120px"></asp:TextBox>
                        </div>
                        <div style="width: 392px; padding-right: 5px; padding-bottom: 15px; height: 41px;">
                            <asp:Button ID="Button2" runat="server" Text="&gt;&gt;" /><br />
                        </div>
                        <div style="width: 293px; float: left; padding-right: 5px; height: 43px;">
                            <asp:Label ID="Label11" runat="server" Text="Comprador"></asp:Label>
                            <asp:TextBox ID="TextBox7" runat="server" Width="269px"></asp:TextBox>
                        </div>
                        <div style="width: 391px; height: 43px;">
                            <asp:Button ID="Button3" runat="server" Text="&lt;&lt;" />
                        </div>
                    </div>
                </div>
                <div class="content_post" id="tbPag180" style="width: 720px;position:relative;">
                    <div id="Fixas" >
                        <div style="padding-bottom: 10px;width: 300px;">
                            <fieldset title="Cobertura Cambial">
                                <legend>Parcelas</legend>
                                <div style="width: 99px; float: left;">
                                    <asp:RadioButton ID="RadioButton1" runat="server" Text="1- Fixas" />
                                </div>
                                <div style="width: 114px; float: left;">
                                    <asp:RadioButton ID="RadioButton2" runat="server" Text="2 - Variáveis" />
                                </div>
                            </fieldset>
                        </div>
                        <div style="width: 260px; background-color: lightyellow">
                            <div style="float: left; padding-bottom: 10px;">
                                <asp:Label ID="Label8" runat="server" Text="N° de Parcelas"></asp:Label>
                                <asp:TextBox ID="TextBox4" runat="server" Width="28px"></asp:TextBox>
                            </div>
                            <div style="padding-bottom: 10px;">
                                <asp:Label ID="Label12" runat="server" Text="Periodicidade"></asp:Label>
                                <asp:TextBox ID="TextBox8" runat="server" Width="28px"></asp:TextBox>
                            </div>
                            <div style="padding-bottom: 10px;">
                                <asp:Label ID="Label13" runat="server" Text="% da Parcela"></asp:Label>
                                <asp:TextBox ID="TextBox9" runat="server" Width="158px"></asp:TextBox>
                            </div>
                            <div style="padding-bottom: 10px;">
                                <asp:Label ID="Label14" runat="server" Text="Valor da Parcela"></asp:Label>
                                <asp:TextBox ID="TextBox10" runat="server" Width="137px"></asp:TextBox>
                            </div>

                            <fieldset title="Cobertura Cambial">
                                <legend>Indicador de Periciocidade</legend>
                                <div style="width: 99px; float: left;">
                                    <asp:RadioButton ID="RadioButton3" runat="server" Text="1- Diária" />
                                </div>
                                <div style="width: 114px; float: left;">
                                    <asp:RadioButton ID="RadioButton4" runat="server" Text="2 - Mensal" />
                                </div>
                            </fieldset>
                        </div>
                    </div>
                    <div id="Variaveis" style="position: absolute; width: 260px; padding-right: 10px; top: 61px; left: 440px;">
                        <div style="position: static; width: 260px; background-color: lightyellow">
                            <div style="float: left; padding-bottom: 10px;">
                                <asp:Label ID="Label15" runat="server" Text="N° de Parcelas"></asp:Label>
                                <asp:TextBox ID="TextBox11" runat="server" Width="28px"></asp:TextBox>
                            </div>
                            <div style="padding-bottom: 10px;">
                                <asp:Label ID="Label16" runat="server" Text="Periodicidade"></asp:Label>
                                <asp:TextBox ID="TextBox12" runat="server" Width="28px"></asp:TextBox>
                            </div>
                            <div style="padding-bottom: 10px;">
                                <asp:Label ID="Label17" runat="server" Text="% da Parcela"></asp:Label>
                                <asp:TextBox ID="TextBox13" runat="server" Width="158px"></asp:TextBox>
                            </div>
                            <div style="padding-bottom: 10px;">
                                <asp:Label ID="Label18" runat="server" Text="Valor da Parcela"></asp:Label>
                                <asp:TextBox ID="TextBox14" runat="server" Width="137px"></asp:TextBox>
                            </div>

                            <fieldset title="Cobertura Cambial">
                                <legend>Indicador de Periciocidade</legend>
                                <div style="width: 99px; float: left;">
                                    <asp:RadioButton ID="RadioButton7" runat="server" Text="1- Diária" />
                                </div>
                                <div style="width: 114px; float: left;">
                                    <asp:RadioButton ID="RadioButton8" runat="server" Text="2 - Mensal" />
                                </div>
                            </fieldset>
                        </div>
                    </div>
                </div>
            </div>
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
                <%=resxIdioma.msg_gravadoErro%>
            </span>
        </p>
    </div>
</asp:Content>
