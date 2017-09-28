unit uSolicitacaoNumerario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, DBCtrls, ComCtrls, Grids, DBGrids, Buttons, Db,
  DBTables, ToolWin, Menus, ImgList;

type
  TfrmSolicitacaoNumerario = class(TForm)
    GroupBox1: TGroupBox;
    Label1: TLabel;
    edtDtSolicitacao: TMaskEdit;
    Label2: TLabel;
    edtHora: TMaskEdit;
    pnlTitulo: TPanel;
    Label3: TLabel;
    edtSolicitante: TEdit;
    edtStatus: TEdit;
    Label4: TLabel;
    pnlMS: TPanel;
    Label6: TLabel;
    edtProcesso: TMaskEdit;
    lblCliente: TLabel;
    grbMovimento: TGroupBox;
    StatusBar1: TStatusBar;
    dbGridMain: TDBGrid;
    pnlBotao: TPanel;
    btnNovo: TBitBtn;
    btnGravar: TBitBtn;
    btnCancel: TBitBtn;
    btnClose: TBitBtn;
    qryUsuarios: TQuery;
    qryProcessos_Importador: TQuery;
    edtAutorizador: TEdit;
    Label5: TLabel;
    qryAutorizador: TQuery;
    btnDesistir: TBitBtn;
    Bevel1: TBevel;
    Bevel2: TBevel;
    qryGSolicitacao: TQuery;
    qryMain: TQuery;
    dtsMain: TDataSource;
    qryMainPK_Solicitacao: TAutoIncField;
    qryMainFK_msNumero: TStringField;
    qryMainStatus_Atual: TStringField;
    qryMainSolicitante: TStringField;
    qryMainAutorizador: TStringField;
    qryMainData_Solicitacao: TDateTimeField;
    qryMainHora_Solicitacao: TDateTimeField;
    qryMovimento: TQuery;
    dtsMovimento: TDataSource;
    qryMovimentoData_Solicitacao: TDateTimeField;
    qryMovimentoAutorizador: TStringField;
    qryMovimentoStatus: TStringField;
    dbGridMovimento: TDBGrid;
    qryInsertMov: TQuery;
    qryMovimentoHora_Solicitacao: TDateTimeField;
    qryCancelSolicitacao: TQuery;
    qryCancelMovimento: TQuery;
    qryMainautorizador_atual: TStringField;
    qryMovimentoCancelado_Por: TStringField;
    Label7: TLabel;
    edtCancelPor: TEdit;
    qryMainCancelado_por: TStringField;
    qryVerificaSolicitacao: TQuery;
    qryEmail_Auto: TQuery;
    popupOBS: TPopupMenu;
    Solicitao1: TMenuItem;
    Cancelamento1: TMenuItem;
    NoAutorizao1: TMenuItem;
    ToolBar1: TToolBar;
    ToolButton1: TToolButton;
    img: TImageList;
    pnlOBS: TPanel;
    mmObs: TMemo;
    pnlTituloObs: TPanel;
    lblFechar: TLabel;
    qryMainOBS_Cancelamento: TStringField;
    qryMainOBS_NaoAutorizado: TStringField;
    qryMainOBS_Solicitacao: TStringField;
    qryFeriados: TQuery;
    qryFeriadosData: TDateTimeField;
    qryFeriadosDescricao: TStringField;
    qryFeriadosFilial: TStringField;
    qryFeriadosCodObservacao: TStringField;
    qryMovimentoValidade: TDateTimeField;
    qryMovimentoEnviado_Por: TStringField;
    qryProcessos_ImportadorStatus: TStringField;
    qryProcessos_ImportadorResponsavel_Empresa: TStringField;
    qryProcessos_ImportadorRazao_Social: TStringField;
    qryProcessos_ImportadorCNPJ_CPF_COMPLETO: TStringField;
    qryProcessos_ImportadorTipo: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure edtProcessoChange(Sender: TObject);
    procedure btnDesistirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure qryMainAfterScroll(DataSet: TDataSet);
    procedure qryMovimentoHora_SolicitacaoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure btnCancelClick(Sender: TObject);
    procedure lblFecharClick(Sender: TObject);
    procedure Solicitao1Click(Sender: TObject);
    procedure Cancelamento1Click(Sender: TObject);
    procedure NoAutorizao1Click(Sender: TObject);
  private
    Nome_Cliente : String;
    CNPJ_Cliente : String;
    fMsNumero: String;
    fAutorizadorAtual: String;
    fEmailAutorizador: String;
    fEmailSolicitante: String;
    fOBSSolicitacao: String;
    fTipoAutorizador: String;
    function BuscarNomeCompleto( Usuario : String; Tipo : Integer ) : String; // Tipo 1-Solicitante 2-Autorizador
    function ValidaProcesso( MS : String ) : Boolean;
    function BuscarAutorizador( Usuario : String ) : String;
    function VerificaSolicitacao( MS : String ) : Boolean;
    procedure GravarEmailAutoSolicitcao();
    procedure GravarEmailAutoCancelamento();
    Function ProximoDiaUtil (Data : TDateTime) : TDateTime;
    Function IsFeriado(Data : TDateTime) : Boolean;
  public
    function FormataCNPJ(CNPJ: string): string;
    property MsNumero : String read fMsNumero write fMsNumero;
    property AutorizadorAtual : String read fAutorizadorAtual write fAutorizadorAtual;
    property TipoAutorizador : String read fTipoAutorizador write fTipoAutorizador;
    property EmailAutorizador : String read fEmailAutorizador write fEmailAutorizador;
    property EmailSolicitante : String read fEmailSolicitante write fEmailSolicitante;
    property OBSSolicitacao : String read fOBSSolicitacao write fOBSSolicitacao;
  end;

