unit u_proregistro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Grids, DBGrids, Buttons, DBCtrls,
  ActnList;

type
  TF_proRegistro = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    tbConhecimento: TTable;
    pnlPrincipal: TPanel;
    Label142: TLabel;
    Label141: TLabel;
    Label140: TLabel;
    Label143: TLabel;
    Label144: TLabel;
    Label156: TLabel;
    Label178: TLabel;
    Label179: TLabel;
    rgContratante: TRadioGroup;
    tbArmazemPro: TTable;
    tbArmazemProEmpresa: TStringField;
    tbArmazemProFilial: TStringField;
    tbArmazemProProcesso: TStringField;
    tbArmazemProCodArmazem: TStringField;
    tbArmazemProNome_Armazem: TStringField;
    pnlBaixo: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    qrImport: TQuery;
    qrImportCodigo: TStringField;
    qrImportCNPJ_CPF_COMPLETO: TStringField;
    qrURF: TQuery;
    qrURFCODIGO: TStringField;
    qrURFDESCRICAO: TStringField;
    dbLcbURF: TDBLookupComboBox;
    dsURF: TDataSource;
    dsConhecimento: TDataSource;
    dbEdtDtOrigem: TDBEdit;
    dbEdtDtDespacho: TDBEdit;
    qrRecinto: TQuery;
    qrRecintoCODIGO: TStringField;
    qrRecintoDESCRICAO: TStringField;
    qrRecintoCOD_ORGAO_REC: TStringField;
    dsRecinto: TDataSource;
    dbLcbRecinto: TDBLookupComboBox;
    qrArmazem: TQuery;
    dsArmazem: TDataSource;
    qrSetor: TQuery;
    dsSetor: TDataSource;
    dbLcbSetor: TDBLookupComboBox;
    qrSetorOrgao: TStringField;
    qrSetorRecinto: TStringField;
    qrSetorSetor: TStringField;
    qrSetorNome: TStringField;
    qrArmazemCodigo: TStringField;
    qrArmazemDescricao: TStringField;
    qrDocChegada: TQuery;
    dsDocChegada: TDataSource;
    qrDocChegadaCodigo: TStringField;
    qrDocChegadaDescricao: TStringField;
    sbLimpaURF: TSpeedButton;
    sbLimpaRecinto: TSpeedButton;
    sbLimpaSetor: TSpeedButton;
    sbLimpaDocChegada: TSpeedButton;
    dbEdtIdent: TDBEdit;
    dbEdtPreCarga: TDBEdit;
    dbCbFUNDAP: TDBCheckBox;
    dsArmazemPro: TDataSource;
    dbEdtContratante: TDBEdit;
    dbLcbDocChegada: TDBLookupComboBox;
    pnlArmazem: TPanel;
    Label145: TLabel;
    Label1: TLabel;
    btnExcluirArm: TBitBtn;
    btnIncluirArm: TBitBtn;
    dbLlbArmazem: TDBLookupListBox;
    dbLlbArmazemPro: TDBLookupListBox;
    dbEdtURF: TDBEdit;
    dbEdtRecinto: TDBEdit;
    dbEdtSetor: TDBEdit;
    dbEdtDocChegada: TDBEdit;
    alAtuTabelas: TActionList;
    acAtuTabelas: TAction;
    tbConhecimentoEmpresa: TStringField;
    tbConhecimentoFilial: TStringField;
    tbConhecimentoProcesso: TStringField;
    tbConhecimentoVia: TStringField;
    tbConhecimentoMultimodal: TSmallintField;
    tbConhecimentoPLaca: TStringField;
    tbConhecimentoLacre: TStringField;
    tbConhecimentoEmbarcacao: TStringField;
    tbConhecimentoTransportador: TStringField;
    tbConhecimentoTipodoccarga: TStringField;
    tbConhecimentoNumerodoccarga: TStringField;
    tbConhecimentoNumeromaster: TStringField;
    tbConhecimentoLocal: TStringField;
    tbConhecimentoData: TDateTimeField;
    tbConhecimentoUtilizacao: TStringField;
    tbConhecimentoTipomanifesto: TStringField;
    tbConhecimentoNumeromanifesto: TStringField;
    tbConhecimentoCodigo_Presenca_Carga: TStringField;
    tbConhecimentoPeso_Bruto: TFloatField;
    tbConhecimentoPeso_Liquido: TFloatField;
    tbConhecimentoAgente: TStringField;
    tbConhecimentoPais_Procedencia: TStringField;
    tbConhecimentoURF_chegada: TStringField;
    tbConhecimentoData_Chegada_URF_Cheg: TDateTimeField;
    tbConhecimentoURF_Despacho: TStringField;
    tbConhecimentoData_Chegada_URF_Desp: TDateTimeField;
    tbConhecimentoRecinto_Alfandegario: TStringField;
    tbConhecimentoSetor_Alfandegario: TStringField;
    tbConhecimentoArmazem: TStringField;
    tbConhecimentoOperacao_FUNDAP: TSmallintField;
    tbConhecimentoContratante_OPCAMBIAL: TStringField;
    tbConhecimentoMoeda_Frete: TStringField;
    tbConhecimentoFrete_Prepaid: TFloatField;
    tbConhecimentoFrete_Collect: TFloatField;
    tbConhecimentoFrete_Ter_Nac: TFloatField;
    tbConhecimentoMoeda_Seguro: TStringField;
    tbConhecimentoValor_Seguro: TFloatField;
    tbConhecimentoMoeda_Despesas_ate_FOB: TStringField;
    tbConhecimentoValor_Despesas_ate_FOB: TFloatField;
    tbConhecimentoUnidade: TStringField;
    tbConhecimentoQuantidade: TFloatField;
    q_upstatus: TQuery;
    q_upstatus2: TQuery;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessoscodigo: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessostipo: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosFechado: TIntegerField;
    qrProcessosATIVO: TIntegerField;
    qrProcessosImportador: TStringField;
    qrProcessosResponsavel_empresa: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    qrProcessosCOD_SIT: TStringField;
    Label23: TLabel;
    txtHoraDesembaraco: TMaskEdit;
    lblHoraFollow: TLabel;
    txtHoraDespacho: TDBEdit;
    tbConhecimentoDT_ETA: TDateTimeField;
    tbConhecimentoData_Follow: TStringField;
    qNomeDoUsuario: TQuery;
    qNomeDoUsuarioNome_Completo: TStringField;
    tbEmailAuto: TTable;
    tbEmailAutoCodigo: TAutoIncField;
    tbEmailAutoPrograma: TStringField;
    tbEmailAutoAssunto: TStringField;
    tbEmailAutoTitulo: TStringField;
    tbEmailAutoDe: TStringField;
    tbEmailAutoPara: TStringField;
    tbEmailAutoCC: TStringField;
    tbEmailAutoCCO: TStringField;
    tbEmailAutoBody: TMemoField;
    tbEmailAutoAnexo: TStringField;
    tbEmailAutoHTML: TIntegerField;
    tbEmailAutoData: TDateTimeField;
    tbEmailAutoHora: TDateTimeField;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnIncluirArmClick(Sender: TObject);
    procedure btnExcluirArmClick(Sender: TObject);
    procedure tbConhecimentoAfterPost(DataSet: TDataSet);
    procedure rgContratanteClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qrURFAfterOpen(DataSet: TDataSet);
    procedure qrRecintoAfterOpen(DataSet: TDataSet);
    procedure sbLimpaURFClick(Sender: TObject);
    procedure sbLimpaRecintoClick(Sender: TObject);
    procedure sbLimpaSetorClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure dbEdtDtOrigemChange(Sender: TObject);
    procedure dbEdtDtDespachoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure qrArmazemAfterOpen(DataSet: TDataSet);
    procedure tbArmazemProAfterOpen(DataSet: TDataSet);
    procedure sbLimpaDocChegadaClick(Sender: TObject);
    procedure acAtuTabelasExecute(Sender: TObject);
  private
    procedure EnviaEmail(vPara, vCC : String);
    procedure Dias_Atrasado(data_registro: String);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_proRegistro: TF_proRegistro;
  Dias_em_Atraso : String;
  DtOrigemVerifica : Boolean;
  
implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_proRegistro.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


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

procedure TF_proRegistro.ME_nossarefChange(Sender: TObject);
  var
    cnpj : String;
begin
  If ( Length(F_MSCOMEX.LRTrim( me_nossaref.Text )) <> 8 ) Then
    Exit;
  // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
  If (IsClosedProcess( me_nossaref.Text, F_proRegistro )) Then
    Abort;
  //--
  Screen.Cursor := crHourGlass;
  {Inicio eduardo.souza 12/07/2011}
  {Obs: Que porra é essa, aqui!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!}
  {
  With qrProcessos Do Begin
    Close;
    Open;
  End;
  If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin
  }
  qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
  qrProcessos.Close;
  qrProcessos.Open;
  If ( Not qrProcessos.IsEmpty ) Then Begin
  {Fim eduardo.souza 12/07/2011}

    if F_MSCOMEX.AcessaPasta(me_nossaref.Text, qrProcessosTipo.AsString, F_proRegistro) and
       F_MSCOMEX.DINaoSolicitada(ME_nossaref.Text, F_proRegistro) 
     then begin
       pnlPrincipal.Visible := True;
       pnlPrincipal.Enabled := True;

       pnlArmazem.Visible := True;
       pnlArmazem.Enabled := True;

       pnlBaixo.Visible     := True;
       pnlBaixo.Enabled     := True;
     end;

    If ( qrImport.State = dsInactive ) Then
      qrImport.Open;
    If ( qrURF.State = dsInactive ) Then
      qrURF.Open;
    If ( qrDocChegada.State = dsInactive ) Then
      qrDocChegada.Open;

    { REFRESH NAS TABELAS }
    acAtuTabelas.Execute;

    If ( tbArmazemPro.State = dsInactive ) Then
      tbArmazemPro.Open;
    With ( qrArmazem ) Do Begin
      Close;
      Params[0].AsString := qrProcessosProcesso.AsString;
      Open;
    End;

    If ( tbConhecimento.State = dsInactive ) Then
      tbConhecimento.Open;
    If ( tbConhecimento.RecordCount <> 0 ) Then
      If ( tbConhecimentoContratante_OPCAMBIAL.AsString = qrImportCNPJ_CPF_COMPLETO.AsString ) Then
        rgContratante.ItemIndex := 0
      Else
        rgContratante.ItemIndex := 1
    Else Begin
      // não achou conhecimento então grava
      tbConhecimento.Insert;
      btnAlterar.Click;
    End;

    ///alterei em 27/07/2005 - mm - chupisco!!!
    v_AlteraPRO := 1;
    //If (not qrprocessosAtivo.asboolean) then begin
    If (not qrprocessosAtivo.asinteger = 1) then begin
      //If (not v_Edita_cliente_inativo)  then begin
      If (v_Edita_cliente_inativo = 0)  then begin
        Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
        v_AlteraPRO := 0;
      end;
    end;
    //If (qrprocessosFechado.asboolean) then begin
    If (qrprocessosFechado.asinteger = 1) then begin
      //If (not v_Edita_Processo_Fechado)  then begin
      If (v_Edita_Processo_Fechado = 0)  then begin
        Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
        v_AlteraPRO := 0;
      end
      else
        v_AlteraPRO := 1;
    end;

    //mm 24/07/2006 - usuariosclientes
    if ( f_mscomex.q_usucli.recordcount > 0 ) then begin
      if ( f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[]) ) Then Begin
        v_autorizadocli := 1;
      end
      else begin
        v_autorizadocli := 0;
      end;
    end
    else begin
      v_autorizadocli := 1;
    end;

    F_MSCOMEX.atualizacpastas(ME_nossaref.text);
    If (v_autorizadocli = 1) Then Begin
      cnpj := qrprocessosqcnpj.asstring;
      cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);
      l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
      pnlPrincipal.Visible := True;
      pnlArmazem.Visible := True;
      pnlBaixo.Visible := True;
    End
    Else Begin
      l_cliente.Caption := '';
      pnlPrincipal.Visible := false;
      pnlArmazem.Visible := false;
      pnlBaixo.Visible := false;
      Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
    End;   
  End
  Else Begin
    MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
    l_cliente.Caption := '';
    me_nossaref.Clear;
    pnlPrincipal.Visible := False;
    pnlArmazem.Visible := False;
    pnlBaixo.Visible := False;
    me_nossaref.SetFocus
  End;
  Screen.Cursor := crDefault;

  if dbEdtDtOrigem.text <> '' then
  begin
      dbEdtDtOrigem.Enabled := False;
  //    DtOrigemVerifica := False;
  end
  else
  begin
      dbEdtDtOrigem.Enabled := True;
 //     DtOrigemVerifica := True;
  end;
