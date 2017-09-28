/// <reference path="../jquery-ui-1.8.22.custom/js/jquery-1.7.2.min.js" />
/// <reference path="../jquery-ui-1.8.22.custom/js/jquery-ui-1.8.22.custom.min.js" />
// -------------------------------Inclusão-----------------------------------------//
$(function () {
    // Variaveis
    var nome = $('#txtNome'),
        cnpj = $('#txtCNPJ'),
        endereco = $('#txtEndereco'),
        numero = $('#txtNumero'),
        complemento = $('#txtComplet'),
        telefone = $('#txtTelefone'),
        bairro = $('#txtBairro'),
        cidade = $('#txtCidade'),
        cep = $('#txtCEP'),
        estado = $('#txtEstado'),
        uf = $('select[id$=ddlUF]'),
        pais = $('select[id$=ddlPais]'),
        registro = $('#txtRegistro'),
        Exibe = $("#ckbExibe"),
        empresa = "1",
        filial = "RJO";
    //---

    // Destruido dialog
    $('#dialog:ui-dialog').dialog('destroy');
    // Montando o Modal
    $('#modalProcuradores').dialog({
        autoOpen: false,
        height: 410,
        width: 710,
        modal: true,
        resizable: false,
        open: function (type, data) {
            $(this).parent().appendTo("form:first");
        },
        close: function () {
            $('#modalProcuradores').clearFields();
        }
    });

    // Validando campos
    $.validator.addMethod('selectNone',
          function (value, element) {
              return this.optional(element) ||
              //(value.indexOf("") == -1);
                (value.valueOf == "");
          }, "");

    $('#aspnetForm').validate({
        rules: {
            txtNome: { required: true },
            txtCNPJ: { required: true }
            /*txtEndereco: { required: true },
            txtNumero: { required: true },
            txtComplet: { required: true },
            txtTelefone: { required: true },
            txtBairro: { required: true },
            txtCidade: { required: true },
            txtCEP: { required: true },
            txtEstado: { required: true },
            //'<%=ddlUF.ClientID %>': { selectNone: true }
            ddlUF: { selectNone: true }*/
        },
        messages: {
            txtNome: '',
            txtCNPJ: ''/*,
            txtEndereco: '',
            txtNumero: '',
            txtComplet: '',
            txtTelefone: '',
            txtBairro: '',
            txtCidade: '',
            txtCEP: '',
            txtEstado: ''*/
        }
    });

    // Função salvar
    var Salvar_Incluir = function () {
        if ($("#aspnetForm").valid()) {
            var check = Exibe.is(":checked") ? 1 : 0;
            var dados = "{arg:{PKEmpresa:'" + empresa +
            "', PKFilial:'" + filial +
            "', RazaoSocial:'" + nome.val() +
            "', Pais:'" + pais.val() +
            "', CgcCpf:'" + cnpj.val() +
            "', Endereco:'" + endereco.val() +
            "', Numero:'" + numero.val() +
            "', Complemento:'" + complemento.val() +
            "', Bairro:'" + bairro.val() +
            "', Cidade:'" + cidade.val() +
            "', CEP:'" + cep.val() +
            "', UF:'" + uf.val() +
            "', Estado:'" + estado.val() +
            "', Registro:'" + registro.val() +
            "', Telefone:'" + telefone.val() +
            "', ExibeComplementares:'" + check + "'}}";

            $.ajax({//Gravando...
                type: "POST",
                url: "frmProcuradores.aspx/Incluir",
                data: dados,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                success: function (msg) {
                    if (msg.d) {
                        $('#modalProcuradores').dialog('close');
                        $('#modalSucesso').dialog({// Mensagem de Sucesso
                            autoOpen: true,
                            height: 150,
                            width: 300,
                            modal: true,
                            resizable: false,
                            buttons: {
                                Ok: function () {
                                    $(this).dialog('close');
                                    var btn = $('#ContentPlaceHolder1_btnAtualizarGrid');
                                    btn.trigger('click');
                                }
                            }
                        });
                    }
                    else {
                        $('#modalErro').dialog({// Mensagem de Erro
                            autoOpen: true,
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
                    }
                }
            })
        }
    };

    //Botoes  
    // Cancelando janela modal
    $('#btnCancelar_Modal').click(function (e) {
        e.preventDefault();
        $('#modalProcuradores').dialog('close');
    });
    // Abrindo janela modal
    $('#btnIncluir').click(function (e) {        
        e.preventDefault();
        $('#modalProcuradores').dialog('open');
        return false;
    });
    // Incluindo funcão salvar incluir 
    $('#btnSalvar').unbind('click');
    $('#btnSalvar').bind('click', Salvar_Incluir);

});

//--------------------------------Buscando dados para edição---------------------------------------//
function Editar(id) {
    $.ajax({
        type: "POST",
        url: "frmProcuradores.aspx/BuscarProcurador",
        data: "{codigo:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (data) {
            $('#txtNome').val(data.d.RazaoSocial);
            $('#txtCNPJ').val(data.d.CgcCpf);
            $('#txtEndereco').val(data.d.Endereco);
            $('#txtNumero').val(data.d.Numero);
            $('#txtComplet').val(data.d.Complemento);
            $('#txtTelefone').val(data.d.Telefone);
            $('#txtBairro').val(data.d.Bairro);
            $('#txtCidade').val(data.d.Cidade);
            $('#txtCEP').val(data.d.CEP);
            $('#txtEstado').val(data.d.Estado);
            $('select[id$=ddlUF]').val(data.d.UF);
            $('select[id$=ddlPais]').val(data.d.Pais);
            $('#txtRegistro').val(data.d.Registro);
            $("#ckbExibe").attr('checked', data.d.ExibeComplementares == 0 ? false : true);

        },
        complete: function () {
            var nome = $('#txtNome'),
            cnpj = $('#txtCNPJ'),
            endereco = $('#txtEndereco'),
            numero = $('#txtNumero'),
            complemento = $('#txtComplet'),
            telefone = $('#txtTelefone'),
            bairro = $('#txtBairro'),
            cidade = $('#txtCidade'),
            cep = $('#txtCEP'),
            estado = $('#txtEstado'),
            uf = $('select[id$=ddlUF]'),
            pais = $('select[id$=ddlPais]'),
            registro = $('#txtRegistro'),
            Exibe = $("#ckbExibe"),
            empresa = "1",
            filial = "RJO";

            $('#modalProcuradores').dialog('open');

            //Validando campos
            $('#aspnetForm').validate({
                rules: {
                    txtNome: { required: true },
                    txtCNPJ: { required: true }/*,
                    txtEndereco: { required: true },
                    txtNumero: { required: true },
                    txtComplet: { required: true },
                    txtTelefone: { required: true },
                    txtBairro: { required: true },
                    txtCidade: { required: true },
                    txtCEP: { required: true },
                    txtEstado: { required: true },
                    //'<%=ddlUF.ClientID %>': { selectNone: true }
                    ddlUF: { selectNone: true }*/
                },
                messages: {
                    txtNome: '',
                    txtCNPJ: ''/*,
                    txtEndereco: '',
                    txtNumero: '',
                    txtComplet: '',
                    txtTelefone: '',
                    txtBairro: '',
                    txtCidade: '',
                    txtCEP: '',
                    txtEstado: ''*/
                }
            });
            //
            var Salvar_Edicao = function () {
                if ($("#aspnetForm").valid()) {
                    var check = Exibe.is(":checked") ? 1 : 0;
                    var dados = "{arg:{PKEmpresa:'" + empresa +
                    "', PKFilial:'" + filial +
                    "', PKCodigo:'" + id +
                    "', RazaoSocial:'" + nome.val() +
                    "', Pais:'" + pais.val() +
                    "', CgcCpf:'" + cnpj.val() +
                    "', Endereco:'" + endereco.val() +
                    "', Numero:'" + numero.val() +
                    "', Complemento:'" + complemento.val() +
                    "', Bairro:'" + bairro.val() +
                    "', Cidade:'" + cidade.val() +
                    "', CEP:'" + cep.val() +
                    "', UF:'" + uf.val() +
                    "', Estado:'" + estado.val() +
                    "', Registro:'" + registro.val() +
                    "', Telefone:'" + telefone.val() +
                    "', ExibeComplementares:'" + check + "'}}";

                    $.ajax({
                        type: "POST",
                        url: "frmProcuradores.aspx/Editar",
                        data: dados,
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        cache: false,
                        success: function (msg) {
                            if (msg.d) {
                                $('#modalProcuradores').dialog("close");
                                $("#modalSucesso").dialog({// Mensagem de Sucesso
                                    autoOpen: true,
                                    height: 150,
                                    width: 300,
                                    modal: true,
                                    resizable: false,
                                    buttons: {
                                        Ok: function () {
                                            $(this).dialog("close");
                                            var btn = $("#ContentPlaceHolder1_btnAtualizarGrid");
                                            btn.trigger('click');
                                        }
                                    }
                                });
                            }
                            else {
                                $("#modalErro").dialog({// Mensagem de Erro
                                    autoOpen: true,
                                    height: 150,
                                    width: 300,
                                    modal: true,
                                    resizable: false,
                                    buttons: {
                                        Ok: function () {
                                            $(this).dialog("close");
                                        }
                                    }
                                });
                            }
                        }
                    })
                }
            }
            $('#btnSalvar').unbind('click');
            $('#btnSalvar').bind('click', Salvar_Edicao);
        }
    });
    return false;
};

// Relatório de Procuradores
$(document).ready(function () {
    var w = $(document).width();
    var h = $(document).height();
    $('#dialog:ui-dialog').dialog('destroy');
    $('#relProcuradores').dialog({
        autoOpen: false,
        height: h - 150, //500, 
        width: w - 250, //900,
        modal: true,
        //canMinimize: true,
        //canMaximize: true,
        resizable: true,
        autoHeight: false,
        open: function () {
            $(this).parent().appendTo("form");
        },
        close: function () {
        }
    });

    function AbreRel() {
        var w = $(document).width();
        var h = $(document).height();
        var url = "/Relatorios/rptProcuradores.aspx";
        //var dialog = $('<iframe style="width: 100%; height: 100%;" src="' + url + '" frameborder="0"></iframe>').appendTo('#relProcuradores');
        var dialog = $('<div id="relProcuradores" style="text-align: center; display: none;"><iframe src="../../Relatorios/rptProcuradores.aspx" frameborder="0" scrolling="auto" style="width: 100%; height: 100%"></iframe></div>');
        dialog.dialog({
            height: h - 30,
            width: w - 150,
            modal: true,
            resizable: false,
            autoHeight: false,
            open: function (type, data) {
                $(this).parent().appendTo("form");
            },
            close: function () {
                $('#relProcuradores').remove();
            }
        });
        return false;
    };

    //    function showPanel() {
    //        $.ajax({
    //            url: "/Relatorios/rptProcuradores.aspx",
    //            type: "POST",
    //            dataType: "html",
    //            async: false,
    //             
    //            success: function (obj) {
    //                // obj will contain the complete contents of the page requested
    //                // use jquery to extract just the html inside the body tag
    //                //$content = $(obj).find('body').html();



    //                // then update the dialog contents with this and show it
    //                //$("#relProcuradores").html($content);
    //                $("#relProcuradores").html(obj);
    //                //alert($(obj).find('body').html());
    //                //$('#relProcuradores').dialog('open');
    //            },
    //            error: function (msg) {
    //                alert("Error:" + msg);
    //            },
    //            complete: function () {
    //                $('#relProcuradores').dialog('open');
    //            }
    //        });
    //    }

    function GetPage(pagename) {
        $.ajax({
            url: '../../Relatorios/rptProcuradores.aspx', type: 'POST', async: false,
            success: function (obj) {
                var div = $('#relProcuradores', obj);
                $('#relProcuradores').load("../../Relatorios/rptProcuradores.aspx").dialog({ modal: true });
                return false;
            }
        });

    };
    
    $('#btnRelatorio').click(function () {
        AbreRel();
        return false;
        //GetPage();
        //showPanel();
        // $('#relProcuradores').dialog('open');
        //showPanel();
        //        $('#relProcuradores').load('/Relatorios/rptProcuradores.aspx', '', function (response, status, xhr) {
        //            if (status == 'error') {
        //                var msg = "Sorry but there was an error: ";
        //                $("#relProcuradores").html(msg + xhr.status + " " + xhr.statusText);
        //            }
        //        });
        //        $.get('/Relatorios/rptProcuradores.aspx', null, function (data) {
        //            $('#relProcuradores').append(data);
        //        }, 'html');
        // $('#relProcuradores').dialog('open');
    });
});