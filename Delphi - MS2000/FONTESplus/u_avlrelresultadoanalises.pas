unit u_avlrelresultadoanalises;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  QuickRpt, ExtCtrls, jpeg, Qrctrls, Db, DBTables;

type
  Tf_avlrelresultadoanalises = class(TForm)
    qryNotas: TQuery;
    qryNotasNome_Completo: TStringField;
    QryCompetencia: TQuery;
    QryCompetenciaPeso: TIntegerField;
    QryCompetenciaOrdem: TIntegerField;
    qryNotasPeso: TIntegerField;
    qryNotasDescricao: TStringField;
    qryNotasResp_Usuario: TIntegerField;
    qryNotasResp_Supervisor: TIntegerField;
    qryNotasResp_Gestor: TIntegerField;
    qryNotasFk_Competencia: TIntegerField;
    qryNotasUsuario: TStringField;
    QuickRep2: TQuickRep;
    QRBand2: TQRBand;
    qrlNotaFinalSup: TQRLabel;
    qrlNotaFinalUsu: TQRLabel;
    qrlNotaFinalGes: TQRLabel;
    QRLabel11: TQRLabel;
    qrlNotaFinalTotal: TQRLabel;
    QRLabel13: TQRLabel;
    QRBand4: TQRBand;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRBand5: TQRBand;
    QRLabel18: TQRLabel;
    QRDBText1: TQRDBText;
    QRBand6: TQRBand;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRImage1: TQRImage;
    QRSubDetail1: TQRSubDetail;
    QRDBText2: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure qrsdProcBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure GroupFooterBand1AfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    NotaFinalUsu, NotaFinalSup, NotaFinalGes : Double;
    MediaCompetenciaUsu1, MediaCompetenciaUsu2, MediaCompetenciaUsu3, MediaCompetenciaUsu4, MediaCompetenciaUsu5 : Double;
    MediaCompetenciaSup1, MediaCompetenciaSup2, MediaCompetenciaSup3, MediaCompetenciaSup4, MediaCompetenciaSup5 : Double;
    MediaCompetenciaGes1, MediaCompetenciaGes2, MediaCompetenciaGes3, MediaCompetenciaGes4, MediaCompetenciaGes5 : Double;

    procedure ZeraVariaveis;

    function TrazHierarquia: String;
    
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_avlrelresultadoanalises: Tf_avlrelresultadoanalises;

implementation

uses U_MSCOMEX, u_avlresultadoanalises;

{$R *.DFM}

procedure Tf_avlrelresultadoanalises.QRBand3BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  Hierarquia : String;
begin
  if (v_usuario <> 'PGALAVOTTI')
   then begin
     Hierarquia := TrazHierarquia;

     {Supervisor}
     QRLabel15.Enabled       := Hierarquia = 'SUPERVISOR';
     QRDBText2.Enabled       := Hierarquia = 'SUPERVISOR';
     qrlNotaFinalSup.Enabled := Hierarquia = 'SUPERVISOR';

     {Gestor}
     QRLabel16.Enabled       := Hierarquia = 'GESTOR';
     QRDBText4.Enabled       := Hierarquia = 'GESTOR';
     qrlNotaFinalGes.Enabled := Hierarquia = 'GESTOR';
   end
   else begin
     {Supervisor}
     QRLabel15.Enabled       := True;
     QRDBText2.Enabled       := True;
     qrlNotaFinalSup.Enabled := True;

     {Gestor}
     QRLabel16.Enabled       := True;
     QRDBText4.Enabled       := True;
     qrlNotaFinalGes.Enabled := True;
   end;

  NotaFinalUsu := 0;
  NotaFinalSup := 0;
  NotaFinalGes := 0;

  qryNotas.Close;
  qryNotas.ParamByName('Usuario').Value := f_avlresultadoanalises.qryColaboradorUsuario.AsString;
  qryNotas.Open;
end;

procedure Tf_avlrelresultadoanalises.qrsdProcBeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
var
  QtdAvaliacoes : Integer;
  MediaCompetencia : Double;
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

procedure Tf_avlrelresultadoanalises.QuickRep1BeforePrint(
  Sender: TCustomQuickRep; var PrintReport: Boolean);
begin
  NotaFinalUsu := 0;
  NotaFinalSup := 0;
  NotaFinalGes := 0;
end;

procedure Tf_avlrelresultadoanalises.GroupFooterBand1BeforePrint(
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

procedure Tf_avlrelresultadoanalises.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_avlrelresultadoanalises := nil;
  F_MSCOMEX.ResultadoSupervisionados1.Enabled := True;
end;

procedure Tf_avlrelresultadoanalises.FormCreate(Sender: TObject);
begin
  QryCompetencia.Open;

  f_avlresultadoanalises.qryColaborador.Open;
end;

procedure Tf_avlrelresultadoanalises.ZeraVariaveis;
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

function Tf_avlrelresultadoanalises.TrazHierarquia: String;
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.SQL.Clear;
    QrAux.SQL.Add(' SELECT DISTINCT Colaborador, SUPERVISOR, GESTOR FROM ANL_DES_HIERARQUIA_ANALISE WHERE ((SUPERVISOR = :Usuario) OR (GESTOR = :Usuario)) AND COLABORADOR = :Colaborador ');
    QrAux.ParamByName('Usuario').Value     := v_usuario;
    QrAux.ParamByName('Colaborador').Value := f_avlresultadoanalises.qryColaboradorUsuario.AsString;
    QrAux.Open;

    if QrAux.RecordCount > 0
     then begin
       if (QrAux.FieldByName('SUPERVISOR').AsString = v_usuario)
        then begin
          Result := 'SUPERVISOR';
          Exit;
        end;

       if (QrAux.FieldByName('GESTOR').AsString = v_usuario)
        then begin
          Result := 'GESTOR';
          Exit;
        end;
     end
     else Result := '';
  finally
    QrAux.Free;
  end;
end;

procedure Tf_avlrelresultadoanalises.GroupFooterBand1AfterPrint(
  Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  QuickRep2.NewPage;
end;

end.
