unit u_ctrLOGICA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Db, DBTables, Mask, DBCtrls;

type
  Tf_LOGICA = class(TForm)
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
    DBEdit2: TDBEdit;
    Label6: TLabel;
    Label8: TLabel;
    q_ID01: TQuery;
    Q_ID02: TQuery;
    DS_ID02: TDataSource;
    DS_QID01: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    sbLimpaMoedaFOB: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label2: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label9: TLabel;
    DBEdit7: TDBEdit;
    Label10: TLabel;
    DBEdit8: TDBEdit;
    qpat: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    q_usu: TQuery;
    DS_QUSU: TDataSource;
    Label7: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    q_up1: TQuery;
    q_setorescodigo: TStringField;
    q_setoresdescricao: TStringField;
    t_PONTOS2PONTO: TStringField;
    t_PONTOS2Setor: TStringField;
    t_PONTOS2Usuario: TStringField;
    t_PONTOS2PATCH_PANEL: TStringField;
    t_PONTOS2PORTA_PATCH_PANEL: TSmallintField;
    t_PONTOS2SWITCH: TStringField;
    t_PONTOS2PORTA_SWITCH: TSmallintField;
    t_PONTOS2Descricao: TStringField;
    t_PONTOS2DetalheS: TStringField;
    t_PONTOS2Plaqueta: TStringField;
    q_usuUsuario: TStringField;
    q_usuNome_Completo: TStringField;
    q_usuNivel: TStringField;
    q_ID01codigo: TStringField;
    q_ID01descricao: TStringField;
    Q_ID02codigo: TStringField;
    Q_ID02descricao: TStringField;
    q_PONTOSPONTO: TStringField;
    q_PONTOSqset: TStringField;
    q_PONTOSqusu: TStringField;
    q_PONTOSqpatch: TStringField;
    q_PONTOSqp1: TSmallintField;
    q_PONTOSqswitch: TStringField;
    q_PONTOSqp2: TSmallintField;
    q_PONTOSPlaqueta: TStringField;
    q_PONTOSDescricao: TStringField;
    q_PONTOSDetalheS: TStringField;
    t_PONTOSPONTO: TStringField;
    t_PONTOSSetor: TStringField;
    t_PONTOSUsuario: TStringField;
    t_PONTOSPATCH_PANEL: TStringField;
    t_PONTOSPORTA_PATCH_PANEL: TSmallintField;
    t_PONTOSSWITCH: TStringField;
    t_PONTOSPORTA_SWITCH: TSmallintField;
    t_PONTOSDescricao: TStringField;
    t_PONTOSDetalheS: TStringField;
    t_PONTOSPlaqueta: TStringField;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_LOGICA: Tf_LOGICA;
  ipnovo: boolean;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_LOGICA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     f_logica := Nil;
     F_MSCOMEX.ControledePontosdeLgica1.Enabled := true;
end;

procedure Tf_LOGICA.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


   {  h := Height;
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

procedure Tf_LOGICA.q_PONTOSAfterScroll(DataSet: TDataSet);
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


procedure Tf_LOGICA.btnIncluirClick(Sender: TObject);
begin

btnSalvar.Enabled := true;
btncancelar.Enabled := true;
paneledt.Enabled := true;
t_PONTOS.append;
ipnovo := true;

end;

procedure Tf_LOGICA.btnCancelarClick(Sender: TObject);
begin
t_PONTOS.cancel;
q_PONTOS.close;
q_PONTOS.open;
q_PONTOS.last;

end;

procedure Tf_LOGICA.FormCreate(Sender: TObject);
begin
q_up1.ExecSQL;
t_PONTOS.open;
q_PONTOS.open;
q_setores.open;
q_usu.open;
Q_ID01.OPEN;
Q_ID02.OPEN;
end;

procedure Tf_LOGICA.btnSalvarClick(Sender: TObject);
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

procedure Tf_LOGICA.btnSairClick(Sender: TObject);
begin
f_logica.close;
end;

procedure Tf_LOGICA.btnexcluirClick(Sender: TObject);
begin
  if messagedlg(v_usuario+', confirma exclusão? ',mtconfirmation,[mbno,mbyes],0)= mryes then begin
     t_PONTOS.delete;
     q_PONTOS.close;
     q_PONTOS.open;
  end;

end;

procedure Tf_LOGICA.sb_locClick(Sender: TObject);
begin
if not q_PONTOS.locate('PONTO',me_loc.text,[]) then showmessage(v_usuario+', PONTO não cadastrado!');

end;

procedure Tf_LOGICA.sbLimpaMoedaFOBClick(Sender: TObject);
begin
t_pontos.edit;
t_pontospatch_panel.asstring := '';
dbedit2.Text := '';
btnSalvarClick(f_logica);
end;

procedure Tf_LOGICA.SpeedButton1Click(Sender: TObject);
begin
t_pontos.edit;
t_pontosswitch.asstring := '';
dbedit3.Text := '';
btnSalvarClick(f_logica);
end;

procedure Tf_LOGICA.SpeedButton3Click(Sender: TObject);
begin
t_pontos.edit;
t_pontosSETOR.asstring := '';
btnSalvarClick(f_logica);
end;

procedure Tf_LOGICA.SpeedButton2Click(Sender: TObject);
begin
t_pontos.edit;
t_pontosusuario.asstring := '';
btnSalvarClick(f_logica);
end;

end.