var
  frmSolicitacaoNumerario: TfrmSolicitacaoNumerario;

implementation

uses U_MSCOMEX, uControle_ADE_Andamento, uSolicitacaoNumerarioOBS,
  uConsultaNumerario;

{$R *.DFM}

function TfrmSolicitacaoNumerario.FormataCNPJ(CNPJ: string): string;
begin
  Result := Copy(CNPJ,1,2)+'.'+Copy(CNPJ,3,3)+'.'+Copy(CNPJ,6,3)+'/'+
            Copy(CNPJ,9,4)+'-'+Copy(CNPJ,13,2);
end;

procedure TfrmSolicitacaoNumerario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.Solicitao1.Enabled := True;
  frmSolicitacaoNumerario := Nil;
  Action := caFree;
end;

procedure TfrmSolicitacaoNumerario.btnNovoClick(Sender: TObject);
begin
  btnNovo.Enabled := False;
  btnCancel.Enabled := False;
  btnDesistir.Enabled := True;
  edtProcesso.Enabled := True;
  edtProcesso.Clear;
  lblCliente.Caption := '';
  edtStatus.Text := 'Solicitado';
  edtProcesso.SetFocus;
end;

function TfrmSolicitacaoNumerario.BuscarNomeCompleto;
begin
  Try
    qryUsuarios.ParamByName( 'Usuario' ).Value := Usuario;
    qryUsuarios.Close;
    qryUsuarios.Open;
    if ( qryUsuarios.IsEmpty ) then begin
      Result := '';
      EmailAutorizador := '';
      EmailSolicitante := '';
    end
    else begin
      Result := qryUsuarios['Nome_Completo'];
      if ( tipo = 1 ) then
        EmailSolicitante := qryUsuarios['Email']
      else
        EmailAutorizador := qryUsuarios['Email'];
    end;
  Finally
    qryUsuarios.Close;
  End;
end;

procedure TfrmSolicitacaoNumerario.btnGravarClick(Sender: TObject);
  var
    GoOn : Boolean;
    DataValidade : TDateTime;