end;

procedure TF_proRegistro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     f_mscomex.RegistrodeChegada1.Enabled := True;
     f_proRegistro := Nil;
     Action := caFree;
end;

procedure TF_proRegistro.btnIncluirArmClick(Sender: TObject);
begin
     tbArmazemPro.Append;
     tbArmazemProCodArmazem.AsString   := Trim(qrArmazemCodigo.AsString);
     tbArmazemProNome_Armazem.AsString := qrArmazemDescricao.AsString;
     tbArmazemPro.Post;
     qrArmazem.Close;
     qrArmazem.Open;
end;

procedure TF_proRegistro.btnExcluirArmClick(Sender: TObject);
begin
     tbArmazemPro.Delete;
     qrArmazem.Close;
     qrArmazem.Open;
end;


procedure TF_proRegistro.tbConhecimentoAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou Registro de Chegada do Processo:'+tbConhecimentoProcesso.AsString);
     f_mscomex.MSPGP(me_nossaref.text);
end;

procedure TF_proRegistro.rgContratanteClick(Sender: TObject);
begin
     If rgContratante.ItemIndex = 0 Then
        dbEdtContratante.Text := qrImportCNPJ_CPF_COMPLETO.AsString;
end;

procedure TF_proRegistro.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TF_proRegistro.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbConhecimento.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Registro de Chegada está em edição!', mtInformation,[mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure TF_proRegistro.qrURFAfterOpen(DataSet: TDataSet);
begin
     With qrRecinto Do Begin
         Close;
         Params[0].AsString := qrURFCodigo.AsString;
         Open;
     End;
