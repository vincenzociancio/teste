unit U_UnidadesMedida;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons;

type
  Tf_UnidadeMedida = class(TForm)
    Label1: TLabel;
    dbedtCod: TDBEdit;
    Label2: TLabel;
    dbedtDesc: TDBEdit;
    Bevel2: TBevel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    Bevel3: TBevel;
    Bevel1: TBevel;
    dsUnidade: TDataSource;
    dbedtAbrev: TDBEdit;
    Label3: TLabel;
    dbgNum: TDBGrid;
    T_UnidadeMedida: TTable;
    qrUltimo: TQuery;
    qrProd_Unidade: TQuery;
    qrConhecProc_Unid: TQuery;
    qrItensFat_Unidade: TQuery;
    T_UnidadeMedidaCODIGO: TStringField;
    T_UnidadeMedidaDESCRICAO: TStringField;
    T_UnidadeMedidaABREV: TStringField;
    qrUltimoUltimo: TStringField;
    qrConhecProc_UnidEmpresa: TStringField;
    qrConhecProc_UnidFilial: TStringField;
    qrConhecProc_UnidProcesso: TStringField;
    qrConhecProc_UnidVia: TStringField;
    qrConhecProc_UnidMultimodal: TSmallintField;
    qrConhecProc_UnidPLaca: TStringField;
    qrConhecProc_UnidLacre: TStringField;
    qrConhecProc_UnidEmbarcacao: TStringField;
    qrConhecProc_UnidTransportador: TStringField;
    qrConhecProc_UnidTipodoccarga: TStringField;
    qrConhecProc_UnidNumerodoccarga: TStringField;
    qrConhecProc_UnidNumeromaster: TStringField;
    qrConhecProc_UnidLocal: TStringField;
    qrConhecProc_UnidData: TDateTimeField;
    qrConhecProc_UnidUtilizacao: TStringField;
    qrConhecProc_UnidTipomanifesto: TStringField;
    qrConhecProc_UnidNumeromanifesto: TStringField;
    qrConhecProc_UnidCodigo_Presenca_Carga: TStringField;
    qrConhecProc_UnidPeso_Bruto: TFloatField;
    qrConhecProc_UnidPeso_Liquido: TFloatField;
    qrConhecProc_UnidAgente: TStringField;
    qrConhecProc_UnidPais_Procedencia: TStringField;
    qrConhecProc_UnidURF_chegada: TStringField;
    qrConhecProc_UnidData_Chegada_URF_Cheg: TDateTimeField;
    qrConhecProc_UnidURF_Despacho: TStringField;
    qrConhecProc_UnidData_Chegada_URF_Desp: TDateTimeField;
    qrConhecProc_UnidRecinto_Alfandegario: TStringField;
    qrConhecProc_UnidSetor_Alfandegario: TStringField;
    qrConhecProc_UnidArmazem: TStringField;
    qrConhecProc_UnidOperacao_FUNDAP: TSmallintField;
    qrConhecProc_UnidContratante_OPCAMBIAL: TStringField;
    qrConhecProc_UnidMoeda_Frete: TStringField;
    qrConhecProc_UnidFrete_Prepaid: TFloatField;
    qrConhecProc_UnidFrete_Collect: TFloatField;
    qrConhecProc_UnidFrete_Ter_Nac: TFloatField;
    qrConhecProc_UnidMoeda_Seguro: TStringField;
    qrConhecProc_UnidValor_Seguro: TFloatField;
    qrConhecProc_UnidMoeda_Despesas_ate_FOB: TStringField;
    qrConhecProc_UnidValor_Despesas_ate_FOB: TFloatField;
    qrConhecProc_UnidUnidade: TStringField;
    qrConhecProc_UnidQuantidade: TFloatField;
    qrProd_UnidadeREG: TAutoIncField;
    qrProd_UnidadeImportador: TStringField;
    qrProd_UnidadeFabricante: TStringField;
    qrProd_UnidadeCODIGO: TStringField;
    qrProd_UnidadePART_NUMBER: TStringField;
    qrProd_UnidadeDescricao: TMemoField;
    qrProd_UnidadeDescricao_ing: TMemoField;
    qrProd_UnidadeNCM: TStringField;
    qrProd_UnidadeDestaque_NCM: TStringField;
    qrProd_UnidadeNALADI: TStringField;
    qrProd_UnidadeUnidade: TStringField;
    qrProd_UnidadeUnidade_Medida_Estat: TStringField;
    qrProd_UnidadeDATA_INCLUSAO: TDateTimeField;
    qrProd_UnidadeUsuario_INCLUSAO: TStringField;
    qrProd_UnidadeDATA_ULTIMA_ALTERACAO: TDateTimeField;
    qrProd_UnidadeUsuario_ALTERACAO: TStringField;
    qrProd_UnidadeRevisado: TIntegerField;
    qrProd_UnidadeRevisao_Data: TDateTimeField;
    qrProd_UnidadeRevisao_Usuario: TStringField;
    qrProd_UnidadeRevisao_OBS: TMemoField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure T_UnidadeMedidaAfterPost(DataSet: TDataSet);
    procedure T_UnidadeMedidaBeforeDelete(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_UnidadeMedida: Tf_UnidadeMedida;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_UnidadeMedida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     f_UnidadeMedida := nil;
     f_mscomex.UnidadesdeMedida1.Enabled := True;
end;


procedure Tf_UnidadeMedida.btnNovoClick(Sender: TObject);
begin
  T_UnidadeMedida.Append;

  qrUltimo.Open;
  T_UnidadeMedidaCODIGO.AsString := IntToStr(qrUltimoUltimo.AsInteger+1);
  qrUltimo.Close;

  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnExcluir.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;

  dbgNum.Enabled := False;
  dbedtDesc.Enabled := True;
  dbedtAbrev.Enabled := True;

  dbedtDesc.SetFocus;
end;

procedure Tf_UnidadeMedida.btnAlterarClick(Sender: TObject);
begin
  T_UnidadeMedida.Edit;
     qrProd_Unidade.Params[0].AsString := T_UnidadeMedidaCodigo.AsString;
     qrProd_Unidade.Open;
     qrItensFat_Unidade.Params[0].AsString := T_UnidadeMedidaCodigo.AsString;
     qrItensFat_Unidade.Open;
     qrConhecProc_Unid.Params[0].AsString := T_UnidadeMedidaCodigo.AsString;
     qrConhecProc_Unid.Open;

     If ((qrProd_Unidade.RecordCount <> 0) or (qrItensFat_Unidade.RecordCount <> 0) or (qrConhecProc_Unid.RecordCount <> 0)) then
        MessageDlg('Esta Unidade de Medida não pode ser Alterada!', mtInformation,[mbOk], 0)


     Else Begin
         btnNovo.Enabled := False;
         btnAlterar.Enabled  := False;
         btnExcluir.Enabled  := False;
         btnGravar.Enabled   := True;
         btnCancelar.Enabled := True;

         dbgNum.Enabled := False;
         dbedtDesc.Enabled  := True;
         dbedtAbrev.Enabled  := True;
         dbedtDesc.SetFocus;


        End;

     qrProd_Unidade.Close;
     qrConhecProc_Unid.Close;
     qrItensFat_Unidade.Close;

end;

procedure Tf_UnidadeMedida.btnCancelarClick(Sender: TObject);
begin
  T_UnidadeMedida.Cancel;

  btnNovo.Enabled := True;
  btnAlterar.Enabled  := True;
  btnExcluir.Enabled  := True;
  btnGravar.Enabled   := False;
  btnCancelar.Enabled := False;

  dbgNum.Enabled := True;
  dbedtDesc.Enabled  := False;

  dbgNum.SetFocus;
end;

procedure Tf_UnidadeMedida.btnGravarClick(Sender: TObject);
begin
     if dbedtDesc.Text = '' then begin
        MessageDlg('Digite a descrição do Tipo de Numerário!', mtWarning, [mbOk], 0);
        dbedtDesc.SetFocus;
        Exit;
     end;
     if dbedtAbrev.Text = '' then begin
        MessageDlg('Digite a descrição do Tipo de Numerário!', mtWarning, [mbOk], 0);
        dbedtAbrev.SetFocus;
        Exit;
     end;

     Try
        T_UnidadeMedida.Post;
     Except
        MessageDlg('Erro na gravação do Registro!', mtError, [mbOk], 0);
        Exit;
     End;

     btnNovo.Enabled := True;
     btnAlterar.Enabled  := True;
     btnExcluir.Enabled  := True;
     btnGravar.Enabled   := False;
     btnCancelar.Enabled := False;

     dbgNum.Enabled  := True;
     dbedtCod.Enabled   := False;
     dbedtDesc.Enabled  := False;

     dbgNum.SetFocus;
end;

procedure Tf_UnidadeMedida.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_UnidadeMedida.FormCreate(Sender: TObject);
begin
     T_UnidadeMedida.Open;
end;

procedure Tf_UnidadeMedida.btnExcluirClick(Sender: TObject);
begin
     qrProd_Unidade.Params[0].AsString := T_UnidadeMedidaCodigo.AsString;
     qrProd_Unidade.Open;
     qrItensFat_Unidade.Params[0].AsString := T_UnidadeMedidaCodigo.AsString;
     qrItensFat_Unidade.Open;
     qrConhecProc_Unid.Params[0].AsString := T_UnidadeMedidaCodigo.AsString;
     qrConhecProc_Unid.Open;

     If ((qrProd_Unidade.RecordCount <> 0) or (qrItensFat_Unidade.RecordCount <> 0) or (qrConhecProc_Unid.RecordCount <> 0)) then
        MessageDlg('Existem Faturas com esta Unidade de Medida. Não pode ser excluído!', mtInformation,[mbOk], 0)
     Else If MessageDlg('Confirma exclusão desta Unidade de Medida?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
          T_UnidadeMedida.Delete;
          MessageDlg('Unidade de Medida excluída!', mtInformation,[mbOk], 0);
        End;

     qrProd_Unidade.Close;
     qrConhecProc_Unid.Close;
     qrItensFat_Unidade.Close;
     btnNovo.SetFocus;

end;

procedure Tf_UnidadeMedida.T_UnidadeMedidaAfterPost(DataSet: TDataSet);
begin

     logusu('P','Alterou dados da Unidade de Medida: '+T_UnidadeMedidaCODIGO.asstring);

end;

procedure Tf_UnidadeMedida.T_UnidadeMedidaBeforeDelete(DataSet: TDataSet);
begin

     logusu('E','Excluiu a Unidade de Medida: '+T_UnidadeMedidaCODIGO.asstring);

end;

procedure Tf_UnidadeMedida.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

 {    h := Height;
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

end.
