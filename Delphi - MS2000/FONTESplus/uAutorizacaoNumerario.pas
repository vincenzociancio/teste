unit uAutorizacaoNumerario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, ComCtrls, DBCtrls, StdCtrls, Mask, Grids, DBGrids, Buttons, Db,
  DBTables;

type
  TfrmAutorizarNumerario = class(TForm)
    StatusBar1: TStatusBar;
    pnlTitulo: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edtDtSolicitacao: TMaskEdit;
    edtHora: TMaskEdit;
    edtSolicitante: TEdit;
    edtStatus: TEdit;
    lblCliente: TLabel;
    edtProcessoMS2000: TMaskEdit;
    Label6: TLabel;
    edtCliente: TEdit;
    Label5: TLabel;
    edtCNPJ: TEdit;
    dbGridMain: TDBGrid;
    Panel1: TPanel;
    btnAutorizar: TBitBtn;
    btnNaoAutorizar: TBitBtn;
    Bevel2: TBevel;
    qryMain: TQuery;
    dtsMain: TDataSource;
    btnClose: TBitBtn;
    qryGAutorizacao: TQuery;
    qryNaoAutorizar: TQuery;
    qryGravaMovimento: TQuery;
    qryEmail_Auto: TQuery;
    qryMainPK_Solicitacao: TAutoIncField;
    qryMainFK_msNumero: TStringField;
    qryMainData_Solicitacao: TDateTimeField;
    qryMainHora_Solicitacao: TDateTimeField;
    qryMainStatus_Atual: TStringField;
    qryMainSolicitante: TStringField;
    qryMainEmailSolicitante: TStringField;
    qryMainautorizador_atual: TStringField;
    qryMainRazao_Social: TStringField;
    qryMainCNPJ_CPF_COMPLETO: TStringField;
    qryMainAutorizador: TStringField;
    qryMainEmailAutorizador: TStringField;
    GroupBox2: TGroupBox;
    mmObs: TMemo;
    qryMainOBS_Solicitacao: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qryMainHora_SolicitacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qryMainAfterScroll(DataSet: TDataSet);
    procedure qryMainCNPJ_CPF_COMPLETOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnAutorizarClick(Sender: TObject);
    procedure btnNaoAutorizarClick(Sender: TObject);
  private
    fOBSNaoAutorizado: String;
    { Private declarations }
    procedure GravarMovimento( Status : Integer );
    procedure GravarEmailAutoAutorizacao();
    procedure GravarEmailNaoAutoAutorizacao();
  public
    { Public declarations }
    property OBSNaoAutorizado : String read fOBSNaoAutorizado write fOBSNaoAutorizado;
  end;

var
  frmAutorizarNumerario: TfrmAutorizarNumerario;

implementation

uses U_MSCOMEX, uSolicitacaoNumerario, uSolicitacaoNumerarioOBS;

{$R *.DFM}

procedure TfrmAutorizarNumerario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.Autorizao1.Enabled := True;
  frmAutorizarNumerario := Nil;
  Action := caFree;
end;

procedure TfrmAutorizarNumerario.FormShow(Sender: TObject);
begin
  qryMain.ParamByName('Autorizador').Value := v_usuario;
  qryMain.Close;
  qryMain.Open;
  btnAutorizar.Enabled := (Not qryMain.IsEmpty);
  btnNaoAutorizar.Enabled := (Not qryMain.IsEmpty);
end;

procedure TfrmAutorizarNumerario.qryMainHora_SolicitacaoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If ( Not qryMain.IsEmpty ) Then
    Text := FormatDateTime('HH:mm', qryMainHora_Solicitacao.AsDateTime );
end;

procedure TfrmAutorizarNumerario.qryMainAfterScroll(DataSet: TDataSet);
begin
  If ( Not qryMain.IsEmpty ) Then Begin
    edtDtSolicitacao.Text := FormatDateTime('dd/mm/yyyy', qryMainData_Solicitacao.AsDateTime );
    edtHora.Text := FormatDateTime('HH:mm', qryMainHora_Solicitacao.AsDateTime );
    edtSolicitante.Text := qryMainSolicitante.AsString;
    edtStatus.Text := qryMainStatus_Atual.AsString;
    edtProcessoMS2000.Text := qryMainFK_msNumero.AsString;
    edtCliente.Text := qryMainRazao_Social.AsString;
    edtCNPJ.Text := frmSolicitacaoNumerario.FormataCNPJ( qryMainCNPJ_CPF_COMPLETO.AsString );
    mmObs.Lines.Text := qryMainOBS_Solicitacao.AsString;
  End;