end;

procedure TF_proRegistro.qrRecintoAfterOpen(DataSet: TDataSet);
begin
     With qrSetor Do Begin
         Close;
         Params[0].AsString := qrRecintoCOD_ORGAO_REC.AsString;
         Params[1].AsString := qrRecintoCodigo.AsString;
         Open;
     End;
end;

procedure TF_proRegistro.sbLimpaURFClick(Sender: TObject);
begin
     tbConhecimentoURF_Despacho.AsString := '';
     sbLimpaRecinto.Click;
end;

procedure TF_proRegistro.sbLimpaRecintoClick(Sender: TObject);
begin
     tbConhecimentoRecinto_Alfandegario.AsString := '';
     sbLimpaSetor.Click;
end;

procedure TF_proRegistro.sbLimpaSetorClick(Sender: TObject);
begin
     tbConhecimentoSetor_Alfandegario.AsString := '';
end;

procedure TF_proRegistro.btnAlterarClick(Sender: TObject);
begin

    if dbEdtDtOrigem.text <> '' then
    begin
                if ((v_usuario = 'ODILMA') or (v_usuario = 'FERREIRA') or (v_usuario = 'ANDRE')) then begin
                        dbEdtDtOrigem.Enabled := True;
                        DtOrigemVerifica := False;
                end else begin
                        dbEdtDtOrigem.Enabled := False;
                        DtOrigemVerifica := False;
                end;
{                if ((v_usuario <> 'ODILMA') or (v_usuario <> 'FERREIRA') or (v_usuario <> 'ANDRE')) then begin
                        dbEdtDtOrigem.Enabled := False;
                        DtOrigemVerifica := False;
                end else begin
                        dbEdtDtOrigem.Enabled := True;
                        DtOrigemVerifica := False;
                end;}
    end
    else
    begin
        dbEdtDtOrigem.Enabled := True;
        DtOrigemVerifica := True;
    end;


if (v_AlteraPRO = 1) then
begin
     {Leandro Serra - 12/08/2011 Solicitação Da Sra Odilma
     Qdo a DI estiver desembaraçada não é permitido alterar a URF de Despacho
     Somente com a senha dela.}
     pnlPrincipal.Enabled := True;
     //dbEdtURF.SetFocus;

     if v_usuario <> 'ODILMA' then
         if qrProcessosCOD_SIT.Value = '2' then
         begin
            dbEdtURF.Enabled := False;
            dbLcbURF.Enabled := False;
            sbLimpaURF.Enabled := False;
            dbEdtRecinto.SetFocus;
            Showmessage(v_usuario+', ATENÇÃO! Não é permitido alterar a URF de despacho quando houver DI desembaraçada.');
         end;

     If tbConhecimento.State <> dsInsert Then
        tbConhecimento.Edit;
     pnlTop.Enabled := False;
     btnAlterar.Enabled := False;
     btnSair.Enabled := False;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;
end

else begin
      Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
      btnCancelar.Enabled := True;
      btnAlterar.Enabled := False;
