unit u_ctrSENHAS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Db, DBTables, Mask, DBCtrls,
  Qrctrls, QuickRpt;

type
  Tf_ctrlSENHAS = class(TForm)
    Panel2: TPanel;
    pnlPrinc: TPanel;
    pnlMenu: TPanel;
    btnSalvar: TBitBtn;
    Panel6: TPanel;
    dbG_papeis: TDBGrid;
    q_senhas: TQuery;
    ds_qIPS: TDataSource;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    t_senhas: TTable;
    ds_tPONTOS: TDataSource;
    paneledt: TPanel;
    me_loc: TMaskEdit;
    sb_loc: TSpeedButton;
    Label3: TLabel;
    q_senhasUsuario: TStringField;
    q_senhasNome_Completo: TStringField;
    q_senhasSenha_MS2000: TStringField;
    q_senhasData_validade_senha: TDateTimeField;
    q_senhasSenha_Rede: TStringField;
    q_senhasSenha_Internet: TStringField;
    q_senhasSenha_Email: TStringField;
    q_senhasSenha_Acesso: TStringField;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit3: TDBEdit;
    Label5: TLabel;
    DBEdit4: TDBEdit;
    q_up1: TQuery;
    q_up2: TQuery;
    q_up3: TQuery;
    BitBtn1: TBitBtn;
    qsenhas: TQuickRep;
    DetailBand1: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    q_senhasemail: TStringField;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    BitBtn2: TBitBtn;
    t_senhasUsuario: TStringField;
    t_senhasSenha_MS2000: TStringField;
    t_senhasSenha_Rede: TStringField;
    t_senhasSenha_Internet: TStringField;
    t_senhasSenha_Email: TStringField;
    t_senhasSenha_Acesso: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure q_senhasAfterScroll(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure sb_locClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_ctrlSENHAS: Tf_ctrlSENHAS;
  ipnovo: boolean;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_ctrlSENHAS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     f_ctrlsenhas := Nil;
     F_MSCOMEX.ControledeSenhasdeUsurios1.Enabled := true;
end;

procedure Tf_ctrlSENHAS.q_senhasAfterScroll(DataSet: TDataSet);
begin
t_senhas.FindKey([q_senhasusuario.ASSTRING]);
paneledt.Enabled := true;
btnSalvar.Enabled := true;
btncancelar.Enabled := true;
end;


procedure Tf_ctrlSENHAS.btnIncluirClick(Sender: TObject);
begin

btnSalvar.Enabled := true;
btncancelar.Enabled := true;
paneledt.Enabled := true;


end;

procedure Tf_ctrlSENHAS.btnCancelarClick(Sender: TObject);
begin
t_senhas.cancel;
q_senhas.close;
q_senhas.open;
q_senhas.last;
end;

procedure Tf_ctrlSENHAS.FormCreate(Sender: TObject);
begin
q_up1.ExecSQL;
q_up2.ExecSQL;
q_up3.ExecSQL;

t_senhas.open;
q_senhas.open;

end;

procedure Tf_ctrlSENHAS.btnSalvarClick(Sender: TObject);
var qip:string;

begin
ipnovo := false;
t_senhas.edit;
t_senhas.post;
qip := t_senhasusuario.asstring;
q_senhas.close;
q_senhas.open;
q_senhas.locate('usuario',qip,[]);

end;

procedure Tf_ctrlSENHAS.btnSairClick(Sender: TObject);
begin
f_ctrlsenhas.close;
end;

procedure Tf_ctrlSENHAS.btnexcluirClick(Sender: TObject);
begin
  if messagedlg(v_usuario+', confirma exclusão? ',mtconfirmation,[mbno,mbyes],0)= mryes then begin
     t_senhas.delete;
     q_senhas.close;
     q_senhas.open;
  end;

end;

procedure Tf_ctrlSENHAS.sb_locClick(Sender: TObject);
begin
if not q_senhas.locate('usuario',me_loc.text,[loPartialKey,loCaseInsensitive]) then showmessage(v_usuario+', Usuário não localizado!');

end;

procedure Tf_ctrlSENHAS.BitBtn1Click(Sender: TObject);
var qsenha,qip:string;
I,J: Integer;
begin
if MessageDlg(v_usuario+', confirma geração de novas senhas?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin

   t_senhas.first;
   while not t_senhas.eof do begin


                 qsenha := '';
                 for J := 1 to 6 do begin
                     I := random(255);
                     while ((I < 48) or (I > 57) and (I < 97) or (I > 122)) do begin
                           I := random(255);
                     end;
                     qsenha := qsenha + CHR(I);
                 end;

                 t_senhas.edit;
                 t_senhassenha_rede.asstring      := qsenha;
                 t_senhassenha_internet.asstring  := qsenha;
                 t_senhassenha_email.asstring     := qsenha;
                 t_senhas.post;


          t_senhas.next;
    end;
    qip := t_senhasusuario.asstring;
    q_senhas.close;
    q_senhas.open;
q_senhas.locate('usuario',qip,[]);

end;

end;

procedure Tf_ctrlSENHAS.BitBtn2Click(Sender: TObject);
begin
qsenhas.Preview;
end;

procedure Tf_ctrlSENHAS.FormActivate(Sender: TObject);
begin
     Left := 1;
     Top  := 1;

end;

end.