begin
  // Chama OBS Solicitação
  frmSolicitacaoNumerarioOBS := TfrmSolicitacaoNumerarioOBS.Create(Self);
  frmSolicitacaoNumerarioOBS.Tipo := 1;
  frmSolicitacaoNumerarioOBS.ShowModal;
  frmSolicitacaoNumerarioOBS.free;
  //---
  GoOn := False;
  try
    try
      qryGSolicitacao.ParamByName('FK_MsNumero').Value := MsNumero;
      qryGSolicitacao.ParamByName('Solicitante').Value := v_usuario;
      qryGSolicitacao.ParamByName('Autorizador_Atual').Value := AutorizadorAtual;
      qryGSolicitacao.ParamByName('Tipo').Value := TipoAutorizador;
      qryGSolicitacao.ParamByName('Status_Atual').Value := 1; //1- Solicitado
      qryGSolicitacao.ParamByName('OBSSolicitacao').Value := OBSSolicitacao;
      qryGSolicitacao.ExecSQL;
      GoOn := True;
    except
      GoOn := False;
    end;

  finally
    if ( GoOn ) then begin
      // Grava EmailAuto
      GravarEmailAutoSolicitcao();
      // limpa
      btnDesistir.Click();
      // Calculando data de validade
      DataValidade := Date;
      DataValidade := ProximoDiaUtil( DataValidade + 1 );
      while ( IsFeriado( DataValidade ) ) do begin
        DataValidade := ProximoDiaUtil( DataValidade + 1 );
      end;
      //--
      // Insere movimento solicitado
      qryInsertMov.ParamByName('Validade').Value := DataValidade;
      qryInsertMov.ParamByName('solicitante').Value := v_usuario;
      qryInsertMov.ExecSQL;
      //--
      qryMain.Close;
      qryMain.Open;
      MessageDlg( 'Solicitação foi gravada com sucesso!', mtInformation, [mbOK], 0 );
    end
    else begin
      MessageDlg( 'Ocorreu um erro na gravação da solicitação. Tente Novamente.', mtError, [mbOK], 0 );
    end;
  end;
end;

function TfrmSolicitacaoNumerario.ValidaProcesso(MS: String): Boolean;
  var
    GoOn : Boolean;
    Msg : PChar;
begin
  (*
  CODIGO -	DESCRICAO
  0	- Em Andamento no Operacional
  01 -	Em Andamento no Operacional - Aguardando Desembaraço
  1	- Finalizado no Operacional
  2	- Em Andamento no Financeiro
  3	- Finalizado no Financeiro
  4	- Cancelado
  *)
  try
    Try
      Nome_Cliente := '';
      CNPJ_Cliente := '';
      qryProcessos_Importador.ParamByName('Codigo').Value := MS;
      qryProcessos_Importador.Close;
      qryProcessos_Importador.Open;
      if ( qryProcessos_Importador.IsEmpty ) then begin
        Msg := 'Número de processo não encontrado.';
        GoOn := False;
      end
      else begin
        {Eduardo Souza - 13/03/2012 - Solicitado por Sandro Rassy}
        {if ( Trim(qryProcessos_Importador['status']) = '1' ) then begin
          Msg := 'Processo Finalizado no Operacional.';
          GoOn := False;
        end
        else
        if ( Trim(qryProcessos_Importador['status']) = '3' ) then begin
          Msg := 'Processo Finalizado no Financeiro.';
          GoOn := False;
        end
        else}
        if ( Trim(qryProcessos_Importador['status']) = '4' ) then begin
          Msg := 'Processo com Status Cancelado.';
          GoOn := False;
        end
        else
        if ( Trim(qryProcessos_ImportadorResponsavel_Empresa.AsString) <> Trim(v_usuario) ) then begin
          Msg := 'Processo não é de sua responsabilidade.';
          GoOn := False;
        end
        else Begin
          GoOn := True;
          Nome_Cliente := qryProcessos_Importador['Razao_Social'];
          CNPJ_Cliente := qryProcessos_Importador['CNPJ_CPF_COMPLETO'];
        end;
      end;
    except
      Msg := 'Ocorreu um erro na validação do número do processo. Tente Novamente.';
      GoOn := False;
    end;
  finally
    qryProcessos_Importador.Close;
    if ( Not GoOn ) then
      MessageDlg( Msg, mtWarning, [mbOK], 0 );
    Result := GoOn;
  end;
end;

procedure TfrmSolicitacaoNumerario.edtProcessoChange(Sender: TObject);
begin
  if ( Length( F_MSCOMEX.LRTrim(edtProcesso.Text) ) >= edtProcesso.MaxLength ) then begin

    if ( ValidaProcesso( edtProcesso.Text ) ) then Begin
      // busca autorizador
      if F_MSCOMEX.AcessaPasta(edtProcesso.Text, qryProcessos_ImportadorTipo.AsString, frmSolicitacaoNumerario)
       then begin
         GroupBox1.Enabled  := True;
         dbGridMain.Enabled := True;
       end;

      AutorizadorAtual := BuscarAutorizador( v_usuario );
      edtAutorizador.Text := BuscarNomeCompleto( AutorizadorAtual, 2 ); // Tipo 2-Autorizador
      if ( trim(edtAutorizador.Text) = '' ) then begin
        MessageDlg( 'Não será possível prosseguir, pois seu usuário não está cadastrado em uma célula.', mtWarning, [mbOK], 0 );
        btnDesistir.Click();
      end
      else begin
        if ( VerificaSolicitacao( edtProcesso.Text ) ) then begin
          lblCliente.Caption := 'Cliente: '+ Nome_Cliente +' CNPJ: '+ FormataCNPJ( CNPJ_Cliente );
          // Buscar nome completo do usuario
          edtSolicitante.Text := BuscarNomeCompleto( v_usuario, 1 ); // Tipo 1-Solicitante
          edtDtSolicitacao.Text := FormatDateTime('dd/mm/yyyy', Date );
          edtHora.Text := FormatDateTime('HH:mm', Time );
          MsNumero := edtProcesso.Text;
          btnGravar.Enabled := True;
        end
        else
          btnDesistir.Click();
      end;
      //---
    end
    else begin
      btnDesistir.Click();
    end;
  end;