end;
end;

procedure TF_proRegistro.btnCancelarClick(Sender: TObject);
begin
     {Leandro Serra - 12/08/2011}
     dbEdtURF.Enabled := True;
     dbLcbURF.Enabled := True;
     sbLimpaURF.Enabled := True;

     pnlTop.Enabled := True;
     pnlPrincipal.Enabled := False;
     btnAlterar.Enabled := True;
     btnSair.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;

     tbConhecimento.Cancel;
     qrRecinto.Close;
     qrRecinto.Open;

end;

procedure TF_proRegistro.btnSalvarClick(Sender: TObject);
var
   aux, auxAnt, qsql, QEVENTO: String;
   tm, tmAnt: Integer;
   dt, dtAnt: TDate;
   strPara, strCC: String;

  procedure AdicionaCopiados;
  var
    QryAux : TQuery;
  begin
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    try
      QryAux.Close;
      QryAux.SQL.Clear;
      QryAux.SQL.Add(' SELECT EMAIL, PARA, CC                   ');
      QryAux.SQL.Add('   FROM EMAILS_AVISOS                     ');
      QryAux.SQL.Add('  WHERE Ativo = 1 AND Tipo = ''MSREGIS''  ');
      QryAux.Open;

      if QryAux.RecordCount > 0
       then begin
         while not QryAux.Eof do
          begin
            if QryAux.FieldByName('Para').AsBoolean
             then begin
               if strPara = ''
                then strPara := QryAux.Fields[0].AsString
                else strPara := strPara + '; ' + QryAux.Fields[0].AsString;
             end;

            if QryAux.FieldByName('Cc').AsBoolean
             then begin
               if strCC = ''
                then strCC := QryAux.Fields[0].AsString
                else strCC := strCC + '; ' + QryAux.Fields[0].AsString;
             end;

            QryAux.Next;
          end;
       end;
    finally
      QryAux.Free;
    end;
  end;
