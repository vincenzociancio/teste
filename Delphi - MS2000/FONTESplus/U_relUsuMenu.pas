unit U_relUsuMenu;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, Dialogs, jpeg;

type
  TQR_UsuariosMenu = class(TQuickRep)
    PageHeaderBand1: TQRBand;
    QRImage1: TQRImage;
    QRL_sistema: TQRLabel;
    QRL_titulo: TQRLabel;
    PageFooterBand1: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    qrMenu: TQuery;
    qrUsu: TQuery;
    QRBand1: TQRBand;
    QRSubDetail1: TQRSubDetail;
    qrdbtxtMenu: TQRDBText;
    qrsAcessa: TQRShape;
    qrsLinVert1: TQRShape;
    qrsLinVert2: TQRShape;
    qrsLinVert3: TQRShape;
    qrsLinVert4: TQRShape;
    qrsLinHor1: TQRShape;
    qrMenuCodigo: TStringField;
    qrMenuDescricao: TStringField;
    qrMenuNivel: TStringField;
    qrMenuACESSA: TIntegerField;
    qrMenuSubMenu: TIntegerField;
    QRLabel1: TQRLabel;
    qrdbtxtUsuario: TQRDBText;
    qrl_x: TQRLabel;
    qrUsuUsuario: TStringField;
    qrUsuNome_Completo: TStringField;
    qrUsuSETOR: TStringField;
    QRLabel2: TQRLabel;
    QRDBText1: TQRDBText;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure QRBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private

  public

  end;

type
    TRegSubNode = Record
        tot: Word;
        cont: Word;
        tree: Boolean;
    End;

var
  QR_UsuariosMenu: TQR_UsuariosMenu;
  vetNode: Array Of TRegSubNode;

implementation

uses u_mscomex;

{$R *.DFM}

procedure TQR_UsuariosMenu.QuickRepStartPage(Sender: TCustomQuickRep);
begin
     QRL_sistema.Caption := v_sistema +' - '+ v_versao;
//     QRL_empresa.Caption := 'MS LOGÍSTICA ADUANEIRA LTDA.';
     QRL_titulo.Caption  := 'Relatório do Menu de Acesso do Usuário';
end;

procedure TQR_UsuariosMenu.QRBand1AfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
     qrMenu.Close;
     qrMenu.Params[0].AsString := qrUsuUsuario.AsString;
     qrMenu.Open;
end;

procedure TQR_UsuariosMenu.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

const cSPACE = 16;
var vNivel, vAlt: Integer;
begin
     vNivel := Length(qrMenuCodigo.AsString) Div 2;

     If (qrMenuSubMenu.AsInteger > 1) OR (vNivel = 0) Then Begin
        If Length(vetNode) > 0 Then Begin
           Inc(vetNode[High(vetNode)].cont, qrMenuSubMenu.AsInteger);
           vetNode[High(vetNode)].tree := (vetNode[High(vetNode)].cont <> vetNode[High(vetNode)].tot);
        End;

        SetLength(vetNode, Length(vetNode)+1);
        vetNode[High(vetNode)].tot := qrMenuSubMenu.AsInteger;
        vetNode[High(vetNode)].cont := 0;
        vetNode[High(vetNode)].tree := True;
     End;

     Inc(vetNode[High(vetNode)].cont);

     vetNode[High(vetNode)].tree := (vetNode[High(vetNode)].cont <> vetNode[High(vetNode)].tot);

     If vNivel = 0 Then
        qrdbtxtMenu.Font.Style := qrdbtxtMenu.Font.Style + [fsBold]
     Else
        qrdbtxtMenu.Font.Style := qrdbtxtMenu.Font.Style - [fsBold];
     qrsAcessa.Left := 12 + (cSPACE * vNivel);
//     qrdbtxtAcessa.Left
     if  (qrmenuacessa.asinteger=1) then qrl_x.Caption :='X'
     else qrl_x.Caption :=' ';
     qrl_x.left := 16 + (cSPACE * vNivel);
     qrdbtxtMenu.Left := 26 + (cSPACE * vNivel);

     qrsLinHor1.Left := 18 + (cSPACE * (vNivel-1));
     qrsLinHor1.Enabled := vNivel >= 1;

     qrsLinVert1.Left := 12 + (cSPACE * 0);
     qrsLinVert2.Left := 12 + (cSPACE * 1);
     qrsLinVert3.Left := 12 + (cSPACE * 2);
     qrsLinVert4.Left := 12 + (cSPACE * 3);

     qrsLinVert1.Enabled := ((vNivel > 0) AND vetNode[0].tree) OR (vNivel = 1);
     qrsLinVert2.Enabled := ((vNivel > 1) AND vetNode[1].tree) OR (vNivel = 2);
     qrsLinVert3.Enabled := ((vNivel > 2) AND vetNode[2].tree) OR (vNivel = 3);
     qrsLinVert4.Enabled := ((vNivel > 3) AND vetNode[3].tree) OR (vNivel = 4);

     If vetNode[0].tree Then vAlt := 15 Else vAlt := 8;
     qrsLinVert1.Height := vAlt;
     If vetNode[1].tree Then vAlt := 15 Else vAlt := 8;
     qrsLinVert2.Height := vAlt;
     If vetNode[2].tree Then vAlt := 15 Else vAlt := 8;
     qrsLinVert3.Height := vAlt;
     If vetNode[3].tree Then vAlt := 15 Else vAlt := 8;
     qrsLinVert4.Height := vAlt;

     While Length(vetNode) > 0 Do Begin
          If vetNode[High(vetNode)].tree Then
             Break
          Else
             SetLength(vetNode, Length(vetNode)-1);
     End;
end;

end.
