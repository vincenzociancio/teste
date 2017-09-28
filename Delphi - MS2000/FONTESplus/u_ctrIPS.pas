unit u_ctrIPS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Db, DBTables, Mask, DBCtrls;

type
  Tf_IPS = class(TForm)
    Panel2: TPanel;
    pnlPrinc: TPanel;
    pnlMenu: TPanel;
    btnIncluir: TBitBtn;
    btnSalvar: TBitBtn;
    Panel6: TPanel;
    dbG_papeis: TDBGrid;
    q_IPS: TQuery;
    ds_qIPS: TDataSource;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    t_IPS: TTable;
    ds_tIPS: TDataSource;
    paneledt: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    q_setores: TQuery;
    q_setorescodigo: TStringField;
    q_setoresdescricao: TStringField;
    ds_qsetores: TDataSource;
    btnexcluir: TBitBtn;
    t_IPS2: TTable;
    SmallintField1: TSmallintField;
    SmallintField2: TSmallintField;
    SmallintField3: TSmallintField;
    SmallintField4: TSmallintField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    me_loc: TMaskEdit;
    sb_loc: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    q_pat: TQuery;
    q_patPlaqueta: TStringField;
    q_patSetor: TStringField;
    q_patQDESC: TStringField;
    q_patdetalhes: TStringField;
    q_up1: TQuery;
    q_up2: TQuery;
    q_up3: TQuery;
    q_IPSIP1: TSmallintField;
    q_IPSIP2: TSmallintField;
    q_IPSIP3: TSmallintField;
    q_IPSIP4: TSmallintField;
    q_IPSIP: TStringField;
    q_IPSSETOR: TStringField;
    q_IPSqusu: TStringField;
    q_IPSDescricao: TStringField;
    q_IPSDetalheS: TStringField;
    q_IPSGATEWAY: TStringField;
    q_IPSDNS1: TStringField;
    q_IPSDNS2: TStringField;
    q_IPSPROXY: TStringField;
    t_IPSIP1: TSmallintField;
    t_IPSIP2: TSmallintField;
    t_IPSIP3: TSmallintField;
    t_IPSIP4: TSmallintField;
    t_IPSSetor: TStringField;
    t_IPSUsuario: TStringField;
    t_IPSGATEWAY: TStringField;
    t_IPSDNS1: TStringField;
    t_IPSDNS2: TStringField;
    t_IPSPROXY: TStringField;
    t_IPSDescricao: TStringField;
    t_IPSDetalheS: TStringField;
    t_IPSPlaqueta: TStringField;
    q_usu: TQuery;
    q_usuUsuario: TStringField;
    q_usuNome_Completo: TStringField;
    q_usuNivel: TStringField;
    DS_QUSU: TDataSource;
    Label4: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    SpeedButton3: TSpeedButton;
    Label9: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    sbLimpaMoedaFOB: TSpeedButton;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    DBEdit9: TDBEdit;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    q_IPSMASCARA: TStringField;
    t_IPSMASCARA: TStringField;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    t_IPSICONE: TStringField;
    t_IPS2Usuario: TStringField;
    t_IPS2MASCARA: TStringField;
    t_IPS2GATEWAY: TStringField;
    t_IPS2PROXY: TStringField;
    t_IPS2DNS1: TStringField;
    t_IPS2DNS2: TStringField;
    t_IPS2ICONE: TStringField;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    q_IPSICONE: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure q_IPSAfterScroll(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure sb_locClick(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure sbLimpaMoedaFOBClick(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_IPS: Tf_IPS;
  ipnovo: boolean;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_IPS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     f_IPS := Nil;
     F_MSCOMEX.ControledeIPS1.Enabled := true;
end;

procedure Tf_IPS.FormActivate(Sender: TObject);
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
     width := w;  }

end;

procedure Tf_IPS.q_IPSAfterScroll(DataSet: TDataSet);
begin
t_IPS.FindKey([q_IPSIP1.ASINTEGER,q_IPSIP2.ASINTEGER,q_IPSIP3.ASINTEGER,q_IPSIP4.ASINTEGER]);
paneledt.Enabled := true;
btnSalvar.Enabled := true;
btncancelar.Enabled := true;
{if t_papelfechado.asstring='SIM' THEN begin
    paneledt.Enabled := FALSE;
    btnSalvar.Enabled := false;
    btncancelar.Enabled := false;
end;}
end;


procedure Tf_IPS.btnIncluirClick(Sender: TObject);
begin

btnSalvar.Enabled := true;
btncancelar.Enabled := true;
paneledt.Enabled := true;
t_IPS.append;
ipnovo := true;

end;

procedure Tf_IPS.btnCancelarClick(Sender: TObject);
begin
t_IPS.cancel;
q_IPS.close;
q_IPS.open;
q_IPS.last;
end;

procedure Tf_IPS.FormCreate(Sender: TObject);
begin
//q_up3.ExecSQL;
q_up1.ExecSQL;
//q_up2.ExecSQL;

t_IPS.open;
q_IPS.open;
q_setores.open;
q_usu.open;
end;

procedure Tf_IPS.btnSalvarClick(Sender: TObject);
var qip:string;

begin
q_up1.ExecSQL;
if ipnovo then begin
t_IPS2.close;
t_IPS2.open;
if t_IPS2.FindKey([dbedit1.text,dbedit2.text,dbedit3.text,dbedit4.text]) then begin
   showmessage(v_usuario+', IP já cadastrado!');
   exit;
end;
end;
ipnovo := false;
t_IPS.edit;
t_IPS.post;
qip := dbedit1.text+'.'+dbedit2.text+'.'+dbedit3.text+'.'+dbedit4.text;
q_IPS.close;
q_IPS.open;
q_ips.locate('ip',qip,[]);

end;

procedure Tf_IPS.btnSairClick(Sender: TObject);
begin
f_ips.close;
end;

procedure Tf_IPS.btnexcluirClick(Sender: TObject);
begin
  if messagedlg(v_usuario+', confirma exclusão? ',mtconfirmation,[mbno,mbyes],0)= mryes then begin
     t_IPS.delete;
     q_IPS.close;
     q_IPS.open;
  end;

end;

procedure Tf_IPS.sb_locClick(Sender: TObject);
begin
if not q_ips.locate('ip',me_loc.text,[]) then showmessage(v_usuario+', IP não cadastrado!');
if not q_ips.locate('qusu',me_loc.text,[loPartialKey,loCaseInsensitive]) then showmessage(v_usuario+', usuário não cadastrado!');
end;

procedure Tf_IPS.DBEdit5Exit(Sender: TObject);
begin
if dbedit5.text='' then exit;
q_pat.close;
q_pat.params[0].asstring := dbedit5.text;
q_pat.open;
if q_pat.RecordCount > 0 then begin
   t_IPS.edit;
   T_IPSsetor.asstring     := q_patsetor.asstring;
   T_IPSdescricao.asstring := q_patqdesc.asstring;
   t_ipsdetalhes.asstring  := q_patdetalhes.asstring;

end
else begin
   Showmessage(v_usuario+', patrimônio não encontrado!');
   dbedit5.text := '';
   dbedit5.SetFocus;
end;


end;

procedure Tf_IPS.SpeedButton3Click(Sender: TObject);
begin
t_ips.edit;
t_ipssetor.AsString := '';
btnSalvarClick(f_ips);
end;

procedure Tf_IPS.sbLimpaMoedaFOBClick(Sender: TObject);
begin
t_ips.edit;
t_ipsusuario.AsString := '';
btnSalvarClick(f_ips);
end;

procedure Tf_IPS.DBLookupComboBox4Exit(Sender: TObject);
begin
btnSalvarClick(f_ips);
end;

end.
