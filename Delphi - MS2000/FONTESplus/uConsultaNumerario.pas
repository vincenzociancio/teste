unit uConsultaNumerario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Mask, ExtCtrls, Grids, DBGrids, Db, DBTables;

type
  TfrmConsultaNumerario = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Panel2: TPanel;
    Label6: TLabel;
    edtProcesso: TMaskEdit;
    lblCliente: TLabel;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    Panel5: TPanel;
    Panel6: TPanel;
    DBGrid2: TDBGrid;
    qryProcessos_Importador: TQuery;
    qrySolicitacoes: TQuery;
    dtsSolicitacoes: TDataSource;
    qrySolicitacoesPK_Solicitacao: TAutoIncField;
    qrySolicitacoesFK_msNumero: TStringField;
    qrySolicitacoesData_Solicitacao: TDateTimeField;
    qrySolicitacoesHora_Solicitacao: TDateTimeField;
    qrySolicitacoesSolicitante: TStringField;
    qrySolicitacoesAutorizador: TStringField;
    qrySolicitacoesautorizador_atual: TStringField;
    qrySolicitacoesCancelado_por: TStringField;
    qrySolicitacoesOBS_Cancelamento: TStringField;
    qrySolicitacoesOBS_NaoAutorizado: TStringField;
    qrySolicitacoesOBS_Solicitacao: TStringField;
    qrySolicitacoesStatus_Atual: TStringField;
    qryMovimento: TQuery;
    qryMovimentoData_Solicitacao: TDateTimeField;
    qryMovimentoAutorizador: TStringField;
    qryMovimentoStatus: TStringField;
    qryMovimentoHora_Solicitacao: TDateTimeField;
    qryMovimentoCancelado_Por: TStringField;
    qryMovimentoValidade: TDateTimeField;
    dtsMovimento: TDataSource;
    qryMovimentoEnviado_Por: TStringField;
    procedure edtProcessoChange(Sender: TObject);
    procedure qrySolicitacoesHora_SolicitacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrySolicitacoesData_SolicitacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryMovimentoHora_SolicitacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrySolicitacoesAfterScroll(DataSet: TDataSet);
    procedure DBGrid2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsultaNumerario: TfrmConsultaNumerario;

implementation

uses U_MSCOMEX, uSolicitacaoNumerario;

{$R *.DFM}

function FormataCNPJ(CNPJ: string): string;
begin
  Result := Copy(CNPJ,1,2)+'.'+Copy(CNPJ,3,3)+'.'+Copy(CNPJ,6,3)+'/'+
            Copy(CNPJ,9,4)+'-'+Copy(CNPJ,13,2);
end;

procedure TfrmConsultaNumerario.edtProcessoChange(Sender: TObject);
begin
  if ( Length( F_MSCOMEX.LRTrim(edtProcesso.Text) ) >= edtProcesso.MaxLength ) then begin
    qryProcessos_Importador.ParamByName('Codigo').Value := edtProcesso.Text;
    qryProcessos_Importador.Close;
    qryProcessos_Importador.Open;
    If ( qryProcessos_Importador.IsEmpty ) Then Begin
      MessageDlg( 'Processo não possui solicitações', mtInformation, [mbOK], 0 );
      lblCliente.Caption := '';
      qrySolicitacoes.Close;
    End
    Else Begin
      lblCliente.Caption := 'Cliente: '+ qryProcessos_Importador['Razao_Social'] +' CNPJ: '+ FormataCNPJ( qryProcessos_Importador['CNPJ_CPF_COMPLETO'] );
      qrySolicitacoes.ParamByName('MS').Value := edtProcesso.Text;
      qrySolicitacoes.Close;
      qrySolicitacoes.Open;
    End;
  end;
end;

procedure TfrmConsultaNumerario.qrySolicitacoesHora_SolicitacaoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
 Text := FormatDateTime('HH:mm', qrySolicitacoesHora_Solicitacao.AsDateTime );
end;

procedure TfrmConsultaNumerario.qrySolicitacoesData_SolicitacaoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := FormatDateTime('dd/mm/yyyy', qrySolicitacoesData_Solicitacao.AsDateTime );
end;

procedure TfrmConsultaNumerario.qryMovimentoHora_SolicitacaoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := FormatDateTime('HH:mm', qryMovimentoHora_Solicitacao.AsDateTime );
end;

procedure TfrmConsultaNumerario.qrySolicitacoesAfterScroll(
  DataSet: TDataSet);
begin
  // Solicitacao no Movimentos
  qryMovimento.ParamByName('PK_Solicitacao').AsInteger := qrySolicitacoesPK_Solicitacao.AsInteger;
  qryMovimento.Close;
  qryMovimento.Open;
  //--
end;

procedure TfrmConsultaNumerario.DBGrid2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {
  if ( DBGrid2.Columns[2].Field.Value = 'Solicitado' ) then begin
    DBGrid2.Canvas.Font.Color := clBlack;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
  end
  else
  if ( DBGrid2.Columns[2].Field.Value = 'Cancelado' ) then begin
    DBGrid2.Canvas.Font.Color := clRed;
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
  end
  else
  if ( DBGrid2.Columns[2].Field.Value = 'Expirado' ) then begin
    DBGrid2.Font.Color := clNavy;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
  end
  else
  if ( DBGrid2.Columns[2].Field.Value = 'Autorizado' ) then begin
    DBGrid2.Canvas.Font.Color := clGreen;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
  end
  else
  if ( DBGrid2.Columns[2].Field.Value = 'Não Autorizado' ) then begin
    DBGrid2.Canvas.Font.Color := clMaroon;
    DBGrid2.Canvas.FillRect(Rect);
    DBGrid2.DefaultDrawDataCell(Rect, DBGrid2.columns[datacol].field, State);
  end;
  }

end;

procedure TfrmConsultaNumerario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.Consulta1.Enabled := True;
  frmConsultaNumerario := Nil;
  Action := caFree;
end;

end.
