unit uAcoesCorPre;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, ExtCtrls, Grids, DBGrids, Mask, Buttons, DBCtrls;

type
  TfrmAcoesCoPre = class(TForm)
    lblNorma: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    pnlBaixo: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    qrTipo_NC: TQuery;
    qrTipo_NCCodigo: TStringField;
    qrTipo_NCDescricao: TStringField;
    dsTipo_NC: TDataSource;
    dbedtNorma: TDBEdit;
    dbLcTipo: TDBLookupComboBox;
    dbrgReal_potencial: TDBRadioGroup;
    dbgConformidade: TDBGrid;
    dbcmbLocal: TDBComboBox;
    dbedtDtdisposicao: TDBEdit;
    dbedtResponsavel: TDBEdit;
    dbedtUsuario: TDBEdit;
    dbedtData: TDBEdit;
    GroupBox3: TGroupBox;
    Label8: TLabel;
    Label9: TLabel;
    dbedtRespAnalise: TDBEdit;
    dbEdtDTAnalise: TDBEdit;
    GroupBox4: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    dbedtRespImplementacao: TDBEdit;
    dbedtDtImplementacao: TDBEdit;
    GroupBox5: TGroupBox;
    dbedtDtAcao: TDBEdit;
    dbedtAprovadoAcao: TDBEdit;
    Label14: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label23: TLabel;
    tbNaoConformidade: TTable;
    dsTabela_Conformidade: TDataSource;
    dbMmDisposicao: TDBMemo;
    dbmmConformidade: TDBMemo;
    dbMmAnaliseCausas: TDBMemo;
    dbMmImplementacao: TDBMemo;
    pnlLocTipo: TPanel;
    btnFiltrar: TBitBtn;
    Panel2: TPanel;
    cmbTipo: TComboBox;
    BtnFiltro: TBitBtn;
    btnFechar: TBitBtn;
    cmbLocal: TComboBox;
    Label5: TLabel;
    Label24: TLabel;
    GroupBox6: TGroupBox;
    Label12: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    dbedtVerifEficacia: TDBEdit;
    dbedtEncImpEficacia: TDBEdit;
    dbedtDtEncImpEficacia: TDBEdit;
    dbMmVerifImplementacao: TDBMemo;
    DBGrid1: TDBGrid;
    Label13: TLabel;
    pnlAcao: TPanel;
    btnOk: TBitBtn;
    Panel3: TPanel;
    btnClose: TBitBtn;
    Label15: TLabel;
    Label16: TLabel;
    Label21: TLabel;
    edtResponsavel: TEdit;
    edtPrazo: TEdit;
    btnIncluirAcao: TButton;
    qrInsertAcao: TQuery;
    dsProposta: TDataSource;
    qrProposta: TQuery;
    edtAcao: TEdit;
    lblNumero: TLabel;
    qrUsuario: TQuery;
    qrUsuarioNome_Completo: TStringField;
    dbtNumero: TDBText;
    btnAlterarAcao: TBitBtn;
    qrPropostaDesc_Acoes_Corretiva: TStringField;
    qrPropostaResp_Acoes_Corretiva: TStringField;
    qrPropostaPrazo_Acoes_Corretiva: TDateTimeField;
    qrUpdateAcao: TQuery;
    qrPropostaSequencial: TAutoIncField;
    lblTipo: TLabel;
    Label25: TLabel;
    dgrbAcao: TDBRadioGroup;
    dbMmAcao: TDBMemo;
    tbNaoConformidadeSequencial: TAutoIncField;
    tbNaoConformidadeResponsavel_identif: TStringField;
    tbNaoConformidadedata: TDateTimeField;
    tbNaoConformidadeRequisito_norma: TStringField;
    tbNaoConformidadeLocal: TStringField;
    tbNaoConformidadeReal_Potencial: TIntegerField;
    tbNaoConformidadeDescricao_conformidade: TMemoField;
    tbNaoConformidadeDescricao_disposicao: TMemoField;
    tbNaoConformidadeResp_disposicao: TStringField;
    tbNaoConformidadeData_diposicao: TDateTimeField;
    tbNaoConformidadetipo_NC: TIntegerField;
    tbNaoConformidadeDesc_Analise_Causas: TMemoField;
    tbNaoConformidadeResp_Analise_Causas: TStringField;
    tbNaoConformidadeDt_Analise_Causas: TDateTimeField;
    tbNaoConformidadeAprovado_Acoes_Corretiva: TStringField;
    tbNaoConformidadeDt_Acoes_Corretiva: TDateTimeField;
    tbNaoConformidadeDes_Implementacao: TMemoField;
    tbNaoConformidadeResp_Implementacao: TStringField;
    tbNaoConformidadeDT_Implementacao: TDateTimeField;
    tbNaoConformidadeVerifica_Implementacao: TStringField;
    tbNaoConformidadeVerifica_Eficacia: TStringField;
    tbNaoConformidadeVerificado_por: TStringField;
    tbNaoConformidadeDT_Verificado_por: TDateTimeField;
    tbNaoConformidadeEncerrado_por: TStringField;
    tbNaoConformidadeDT_Encerrado_por: TDateTimeField;
    tbNaoConformidadeDesc_Analise_Risco: TMemoField;
    tbNaoConformidadeAnalise_Risco: TIntegerField;
    dbcmbTipoAcao: TDBComboBox;
    tbNaoConformidadeTipo_Acao: TStringField;
    cmbTipoAcao: TComboBox;
    Label26: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbedtDtdisposicaoKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtDTAnaliseKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtDtImplementacaoKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtDtAcaoKeyPress(Sender: TObject; var Key: Char);
    procedure dbedtDtEncImpEficaciaKeyPress(Sender: TObject;
      var Key: Char);
    procedure BtnFiltroClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure edtPrazoKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirAcaoClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure tbNaoConformidadeAfterScroll(DataSet: TDataSet);
    procedure dbedtDataKeyPress(Sender: TObject; var Key: Char);
    procedure dbmmConformidadeKeyPress(Sender: TObject; var Key: Char);
    procedure dbMmAnaliseCausasKeyPress(Sender: TObject; var Key: Char);
    procedure dbMmImplementacaoKeyPress(Sender: TObject; var Key: Char);
    procedure dbMmDisposicaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnAlterarAcaoClick(Sender: TObject);
    procedure dbMmAcaoKeyPress(Sender: TObject; var Key: Char);
    procedure cmbTipoAcaoChange(Sender: TObject);
    procedure cmbLocalChange(Sender: TObject);
    procedure cmbTipoChange(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAcoesCoPre: TfrmAcoesCoPre;
  op : integer;
implementation
  uses U_MSCOMEX;
{$R *.DFM}

procedure TfrmAcoesCoPre.FormActivate(Sender: TObject);
begin

 If tbNaoConformidade.State = dsInactive Then tbNaoConformidade.Open;

  { With qrNaoConformidade Do Begin
        Close;
        Open;
   End;  }

   With qrProposta Do Begin
        Close;
        Open;
   End;

   With qrTipo_NC Do Begin
        Close;
        Open;
   End;

 op := 0;

end;
procedure TfrmAcoesCoPre.btnSairClick(Sender: TObject);
begin
Close;
end;

procedure TfrmAcoesCoPre.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     f_mscomex.ControleNaoConformidade.Enabled := True;
     frmAcoesCoPre := Nil;
     Action := caFree;
end;

procedure TfrmAcoesCoPre.btnSalvarClick(Sender: TObject);
begin

   dbtNumero.Visible := True;
   lblNumero.visible := False;

   dbgConformidade.Enabled:= True;
   btnIncluirAcao.Enabled := True;
   dbedtData.Enabled := False;
   dbedtUsuario.Enabled := False;
   dbedtNorma.Enabled := False;
   dbcmbTipoAcao.Enabled := False;
   dbLcTipo.Enabled := False;
   dbcmbLocal.Enabled := False;
 //  dbmmConformidade.Enabled := False;
  // dbMmDisposicao.Enabled := False;
   dbedtResponsavel.Enabled := False;
   dbedtDtdisposicao.Enabled := False;
 //  dbMmAnaliseCausas.Enabled := False;
   dbedtRespAnalise.Enabled := False;
   dbEdtDTAnalise.Enabled := False;
   dbrgReal_potencial.Enabled:= False;
   dgrbAcao.Enabled := False;
   dbedtAprovadoAcao.Enabled := False;
   dbedtDtAcao.Enabled := False;
 //  dbMmImplementacao.Enabled := False;
   dbedtRespImplementacao.Enabled := False;
   dbedtDtImplementacao.Enabled := False;
   dbMmVerifImplementacao.Enabled := False;
   dbedtVerifEficacia.Enabled := False;
   dbedtEncImpEficacia.Enabled := False;
   dbedtDtEncImpEficacia.Enabled := False;
   btnAlterar.Enabled:= True;
   btnSair.Enabled := True;
   btnIncluir.Enabled := True;
   btnSalvar.Enabled := False;;
   btnCancelar.Enabled := False;
   btnAlterarAcao.Enabled := true;
   
     try
      tbNaoConformidade.post;
     except
     on E : Exception do
      ShowMessage( E.Message );
     end;
     tbNaoConformidade.close;
     tbNaoConformidade.Open;   
     ShowMessage('Registro Cadastrado!');
  op := 0;
end;

procedure TfrmAcoesCoPre.btnAlterarClick(Sender: TObject);
begin
   dbgConformidade.Enabled:= False;
   btnAlterarAcao.Enabled := False;
   btnIncluirAcao.Enabled := False;
   dbedtNorma.Enabled := True;
   dbcmbTipoAcao.Enabled := True;
   dbLcTipo.Enabled := True;
   dbcmbLocal.Enabled := True;
   dbmmConformidade.Enabled := True;
   dbMmDisposicao.Enabled := True;
   dbedtResponsavel.Enabled := True;
   dbedtDtdisposicao.Enabled := True;
   dbMmAnaliseCausas.Enabled := True;
   dbedtRespAnalise.Enabled := True;
   dbEdtDTAnalise.Enabled := True;
   dbrgReal_potencial.Enabled:= True;
   dgrbAcao.Enabled := True;
   dbedtAprovadoAcao.Enabled := True;
   dbedtDtAcao.Enabled := True;
   dbMmImplementacao.Enabled := True;
   dbedtRespImplementacao.Enabled := True;
   dbedtDtImplementacao.Enabled := True;
   dbMmVerifImplementacao.Enabled := True;
   dbedtVerifEficacia.Enabled := True;
   dbedtEncImpEficacia.Enabled := True;
   dbedtDtEncImpEficacia.Enabled := True;
   btnIncluir.Enabled:= False;
   btnAlterar.Enabled:= False;
   btnSair.Enabled := False;
   btnSalvar.Enabled := True;
   btnCancelar.Enabled := True;
   dbedtData.Enabled := True;
   dbedtUsuario.Enabled:= True;

   tbNaoConformidade.edit;
   op := 2;
 
end;

procedure TfrmAcoesCoPre.btnIncluirClick(Sender: TObject);
begin
      //tbNaoConformidade.Filtered := False;
      tbNaoConformidade.Filter := '';
      tbNaoConformidade.Close;
      tbNaoConformidade.Open;
      tbNaoConformidade.Last;

      lblNumero.Caption := IntToStr(strtoint(tbNaoConformidadeSequencial.AsString) + 1);
      lblNumero.visible := True;
      dbtNumero.Visible := False;
      tbNaoConformidade.Insert;

       dbgConformidade.Enabled:= False;
       btnAlterarAcao.Enabled := False;
       btnIncluirAcao.Enabled := False;
       dbedtNorma.Enabled := True;
       dbcmbTipoAcao.Enabled := True;
       dbLcTipo.Enabled := True;
       dbcmbLocal.Enabled := True;
       dbmmConformidade.Enabled := True;
       dbMmDisposicao.Enabled := True;
       dbedtResponsavel.Enabled := True;
       dbedtDtdisposicao.Enabled := True;
       dbMmAnaliseCausas.Enabled := True;
       dbedtRespAnalise.Enabled := True;
       dbEdtDTAnalise.Enabled := True;
       dbrgReal_potencial.Enabled:= True;
       dgrbAcao.Enabled := True;
       dbedtAprovadoAcao.Enabled := True;
       dbedtDtAcao.Enabled := True;
       dbMmImplementacao.Enabled := True;
       dbedtRespImplementacao.Enabled := True;
       dbedtDtImplementacao.Enabled := True;
       dbMmVerifImplementacao.Enabled := True;
       dbedtVerifEficacia.Enabled := True;
       dbedtEncImpEficacia.Enabled := True;
       dbedtDtEncImpEficacia.Enabled := True;
       btnIncluir.Enabled:= False;
       btnAlterar.Enabled:= False;
       btnSair.Enabled := False;
       btnSalvar.Enabled := True;
       btnCancelar.Enabled := True;
       dbedtData.Enabled := True;
       dbedtUsuario.Enabled := True;

      qrUsuario.close;
      qrUsuario.ParamByName('usu').Value := v_usuario;
      qrUsuario.open;
      dbedtUsuario.Text := qrUsuarioNome_Completo.AsString ;
      dbedtData.Text := DateToStr(Date());
      op := 1;
  
end;

procedure TfrmAcoesCoPre.btnCancelarClick(Sender: TObject);
begin


   lblNumero.visible := False;
   dbtNumero.Visible := True;

   dbgConformidade.Enabled:= True;
   btnIncluirAcao.Enabled := True;
   dbedtData.Enabled := False;
   dbedtUsuario.Enabled := False;
   dbedtNorma.Enabled := False;
   dbcmbTipoAcao.Enabled := False;
   dbLcTipo.Enabled := False;
   dbcmbLocal.Enabled := False;
  // dbmmConformidade.Enabled := False;
  // dbMmDisposicao.Enabled := False;
   dbedtResponsavel.Enabled := False;
   dbedtDtdisposicao.Enabled := False;
  // dbMmAnaliseCausas.Enabled := False;
   dbedtRespAnalise.Enabled := False;
   dbEdtDTAnalise.Enabled := False;
   dbrgReal_potencial.Enabled:= False;
   dgrbAcao.Enabled := False;
   dbedtAprovadoAcao.Enabled := False;
   dbedtDtAcao.Enabled := False;
  // dbMmImplementacao.Enabled := False;
   dbedtRespImplementacao.Enabled := False;
   dbedtDtImplementacao.Enabled := False;
   dbMmVerifImplementacao.Enabled := False;
   dbedtVerifEficacia.Enabled := False;
   dbedtEncImpEficacia.Enabled := False;
   dbedtDtEncImpEficacia.Enabled := False;
   btnAlterar.Enabled:= True;
   btnSair.Enabled := True;
   btnIncluir.Enabled := True;
   btnSalvar.Enabled := False;;
   btnCancelar.Enabled := False;
   btnAlterarAcao.Enabled := true;
   
   tbNaoConformidade.Cancel;
   op := 0;
end;

procedure TfrmAcoesCoPre.dbedtDtdisposicaoKeyPress(Sender: TObject;
  var Key: Char );
  var data:TDate;
begin

if not (Key in [#8]) then begin
  If Length(dbedtDtdisposicao.text) = 2 Then begin
   dbedtDtdisposicao.text := dbedtDtdisposicao.text + '/';
   dbedtDtdisposicao.SelStart := 4 ;
  End;
  If Length(dbedtDtdisposicao.text) = 5 Then begin
   dbedtDtdisposicao.text := dbedtDtdisposicao.text + '/';
   dbedtDtdisposicao.SelStart := 7 ;
  End;
  If Length(dbedtDtdisposicao.text)= 9 Then begin
    try
      data := StrToDate(dbedtDtdisposicao.text);
    except
      showMessage('Data invalida');
    End;
  End;
End;
  if not (Key in ['0'..'9',#8]) then
  abort;
end;

procedure TfrmAcoesCoPre.dbEdtDTAnaliseKeyPress(Sender: TObject;
  var Key: Char);
  var data:TDate;
begin

if not (Key in [#8]) then begin
  If Length(dbEdtDTAnalise.text) = 2 Then begin
   dbEdtDTAnalise.text := dbEdtDTAnalise.text + '/';
   dbEdtDTAnalise.SelStart := 4 ;
  End;
  If Length(dbEdtDTAnalise.text) = 5 Then begin
   dbEdtDTAnalise.text := dbEdtDTAnalise.text + '/';
   dbEdtDTAnalise.SelStart := 7 ;
  End;
  If Length(dbEdtDTAnalise.text)= 9 Then begin
    try
      data := StrToDate(dbEdtDTAnalise.text);
    except
      showMessage('Data invalida');
    End;
  End;
End;
   if not (Key in ['0'..'9',#8]) then
     abort;
end;
procedure TfrmAcoesCoPre.dbedtDtImplementacaoKeyPress(Sender: TObject;
  var Key: Char);
  var data:TDate;
begin

if not (Key in [#8]) then begin
  If Length(dbedtDtImplementacao.text) = 2 Then begin
   dbedtDtImplementacao.text := dbedtDtImplementacao.text + '/';
   dbedtDtImplementacao.SelStart := 4 ;
  End;
  If Length(dbedtDtImplementacao.text) = 5 Then begin
   dbedtDtImplementacao.text := dbedtDtImplementacao.text + '/';
   dbedtDtImplementacao.SelStart := 7 ;
  End;
  If Length(dbedtDtImplementacao.text)= 9 Then begin
    try
      data := StrToDate(dbedtDtImplementacao.text);
    except
      showMessage('Data invalida');
    End;
  End;
End;
  if not (Key in ['0'..'9',#8]) then
   abort;
end;

procedure TfrmAcoesCoPre.dbedtDtAcaoKeyPress(Sender: TObject;
  var Key: Char);
  var data:TDate;
begin

if not (Key in [#8]) then begin
  If Length(dbedtDtAcao.text) = 2 Then begin
   dbedtDtAcao.text := dbedtDtAcao.text + '/';
   dbedtDtAcao.SelStart := 4 ;
  End;
  If Length(dbedtDtAcao.text) = 5 Then begin
   dbedtDtAcao.text := dbedtDtAcao.text + '/';
   dbedtDtAcao.SelStart := 7 ;
  End;
  If Length(dbedtDtAcao.text)= 9 Then begin
    try
      data := StrToDate(dbedtDtAcao.text);
    except
      showMessage('Data invalida');
    End;
  End;
End;
  if not (Key in ['0'..'9',#8]) then
  abort;
end;

procedure TfrmAcoesCoPre.dbedtDtEncImpEficaciaKeyPress(Sender: TObject;
  var Key: Char);
  var
  data:TDate;
begin
if not (Key in [#8]) then begin
  If Length(dbedtDtEncImpEficacia.text) = 2 Then begin
   dbedtDtEncImpEficacia.text := dbedtDtEncImpEficacia.text + '/';
   dbedtDtEncImpEficacia.SelStart := 4 ;
  End;
  If Length(dbedtDtEncImpEficacia.text) = 5 Then begin
   dbedtDtEncImpEficacia.text := dbedtDtEncImpEficacia.text + '/';
   dbedtDtEncImpEficacia.SelStart := 7 ;
  End;
  If Length(dbedtDtEncImpEficacia.text)= 9 Then begin
    try
      data := StrToDate(dbedtDtEncImpEficacia.Text);
    except
      showMessage('Data invalida');
    End;
  End;
End;
  if not (Key in ['0'..'9',#8]) then
     abort;
end;

procedure TfrmAcoesCoPre.BtnFiltroClick(Sender: TObject);
begin
  qrTipo_NC.close;
  qrTipo_NC.Open;
  qrTipo_NC.first;
  cmbTipo.items.clear;
  while not qrTipo_NC.eof do
  begin
  cmbTipo.items.add(qrTipo_NCDescricao.AsString);
  qrTipo_NC.next;
  end;
  pnlLocTipo.Visible := True;
  cmbLocal.Text := '';
  cmbTipo.Text :='';
  cmbTipoAcao.Text :='';
  cmbLocal.Enabled := True;
  cmbTipoAcao.Enabled:= True;
  cmbTipo.Enabled:= True;
  BtnFiltro.Enabled := False;
end;

procedure TfrmAcoesCoPre.btnFecharClick(Sender: TObject);
begin
  pnlLocTipo.Visible:= False;
  tbNaoConformidade.Filtered := False;
   BtnFiltro.Enabled := True;
end;

procedure TfrmAcoesCoPre.btnFiltrarClick(Sender: TObject);
begin

  If ((cmbLocal.Text <> '') And (cmbLocal.Text <> 'Todos')) then begin
    tbNaoConformidade.Filtered := true;
    tbNaoConformidade.Filter := 'local ='''+  cmbLocal.Text+'*''';
    If tbNaoConformidade.RecordCount = 0 then begin
       ShowMessage('Registro não encontrado.');
       tbNaoConformidade.Filtered := False;
       tbNaoConformidade.Filter := '';
       tbNaoConformidade.close;
       tbNaoConformidade.open;
    End;
  End
  Else begin
   If (cmbLocal.Text = 'Todos') then begin
       tbNaoConformidade.Filtered := False;
       tbNaoConformidade.Filter := '';
       tbNaoConformidade.close;
       tbNaoConformidade.open;
    End;
   End;
  //tbNaoConformidade.Filter :=  cmbTipo.Text;

  If cmbTipo.Text <> '' then begin
    tbNaoConformidade.Filtered := true;
    tbNaoConformidade.Filter := 'tipo_NC='+IntToStr(cmbTipo.itemIndex);
    If tbNaoConformidade.RecordCount = 0 then begin
       ShowMessage('Registro não encontrado.');
       tbNaoConformidade.Filtered := False;
       tbNaoConformidade.Filter := '';
       tbNaoConformidade.close;
       tbNaoConformidade.open;
    End;
  End;

  If ((cmbTipoAcao.Text <> '') And (cmbTipoAcao.Text <> 'Todos')) then begin
    tbNaoConformidade.Filtered := true;
    tbNaoConformidade.Filter := 'tipo_Acao='''+  cmbTipoAcao.Text+'*''';
    If tbNaoConformidade.RecordCount = 0 then begin
       ShowMessage('Registro não encontrado.');
       tbNaoConformidade.Filtered := False;
       tbNaoConformidade.Filter := '';
       tbNaoConformidade.close;
       tbNaoConformidade.open;
    End;
  End
  Else begin
    If (cmbTipoAcao.Text = 'Todos') then begin
       tbNaoConformidade.Filtered := False;
       tbNaoConformidade.Filter := '';
       tbNaoConformidade.close;
       tbNaoConformidade.open;
    End;
  End;

  If ((cmbTipoAcao.Text = '') and (cmbTipo.Text = '') and (cmbLocal.Text = '')) then begin
   tbNaoConformidade.Filtered := False;
   tbNaoConformidade.Filter := '';
   tbNaoConformidade.close;
   tbNaoConformidade.open;
  End;
  BtnFiltro.Enabled := True;
  pnlLocTipo.Visible:= False;
end;

procedure TfrmAcoesCoPre.edtPrazoKeyPress(Sender: TObject; var Key: Char);
var
  data:TDate;
begin
 if not (Key in [#8]) then begin
  If Length(edtPrazo.text) = 2 Then begin
   edtPrazo.text := edtPrazo.text + '/';
   edtPrazo.SelStart := 4 ;
  End;
  If Length(edtPrazo.text) = 5 Then begin
   edtPrazo.text := edtPrazo.text + '/';
   edtPrazo.SelStart := 7 ;
  End;
  If Length(edtPrazo.text)= 9 Then begin
    try
      data := StrToDate(edtPrazo.text);
    except
      showMessage('Data invalida');
    End;
  End;
End;
  if not (Key in ['0'..'9',#8]) then
  abort;
end;

procedure TfrmAcoesCoPre.btnIncluirAcaoClick(Sender: TObject);
begin
    op := 3;
    pnlAcao.Visible := True;
    edtAcao.Clear;
    edtResponsavel.Clear;
    edtPrazo.Clear;
    btnIncluirAcao.Enabled := False;
    btnAlterarAcao.Enabled := false;
end;

procedure TfrmAcoesCoPre.btnCloseClick(Sender: TObject);
begin
 pnlAcao.Visible := False;
 btnIncluirAcao.Enabled := True;
 btnAlterarAcao.Enabled := True;
 op := 0;
end;

procedure TfrmAcoesCoPre.btnOkClick(Sender: TObject);
begin

 If edtAcao.Text = '' then begin
   ShowMessage('Favor informar a Descrição.');
   Exit;
 End;
 If edtResponsavel.Text = '' then begin
   ShowMessage('Favor informar o Responsavel.');
   Exit;
 End;
 If edtPrazo.Text = '' then begin
   ShowMessage('Favor informar o Prazo.');
   Exit;
 End;

    If op = 3 then begin
      qrInsertAcao.close;
      qrInsertAcao.ParamByName('sequencial').Value := tbNaoConformidadeSequencial.AsString;
      qrInsertAcao.ParamByName('Descricao').Value := edtAcao.Text;
      qrInsertAcao.ParamByName('Responsavel').Value := edtResponsavel.text ;
      qrInsertAcao.ParamByName('Prazo').Value := edtPrazo.text;
      qrInsertAcao.ParamByName('usuario').Value := v_usuario ;
      qrInsertAcao.ExecSQL;
      edtAcao.Clear;
      edtResponsavel.Clear;
      edtPrazo.Clear;
    end
    Else begin
      qrUpdateAcao.close;
      qrUpdateAcao.ParamByName('descricao').Value := edtAcao.text;
      qrUpdateAcao.ParamByName('responsavel').Value := edtResponsavel.text;
      qrUpdateAcao.ParamByName('prazo').Value := edtPrazo.Text;
      qrUpdateAcao.ParamByName('seq').Value := qrPropostaSequencial.AsString;
      qrUpdateAcao.ExecSQL;
      pnlAcao.Visible := False;
      btnAlterarAcao.Enabled := true;
      op := 0;
    End;
  qrProposta.close;
  qrProposta.ParamByName('seq').Value := tbNaoConformidadeSequencial.AsString;
  qrProposta.open;

 end;

procedure TfrmAcoesCoPre.tbNaoConformidadeAfterScroll(DataSet: TDataSet);
begin
  qrProposta.close;
  qrProposta.ParamByName('seq').Value := tbNaoConformidadeSequencial.AsString;
  qrProposta.open;
end;

procedure TfrmAcoesCoPre.dbedtDataKeyPress(Sender: TObject; var Key: Char);
 var
  data:TDate;
begin
if not (Key in [#8]) then begin
  If Length(dbedtData.text) = 2 Then begin
   dbedtData.text := dbedtData.text + '/';
   dbedtData.SelStart := 4 ;
  End;
  If Length(dbedtData.text) = 5 Then begin
   dbedtData.text := dbedtData.text + '/';
   dbedtData.SelStart := 7 ;
  End;
  If Length(dbedtData.text)= 9 Then begin
    try
      data := StrToDate(dbedtData.Text);
    except
      showMessage('Data invalida');
    End;
  End;
End;
  if not (Key in ['0'..'9',#8]) then
     abort;
end;

procedure TfrmAcoesCoPre.dbmmConformidadeKeyPress(Sender: TObject;
  var Key: Char);
begin

if ((op = 0) or (op = 3) or (op = 4))  then Key := #0;
end;

procedure TfrmAcoesCoPre.dbMmAnaliseCausasKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ((op = 0) or (op = 3) or (op = 4))  then Key := #0;
end;

procedure TfrmAcoesCoPre.dbMmImplementacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ((op = 0) or (op = 3) or (op = 4))  then Key := #0;
end;

procedure TfrmAcoesCoPre.dbMmDisposicaoKeyPress(Sender: TObject;
  var Key: Char);
begin
 if ((op = 0) or (op = 3) or (op = 4))  then Key := #0;
end;

procedure TfrmAcoesCoPre.btnAlterarAcaoClick(Sender: TObject);
begin
 op := 4;
 pnlAcao.Visible := True;
 edtAcao.text := qrPropostaDesc_Acoes_Corretiva.AsString;
 edtResponsavel.text := qrPropostaResp_Acoes_Corretiva.AsString;
 edtPrazo.Text := qrPropostaPrazo_Acoes_Corretiva.AsString;
 btnAlterarAcao.Enabled := false;
 btnIncluirAcao.Enabled := false;

end;

procedure TfrmAcoesCoPre.dbMmAcaoKeyPress(Sender: TObject; var Key: Char);
begin
   if ((op = 0) or (op = 3) or (op = 4))  then Key := #0;
end;

procedure TfrmAcoesCoPre.cmbTipoAcaoChange(Sender: TObject);
begin
   If cmbTipoAcao.text <> '' then begin
      cmbTipo.Enabled := False;
      cmbLocal.Enabled:= False;
   End
   Else begin
      cmbTipo.Enabled := True;
      cmbLocal.Enabled:= True;
   End;
end;

procedure TfrmAcoesCoPre.cmbLocalChange(Sender: TObject);
begin
   If cmbLocal.text <> '' then begin
      cmbTipo.Enabled := False;
      cmbTipoAcao.Enabled:= False;
   End
   Else begin
      cmbTipo.Enabled := True;
      cmbTipoAcao.Enabled:= True;
   End;
end;

procedure TfrmAcoesCoPre.cmbTipoChange(Sender: TObject);
begin
   If cmbTipo.text <> '' then begin
      cmbLocal.Enabled := False;
      cmbTipoAcao.Enabled:= False;
   End
   Else begin
      cmbLocal.Enabled := True;
      cmbTipoAcao.Enabled:= True;
   End;
end;

end.