begin
     {Leandro Serra - 14/10/2011 Ticket = 776}
     if (tbConhecimentoPais_Procedencia.IsNull) or (tbConhecimentoPais_Procedencia.AsString = '') then
     begin
           {Verifica se foi informada data de chegada
           Neste caso se o País de Procedência não for informado não permitir a gravação}
           aux := dbEdtDtOrigem.Text;
           If (aux <> '  /  /    ') Then  dt := StrToDate(aux);
           begin
              ShowMessage('Somente é permitido informar a data de chegada na URF de Entrada se informar o País de Procedência.'+chr(13)+
              'Por favor, preencher as informações da carga.');
              Exit;
           end;
     end;
     if (tbConhecimentoPeso_Liquido.IsNull) or (tbConhecimentoPeso_Bruto.IsNull) or
     (tbConhecimentoPeso_Liquido.asstring = '') or (tbConhecimentoPeso_Bruto.asstring = '') then
     begin
           {Verifica se foi informado o peso bruto e o líquido
           Neste caso se não estiver informado não permitir a gravação}
           aux := dbEdtDtOrigem.Text;
           If aux <> '  /  /    ' Then  dt := StrToDate(aux);
           begin
              ShowMessage('Somente é permitido informar a data de chegada na URF de Entrada se informar '+chr(13)+
                          'o Peso bruto e o Peso Líquido na tela de informações da carga.'+chr(13)+
                          'Por favor, preencher as informações da carga.');
              Exit;
           end;
     end;

     if StrIsTime(txtHoraDespacho.Text) <> true then
     begin
        showmessage('Informe uma hora válida para a gravação do Follow automático.');
        txtHoraDespacho.SetFocus;
        exit;
     end;

     If (dbEdtURF.Text <> '') AND (dbLcbURF.Text = '') Then Begin
        ShowMessage('URF de Despacho inválido!');
        dbEdtURF.SetFocus;
        Exit;
     End;
     // daniel.kliemczak & leonardo.alabarce 06/01/2012 ticket:977
     IF ((dbEdtDtOrigem.Text) <> '' ) Then
     Begin
             If ((qrProcessostipo.AsString = '11') or (qrProcessostipo.AsString = '12')) then
             begin
                   If  (qrProcessostipo.AsString = '12') then
                   begin
                    if ( tbConhecimentoVia.AsString <> 'A' ) then begin // eduardo.souza 03/02/2012 ticket:1723
                       If ( ((tbConhecimentoEmbarcacao.AsString = '') or (tbConhecimentoEmbarcacao.isnull)) and
                       ((tbConhecimentoDT_ETA.AsString = '') or (tbConhecimentoDT_ETA.isnull)) )then
                       begin
                        ShowMessage('Por favor, informe o nome da embarcação e a data do embarque.');
                        exit;
                       End;
                    End;
                   End
                   Else
                   begin
                         If (qrProcessostipo.AsString = '11') then
                         begin
                             If ((tbConhecimentoTransportador.AsString = '') or (tbConhecimentoDT_ETA.AsString = '') or
                              (tbConhecimentoTransportador.isnull) or (tbConhecimentoDT_ETA.isnull))then
                              begin
                                      ShowMessage('Por favor, verifique o nome da companhia de transporte e/ou a data ETA, são obrigatórias para este caso.');
                                       exit;
                               End;
                         End;
                   End;
             End;
     end;
     // eduardo.souza 16/08/2011
     If ( tbConhecimentoData_Chegada_URF_Desp.AsString <> '' ) Then Begin
      If ( StrToDate( dbEdtDtOrigem.Text ) > Date ) Then Begin
        ShowMessage('Data de Chegada na URF de Entrada não pode ser maior que a data atual!');
        dbEdtDtOrigem.SetFocus;
        Exit;
      End;
     End;
     if DtOrigemVerifica then
         try
             AdicionaCopiados;
             
             If ( StrToDate( dbEdtDtOrigem.Text ) < Date ) Then
             begin
                    Dias_Atrasado(dbEdtDtOrigem.Text);
                    if strToInt(Dias_em_Atraso) > 3 then EnviaEmail(strPara, strCC);
             end;
         except

         end;

     // fim 16/08/2011
     If (dbEdtRecinto.Text <> '') AND (dbLcbRecinto.Text = '') Then Begin
        ShowMessage('Recinto Alfandegado inválido!');
        dbEdtRecinto.SetFocus;
        Exit;
     End;
     If (dbEdtSetor.Text <> '') AND (dbLcbSetor.Text = '') Then Begin
        ShowMessage('Setor de Armazenamento inválido!');
        dbEdtSetor.SetFocus;
        Exit;
     End;
     If (dbEdtDocChegada.Text <> '') AND (dbLcbDocChegada.Text = '') Then Begin
        ShowMessage('Documento de Chegada inválido!');
        dbEdtDocChegada.SetFocus;
        Exit;
     End;
     if dbEdtDtDespacho.Text <> '' then begin
        if dbEdtDtOrigem.Text = '' then begin
           ShowMessage('Data de Chegada na URF de Entrada Inválida!');
           dbEdtDtOrigem.SetFocus;
           Exit;
        end
        else begin
           if strtodate(dbEdtDtDespacho.Text) < strtodate(dbEdtDtOrigem.Text) then begin
              ShowMessage('Data de Chegada na URF de Despacho Inválida!');
              dbEdtDtDespacho.SetFocus;
              Exit;
           end;
        end;
     end;
     {
     /// TESTA DATA DE URF DE ENTRADA
     Try
        aux := dbEdtDtOrigem.Text;
        If aux <> '  /  /    ' Then
           dt := StrToDate(aux);
     Except
        ShowMessage('"Data de Chegada na URF de Entrada" Inválida!');
        dbEdtDtOrigem.SetFocus;
        Exit;
     End;
     //// TESTA DATA DE URF DE DESPACHO
     Try
        auxAnt := aux;
        aux := dbEdtDtDespacho.Text;
        If ((aux <> '  /  /    ') and (aux<>'')) Then Begin
           If auxAnt = '  /  /    ' Then Begin
              ShowMessage('"Data de Chegada na URF de Entrada" está em branco!');
              dbEdtDtOrigem.SetFocus;
              Exit;
           End
           Else
              dtAnt := dt;
           dt := StrToDate(aux);
           If dtAnt > dt Then Begin
              ShowMessage('"Data de Chegada na URF de Despacho" é menor que a "Data de Chegada na URF de Entrada"!');
              dbEdtDtDespacho.SetFocus;
              Exit;
           End;
        End;
     Except
        ShowMessage('"Data de Chegada na URF de Despacho" Inválida!');
        dbEdtDtDespacho.SetFocus;
        Exit;
     End;
     }
     Screen.Cursor := crHourGlass;

     tbConhecimento.Post;

     q_upstatus.Params[0].AsString := me_nossaref.Text;
     q_upstatus.ExecSQL;
     q_upstatus2.Params[0].AsString := me_nossaref.Text;
     q_upstatus2.ExecSQL;

     qevento:='';
     IF QRPROCESSOSTIPO.ASSTRING='11' THEN      qevento:='3'; ///chegada da carga
     IF QRPROCESSOSTIPO.ASSTRING='12' THEN      qevento:='43'; ///chegada do navio
     if (qevento<>'') then begin
     If (TRIM(tbConhecimentoData_Chegada_URF_Cheg.asstring) <> '') and (not tbConhecimentoData_Chegada_URF_Cheg.IsNull)Then Begin

           F_MSCOMEX.qfol1.close;
           F_MSCOMEX.qfol1.sql.clear;
           dt := tbConhecimentoData_Chegada_URF_Cheg.asdatetime;
           F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+qevento+chr(39));
           F_MSCOMEX.qfol1.open;
           if  F_MSCOMEX.qfol1.recordcount=0 then begin
            F_MSCOMEX.qfol1up.sql.clear;
            qsql := 'INSERT INTO Followup ([Processo],[Codevento], [Codobs] ,[Data] ,[Hora] ,[Usuario]) VALUES ( ';
            qsql := qsql+chr(39)+me_nossaref.text+chr(39)+', ';
            qsql := qsql+chr(39)+qevento+chr(39)+', ';
            qsql := qsql+chr(39)+''+chr(39)+', ';
            //qsql := qsql+chr(39)+tbSolRegdata_autorizacao.asstring+chr(39)+', ';
            //v_dataFollow
            //qsql := qsql+chr(39)+v_dataFollow+chr(39)+', ';
            {Leandro Serra - 28/09/2011}
            qsql := qsql+chr(39)+datetostr(dt)+chr(39)+', ';