end;

procedure TfrmAutorizarNumerario.qryMainCNPJ_CPF_COMPLETOGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  If ( Not qryMain.IsEmpty ) Then 
    Text := frmSolicitacaoNumerario.FormataCNPJ( qryMainCNPJ_CPF_COMPLETO.AsString );
end;

procedure TfrmAutorizarNumerario.btnAutorizarClick(Sender: TObject);
  var
    GoOn : Boolean;
begin
  If MessageDlg('Deseja realmente autorizar a solicitação selecionada?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then begin
    GoOn := False;
    try
      try
        qryGAutorizacao.ParamByName('PK_Solicitacao').AsInteger := qryMainPK_Solicitacao.AsInteger;
        qryGAutorizacao.ParamByName('Status_Atual').Value := 4; // 4 - Autorizado
        qryGAutorizacao.ExecSQL;
        GoOn := True;
      except
        GoOn := False;
      end;
    finally
      if ( GoOn ) then begin
        // Gravando EmailAuto Autorizando 
        GravarEmailAutoAutorizacao();
        //Gravando movimento
        GravarMovimento( 4 );
        edtProcessoMS2000.Clear;
        edtCliente.Clear;
        edtCNPJ.Clear;
        edtHora.Clear;
        edtDtSolicitacao.Clear;
        edtStatus.Clear;
        edtSolicitante.Clear;
        mmObs.Lines.Clear;
        qryMain.Close;
        qryMain.Open;
        btnAutorizar.Enabled := (Not qryMain.IsEmpty);
        btnNaoAutorizar.Enabled := (Not qryMain.IsEmpty);
        MessageDlg( 'Autorização foi gravada com sucesso!', mtInformation, [mbOK], 0 );
      end
      else begin
        MessageDlg( 'Ocorreu um erro na gravação da autorização. Tente Novamente.', mtError, [mbOK], 0 );
      end;
    end;
  end;
end;

procedure TfrmAutorizarNumerario.btnNaoAutorizarClick(Sender: TObject);
  var
    GoOn : Boolean;
begin
  If MessageDlg('Deseja realmente autorizar a solicitação selecionada?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then begin
    GoOn := False;
    // Chama OBS Solicitação
    frmSolicitacaoNumerarioOBS := TfrmSolicitacaoNumerarioOBS.Create(Self);
    frmSolicitacaoNumerarioOBS.Tipo := 3;
    frmSolicitacaoNumerarioOBS.ShowModal;
    frmSolicitacaoNumerarioOBS.free;
    //---
    try
      try
        qryNaoAutorizar.ParamByName('PK_Solicitacao').AsInteger := qryMainPK_Solicitacao.AsInteger;
        qryNaoAutorizar.ParamByName('Status_Atual').Value := 5; // 5 - Não Autorizado
        qryNaoAutorizar.ParamByName('OBS_NaoAutorizado').Value := OBSNaoAutorizado;
        qryNaoAutorizar.ExecSQL;
        GoOn := True;
      except
        GoOn := False;
      end;
    finally
      if ( GoOn ) then begin
        // Gravando não autorizado
        GravarEmailNaoAutoAutorizacao();
        // Gravando movimento
        GravarMovimento( 5 ); // 5 - Não Autorizado
        edtProcessoMS2000.Clear;
        edtCliente.Clear;
        edtCNPJ.Clear;
        edtHora.Clear;
        edtDtSolicitacao.Clear;
        edtStatus.Clear;
        edtSolicitante.Clear;
        mmObs.Lines.Clear;
        qryMain.Close;
        qryMain.Open;
        btnAutorizar.Enabled := (Not qryMain.IsEmpty);
        btnNaoAutorizar.Enabled := (Not qryMain.IsEmpty);
        qryMain.Close;
        qryMain.Open;
        MessageDlg( 'Autorização foi gravada com sucesso!', mtInformation, [mbOK], 0 );
      end
      else begin
        MessageDlg( 'Ocorreu um erro na gravação da autorização. Tente Novamente.', mtError, [mbOK], 0 );
      end;
    end;
  end;
end;

procedure TfrmAutorizarNumerario.GravarMovimento(Status: Integer);
begin
  qryGravaMovimento.ParamByName('FK_Solicitacao').AsInteger := qryMainPK_Solicitacao.AsInteger;
  qryGravaMovimento.ParamByName('Autorizador').AsString := qryMainautorizador_atual.AsString;
  qryGravaMovimento.ParamByName('Status').AsInteger := Status;
  qryGravaMovimento.ExecSQL;
end;

procedure TfrmAutorizarNumerario.GravarEmailAutoAutorizacao;
  var
    Mensagem : String;
    Assunto : String;
begin
  Assunto := 'MS2000PLUS - Envio de Numerários Autorizado - '+ edtCliente.Text +' CNPJ: '+ edtCNPJ.Text +' - Processo: '+edtProcessoMS2000.Text;
  Mensagem := '';
  Mensagem := Mensagem +'<br>Prezado(s) Senhor(es),<br><br>';
  Mensagem := Mensagem +'Envio de numerários autorizado, processo: '+ edtProcessoMS2000.Text +', Ref.Cliente:'+ edtCliente.Text +'.';
  Mensagem := Mensagem +'<br><br>Atenciosamente,<br><br>';
  Mensagem := Mensagem +qryMainAutorizador.AsString+'<br><br><br>';

  // Gravando Tabela EmailAuto
  qryEmail_Auto.ParamByName( 'Programa' ).Value := 'CONTSOLN';
  qryEmail_Auto.ParamByName( 'Assunto' ).Value := Assunto;
  qryEmail_Auto.ParamByName( 'Titulo' ).Value := 'Envio de Numerários Autorizado';
  qryEmail_Auto.ParamByName( 'De' ).Value := qryMainAutorizador.AsString +'<'+ qryMainEmailAutorizador.AsString +'>';
  qryEmail_Auto.ParamByName( 'Para' ).Value := edtSolicitante.Text +'<'+ qryMainEmailSolicitante.AsString +'>';;
  qryEmail_Auto.ParamByName( 'CC' ).Value := '';
  qryEmail_Auto.ParamByName( 'CCO' ).Value := '';
  qryEmail_Auto.ParamByName( 'Body' ).Value := Mensagem;
  qryEmail_Auto.ParamByName( 'Anexo' ).Value := '';
  qryEmail_Auto.ParamByName( 'HTML' ).Value := 1;
  qryEmail_Auto.ParamByName( 'Data' ).Value := Now;
  qryEmail_Auto.ParamByName( 'Hora' ).Value := Now;
  qryEmail_Auto.ExecSQL;
  // fim gravar

end;

procedure TfrmAutorizarNumerario.GravarEmailNaoAutoAutorizacao;
  var
    Mensagem : String;
    Assunto : String;
begin
  Assunto := 'MS2000PLUS - Envio de Numerários Não Autorizado - '+ edtCliente.Text +' CNPJ: '+ edtCNPJ.Text +' - Processo: '+edtProcessoMS2000.Text;
  Mensagem := '';
  Mensagem := Mensagem +'<br>Prezado(s) Senhor(es),<br><br>';
  Mensagem := Mensagem +'Envio de numerários não foi autorizado, processo: '+ edtProcessoMS2000.Text +', Ref.Cliente:'+ edtCliente.Text +'.';
  if ( trim(OBSNaoAutorizado) <> '' ) then begin
    Mensagem := Mensagem +'<br><br>Observação:<br>';
    Mensagem := Mensagem + OBSNaoAutorizado;
  end;
  Mensagem := Mensagem +'<br><br>Atenciosamente,<br><br>';
  Mensagem := Mensagem +qryMainAutorizador.AsString+'<br><br><br>';

  // Gravando Tabela EmailAuto
  qryEmail_Auto.ParamByName( 'Programa' ).Value := 'CONTSOLN';
  qryEmail_Auto.ParamByName( 'Assunto' ).Value := Assunto;
  qryEmail_Auto.ParamByName( 'Titulo' ).Value := 'Envio de Numerários Não Autorizado';
  qryEmail_Auto.ParamByName( 'De' ).Value := qryMainAutorizador.AsString +'<'+ qryMainEmailAutorizador.AsString +'>';
  qryEmail_Auto.ParamByName( 'Para' ).Value := edtSolicitante.Text +'<'+ qryMainEmailSolicitante.AsString +'>';;
  qryEmail_Auto.ParamByName( 'CC' ).Value := '';
  qryEmail_Auto.ParamByName( 'CCO' ).Value := '';
  qryEmail_Auto.ParamByName( 'Body' ).Value := Mensagem;
  qryEmail_Auto.ParamByName( 'Anexo' ).Value := '';
  qryEmail_Auto.ParamByName( 'HTML' ).Value := 1;
  qryEmail_Auto.ParamByName( 'Data' ).Value := Now;
  qryEmail_Auto.ParamByName( 'Hora' ).Value := Now;
  qryEmail_Auto.ExecSQL;
  // fim gravar

end;

end.
