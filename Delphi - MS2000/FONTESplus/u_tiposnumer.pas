unit u_tiposnumer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons;

type
  Tf_tiposnumer = class(TForm)
    dbgNum: TDBGrid;
    Label1: TLabel;
    dbedtCod: TDBEdit;
    Label2: TLabel;
    dbedtDesc: TDBEdit;
    Label3: TLabel;
    dblcbPlano: TDBLookupComboBox;
    Bevel2: TBevel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    Bevel3: TBevel;
    Bevel1: TBevel;
    q_Teste: TQuery;
    q_Plano: TQuery;
    dsPlano: TDataSource;
    q_Num: TQuery;
    t_TiposNum: TTable;
    dsTiposNum: TDataSource;
    t_Parametros: TTable;
    dsParametros: TDataSource;
    t_rateio: TTable;
    ds_trateio: TDataSource;
    Label4: TLabel;
    dblcbrateio: TDBLookupComboBox;
    pnlLocalizar: TPanel;
    Label14: TLabel;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    btnLocalizar: TBitBtn;
    BitBtn1: TBitBtn;
    qrLocaliza: TQuery;
    dsLocaliza: TDataSource;
    DBCheckBox1: TDBCheckBox;
    t_ParametrosEmpresa: TStringField;
    t_ParametrosFilial: TStringField;
    t_ParametrosNumerador_Processos: TStringField;
    t_ParametrosNumerador_Documentos: TStringField;
    t_ParametrosEndereco_ftp: TStringField;
    t_ParametrosUsuario_ftp: TStringField;
    t_ParametrosSenha_ftp: TStringField;
    t_ParametrosHost: TStringField;
    t_ParametrosVersao: TStringField;
    t_Parametroskeycrypt: TStringField;
    t_ParametrosHost_smtp: TStringField;
    t_ParametrosPorta_smtp: TSmallintField;
    t_ParametrosUsuario_smtp: TStringField;
    t_ParametrosSenha_smtp: TStringField;
    t_ParametrosNumerador_Transmittal: TStringField;
    t_ParametrosPATH_SERVER: TStringField;
    t_ParametrosAliq_PIS_PASEP: TFloatField;
    t_ParametrosAliq_COFINS: TFloatField;
    t_ParametrosAliq_ICMS: TFloatField;
    t_ParametrosAliq_ICMS_EXTRA: TFloatField;
    t_ParametrosNumerador_Sol_Cheques: TStringField;
    t_ParametrosNumerador_Sol_Reg: TStringField;
    t_ParametrosNumerador_Sol_Tracla: TStringField;
    t_TiposNumEmpresa: TStringField;
    t_TiposNumFilial: TStringField;
    t_TiposNumCodigo: TStringField;
    t_TiposNumDescricao: TStringField;
    t_TiposNumPlano_contas: TStringField;
    t_TiposNumRateio: TStringField;
    t_TiposNumContabilizaCC: TSmallintField;
    q_PlanoCodigo: TStringField;
    q_PlanoDescricao: TStringField;
    q_NumNumerario: TStringField;
    q_TesteCodigo: TStringField;
    t_rateioCODIGO: TStringField;
    t_rateioDESCRICAO: TStringField;
    qrLocalizaEmpresa: TStringField;
    qrLocalizaFilial: TStringField;
    qrLocalizaCodigo: TStringField;
    qrLocalizaDescricao: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure t_TiposNumAfterScroll(DataSet: TDataSet);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_tiposnumer: Tf_tiposnumer;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_tiposnumer.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I : Integer;
begin
  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;

  Action := caFree;
  f_TiposNumer := nil;
  f_mscomex.TiposdeNumerrios2.Enabled := True;
end;

procedure Tf_tiposnumer.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_tiposnumer.FormCreate(Sender: TObject);
begin
  t_TiposNum.Open;
  q_Plano.Open;
  t_rateio.Open;
end;

procedure Tf_tiposnumer.t_TiposNumAfterScroll(DataSet: TDataSet);
begin
  if t_TiposNum.RecordCount = 0
   then begin
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
   end
   else begin
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
   end;
end;

procedure Tf_tiposnumer.btnNovoClick(Sender: TObject);
begin
  t_TiposNum.Append;
  btnNovo.Enabled     := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 1;

  dbgNum.Enabled    := False;
  dbedtCod.Enabled  := True;
  dbedtDesc.Enabled := True;

  if v_nivel <= '5'
   then dblcbPlano.Enabled := True;

  dbedtCod.SetFocus;
  dbedtcod.Text := '';
end;

