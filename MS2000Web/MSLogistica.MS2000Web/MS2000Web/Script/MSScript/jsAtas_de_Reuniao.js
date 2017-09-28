/// <reference path="../jquery-ui-1.8.22.custom/js/jquery-1.7.2.min.js" />
/// <reference path="../jquery-ui-1.8.22.custom/js/jquery-ui-1.8.22.custom.min.js" />
/// <reference path="jsDefault.js" />

// -------------------------------Inclusão-----------------------------------------//
$(function () {
    $("#txtData").datepicker();
});

$(function () {
    // $("#accordion").accordion();
});

$(function () {
    var _tema = $('#txtTema'),
            _data = $('#txtData'),
            _resp = $('select[id$=ddlResponsavel]'),
            _import = $('select[id$=ddlImportador]'),
            _tipo = $('input:radio[name=rdTipo]');

    // Destruido dialog
    $('#dialog:ui-dialog').dialog('destroy');
    // Montando o Modal
    $('#modalAtas').dialog({
        autoOpen: false,
        height: 450,
        width: 630,
        modal: true,
        resizable: false,
        open: function (type, data) {
            $("#accordion").accordion("destroy");
            $("#accordion").accordion({ active: 0, autoHeight: false });
            $(this).parent().appendTo("form:first");
        },
        close: function () {
            $('#modalAtas').clearFields();
            LimparTabelaParticipante();
        }
    });


    //Validando campos
    $('#aspnetForm').validate({
        rules: {
            txtTema: { required: true },
            txtData: { required: true },
            '<%=ddlResponsavel.ClientID%>': "required"
        },
        messages: {
            txtTema: '',
            txtData: '',
            '<%=ddlResponsavel.ClientID%>': { required: '' }
        }
    });
    //
    function LimparTabelaParticipante() {
        $.ajax({
            type: "POST",
            url: "frmAtas_de_Reuniao.aspx/LimparTabelaParticipantes",
            //data: "{lixo:'True'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (data) {
                var btn = $("#ContentPlaceHolder1_btnAtualizaGrvParticipantes");
                btn.trigger('click');
            }
        });
    };

    //Preenchendo combo com todos os usuários
    function buscarUsuario01() {
        $("select[id$=ddlResponsavel]").val("");
        $("select[id$=ddlParticipante]").val("");
        $.ajax({
            type: "POST",
            url: "frmAtas_de_Reuniao.aspx/BuscarUsuario",
            data: "{lixo:'True'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (data) {
                $("select[id$=ddlResponsavel]").append("<option value=''></option>");
                //
                $("select[id$=ddlParticipante]").append("<option value=''></option>");
                $.each(data.d, function (index, usu) {
                    $("select[id$=ddlResponsavel]").append("<option value='" + usu.usuario + "'>" + usu.nome_completo + "</option>");
                    $("select[id$=ddlParticipante]").append("<option value='" + usu.usuario + "'>" + usu.nome_completo + "</option>");
                });
            }
        });
    }
    //---

    //Preenchendo combo com todos os importador
    function buscarImportador01() {
        $("select[id$=ddlImportador]").val("");
        $.ajax({
            type: "POST",
            url: "frmAtas_de_Reuniao.aspx/BuscarImportador",
            data: "{lixo:'True'}",
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            cache: false,
            success: function (data) {
                $("select[id$=ddlImportador]").append("<option value=''></option>");
                $.each(data.d, function (index, imp) {
                    $("select[id$=ddlImportador]").append("<option value='" + imp.codigo + "'>" + imp.descricao + "</option>");
                })
            }
        });
    };
    //---

    // Função salvar
    var Salvar_Incluir = function () {
        if ($("#aspnetForm").valid()) {
            var dtn = FormataData(_data);
            var opTipo = "";
            if (_tipo[0].checked) {
                opTipo = 0
            } else { opTipo = 1 };

            var dados = "{arg:{tema:'" + _tema.val() +
                    "', data:'" + dtn +
                    "', FKImportador:'" + _import.val() +
                    "', FKUsuario:'" + _resp.val() +
                    "', tipo:'" + opTipo + "'}}";
            $.ajax({//Gravando...
                type: "POST",
                url: "frmAtas_de_Reuniao.aspx/Incluir",
                data: dados,
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                success: function (msg) {
                    if (msg.d) {
                        $('#modalAtas').dialog('close');
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
                },
                error: function (xhr, tStatus, err) {
                    alert(xhr);
                }
            })
        }
    };

    //Botoes
    // Cancelando janela modal
    $('#btnCancelar_Modal').click(function (e) {
        e.preventDefault();
        $('#modalAtas').dialog('close');
    });
    // Abrindo janela modal
    $('#btnIncluir').click(function (e) {
        e.preventDefault();
        buscarUsuario01();
        buscarImportador01();
        //$('#a1').hide();
        $('#accordion h3:eq(2)').hide();
        // Incluindo funcão salvar incluir 
        $('#btnSalvar').unbind('click');
        $('#btnSalvar').bind('click', Salvar_Incluir);
        $('#modalAtas').dialog('open');
    });

});

