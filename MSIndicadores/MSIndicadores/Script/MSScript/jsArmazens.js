/// <reference path="../jquery-ui-1.8.22.custom/js/jquery-1.7.2.min.js" />
/// <reference path="../jquery-ui-1.8.22.custom/js/jquery-ui-1.8.22.custom.min.js" />
// -------------------------------Inclusão-----------------------------------------//
$(function () {
    // Variaveis
    var codigo = $('#txtCodigo'),
        descricao = $('#txtDescricao');    

    // Destruido dialog
    $('#dialog:ui-dialog').dialog('destroy');
    // Montando o Modal
    $('#modalArmazem').dialog({
        autoOpen: false,
        height: 200,
        width: 550,
        modal: true,
        resizable: false,
        open: function (type, data) {
            $(this).parent().appendTo("#frmMaster");
        },
        close: function () {
            $('#modalArmazem').clearFields();
        }
    });

    // Validando campos
    $('#frmMaster').validate({
        rules: {
            txtCodigo: { required: true },
            txtDescricao: { required: true }
        },
        messages: {
            txtCodigo: '',
            txtDescricao: ''
        }
    });

    // Função salvar
    var Salvar_Incluir = function () {
        if ($("#frmMaster").valid()) {
            var dados = "{arg:{Codigo:'" + codigo.val() + "', Descricao:'" + descricao.val() + "'}}";

            $.ajax({//Gravando...
                type: "POST",
                url: "frmArmazens.aspx/Incluir",
                data: dados,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                success: function (msg) {
                    if (msg.d) {
                        $('#modalArmazem').dialog('close');
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
        $('#modalArmazem').dialog('close');
    });
    // Abrindo janela modal
    $('#btnIncluir').click(function (e) {
        e.preventDefault();
        $("#txtCodigo").removeAttr('readonly').removeAttr('disabled');
        $('#modalArmazem').dialog('open');
    });
    // Incluindo funcão salvar incluir 
    $('#btnSalvar').unbind('click');
    $('#btnSalvar').bind('click', Salvar_Incluir);

});

//--------------------------------Buscando dados para edição---------------------------------------//
function Editar(id) {
    $.ajax({
        type: "POST",
        url: "frmArmazens.aspx/BuscarArmazem",
        data: "{codigo:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (data) {
            $('#txtCodigo').val(data.d.Codigo);
            $('#txtDescricao').val(data.d.Descricao);
            $("#txtCodigo").attr('readonly', true).attr("disabled", "disabled");
        },
        complete: function () {
            var codigo = $('#txtCodigo'),
            descricao = $('#txtDescricao');

            $('#modalArmazem').dialog('open');

            //Validando campos
            $('#frmMaster').validate({
                rules: {
                    txtCodigo: { required: true },
                    txtDescricao: { required: true }
                },
                messages: {
                    txtCodigo: '',
                    txtDescricao: ''
                }
            });
            //
            var Salvar_Edicao = function () {
                if ($("#frmMaster").valid()) {
                    var dados = "{arg:{Codigo:'" + codigo.val() + "', Descricao:'" + descricao.val() + "'}}";
                    $.ajax({
                        type: "POST",
                        url: "frmArmazens.aspx/Editar",
                        data: dados,
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        cache: false,
                        success: function (msg) {
                            if (msg.d) {
                                $('#modalArmazem').dialog("close");
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