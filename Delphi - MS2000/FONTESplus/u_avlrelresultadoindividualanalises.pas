unit u_avlrelresultadoindividualanalises;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Qrctrls, QuickRpt, jpeg, ExtCtrls, Db, DBTables;

type
  Tf_avlrelresultadoindividualanalises = class(TForm)
    qryNotas: TQuery;
    qryNotasNome_Completo: TStringField;
    qryNotasPeso: TIntegerField;
    QryCompetencia: TQuery;
    QryCompetenciaPeso: TIntegerField;
    QryCompetenciaOrdem: TIntegerField;
    QuickRep1: TQuickRep;
    TitleBand1: TQRBand;
    qrl_sistema: TQRLabel;
    qrl_titulo: TQRLabel;
    QRBand3: TQRBand;
    GroupFooterBand1: TQRBand;
    qrlNotaFinalUsu: TQRLabel;
    qryNotasPergunta: TStringField;
    qryNotasResp_Usuario: TIntegerField;
    qryNotasFk_Competencia: TIntegerField;
    QryCompetenciaDescricao: TStringField;
    QRLabel1: TQRLabel;
    QRDBText3: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText9: TQRDBText;
    GroupHeaderBand1: TQRBand;
    QRLabel5: TQRLabel;
    QRLabel3: TQRLabel;
    qryNotasResp_Supervisor: TIntegerField;
    qryNotasResp_Gestor: TIntegerField;
    qrlNotaFinalTotal: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel6: TQRLabel;
    QRBand1: TQRBand;
    QRLabel4: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText1: TQRDBText;
    qrlNotaFinalGes: TQRLabel;
    qrlNotaFinalSup: TQRLabel;
    QRLabel13: TQRLabel;
    QRImage1: TQRImage;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    qrlGes: TQRLabel;
    qrlSup: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure qrsdProcBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    NotaFinal : Double;
    NotaFinalUsu, NotaFinalSup, NotaFinalGes : Double;
    MediaCompetenciaUsu1, MediaCompetenciaUsu2, MediaCompetenciaUsu3, MediaCompetenciaUsu4, MediaCompetenciaUsu5 : Double;
    MediaCompetenciaSup1, MediaCompetenciaSup2, MediaCompetenciaSup3, MediaCompetenciaSup4, MediaCompetenciaSup5 : Double;
    MediaCompetenciaGes1, MediaCompetenciaGes2, MediaCompetenciaGes3, MediaCompetenciaGes4, MediaCompetenciaGes5 : Double;

    procedure ZeraVariaveis;

    procedure TrazSupGes;
        
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_avlrelresultadoindividualanalises: Tf_avlrelresultadoindividualanalises;

implementation

{$R *.DFM}

Uses U_MSCOMEX;

procedure Tf_avlrelresultadoindividualanalises.FormCreate(Sender: TObject);
begin
  QryCompetencia.Open;

  qryNotas.ParamByName('Colaborador').Value := v_usuario;
  qryNotas.Open;
end;

procedure Tf_avlrelresultadoindividualanalises.qrsdProcBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if (qryNotasFk_Competencia.AsInteger = 1)
   then begin
     MediaCompetenciaUsu1 := MediaCompetenciaUsu1 + (qryNotasResp_Usuario.AsInteger*(qryNotasPeso.AsInteger/100));
     MediaCompetenciaSup1 := MediaCompetenciaSup1 + (qryNotasResp_Supervisor.AsInteger*(qryNotasPeso.AsInteger/100));
     MediaCompetenciaGes1 := MediaCompetenciaGes1 + (qryNotasResp_Gestor.AsInteger*(qryNotasPeso.AsInteger/100));
   end;

  if (qryNotasFk_Competencia.AsInteger = 2)
   then begin
     MediaCompetenciaUsu2 := MediaCompetenciaUsu2 + (qryNotasResp_Usuario.AsInteger*(qryNotasPeso.AsInteger/100));
     MediaCompetenciaSup2 := MediaCompetenciaSup2 + (qryNotasResp_Supervisor.AsInteger*(qryNotasPeso.AsInteger/100));
     MediaCompetenciaGes2 := MediaCompetenciaGes2 + (qryNotasResp_Gestor.AsInteger*(qryNotasPeso.AsInteger/100));
   end;

  if (qryNotasFk_Competencia.AsInteger = 3)
   then begin
     MediaCompetenciaUsu3 := MediaCompetenciaUsu3 + (qryNotasResp_Usuario.AsInteger*(qryNotasPeso.AsInteger/100));
     MediaCompetenciaSup3 := MediaCompetenciaSup3 + (qryNotasResp_Supervisor.AsInteger*(qryNotasPeso.AsInteger/100));
     MediaCompetenciaGes3 := MediaCompetenciaGes3 + (qryNotasResp_Gestor.AsInteger*(qryNotasPeso.AsInteger/100));
   end;

  if (qryNotasFk_Competencia.AsInteger = 4)
   then begin
     MediaCompetenciaUsu4 := MediaCompetenciaUsu4 + (qryNotasResp_Usuario.AsInteger*(qryNotasPeso.AsInteger/100));
     MediaCompetenciaSup4 := MediaCompetenciaSup4 + (qryNotasResp_Supervisor.AsInteger*(qryNotasPeso.AsInteger/100));
     MediaCompetenciaGes4 := MediaCompetenciaGes4 + (qryNotasResp_Gestor.AsInteger*(qryNotasPeso.AsInteger/100));
   end;

  if (qryNotasFk_Competencia.AsInteger = 5)
   then begin
     MediaCompetenciaUsu5 := MediaCompetenciaUsu5 + (qryNotasResp_Usuario.AsInteger*(qryNotasPeso.AsInteger/100));
     MediaCompetenciaSup5 := MediaCompetenciaSup5 + (qryNotasResp_Supervisor.AsInteger*(qryNotasPeso.AsInteger/100));
     MediaCompetenciaGes5 := MediaCompetenciaGes5 + (qryNotasResp_Gestor.AsInteger*(qryNotasPeso.AsInteger/100));
   end;
