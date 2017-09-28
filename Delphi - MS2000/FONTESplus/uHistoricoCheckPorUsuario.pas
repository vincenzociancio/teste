unit uHistoricoCheckPorUsuario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, DBCtrls, Db, DBTables, Grids, DBGrids, Buttons,
  TeEngine, Series, TeeProcs, Chart, Spin;

type
  TfrmHistoricoCheckPorUsuario = class(TForm)
    pnlTop: TPanel;
    edtUsers: TDBLookupComboBox;
    Label1: TLabel;
    dtsUsers: TDataSource;
    qryUsers: TQuery;
    gridDados: TDBGrid;
    dtsDados: TDataSource;
    qryDados: TQuery;
    qryDadosFALTANTES: TIntegerField;
    qryDadosPERCENTUAL: TFloatField;
    qryDadosTOTAL_PROCESSOS_CHECK: TIntegerField;
    qryDadosTOTAL_PROCESSOS_UNIVERSO: TIntegerField;
    qryDadosAno: TStringField;
    qryDadosSemana: TIntegerField;
    btnAtualizar: TBitBtn;
    Chart1: TChart;
    qryDataMining: TQuery;
    qryDataMiningTOTAL_PROCESSOS_CHECK: TIntegerField;
    qryDataMiningMES: TIntegerField;
    Series2: TLineSeries;
    Series3: TLineSeries;
    qryDataMiningTOTAL_PROCESSOS: TIntegerField;
    qryDataMiningQTD_SEMANA: TIntegerField;
    Label2: TLabel;
    edtAno: TSpinEdit;
    btnFechar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure qryDadosPERCENTUALGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistoricoCheckPorUsuario: TfrmHistoricoCheckPorUsuario;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TfrmHistoricoCheckPorUsuario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  frmHistoricoCheckPorUsuario := nil;
  F_MSCOMEX.PorUsurio1.Enabled := True;
end;

procedure TfrmHistoricoCheckPorUsuario.FormShow(Sender: TObject);
begin
  // add year
  edtAno.Value := StrToInt(formatdatetime('YYYY', Date));
  // Opening list of users
  qryUsers.Close;
  qryUsers.Open;
  // ---
end;

procedure TfrmHistoricoCheckPorUsuario.btnAtualizarClick(Sender: TObject);
  Const
    Meses : array [1..12] of String[9] =
    ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
  var
    Indice,
    MediaProcessos : Integer;
begin
  // Opening data of users selecting
  qryDados.ParamByName('Usuario').Value := edtUsers.KeyValue;
  qryDados.ParamByName('Ano').Value := edtAno.Value;
  qryDados.Close;
  qryDados.Open;
  //

  Series2.Clear;
  Series2.RefreshSeries;
  Series3.Clear;
  Series3.RefreshSeries;
  Indice := 0;
  MediaProcessos := 0;
  qryDataMining.ParamByName('Usuario').Value := edtUsers.KeyValue;
  qryDataMining.ParamByName('Ano').Value := edtAno.Value;
  qryDataMining.Close;
  qryDataMining.open;
  if ( Not qryDataMining.IsEmpty ) then begin
    while not qryDataMining.eof do begin
      MediaProcessos := round(qryDataMiningTOTAL_PROCESSOS_CHECK.AsInteger / qryDataMiningQTD_SEMANA.AsInteger);
      Series2.AddXY(Indice, MediaProcessos, Meses[qryDataMiningMES.AsInteger], clGreen);
      Series3.AddXY(Indice, qryDataMiningTOTAL_PROCESSOS.AsInteger, Meses[qryDataMiningMES.AsInteger], clWhite);
      Inc(Indice, 1);
      qryDataMining.Next;
    end;  
  end;
  qryDataMining.Close;
  // ---
  Chart1.Foot.Text.Clear;
  Chart1.Foot.Text.Add(edtAno.Text);
end;

procedure TfrmHistoricoCheckPorUsuario.qryDadosPERCENTUALGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := qryDadosPERCENTUAL.AsString + '%';
end;

end.
