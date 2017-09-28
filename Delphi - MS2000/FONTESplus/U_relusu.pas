unit U_relusu;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQR_usuarios = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRL_sistema: TQRLabel;
    QRL_empresa: TQRLabel;
    QRL_titulo: TQRLabel;
    T_usuarios: TTable;
    DS_usuarios: TDataSource;
    PageFooterBand1: TQRBand;
    DetailBand1: TQRBand;
    ChildBand1: TQRChildBand;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRDBText5: TQRDBText;
    QRDBText2: TQRDBText;
    ColumnHeaderBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    T_usuariosEmpresa: TStringField;
    T_usuariosFilial: TStringField;
    T_usuariosUsuario: TStringField;
    T_usuariosSenha: TStringField;
    T_usuariosNome_Completo: TStringField;
    T_usuariosDiretorio_SISCOMEX: TStringField;
    T_usuariosNivel: TStringField;
    T_usuariosNivel_ccorrente: TStringField;
    T_usuariosData_validade_senha: TDateTimeField;
    T_usuariosEmail: TStringField;
    T_usuariosEmail_Sol_Num: TIntegerField;
    T_usuariosEmail_aviso_oper: TIntegerField;
    T_usuariosEmail_aviso_finan: TIntegerField;
    T_usuariosEmail_aviso_diretoria: TIntegerField;
    T_usuariosEmail_aviso_sistema: TIntegerField;
    T_usuariosDistribui_processo: TIntegerField;
    T_usuariosAbre_processos: TIntegerField;
    T_usuariosEdita_eventos: TIntegerField;
    T_usuariosDigitalizador: TIntegerField;
    T_usuariosTraduz_Classifica: TIntegerField;
    T_usuariosInativa_Cliente: TIntegerField;
    T_usuariosEdita_cliente_inativo: TIntegerField;
    T_usuariosFecha_Processo: TIntegerField;
    T_usuariosEdita_Processo_Fechado: TIntegerField;
    T_usuariosAcessa_Patrimonio: TIntegerField;
    T_usuariosSupervisor: TStringField;
    T_usuariosAcessa_PARAFAT: TIntegerField;
    T_usuariosDesconto_Faturamento: TIntegerField;
    T_usuariosResponsavel: TIntegerField;
    T_usuariosDistribui_processoC: TIntegerField;
    T_usuariosResponsavelC: TIntegerField;
    T_usuariosSupervisorC: TStringField;
    T_usuariosSetor: TStringField;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QR_usuarios: TQR_usuarios;

implementation

uses u_mscomex;
{$R *.DFM}


procedure TQR_usuarios.QuickRepStartPage(Sender: TCustomQuickRep);
begin
QRL_sistema.Caption := v_sistema +' - '+ v_versao;
QRL_empresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
QRL_titulo.Caption  := 'Relatório de Usuários ';

end;



procedure TQR_usuarios.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     T_Usuarios.Open;
end;

end.
