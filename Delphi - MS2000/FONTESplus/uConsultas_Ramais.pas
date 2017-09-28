unit uConsultas_Ramais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, DBCGrids, ExtCtrls, StdCtrls, Buttons, Db, DBTables, Mask,
  DBCtrls;

type
  TfrmConsultas_Ramais = class(TForm)
    StatusBar1: TStatusBar;
    pnlTop: TPanel;
    DBCtrlGrid1: TDBCtrlGrid;
    pnlB: TPanel;
    btnLocalizar: TBitBtn;
    StaticText1: TStaticText;
    edtFuncionario: TEdit;
    Label1: TLabel;
    StaticText2: TStaticText;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    qryUsuario: TQuery;
    qryUsuariodescricao: TStringField;
    qryUsuarioNome_Completo: TStringField;
    qryUsuarioRamal: TStringField;
    dtsUsuario: TDataSource;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Label3: TLabel;
    qryUsuarioEmail: TStringField;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    qryUsuarioCelular: TStringField;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    Bevel7: TBevel;
    Bevel8: TBevel;
    procedure FormShow(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure DBEdit3Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultas_Ramais: TfrmConsultas_Ramais;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TfrmConsultas_Ramais.FormShow(Sender: TObject);
begin
  qryUsuario.Close;
  qryUsuario.Open;
end;

procedure TfrmConsultas_Ramais.btnLocalizarClick(Sender: TObject);
begin
  qryUsuario.Locate('Nome_Completo', edtFuncionario.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmConsultas_Ramais.DBEdit3Change(Sender: TObject);
begin
  dbedit3.Field.Alignment := tacenter;
end;

procedure TfrmConsultas_Ramais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.Ramais1.enabled := true;
  frmConsultas_Ramais := Nil;
  Action := caFree;
end;

end.