end;

function TfrmSolicitacaoNumerario.BuscarAutorizador(
  Usuario: String): String;
begin
  try
    qryAutorizador.ParamByName('Auxiliar_1').Value := v_usuario;
    qryAutorizador.ParamByName('Auxiliar_2').Value := v_usuario;
    qryAutorizador.ParamByName('Usuario').Value := v_usuario;
    qryAutorizador.Close;
    qryAutorizador.Open;
    If ( qryAutorizador.IsEmpty ) or
      ( qryAutorizador['Autorizador'] = '' ) then begin
      Result := '';
      TipoAutorizador := '';
    end
    else begin
      Result := qryAutorizador['Autorizador'];
      TipoAutorizador := qryAutorizador['Tipo'];
    end;
  finally
    qryAutorizador.Close;
  end;
end;

procedure TfrmSolicitacaoNumerario.btnDesistirClick(Sender: TObject);
begin
  btnNovo.Enabled := True;
  btnGravar.Enabled := False;
  btnCancel.Enabled := True;
  btnDesistir.Enabled := False;
  edtProcesso.Clear;
  edtProcesso.Enabled := False;
  lblCliente.Caption := '';
  qryMain.Close;
  qryMain.Open;
end;

procedure TfrmSolicitacaoNumerario.FormShow(Sender: TObject);
begin
  if ( MsNumero <> '' ) then
    edtProcesso.Text := MsNumero;

  qryMain.ParamByName('Usuario').Value := v_usuario;
  qryMain.Close;
  qryMain.Open;
end;

procedure TfrmSolicitacaoNumerario.qryMainAfterScroll(DataSet: TDataSet);
  var
    GoOn : Boolean;
begin
  edtDtSolicitacao.Text := FormatDateTime('dd/mm/yyyy', qryMainData_Solicitacao.AsDateTime );
  edtHora.Text := FormatDateTime('HH:mm', qryMainHora_Solicitacao.AsDateTime );
  edtSolicitante.Text := qryMainSolicitante.AsString;
  edtStatus.Text := qryMainStatus_Atual.AsString;
  edtAutorizador.Text := qryMainAutorizador.AsString;
  edtCancelPor.Text := qryMainCancelado_por.AsString;
  // Solicitacao no Movimentos
  qryMovimento.ParamByName('PK_Solicitacao').AsInteger := qryMainPK_Solicitacao.AsInteger;
  qryMovimento.Close;
  qryMovimento.Open;
  //--
  // botao cancelamento
  GoOn := ( qryMainStatus_Atual.AsString = 'Cancelado' ) Or
          //( qryMainStatus_Atual.AsString = 'Enviado' ) Or
          (qryMainStatus_Atual.AsString = 'Não Autorizado' );
  btnCancel.Enabled := Not( GoOn );
  //--
  // Botoes Obs
  Solicitao1.Enabled := ( qryMainOBS_Solicitacao.AsString <> '');
  Cancelamento1.Enabled := ( qryMainOBS_Cancelamento.AsString <> '');
  NoAutorizao1.Enabled := ( qryMainOBS_NaoAutorizado.AsString <> '');
  //--
end;

procedure TfrmSolicitacaoNumerario.qryMovimentoHora_SolicitacaoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := FormatDateTime('HH:mm', qryMovimentoHora_Solicitacao.AsDateTime );
end;

procedure TfrmSolicitacaoNumerario.btnCancelClick(Sender: TObject);
  var
    GoOn : Boolean;
