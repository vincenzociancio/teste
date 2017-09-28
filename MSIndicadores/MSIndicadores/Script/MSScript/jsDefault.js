/// <reference path="../jquery-ui-1.8.22.custom/js/jquery-1.7.2.min.js" />
/// <reference path="../jquery-ui-1.8.22.custom/js/jquery-ui-1.8.22.custom.min.js" />
/// <reference path="../jquery-ui-1.8.22.custom/js/jquery.validate.js" />
/// <reference path="../jquery-ui-1.8.22.custom/development-bundle/ui/jquery.ui.datepicker.js" />
/// <reference path="../jquery-ui-1.8.22.custom/development-bundle/ui/jquery.ui.button.js" />
/// <reference path="../jquery-ui-1.8.22.custom/development-bundle/ui/jquery.ui.accordion.js" />
/// <reference path="../jquery-ui-1.8.22.custom/development-bundle/ui/jquery.ui.dialog.js" />
/// <reference path="../jquery-ui-1.8.22.custom/development-bundle/ui/i18n/jquery.ui.datepicker-pt-BR.js" />

//Inicio carregando na Página
$(document).ready(function () {
    //Para botoes padrão sem post
    $("input:button, a, input:submit", ".content").button();    
    $("a", ".content").click(function () { return false; });

    //Para botoes padrão com post
    $("input:button, a, input:submit", ".content_post").button();
    $("a", ".content_post").click(function () { return true; });

    $("input:file", ".content").button();
    //fim botoes padrão

    //Para container dos grid, filtros etc.
    $("#resizable").resizable({
        containment: "#container"
    });
    //fim container
    // Todos text box em maiúsculo
    $("input:text").css('text-transform', 'uppercase').css('font-size', '12px').css('font-family', 'verdana');
    //
    $('select').focus(function () {
        $(this).css('font-family', 'verdana')
        .css('font-size', '9px').focusout(function () {
            $(this).css('font-size', '12px')
        })
    });
});


/* Brazilian initialisation for the jQuery UI date picker plugin. */
jQuery(function ($) {
    $.datepicker.setDefaults($.datepicker.regional['pt-BR']);
});


$(document).ready(function () {
    var previousColor, newColor = "#e7e7ff";
    $("table.listaArquivos tr").hover(
        function () {
            previousColor = $(this).css("background-color");
            $(this).css("background-color", newColor);
        },
        function () {
            $(this).css("background-color", previousColor);
        }
    );
});
//Fim do carregando na página
//-------------------------------------------------Funções----------------------------------------//
//Para chamar o dialogo do confirma apagar
var confirmado = false;
function confirmaApagar(obj) {
    if (!confirmado) {
        $("#dialog:ui-dialog").dialog("destroy");
        $("#modalApagar").dialog({
            resizable: false,
            height: 150,
            width: 400,
            modal: true
        });

        var confirmar = function () {
            $('#modalApagar').dialog('close');
            confirmado = true;
            obj.click();
        };

        var cancelar = function () {
            $('#modalApagar').dialog('close');
            confirmado = false;
        };

        $('#btnConfirmarApagar').bind('click', confirmar);
        $('#btnCancelarApagar').bind('click', cancelar);
    }
    return confirmado;
}
//fim confirma apagar

// Limpa campos 
jQuery.fn.extend({
    clearFields: function () {
        $(':input', this).not('input:button').val('');
    }
});
// fim Limpa campos


// Formata data de dd/MM/yyyy para MM/dd/yyyy
function FormataData(data) {
    try {
        var newdata = data.val().split('/');
        return newdata[1] + '/' + newdata[0] + '/' + newdata[2];
    }
    catch (e) {
        return null;
    }
}

//----------------------------------------------Fim Funções----------------------------------------//