//--------------------------------Buscando dados para edição---------------------------------------//

$.fn.addItems = function (data) {
    return this.each(function () {
        var list = this;
        $.each(data, function (index, itemData) {
            var option = new Option(itemData.descricao, itemData.codigo);
            list.add(option);
        });
    });
};

function Editar(id) {
    $.ajax({
        type: "POST",
        url: "frmAtas_de_Reuniao.aspx/BuscarAtas",
        data: "{pk_atas:'" + id + "'}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        cache: false,
        success: function (data) {
            var radio = $("input:radio[name=rdTipo]");
            var responsavel = data.d.Item1.FKUsuario;
            var importador = data.d.Item1.FKImportador;
            $('#txtData').val(data.d.Item2);
            $('#txtTema').val(data.d.Item1.Tema);
            radio[data.d.Item1.Tipo].checked = true;

            //Preenchendo combo com todos os usuários
            $.ajax({
                type: "POST",
                url: "frmAtas_de_Reuniao.aspx/BuscarUsuario",
                data: "{lixo:'False'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                success: function (data) {
                    $("select[id$=ddlResponsavel]").append("<option value=''></option>");
                    //
                    $("select[id$=ddlParticipante]").append("<option value=''></option>");
                    $.each(data.d, function (index, usu) {
                        $("select[id$=ddlResponsavel]").append("<option value='" + usu.usuario + "'>" + usu.nome_completo + "</option>");
                        $("select[id$=ddlParticipante]").append("<option value='" + usu.usuario + "'>" + usu.nome_completo + "</option>");
                    });
                    $('select[id$=ddlResponsavel]').val(responsavel);
                }
            });
            //---

            //Preenchendo combo com todos os importador
            $.ajax({
                type: "POST",
                url: "frmAtas_de_Reuniao.aspx/BuscarImportador",
                data: "{lixo:'False'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                success: function (data) {
                    $("select[id$=ddlImportador]").append("<option value=''></option>");
                    $("select[id$=ddlImportador]").addItems(data.d);
                    $('select[id$=ddlImportador]').val(importador);
                }
            });
            //---

            //Preenchendo grvParticipantes 
            $.ajax({
                type: "POST",
                url: "frmAtas_de_Reuniao.aspx/BuscarParticipantes",
                data: "{fk_ata:'" + id + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                beforeSend: function () {
                    $("[id*=grvParticipantes]").remove();
                },
                success: function (data) {
                    var btn = $("#ContentPlaceHolder1_btnAtualizaGrvParticipantes");
                    btn.trigger('click');
                },
                complete: function () {
                }
            });
            //---

        },
        complete: function () {
            var _tema = $('#txtTema'),
            _data = $('#txtData'),
            _resp = $('select[id$=ddlResponsavel]'),
            _tipo = $("input:radio[name=rdTipo]"),
            _import = $('select[id$=ddlImportador]');

            //Chamando modal Atas
            $('#accordion h3:eq(2)').show();
            $('#modalAtas').dialog('open');

            //Validando campos
            $('#aspnetForm').validate({
                rules: {
                    txtTema: { required: true },
                    txtData: { required: true }
                },
                messages: {
                    txtTema: '',
                    txtData: ''
                }
            });
            //
            var Salvar_Edicao = function () {
                if ($("#aspnetForm").valid()) {
                    var dtn = FormataData(_data);
                    var opTipo = "";
                    if (_tipo[0].checked) {
                        opTipo = 0
                    } else { opTipo = 1 };

                    var dados = "{arg:{tema:'" + _tema.val() +
                    "', PKAtas:'" + id +
                    "', data:'" + dtn +
                    "', FKImportador:'" + _import.val() +
                    "', FKUsuario:'" + _resp.val() +
                    "', tipo:'" + opTipo +
                    "'}}";
                    $.ajax({
                        type: "POST",
                        url: "frmAtas_de_Reuniao.aspx/Editar",
                        data: dados,
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        cache: false,
                        success: function (msg) {
                            if (msg.d) {
                                $('#modalAtas').dialog("close");
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
                        },
                        error: function (xhr, tStatus, err) {
                            alert(xhr);
                        }
                    })
                }
            };

            //---------------------Gravando Participante---------------------------//
            var Salvar_Participante = function () {
                if ($("#aspnetForm").valid()) {
                    var _participante = $("select[id$=ddlParticipante]");
                    var _temap = $("#txtTema"),
                        _datap = $("#txtData"),
                        _respp = $("select[id$=ddlResponsavel] option:selected").text();
                    var dtnp = FormataData(_datap);
                    $.ajax({
                        type: "POST",
                        url: "frmAtas_de_Reuniao.aspx/incluirParticipante",
                        data: "{fk_ata:'" + id +
                        "', participante:'" + _participante.val() +
                        "', data:'" + dtnp +
                        "', tema:'" + _temap.val() +
                        "', resp:'" + _respp +
                        "'}",

                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        cache: false,
                        success: function (data) {
                            var btn = $("#ContentPlaceHolder1_btnAtualizaGrvParticipantes");
                            btn.trigger('click');
                        },
                        error: function (xhr, tStatus, err) {
                            alert(xhr.responseText);
                        }
                    });
                };
            };

            //----------------------------aceite----------------------------------//
            var Funcao_Aceite = function () {
                $.ajax({
                    type: "POST",
                    url: "frmAtas_de_Reuniao.aspx/aceite",
                    data: "{pk_ata:'" + id + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    cache: false,
                    success: function (data) {
                        var btn = $("#ContentPlaceHolder1_btnAtualizaGrvParticipantes");
                        btn.trigger('click');
                    },
                    error: function (xhr, tStatus, err) {
                        // alert(err);
                    }
                });
            };
            //--------------------------------------------------------------------//

            //---------------------incluisão de arquivos------------------------------//
            //            var IncluirArquivo = function () {
            //                var _caminho = escape($("#tmpPath").val().replace(/\//g, '__slash__'));
            //                if (_caminho != null) {
            //                    $.ajax({
            //                        type: "POST",
            //                        url: "frmAtas_de_Reuniao.aspx/incluirArquivo",
            //                        data: "{fk_ata:'" + id + "', caminho_origem:'" + _caminho + "'}",
            //                        contentType: "application/json; charset=utf-8",
            //                        dataType: "json",
            //                        cache: false,
            //                        beforedSend: function () {
            //                            $("#btnUpLoad").attr('disabled', 'disabled');
            //                        },
            //                        success: function (data) {
            //                            var btn = $("#ContentPlaceHolder1_btnAtualizaGrvArquivos");
            //                            btn.trigger('click');
            //                        },
            //                        complete: function () {
            //                            $('#btnUpLoad').removeAttr('disabled', 'disabled');
            //                        },
            //                        error: function (xhr, tStatus, err) {
            //                            alert("erro IncluirArquivo" + xhr.responseText);
            //                        }
            //                    });
            //                }
            //            };



            //-------------------------------------------------------------------------------------

            $('#btnSalvar').unbind('click');
            $('#btnSalvar').bind('click', Salvar_Edicao);
            //
            $('#btnIncluirParticipante').unbind('click');
            $('#btnIncluirParticipante').bind('click', Salvar_Participante);
            $('#btnAceite').bind('click', Funcao_Aceite);
            //
            //            $('#btnUpLoad').bind('click', IncluirArquivo);
        }
    });
    return false;
};


