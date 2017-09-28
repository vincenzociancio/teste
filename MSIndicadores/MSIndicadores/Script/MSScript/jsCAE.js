/// <reference path="../jquery-ui-1.8.22.custom/js/jquery-1.7.2.min.js" />
/// <reference path="../jquery-ui-1.8.22.custom/js/jquery-ui-1.8.22.custom.min.js" />
// -------------------------------Inclusão-----------------------------------------//
$(document).ready(function () {
    // Variaveis
    var codigo = $('#txtCodigo'),
        descricao = $('#txtDescricao'),
        descricaoIng = $('#txtDescricaoIng');

    // Destruido dialog
    $('#dialog:ui-dialog').dialog('destroy');
    // Montando o Modal
    $('#modalCAE').dialog({
        autoOpen: false,
        height: 270,
        width: 580,
        modal: true,
        resizable: false,
        open: function (type, data) {
            $(this).parent().appendTo("#frmMaster");
        },
        close: function () {            
            $('#modalCAE').clearFields();
        }
    });

    //Validando campos
    $('#frmMaster').validate({
        rules: {
            txtCodigo: { required: true },
            txtDescricao: { required: true },
            txtDescricaoIng: { required: true }
        },
        messages: {
            txtCodigo: '',
            txtDescricao: '',
            txtDescricaoIng: ''
        }
    });
    //

    // Função salvar
    var Salvar_Incluir = function () {
        if ($("#frmMaster").valid()) {
            $.ajax({//Gravando...
                type: "POST",
                url: "frmCAE.aspx/Incluir",
                data: "{codigo:'" + codigo.val() + "', descricao:'" + descricao.val() + "', descricaoIng:'" + descricaoIng.val() + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                success: function (msg) {
                    if (msg.d) {
                        $('#modalCAE').dialog('close');
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

    // Cancelando janela modal
    $('#btnCancelar_Modal').click(function (e) {
        e.preventDefault();
        $('#modalCAE').dialog('close');
    });
    // Abrindo janela modal
    $('#btnIncluir').click(function (e) {
        e.preventDefault();
        $("#txtCodigo").removeAttr('readonly').removeAttr('disabled');
        $('#modalCAE').dialog('open');
    });
    // Incluindo funcão salvar incluir 
    $('#btnSalvar').unbind('click');
    $('#btnSalvar').bind('click', Salvar_Incluir);

});


//--------------------------------Buscando dados para edição---------------------------------------//
function Editar(id) {
    $.ajax({
        type: "POST",
        url: "frmCAE.aspx/BuscarCAE",
        data: "{codigo:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (data) {
            $("#txtCodigo").val(data.d.PKCodigo);
            $("#txtDescricao").val(data.d.Descricao);
            $("#txtDescricaoIng").val(data.d.DescricaoING);
            $("#txtCodigo").attr('readonly', true).attr("disabled", "disabled");
        },
        complete: function () {
            var codigo = $("#txtCodigo"),
            descricao = $("#txtDescricao"),
            descricaoIng = $('#txtDescricaoIng');

            $('#modalCAE').dialog('open');

            //Validando campos
            $('#frmMaster').validate({
                rules: {
                    txtCodigo: { required: true },
                    txtDescricao: { required: true },
                    txtDescricaoIng: { required: true }
                },
                messages: {
                    txtCodigo: '',
                    txtDescricao: '',
                    txtDescricaoIng: ''
                }
            });
            //
            var Salvar_Edicao = function () {
                if ($("#frmMaster").valid()) {
                    $.ajax({
                        type: "POST",
                        url: "frmCAE.aspx/Editar",
                        data: "{codigo:'" + codigo.val() + "', descricao:'" + descricao.val() + "', descricaoIng:'" + descricaoIng.val() + "'}",
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        cache: false,
                        success: function (msg) {
                            if (msg.d) {
                                $('#modalCAE').dialog("close");
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