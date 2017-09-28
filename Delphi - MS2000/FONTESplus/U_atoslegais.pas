unit U_atoslegais;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask;

type
  Tf_atoslegais = class(TForm)
    t_Atos: TTable;
    dsAtos: TDataSource;
    dbgAtos: TDBGrid;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    btnSair: TBitBtn;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    dbedtNum: TDBEdit;
    dbedtEX: TDBEdit;
    q_Tribut: TQuery;
    q_Teste: TQuery;
    t_Parametros: TTable;
    dsParametros: TDataSource;
    q_Orgao: TQuery;
    dsOrgao: TDataSource;
    q_TipoAtoLegal: TQuery;
    dsTipoAtoLegal: TDataSource;
    dbcbTipoAto: TDBComboBox;
    dblcbTipoAtoLegal: TDBLookupComboBox;
    dblcbOrgao: TDBLookupComboBox;
    dbedtAno: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbedtobs: TDBEdit;
    Label7: TLabel;
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
    t_AtosEmpresa: TStringField;
    t_AtosFilial: TStringField;
    t_AtosTipo_Ato: TStringField;
    t_AtosNumero: TStringField;
    t_AtosEX: TStringField;
    t_AtosTipo_Ato_Legal: TStringField;
    t_AtosOrgao_Emissor: TStringField;
    t_AtosAno_Ato_Legal: TStringField;
    t_Atosobs: TStringField;
    q_TipoAtoLegalCodigo: TStringField;
    q_TipoAtoLegalDescricao: TStringField;
    q_OrgaoCodigo: TStringField;
    q_OrgaoDescricao: TStringField;
    q_TributCodArmazem: TStringField;
    q_TesteNumero: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure t_AtosAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_atoslegais: Tf_atoslegais;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_atoslegais.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

     {h := Height;
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

procedure Tf_atoslegais.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     q_Orgao.Close;
     q_TipoAtoLegal.Close;
     t_Atos.Close;

     Action := caFree;
     f_atoslegais := nil;
     f_mscomex.AtosLegais1.Enabled := True;
end;

procedure Tf_atoslegais.FormCreate(Sender: TObject);
begin
     t_parametros.Open;
     t_Atos.Open;
     q_TipoAtoLegal.Open;
     q_Orgao.Open;
end;

procedure Tf_atoslegais.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_atoslegais.btnNovoClick(Sender: TObject);
begin
  t_Atos.Append;
  t_atosempresa.asstring := t_parametrosempresa.asstring;
  t_atosfilial.asstring := t_parametrosfilial.asstring;
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 1;

  dbgAtos.Enabled := False;
  dbcbTipoAto.Enabled := True;
  dbedtNum.Enabled  := True;
  dbedtEX.Enabled := True;
  dblcbTipoAtoLegal.Enabled := True;
  dblcbOrgao.Enabled := True;
  dbedtAno.Enabled := True;
  dbedtobs.enabled := true;

  dbcbTipoAto.SetFocus;
end;

procedure Tf_atoslegais.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;

  dbgAtos.Enabled := False;
  dbcbTipoAto.Enabled := True;
  dbedtNum.Enabled  := True;
  dbedtEX.Enabled := True;
  dblcbTipoAtoLegal.Enabled := True;
  dblcbOrgao.Enabled := True;
  dbedtAno.Enabled := True;
  dbedtobs.enabled := true;
  dbcbTipoAto.ItemIndex := strtoint(t_atostipo_ato.asstring)-1; 
  t_Atos.Edit;
  dbcbTipoAto.SetFocus;
end;

procedure Tf_atoslegais.btnExcluirClick(Sender: TObject);
begin
//     q_Tribut.Params[0].AsString := t_AtosCodigo.AsString;
//     q_Tribut.Open;
//     if q_Tribut.RecordCount <> 0 then
//        MessageDlg('Existem Numerários de Processos com este Tipo de Numerário. Não pode ser excluído!', mtInformation,[mbOk], 0)
//     else
       if MessageDlg('Confirma exclusão deste Tipo de Numerário?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           t_Atos.Delete;
           ShowMessage('Tipo de Numerário excluído!');
         end;
//     q_Tribut.Close;
     btnNovo.SetFocus;
end;

procedure Tf_atoslegais.btnGravarClick(Sender: TObject);
var cont: integer;
begin
     if dbedtNum.Text = '' then begin
        MessageDlg('Digite o número do ato!', mtInformation,[mbOk], 0);
        dbedtNum.SetFocus;
     end
     else
         if dbcbtipoato.text = '' then begin
             MessageDlg('Selecione o tipo do ato!', mtInformation,[mbOk], 0);
             dbcbtipoato.SetFocus;
         end
         else begin
           cont := 0;
           if btnGravar.Tag = 1 then begin
              q_Teste.Params[0].AsString := t_AtosTipo_Ato.AsString;
              q_Teste.Params[1].AsString := t_AtosNumero.AsString;
              q_Teste.Open;
              cont := q_Teste.RecordCount;
           end;
           if cont <> 0 then begin
              MessageDlg('Já existe Ato Legal com este código!', mtInformation,[mbOk], 0);
              dbedtNum.SetFocus;
           end
           else begin
              t_atostipo_ato.asstring := copy(dbcbtipoato.text,1,1);
              t_Atos.Post;
              if btnGravar.Tag = 1 then
                 ShowMessage('Ato Legal incluído com sucesso!')
              else
                 ShowMessage('Ato Legal alterado com sucesso!');

              btnNovo.Enabled := True;
              btnAlterar.Enabled  := True;
              btnExcluir.Enabled  := True;
              btnGravar.Enabled   := False;
              btnCancelar.Enabled := False;
              btnGravar.Tag := 0;

              dbgAtos.Enabled := True;
              dbcbTipoAto.Enabled := False;
              dbedtNum.Enabled  := False;
              dbedtEX.Enabled := False;
              dblcbTipoAtoLegal.Enabled := False;
              dblcbOrgao.Enabled := False;
              dbedtAno.Enabled := False;
              dbedtobs.enabled := false;

              dbgAtos.SetFocus;
           end;
           q_Teste.Close
        end;
end;

procedure Tf_atoslegais.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnGravar.Tag := 0;

  dbgAtos.Enabled := True;
  dbcbTipoAto.Enabled := False;
  dbedtNum.Enabled  := False;
  dbedtEX.Enabled := False;
  dblcbTipoAtoLegal.Enabled := False;
  dblcbOrgao.Enabled := False;
  dbedtAno.Enabled := False;
  dbedtobs.enabled := false;

  t_Atos.Cancel;
  btnNovo.SetFocus;
end;

procedure Tf_atoslegais.t_AtosAfterOpen(DataSet: TDataSet);
begin
     if t_Atos.RecordCount = 0 then begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     end
     else begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     end
end;

end.