//            {Leandro Serra - 28/09/2011}            qsql := qsql+chr(39)+copy(timetostr(time()),1,5)+chr(39)+', ';
            qsql := qsql+chr(39)+txtHoraDespacho.text+chr(39)+', ';
            qsql := qsql+chr(39)+v_usuario+chr(39)+' ';
            qsql := qsql+' )';
            //SHOWMESSAGE(QSQL);
            F_MSCOMEX.qfol1up.sql.add(qsql);
            F_MSCOMEX.qfol1up.execsql;
            if qevento='3' then begin
               logusu('P','Incluiu Follow Up: Chegada da carga. - Processo: '+me_nossaref.text);
               Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO follow up de Chegada da carga.!');
            end
            else begin
               logusu('P','Incluiu Follow Up: Chegada do navio. - Processo: '+me_nossaref.text);
               Showmessage(v_usuario+',ATENÇÃO! foi INCLUÍDO follow up de Chegada do navio.!');
            end;

         end;
     end
     else begin

           F_MSCOMEX.qfol1.close;
           F_MSCOMEX.qfol1.sql.clear;
           F_MSCOMEX.qfol1.sql.add('select processo from Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+qevento+chr(39));
           F_MSCOMEX.qfol1.open;
           if  F_MSCOMEX.qfol1.recordcount>0 then begin
           F_MSCOMEX.qfol1up.sql.clear;
           F_MSCOMEX.qfol1up.sql.add('delete Followup where Processo='+chr(39)+me_nossaref.text+chr(39)+' and Codevento='+chr(39)+qevento+chr(39));
           F_MSCOMEX.qfol1up.execsql;
           if qevento='3' then begin
               logusu('E','Excluiu Follow Up:  Chegada da carga. - Processo: '+me_nossaref.text);
               Showmessage(v_usuario+',ATENÇÃO! foi EXCLUÍDO follow up de Chegada da carga.!');
            end
            else begin
               logusu('E','Excluiu Follow Up:  Chegada do navio. - Processo: '+me_nossaref.text);
               Showmessage(v_usuario+',ATENÇÃO! foi EXCLUÍDO follow up de Chegada do navio.!');
            end;


           end;
     end;
     end;
     
     pnlTop.Enabled := True;
     pnlPrincipal.Enabled := False;
     btnAlterar.Enabled := True;
     btnSair.Enabled := True;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;

     Screen.Cursor := crDefault;
end;

procedure TF_proRegistro.dbEdtDtOrigemChange(Sender: TObject);
begin
     if tbConhecimento.State in [dsEdit] then
        If dbEdtDtOrigem.Text = '  /  /    ' Then
           tbConhecimentoData_Chegada_URF_Cheg.AsString := ''
end;

procedure TF_proRegistro.dbEdtDtDespachoChange(Sender: TObject);
begin
     if tbConhecimento.State in [dsEdit] then
        If dbEdtDtDespacho.Text = '  /  /    ' Then
           tbConhecimentoData_Chegada_URF_Desp.AsString := ''
end;

procedure TF_proRegistro.FormCreate(Sender: TObject);
begin
// qrProcessos.Open;
end;

procedure TF_proRegistro.qrArmazemAfterOpen(DataSet: TDataSet);
begin
     If qrArmazem.RecordCount <> 0 Then
        btnIncluirArm.Enabled := True
     Else
        btnIncluirArm.Enabled := False;
end;

procedure TF_proRegistro.tbArmazemProAfterOpen(DataSet: TDataSet);
begin
     If tbArmazemPro.RecordCount <> 0 Then
        btnExcluirArm.Enabled := True
     Else
        btnExcluirArm.Enabled := False;
end;

procedure TF_proRegistro.sbLimpaDocChegadaClick(Sender: TObject);
begin
     tbConhecimentoTipomanifesto.AsString := '';
end;

procedure TF_proRegistro.acAtuTabelasExecute(Sender: TObject);
begin
     With qrImport Do Begin
         Close;  Open;
     End;
     With qrURF Do Begin
         Close;  Open;
     End;
     With qrDocChegada Do Begin
         Close;  Open;
     End;
end;


procedure TF_proRegistro.EnviaEmail(vPara, vCC: String);
var
 corpo_email, nome_usuario, processo, vTitulo, vAssunto, vDe, vBody : String;
 vHTML : Integer;
 vAnexo : String;

begin
    vHTML := 1;
    vAnexo := '';
    with qNomeDoUsuario do
    begin
        Close;
        ParamByName('pUsu').asString := v_usuario;
        Open;
    end;

    nome_usuario := qNomeDoUsuarioNome_Completo.AsString;
    processo := ME_nossaref.text;

    vTitulo  := 'MS2000 - Aviso de registro na data de chegada da carga com mais de 3 dias de atraso.';
    vAssunto := 'Usuário registrou com atraso a data de chegada da carga.';
    vDe      := 'MS2000 <auditoria@logistic-ms.com.br>';

    corpo_email := 'Por meio deste, informamos que o usuário, '+ nome_usuario +' , no processo '+ processo + ' registrou a data de chegada da carga '+ '(' + dbEdtDtOrigem.text +') com atraso superior a 3 dias.';



    vBody := '<BR>'
         + 'Prezado,<BR>'
         + '<BR>'
         +  corpo_email + '<BR><BR>'
         + 'Este e-mail é automático e não necessita de resposta. <BR>'
         + '<BR><BR>'
         + 'Atenciosamente,'
         + '<BR><BR>'
         + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>';

    try
      tbEmailAuto.Close;    
      tbEmailAuto.Open;
      tbEmailAuto.Append;
      tbEmailAutoPrograma.AsString := 'MS2000';
      tbEmailAutoTitulo.AsString   := vTitulo;
      tbEmailAutoAssunto.AsString  := vAssunto;
      tbEmailAutoAnexo.AsString    := vAnexo;
      tbEmailAutoHTML.Asinteger    := vHTML;
      tbEmailAutoDe.AsString       := vDe;
      tbEmailAutoPara.AsString     := vPara;
      tbEmailAutoCC.AsString       := vCC;
      tbEmailAutoBody.AsString     := vBody;
      tbEmailAutoData.AsDateTime   := Date();
      tbEmailAutoHora.AsDateTime   := Now;
      tbEmailAuto.Post;
      tbEmailAuto.Close;   
    except
      on E:Exception do
      begin
		showmessage(v_usuario+' Erro ao gravar registro na tabela EmailAuto.');
      end;
    end;
end;

procedure TF_proRegistro.Dias_Atrasado(data_registro:String);
var
atual:TDate;
dia,mes,ano:Word;             
dia1,mes1,ano1:Word;
begin    
atual := now;
 DecodeDate(atual,ano,mes,dia);
 DecodeDate(StrToDate(data_registro),ano1,mes1,dia1);
 // showmessage(inttostr(dia - dia1));
 Dias_em_Atraso := intToStr(dia - dia1);
end;

end.