//---------------------incluisão temporária dos participantes------------------------------//
$(function () {
    var IncluirTemp = function () {
        var _participante = $("select[id$=ddlParticipante]");
        var _temat = $("#txtTema"),
            _datat = $("#txtData"),
            _respt = $("select[id$=ddlResponsavel] option:selected").text();
        var dtnt = FormataData(_datat);
        if (_participante.val() != -1) {
            $.ajax({
                type: "POST",
                url: "frmAtas_de_Reuniao.aspx/incluirParticipanteTemp",
                data: "{participante:'" + _participante.val() +
                      "', data:'" + dtnt +
                      "', tema:'" + _temat.val() +
                      "', resp:'" + _respt +
                      "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                cache: false,
                success: function (data) {
                    var btn = $("#ContentPlaceHolder1_btnAtualizaGrvParticipantes");
                    btn.trigger('click');
                }
            });
        }
    };

    $('#btnIncluirParticipante').bind('click', IncluirTemp);
    return false;
});

$(function () {
    $('#btnIncluirParticipante').attr('disabled', 'disabled');
    $("select[id$=ddlParticipante]").change(function () {
        if ($(this).val() == -1) {
            $('#btnIncluirParticipante').attr('disabled', 'disabled');
        } else {
            $('#btnIncluirParticipante').removeAttr('disabled', 'disabled');
        }
    });
});

//-------------------------------Upload-------------------------------//

$(function () {
    $('#dialog:ui-dialog').dialog('destroy');
    // Montando o Modal
    $('#dvUpload').dialog({
        autoOpen: false,
        height: 120,
        width: 500,
        modal: true,
        resizable: false,
        open: function (type, data) {
            $(this).parent().appendTo("#aspnetForm");
        },
        close: function () {
            $('#dvUpload').clearFields();
        }
    });
});

$(function () {
    $('#dialog:ui-dialog').dialog('destroy');
    $("#avUpload").dialog({
        autoOpen: false,
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
});

function AbrirUpload() {
    $('#dvUpload').dialog('open');
    return false;
};


