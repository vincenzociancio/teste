unit u_ctrTELEFONIA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Db, DBTables, Mask, DBCtrls;

type
  Tf_TELEFONIA = class(TForm)
    Panel2: TPanel;
    pnlPrinc: TPanel;
    pnlMenu: TPanel;
    btnIncluir: TBitBtn;
    btnSalvar: TBitBtn;
    Panel6: TPanel;
    dbG_papeis: TDBGrid;
    q_PONTOS: TQuery;
    ds_qIPS: TDataSource;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    t_PONTOS: TTable;
    ds_tPONTOS: TDataSource;
    paneledt: TPanel;
    q_setores: TQuery;
    ds_qsetores: TDataSource;
    btnexcluir: TBitBtn;
    t_PONTOS2: TTable;
    me_loc: TMaskEdit;
    sb_loc: TSpeedButton;
    Label3: TLabel;
    q_pat: TQuery;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBEdit10: TDBEdit;
    q_ID01: TQuery;
    Q_ID02: TQuery;
    q_usu: TQuery;
    DBLookupComboBox1: TDBLookupComboBox;
    DS_ID02: TDataSource;
    DS_QUSU: TDataSource;
    DS_QID01: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    sbLimpaMoedaFOB: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    q_up1: TQuery;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label13: TLabel;
    DBEdit4: TDBEdit;
    q_setorescodigo: TStringField;
    q_setoresdescricao: TStringField;
    t_PONTOS2PONTO: TStringField;
    t_PONTOS2Setor: TStringField;
    t_PONTOS2Usuario: TStringField;
    t_PONTOS2TELEFONE_RAMAL: TStringField;
    t_PONTOS2POSICAO_CENTRAL: TSmallintField;
    t_PONTOS2ID01: TStringField;
    t_PONTOS2ID01_BLOCO: TSmallintField;
    t_PONTOS2ID01_PAR: TSmallintField;
    t_PONTOS2ID02: TStringField;
    t_PONTOS2ID02_PORTA: TSmallintField;
    t_PONTOS2Descricao: TStringField;
    t_PONTOS2DetalheS: TStringField;
    q_usuUsuario: TStringField;
    q_usuNome_Completo: TStringField;
    q_usuNivel: TStringField;
    q_ID01codigo: TStringField;
    q_ID01descricao: TStringField;
    Q_ID02codigo: TStringField;
    Q_ID02descricao: TStringField;
    q_PONTOSPONTO: TStringField;
    q_PONTOSTELEFONE_RAMAL: TStringField;
    q_PONTOSPOSICAO_CENTRAL: TSmallintField;
    q_PONTOSQUSU: TStringField;
    q_PONTOSQSET: TStringField;
    q_PONTOSID01: TStringField;
    q_PONTOSID01_BLOCO: TSmallintField;
    q_PONTOSID01_PAR: TSmallintField;
    q_PONTOSID02: TStringField;
    q_PONTOSID02_PORTA: TSmallintField;
    q_PONTOSDESCRICAO: TStringField;
    q_PONTOSDETALHES: TStringField;
    t_PONTOSPONTO: TStringField;
    t_PONTOSSetor: TStringField;
    t_PONTOSUsuario: TStringField;
    t_PONTOSTELEFONE_RAMAL: TStringField;
    t_PONTOSPOSICAO_CENTRAL: TSmallintField;
    t_PONTOSID01: TStringField;
    t_PONTOSID01_BLOCO: TSmallintField;
    t_PONTOSID01_PAR: TSmallintField;
    t_PONTOSID02: TStringField;
    t_PONTOSID02_PORTA: TSmallintField;
    t_PONTOSDescricao: TStringField;
    t_PONTOSDetalheS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure q_PONTOSAfterScroll(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure sb_locClick(Sender: TObject);
    procedure sbLimpaMoedaFOBClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_TELEFONIA: Tf_TELEFONIA;
  ipnovo: boolean;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_TELEFONIA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     f_TELEFONIA := Nil;
     F_MSCOMEX.ControledePontosdeTelefonia1.Enabled := true;
end;

procedure Tf_TELEFONIA.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


    { h := Height;
     w := width ;

     Height := 0;
     width := 0;

     if h>w then m := h
     else m := w;

     p := 10;

     mc := floattostrf(abs(m/p),fffixed,5,0);
     m := strtoint(mc)-1;

     for s := 0 to m do begin

         if (s*p)<h then Height := s*p;
         if (s*p)<w then width := s*p;

     end;

     Height := h;
     width := w; }

end;

procedure Tf_TELEFONIA.q_PONTOSAfterScroll(DataSet: TDataSet);
begin
t_PONTOS.FindKey([q_PONTOSPONTO.ASSTRING]);
paneledt.Enabled := true;
btnSalvar.Enabled := true;
btncancelar.Enabled := true;
{if t_papelfechado.asstring='SIM' THEN begin
    paneledt.Enabled := FALSE;
    btnSalvar.Enabled := false;
    btncancelar.Enabled := false;
end;}
end;


procedure Tf_TELEFONIA.btnIncluirClick(Sender: TObject);
begin

btnSalvar.Enabled := true;
btncancelar.Enabled := true;
paneledt.Enabled := true;
t_PONTOS.append;
ipnovo := true;

end;

procedure Tf_TELEFONIA.btnCancelarClick(Sender: TObject);
begin
t_PONTOS.cancel;
q_PONTOS.close;
q_PONTOS.open;
q_PONTOS.last;
end;

procedure Tf_TELEFONIA.FormCreate(Sender: TObject);
begin
q_up1.ExecSQL;
t_PONTOS.open;
q_PONTOS.open;
q_setores.open;
Q_USU.OPEN;
Q_ID01.OPEN;
Q_ID02.OPEN;
end;

procedure Tf_TELEFONIA.btnSalvarClick(Sender: TObject);
var qip:string;

begin
q_up1.ExecSQL;
if ipnovo then begin
T_PONTOS2.close;
T_PONTOS2.open;
if T_PONTOS2.FindKey([dbedit1.text]) then begin
   showmessage(v_usuario+', PONTO já cadastrado!');
   exit;
end;
end;
ipnovo := false;
t_PONTOS.edit;
t_PONTOS.post;
qip := dbedit1.text;
q_PONTOS.close;
q_PONTOS.open;
q_PONTOS.locate('PONTO',qip,[]);

end;

procedure Tf_TELEFONIA.btnSairClick(Sender: TObject);
begin
f_TELEFONIA.close;
end;

procedure Tf_TELEFONIA.btnexcluirClick(Sender: TObject);
begin
  if messagedlg(v_usuario+', confirma exclusão? ',mtconfirmation,[mbno,mbyes],0)= mryes then begin
     t_PONTOS.delete;
     q_PONTOS.close;
     q_PONTOS.open;
  end;

end;

procedure Tf_TELEFONIA.sb_locClick(Sender: TObject);
begin
if not q_PONTOS.locate('PONTO',me_loc.text,[]) then showmessage(v_usuario+', PONTO não cadastrado!');

end;

procedure Tf_TELEFONIA.sbLimpaMoedaFOBClick(Sender: TObject);
begin
t_pontos.edit;
t_pontosusuario.asstring := '';
btnSalvarClick(f_telefonia);
end;

procedure Tf_TELEFONIA.SpeedButton2Click(Sender: TObject);
begin
t_pontos.edit;
t_pontosid01.asstring := '';
DBEDIT7.TEXT := '';
DBEDIT8.TEXT := '';
btnSalvarClick(f_telefonia);
end;

procedure Tf_TELEFONIA.SpeedButton1Click(Sender: TObject);
begin
t_pontos.edit;
t_pontosid02.asstring := '';
DBEDIT10.TEXT := '';
btnSalvarClick(f_telefonia);

end;

procedure Tf_TELEFONIA.SpeedButton3Click(Sender: TObject);
begin
t_pontos.edit;
t_pontosSETOR.asstring := '';
btnSalvarClick(f_telefonia);
end;

end.