begin
  If MessageDlg('Deseja realmente cancelar a solicitação selecionada?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then begin
    // Chama OBS do cancelamento
    frmSolicitacaoNumerarioOBS := TfrmSolicitacaoNumerarioOBS.Create(Self);
    frmSolicitacaoNumerarioOBS.Tipo := 2;
    frmSolicitacaoNumerarioOBS.ShowModal;
    frmSolicitacaoNumerarioOBS.free;
    //---
    GoOn := False;
    try
      try
        qryCancelSolicitacao.ParamByName('Cancelado_Por').Value := v_usuario;
        qryCancelSolicitacao.ParamByName('Status').AsInteger := 2; // 2 - Cancelado
        qryCancelSolicitacao.ParamByName('Solicitacao').AsInteger := qryMainPK_Solicitacao.AsInteger;
        qryCancelSolicitacao.ParamByName('OBS_Cancelamento').Value := OBSSolicitacao;
        qryCancelSolicitacao.ExecSQL;
        GoOn := True;
      except
        GoOn := False;
      end;
    finally
      if ( GoOn ) then Begin
        // Gravando EmailAuto do cancelameto
        BuscarNomeCompleto( v_usuario , 1);
        BuscarNomeCompleto( qryMainautorizador_atual.AsString , 2);
        GravarEmailAutoCancelamento();
        // cancelado movimento
        qryCancelMovimento.ParamByName('FK_Solicitacao').AsInteger := qryMainPK_Solicitacao.AsInteger;
        qryCancelMovimento.ParamByName('Cancelado_Por').AsString := v_usuario;
        qryCancelMovimento.ParamByName('Status').AsInteger := 2; // 2 - Cancelado
        qryCancelMovimento.ParamByName('Autorizador').AsString := qryMainautorizador_atual.AsString;
        qryCancelMovimento.ExecSQL;
        //---
        qryMain.Close;
        qryMain.Open;
        qryMovimento.Close;
        qryMovimento.Open;
        MessageDlg( 'Cancelamento realizado com sucesso!', mtInformation, [mbOK], 0 );
      end
      else begin
        MessageDlg( 'Ocorreu um erro no cancelamento. Tente novamente.', mtError, [mbOK], 0 );
      end;
    end;
  end;
end;

function TfrmSolicitacaoNumerario.VerificaSolicitacao(MS: String): boolean;
  var
    GoOn : Boolean;
    Msg : String;
begin
  GoOn := False;
  try
    qryVerificaSolicitacao.ParamByName('MS').Value := MS;
    qryVerificaSolicitacao.Close;
    qryVerificaSolicitacao.Open;
    if ( qryVerificaSolicitacao.IsEmpty ) then
      GoOn := True
    else begin
      if ( qryVerificaSolicitacao['Status_Atual'] = 1 ) then begin
        GoOn := False;
        Msg := format('Processo %s já possui uma solicitação de autorização de numerários.', [MS]);
      end
      else
      if ( qryVerificaSolicitacao['Status_Atual'] = 4 ) then begin
        GoOn := False;
        Msg := format('Processo %s já está autorizado.', [MS]);
      end
      else
      if ( qryVerificaSolicitacao['Status_Atual'] = 6 ) then begin
        GoOn := False;
        Msg := format('Processo %s já foi ENVIADO para cliente. Será necessário CANCELAR a solicitação atual para gerar um nova.', [MS]);
      end
      else GoOn := true;
    end;
  finally
    qryVerificaSolicitacao.Close;
    if ( Not GoOn ) then
      MessageDlg( Msg, mtWarning, [mbOK], 0 );
    Result := GoOn;
  end;
end;

procedure TfrmSolicitacaoNumerario.GravarEmailAutoSolicitcao;
  var
    Mensagem : String;
    Assunto : String;
begin
  Assunto := 'MS2000PLUS - Solicitação de Autorização de Numerários - '+ lblCliente.Caption +' - Processo: '+MsNumero;
  Mensagem := '';
  Mensagem := Mensagem +'<br>Prezado(s) Senhor(es),<br><br>';
  Mensagem := Mensagem +'Solicitamos autorização para o envio de numerários referentes ao processo: '+ MsNumero +', Ref.Cliente:'+ lblCliente.Caption +'.';
  if ( trim(OBSSolicitacao) <> '' ) then begin
    Mensagem := Mensagem +'<br><br>Observação:<br>';
    Mensagem := Mensagem + OBSSolicitacao;
  end;
  Mensagem := Mensagem +'<br><br>Atenciosamente,<br><br>';
  Mensagem := Mensagem +edtSolicitante.Text+'<br><br><br>';

  // Gravando Tabela EmailAuto
  qryEmail_Auto.ParamByName( 'Programa' ).Value := 'CONTSOLN';
  qryEmail_Auto.ParamByName( 'Assunto' ).Value := Assunto;
  qryEmail_Auto.ParamByName( 'Titulo' ).Value := 'Solicitação de Autorização de Numerários';
  qryEmail_Auto.ParamByName( 'De' ).Value := edtSolicitante.Text +'<'+ EmailSolicitante +'>';
  qryEmail_Auto.ParamByName( 'Para' ).Value := edtAutorizador.Text +'<'+ EmailAutorizador +'>';;
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

procedure TfrmSolicitacaoNumerario.GravarEmailAutoCancelamento;
  var
    Mensagem : String;
    Assunto : String;
begin
  Assunto := 'MS2000PLUS - Cancelamento de Solicitação de Autorização de Numerários - '+ lblCliente.Caption +' - Processo: '+MsNumero;
  Mensagem := '';
  Mensagem := Mensagem +'<br>Prezado(s) Senhor(es),<br><br>';
  Mensagem := Mensagem +'Favor desconsiderar o pedido de autorização para o envio de numerários referentes ao processo: '+ MsNumero +', Ref.Cliente:'+ lblCliente.Caption +'.';
  if ( trim(OBSSolicitacao) <> '' ) then begin
    Mensagem := Mensagem +'<br><br>Observação:<br>';
    Mensagem := Mensagem + OBSSolicitacao;
  end;  
  Mensagem := Mensagem +'<br><br>Atenciosamente,<br><br>';
  Mensagem := Mensagem +edtSolicitante.Text+'<br><br><br>';

  // Gravando Tabela EmailAuto
  qryEmail_Auto.ParamByName( 'Programa' ).Value := 'CONTSOLN';
  qryEmail_Auto.ParamByName( 'Assunto' ).Value := Assunto;
  qryEmail_Auto.ParamByName( 'Titulo' ).Value := 'Cancelamento de Solicitação de Autorização de Numerários';
  qryEmail_Auto.ParamByName( 'De' ).Value := edtSolicitante.Text +'<'+ EmailSolicitante +'>';
  qryEmail_Auto.ParamByName( 'Para' ).Value := edtAutorizador.Text +'<'+ EmailAutorizador +'>';;
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

procedure TfrmSolicitacaoNumerario.lblFecharClick(Sender: TObject);
begin
  pnlOBS.Hide;
end;

procedure TfrmSolicitacaoNumerario.Solicitao1Click(Sender: TObject);
begin
  pnlTituloObs.Caption := 'Observação de Solicitação';
  mmObs.Lines.Clear;
  mmObs.Lines.Text := qryMainOBS_Solicitacao.AsString;
  pnlOBS.show;
end;

procedure TfrmSolicitacaoNumerario.Cancelamento1Click(Sender: TObject);
begin
  pnlTituloObs.Caption := 'Observação de Cancelamento';
  mmObs.Lines.Clear;
  mmObs.Lines.Text := qryMainOBS_Cancelamento.AsString;
  pnlOBS.show;
end;

procedure TfrmSolicitacaoNumerario.NoAutorizao1Click(Sender: TObject);
begin
  pnlTituloObs.Caption := 'Observação de Não Autorizado';
  mmObs.Lines.Clear;
  mmObs.Lines.Text := qryMainOBS_NaoAutorizado.AsString;
  pnlOBS.show;
end;

function TfrmSolicitacaoNumerario.ProximoDiaUtil(
  Data: TDateTime): TDateTime;
begin
  if DayOfWeek( Data ) = 7 then
    Data := Data + 2
  else
    if DayOfWeek(Data) = 1 then
      Data := Data + 1;
    ProximoDiaUtil := Data;
end;


function TfrmSolicitacaoNumerario.IsFeriado(Data: TDateTime): Boolean;
begin
  try
    qryFeriados.ParamByName('Data').Value := Data;
    qryFeriados.Close;
    qryFeriados.Open;
    If ( qryFeriados.IsEmpty ) then
      Result := False
    else
      Result := True;
  finally
    qryFeriados.Close;
  end;
end;

end.
