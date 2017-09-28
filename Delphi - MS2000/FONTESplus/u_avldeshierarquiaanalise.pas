unit u_avldeshierarquiaanalise;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ImgList, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, Grids,
  DBGrids, Db, DBTables;

type
  Tf_avldeshierarquiaanalise = class(TForm)
    p_itens: TPanel;
    lblImportador: TLabel;
    DBGrid1: TDBGrid;
    SpeedButton3: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    SpeedButton4: TSpeedButton;
    DataSource1: TDataSource;
    tbPesquisas: TTable;
    tbPesquisasCodigo: TIntegerField;
    tbPesquisasDescricao: TStringField;
    DataSource2: TDataSource;
    tbColaboradores: TTable;
    DataSource3: TDataSource;
    tbSupervisores: TTable;
    DataSource4: TDataSource;
    tbGestores: TTable;
    tbHierarquiaAnalise: TTable;
    tbHierarquiaAnaliseFk_Analise: TIntegerField;
    tbHierarquiaAnaliseCodigo: TIntegerField;
    tbHierarquiaAnaliseColaborador: TStringField;
    tbHierarquiaAnaliseSupervisor: TStringField;
    tbHierarquiaAnaliseGestor: TStringField;
    DataSource5: TDataSource;
    tbColaboradoresUsuario: TStringField;
    tbSupervisoresUsuario: TStringField;
    tbGestoresUsuario: TStringField;
    tbGestoresNivel: TIntegerField;
    tbSupervisoresNivel: TIntegerField;
    tbColaboradoresNivel: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaGrade;
  end;

var
  f_avldeshierarquiaanalise: Tf_avldeshierarquiaanalise;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_avldeshierarquiaanalise.FormCreate(Sender: TObject);
begin
  tbPesquisas.Open;

  tbColaboradores.Open;
  tbSupervisores.Open;
  tbGestores.Open;
end;

procedure Tf_avldeshierarquiaanalise.AtualizaGrade;
begin
  tbHierarquiaAnalise.Close;
  tbHierarquiaAnalise.Open;
end;

procedure Tf_avldeshierarquiaanalise.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_avldeshierarquiaanalise := nil;
end;

procedure Tf_avldeshierarquiaanalise.SpeedButton3Click(Sender: TObject);
begin
  tbHierarquiaAnalise.Edit;
  tbHierarquiaAnaliseSupervisor.Clear;
  tbHierarquiaAnalise.Post;
end;

procedure Tf_avldeshierarquiaanalise.SpeedButton4Click(Sender: TObject);
begin
  tbHierarquiaAnalise.Edit;
  tbHierarquiaAnaliseGestor.Clear;
  tbHierarquiaAnalise.Post;
end;

procedure Tf_avldeshierarquiaanalise.FormShow(Sender: TObject);
begin
  AtualizaGrade;
end;

end.