end;

procedure Tf_avlrelresultadoindividualanalises.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  NotaFinal := 0;
end;

procedure Tf_avlrelresultadoindividualanalises.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_avlrelresultadoindividualanalises := nil;
  F_MSCOMEX.ResultadoIndividualdasAnlises1.Enabled := True;
end;

procedure Tf_avlrelresultadoindividualanalises.GroupFooterBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  QtdAvaliacoes : Integer;
  NotaFinalTotal : Double;
begin
  QtdAvaliacoes := 0;

  NotaFinalUsu := (MediaCompetenciaUsu1/1) + (MediaCompetenciaUsu2/5) + (MediaCompetenciaUsu3/3) + (MediaCompetenciaUsu4/5) + (MediaCompetenciaUsu5/5);
  NotaFinalSup := (MediaCompetenciaSup1/1) + (MediaCompetenciaSup2/5) + (MediaCompetenciaSup3/3) + (MediaCompetenciaSup4/5) + (MediaCompetenciaSup5/5);
  NotaFinalGes := (MediaCompetenciaGes1/1) + (MediaCompetenciaGes2/5) + (MediaCompetenciaGes3/3) + (MediaCompetenciaGes4/5) + (MediaCompetenciaGes5/5);

  qrlNotaFinalUsu.Caption := FormatFloat('0.00',NotaFinalUsu);
  qrlNotaFinalSup.Caption := FormatFloat('0.00',NotaFinalSup);
  qrlNotaFinalGes.Caption := FormatFloat('0.00',NotaFinalGes);

  if (NotaFinalUsu <> 0)
   then QtdAvaliacoes := QtdAvaliacoes + 1;

  if (NotaFinalSup <> 0)
   then QtdAvaliacoes := QtdAvaliacoes + 1;

  if (NotaFinalGes <> 0)
   then QtdAvaliacoes := QtdAvaliacoes + 1;

  NotaFinalTotal := (NotaFinalUsu + NotaFinalSup + NotaFinalGes) / QtdAvaliacoes;

  qrlNotaFinalTotal.Caption := FormatFloat('0.00',NotaFinalTotal);

  ZeraVariaveis;
end;

procedure Tf_avlrelresultadoindividualanalises.ZeraVariaveis;
begin
  NotaFinalUsu := 0;
  NotaFinalSup := 0;
  NotaFinalGes := 0;

  MediaCompetenciaUsu1 := 0;
  MediaCompetenciaUsu2 := 0;
  MediaCompetenciaUsu3 := 0;
  MediaCompetenciaUsu4 := 0;
  MediaCompetenciaUsu5 := 0;

  MediaCompetenciaSup1 := 0;
  MediaCompetenciaSup2 := 0;
  MediaCompetenciaSup3 := 0;
  MediaCompetenciaSup4 := 0;
  MediaCompetenciaSup5 := 0;

  MediaCompetenciaGes1 := 0;
  MediaCompetenciaGes2 := 0;
  MediaCompetenciaGes3 := 0;
  MediaCompetenciaGes4 := 0;
  MediaCompetenciaGes5 := 0;
end;

procedure Tf_avlrelresultadoindividualanalises.QRBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  TrazSupGes;
end;

procedure Tf_avlrelresultadoindividualanalises.TrazSupGes;
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.SQL.Clear;
    QrAux.SQL.Add(' SELECT ADHA.SUPERVISOR, U1.NOME_COMPLETO AS Nome_SUPERVISOR, ADHA.GESTOR, U2.Nome_Completo AS Nome_GESTOR ');
    QrAux.SQL.Add('   FROM ANL_DES_HIERARQUIA_ANALISE ADHA LEFT JOIN USUARIOS U1                                              ');
    QrAux.SQL.Add('     ON ADHA.Supervisor = U1.USUARIO LEFT JOIN Usuarios U2                                                 ');
    QrAux.SQL.Add('     ON ADHA.GESTOR     = U2.USUARIO                                                                       ');
    QrAux.SQL.Add('  WHERE ADHA.COLABORADOR =:Usuario                                                                         ');

    QrAux.Params[0].Value := v_usuario;
    QrAux.Open;

    if QrAux.RecordCount > 0
     then begin
       if not QrAux.FieldByName('Nome_SUPERVISOR').IsNull
        then qrlSup.Caption := QrAux.FieldByName('Nome_SUPERVISOR').AsString;

       if not QrAux.FieldByName('Nome_GESTOR').IsNull
        then qrlGes.Caption := QrAux.FieldByName('Nome_GESTOR').AsString;
     end;
  finally
    QrAux.Free;
  end;
end;

end.
