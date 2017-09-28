unit u_tiposcustos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons;

type
  Tf_tiposcustos = class(TForm)
    t_Parametros: TTable;
    dsParametros: TDataSource;
    t_TiposCustos: TTable;
    dsTiposCustos: TDataSource;
    dbgCustos: TDBGrid;
    Label3: TLabel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel1: TBevel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    dbedtCod: TDBEdit;
    dbedtDesc: TDBEdit;
    dbcbRateio: TDBComboBox;
    q_Custos: TQuery;
    q_Teste: TQuery;
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
    t_TiposCustosEmpresa: TStringField;
    t_TiposCustosFilial: TStringField;
    t_TiposCustosCodigo: TStringField;
    t_TiposCustosDescricao: TStringField;
    t_TiposCustosrateio: TStringField;
    q_CustosTipo_Custo: TStringField;
    q_CustosTipo_Custo_1: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure t_TiposCustosAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_tiposcustos: Tf_tiposcustos;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_tiposcustos.FormClose(Sender: TObject;
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
  f_tiposcustos := nil;
  f_mscomex.Tiposdecustos2.Enabled := True;
end;

procedure Tf_tiposcustos.FormActivate(Sender: TObject);
begin
  Left := 0;
  Top  := 0;
end;

procedure Tf_tiposcustos.FormCreate(Sender: TObject);
begin
  t_Parametros.Open;
  t_TiposCustos.Open;
end;

procedure Tf_tiposcustos.btnNovoClick(Sender: TObject);
begin
  t_TiposCustos.Append;

  btnNovo.Enabled     := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 1;

  dbgCustos.Enabled  := False;
  dbedtCod.Enabled   := True;
  dbedtDesc.Enabled  := True;
  dbcbRateio.Enabled := True;

  dbedtCod.SetFocus;
end;

procedure Tf_tiposcustos.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled     := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnGravar.Tag := 2;

  dbgCustos.Enabled  := False;
  dbedtDesc.Enabled  := True;
  dbcbRateio.Enabled := True;

  t_TiposCustos.Edit;
  dbedtDesc.SetFocus;
end;

procedure Tf_tiposcustos.btnExcluirClick(Sender: TObject);
begin
  q_Custos.Params[0].AsString := t_TiposCustosCodigo.AsString;
  q_Custos.Params[1].AsString := t_TiposCustosCodigo.AsString;
  q_Custos.Open;
  
  if q_Custos.RecordCount <> 0
   then MessageDlg('Existem Custos com este Tipo de Custos. Não pode ser excluído!', mtInformation,[mbOk], 0)
   else if MessageDlg('Confirma exclusão deste Tipo de Custos?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           t_TiposCustos.Delete;
           ShowMessage('Tipo de Custos excluído!');
         end;

  q_Custos.Close;
  btnNovo.SetFocus;
end;

procedure Tf_tiposcustos.btnCancelarClick(Sender: TObject);
begin
  btnNovo.Enabled     := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;
  btnGravar.Tag := 0;

  dbgCustos.Enabled  := True;
  dbedtCod.Enabled   := False;
  dbedtDesc.Enabled  := False;
  dbcbRateio.Enabled := False;

  t_TiposCustos.Cancel;
  btnNovo.SetFocus;
end;

procedure Tf_tiposcustos.btnGravarClick(Sender: TObject);
var
  cont: integer;
begin
  if dbedtCod.Text = ''
   then begin
     MessageDlg('Digite o código do Tipo de Custos!', mtInformation,[mbOk], 0);
     dbedtCod.SetFocus;
   end
   else if dbedtDesc.Text = ''
         then begin
           MessageDlg('Digite a descrição do Tipo de Custos!', mtInformation,[mbOk], 0);
           dbedtDesc.SetFocus;
         end
         else begin
           cont := 0;

           if btnGravar.Tag = 1
            then begin
              q_Teste.Params[0].AsString := t_TiposCustosCodigo.AsString;
              q_Teste.Open;
              cont := q_Teste.RecordCount;
            end;

           if cont <> 0
            then begin
              MessageDlg('Já existe Tipo de Custos com este código!', mtInformation,[mbOk], 0);
              dbedtCod.SetFocus;
            end
            else begin
              t_TiposCustos.Post;

              if btnGravar.Tag = 1
               then ShowMessage('Tipo de Custos incluído com sucesso!')
               else ShowMessage('Tipo de Custos alterado com sucesso!');

              btnNovo.Enabled     := True;
              btnAlterar.Enabled  := True;
              btnExcluir.Enabled  := True;
              btnGravar.Enabled   := False;
              btnCancelar.Enabled := False;
              btnGravar.Tag := 0;

              dbgCustos.Enabled  := True;
              dbedtCod.Enabled   := False;
              dbedtDesc.Enabled  := False;
              dbcbRateio.Enabled := False;

              dbgCustos.SetFocus;
            end;

           q_Teste.Close
         end;
end;

procedure Tf_tiposcustos.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_tiposcustos.t_TiposCustosAfterScroll(DataSet: TDataSet);
begin
  if t_TiposCustos.RecordCount = 0
   then begin
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
   end
   else begin
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
   end
end;

end.