procedure Tf_tiposnumer.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled     := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;

  dbgNum.Enabled    := False;
  dbedtDesc.Enabled := True;

  if v_nivel <= '5'
   then begin
     dblcbPlano.Enabled  := True;
     dblcbrateio.Enabled := True;
   end;

  t_TiposNum.Edit;
  dbedtDesc.SetFocus;
end;

procedure Tf_tiposnumer.btnExcluirClick(Sender: TObject);
begin
  q_Num.Params[0].AsString := t_TiposNumCodigo.AsString;
  q_Num.Open;

  if q_Num.RecordCount <> 0
   then MessageDlg('Existem Numerários de Processos com este Tipo de Numerário. Não pode ser excluído!', mtInformation,[mbOk], 0)
   else if MessageDlg('Confirma exclusão deste Tipo de Numerário?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           t_TiposNum.Delete;
           ShowMessage('Tipo de Numerário excluído!');
         end;
         
  q_Num.Close;
  btnNovo.SetFocus;
end;

procedure Tf_tiposnumer.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled     := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnGravar.Tag := 0;

  dbgNum.Enabled     := True;
  dbedtCod.Enabled   := False;
  dbedtDesc.Enabled  := False;
  dblcbPlano.Enabled := False;

  t_TiposNum.Cancel;
  btnNovo.SetFocus;
end;

procedure Tf_tiposnumer.btnGravarClick(Sender: TObject);
var
  cont   : integer;
  aponta : String;
begin
  if dbedtCod.Text = ''
   then begin
     MessageDlg('Digite o código do Tipo de Numerário!', mtInformation,[mbOk], 0);
     dbedtCod.SetFocus;
   end
   else if dbedtDesc.Text = ''
         then begin
           MessageDlg('Digite a descrição do Tipo de Numerário!', mtInformation,[mbOk], 0);
           dbedtDesc.SetFocus;
         end
         else begin
           aponta := trim(dbedtcod.text);
           cont := 0;

           if btnGravar.Tag = 1
            then begin
              q_Teste.Params[0].AsString := t_TiposNumCodigo.AsString;
              q_Teste.Open;
              cont := q_Teste.RecordCount;
            end;

           if cont <> 0
            then begin
              MessageDlg('Já existe Tipo de Numerário com este código!', mtInformation,[mbOk], 0);
              dbedtCod.SetFocus;
            end
            else begin
              t_TiposNumEmpresa.AsString := '1';
              t_TiposNumfilial.AsString  := 'RJO';
              t_TiposNum.Post;

              if btnGravar.Tag = 1
               then Begin
                 if t_TiposNum.Locate('Codigo',aponta,[loCaseInsensitive]) = true
                  then ShowMessage('Tipo de Numerário incluído com sucesso!');
               end
               else Begin
                 if t_TiposNum.Locate('Codigo',aponta,[loCaseInsensitive]) = true
                  then ShowMessage('Tipo de Numerário alterado com sucesso!');
               end;

              btnNovo.Enabled     := True;
              btnAlterar.Enabled  := True;
              btnExcluir.Enabled  := True;
              btnGravar.Enabled   := False;
              btnCancelar.Enabled := False;
              btnGravar.Tag := 0;

              dbgNum.Enabled     := True;
              dbedtCod.Enabled   := False;
              dbedtDesc.Enabled  := False;
              dblcbPlano.Enabled := False;

              dbgNum.SetFocus;
            end;

           q_Teste.Close;
         end;
end;

procedure Tf_tiposnumer.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_tiposnumer.edtLocalizarChange(Sender: TObject);
begin
  qrLocaliza.Filter := 'Descricao = '''+ edtLocalizar.Text +'*''';

  if Length(edtLocalizar.Text) < 5
   then qrLocaliza.Filter := qrLocaliza.Filter +'OR codigo = '''+ edtLocalizar.Text +'%''';

  if edtLocalizar.Text = ''
   then qrLocaliza.Filtered := False
   else qrLocaliza.Filtered := True;
end;

procedure Tf_tiposnumer.btnLocalizarClick(Sender: TObject);
begin
  qrLocaliza.Open;

  pnlLocalizar.Top  := 15;
  pnlLocalizar.Left := 96;
  pnlLocalizar.Width := 425;
  pnlLocalizar.Height := 233;
  pnlLocalizar.Visible := True;

  edtlocalizar.Text := '';
  edtLocalizar.SetFocus;
end;

procedure Tf_tiposnumer.btnOKClick(Sender: TObject);
var
  aponta : String;
begin
  aponta := qrLocalizaCodigo.AsString;
  qrLocaliza.Filtered := False;
  
  t_TiposNum.Locate('Codigo',aponta,[loCaseInsensitive]);
  pnlLocalizar.Visible := False;
end;

end.
