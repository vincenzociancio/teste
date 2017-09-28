unit uHistoricoCheckFollow;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, Grids, DBGrids, Db, DBTables, Buttons, Spin;

type
  TfrmHistoricoCheckFollow = class(TForm)
    Panel1: TPanel;
    edtProcesso: TMaskEdit;
    Label1: TLabel;
    dtsMain: TDataSource;
    dbGridMain: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    qryMain: TQuery;
    edtAno: TSpinEdit;
    Label2: TLabel;
    btnAtualizar: TBitBtn;
    qryMainData: TDateTimeField;
    qryMainSemana: TIntegerField;
    qryMainAno: TStringField;
    qryMainnome_completo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtProcessoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHistoricoCheckFollow: TfrmHistoricoCheckFollow;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TfrmHistoricoCheckFollow.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qryMain.Close;
  Action := caFree;
  frmHistoricoCheckFollow := nil;
  F_MSCOMEX.PorProcesso1.Enabled := True;
end;

procedure TfrmHistoricoCheckFollow.edtProcessoChange(Sender: TObject);
begin
  if ( Length(F_MSCOMEX.LRTrim(edtProcesso.Text)) >= 8 ) then begin
    qryMain.ParamByName('Processo').Value := edtProcesso.Text;
    qryMain.ParamByName('Ano').Value := edtAno.Text;
    qryMain.Close;
    qryMain.Open;
    if ( qryMain.IsEmpty ) then begin
      Application.MessageBox('Nenhum registro foi encontrado para filtro específicado.','Aviso', MB_OK+MB_ICONINFORMATION);
      qryMain.Close;
    end;
  end;
end;

procedure TfrmHistoricoCheckFollow.FormShow(Sender: TObject);
begin
  edtAno.Value := StrToInt(formatdatetime('YYYY', Date));    
end;

procedure TfrmHistoricoCheckFollow.BitBtn1Click(Sender: TObject);
begin
  Close;
end;

end.
