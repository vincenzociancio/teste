unit u_follow;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBGrids, DBTables, Grids, ExtCtrls, Buttons, Mask;

type
  Tf_follow = class(TForm)
    ds_eventos: TDataSource;
    t_eventos: TTable;
    t_obs: TTable;
    ds_obs: TDataSource;
    Q_Evento: TQuery;
    Q_Localizar: TQuery;
    DS_QEvento: TDataSource;
    DS_Localizar: TDataSource;
    Q_Follow: TQuery;
    DS_QFollow: TDataSource;
    Q_Obs: TQuery;
    Q_ObsCodigo: TStringField;
    DS_QObs: TDataSource;
    pnlLocalizar: TPanel;
    Label26: TLabel;
    L_busca: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    pnlLocalizarObs: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    btnOKObs: TBitBtn;
    edtLocalizarObs: TEdit;
    DBGrid2: TDBGrid;
    pnlPrincipal: TPanel;
    Q_LocalizarObs: TQuery;
    DS_LocalizarObs: TDataSource;
    Bevel1: TBevel;
    DBG_eventos: TDBGrid;
    DBG_obs: TDBGrid;
    edtCod: TEdit;
    edtDesc: TDBEdit;
    edtCodObs: TEdit;
    edtDescObs: TDBEdit;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnNovoObs: TBitBtn;
    btnExcluirObs: TBitBtn;
    btnAlterarObs: TBitBtn;
    btnGravarObs: TBitBtn;
    btnCancelarObs: TBitBtn;
    btnLocalizarObs: TBitBtn;
    Label4: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label2: TLabel;
    q_follow2: TQuery;
    q_eventosgrupos: TQuery;
    ds_eventosgrupos: TDataSource;
    q_Grupos: TQuery;
    ds_grupos: TDataSource;
    edtgrupo: TDBLookupComboBox;
    edtqtd: TDBEdit;
    Label9: TLabel;
    Label10: TLabel;
    edtfecha: TDBLookupComboBox;
    Label11: TLabel;
    Label12: TLabel;
    edtdesc_ing: TDBEdit;
    Label13: TLabel;
    edtdescobs_ing: TDBEdit;
    t_eventos_ing: TTable;
    ds_eventos_ing: TDataSource;
    q_evefecha: TQuery;
    ds_evefecha: TDataSource;
    q_eventosobs: TQuery;
    ds_eventosobs: TDataSource;
    t_obs_ing: TTable;
    ds_obs_ing: TDataSource;
    Q_EventoCodigo: TStringField;
    q_GruposCodigo: TStringField;
    q_GruposDescricao: TStringField;
    q_GruposDescricao_Ing: TStringField;
    q_evefechaCodigo: TStringField;
    q_evefechaDescricao: TStringField;
    q_evefechaGrupo: TStringField;
    q_evefechaQTD_HorasLimite: TIntegerField;
    q_evefechaCodigo_Fecha: TStringField;
    t_eventosCodigo: TStringField;
    t_eventosDescricao: TStringField;
    t_eventosGrupo: TStringField;
    t_eventosQTD_HorasLimite: TIntegerField;
    t_eventosCodigo_Fecha: TStringField;
    t_eventosAtivo: TSmallintField;
    Q_LocalizarCodigo: TStringField;
    Q_LocalizarDescricao: TStringField;
    Q_LocalizarGrupo: TStringField;
    Q_LocalizarQTD_HorasLimite: TIntegerField;
    Q_LocalizarCodigo_Fecha: TStringField;
    Q_LocalizarAtivo: TSmallintField;
    t_obsEvento: TStringField;
    t_obsCodigo: TStringField;
    t_obsDescricao: TStringField;
    t_obsAtivo: TSmallintField;
    t_obs_ingEvento: TStringField;
    t_obs_ingCodigo: TStringField;
    t_obs_ingDescricao: TStringField;
    t_obs_ingDescricao_i: TStringField;
    t_obs_ingAtivo: TSmallintField;
    t_eventos_ingCodigo: TStringField;
    t_eventos_ingDescricao: TStringField;
    t_eventos_ingDescricao_i: TStringField;
    t_eventos_ingAtivo: TSmallintField;
    q_eventosobsEvento: TStringField;
    q_eventosobsCodigo: TStringField;
    q_eventosobsDescricao: TStringField;
    q_eventosobsDescricao_Ing: TStringField;
    q_eventosobsativo: TIntegerField;
    q_eventosobsn_ativo: TStringField;
    Q_LocalizarObsEvento: TStringField;
    Q_LocalizarObsCodigo: TStringField;
    Q_LocalizarObsDescricao: TStringField;
    Q_LocalizarObsAtivo: TIntegerField;
    Q_LocalizarObsn_ativo: TStringField;
    q_eventosgruposCodigo: TStringField;
    q_eventosgruposDescricao: TStringField;
    q_eventosgruposDescricao_ing: TStringField;
    q_eventosgruposGrupo: TStringField;
    q_eventosgruposDescricao_Grupo: TStringField;
    q_eventosgruposQTD_HorasLimite: TIntegerField;
    q_eventosgruposCodigo_Fecha: TStringField;
    q_eventosgruposDescricao_Fecha: TStringField;
    q_eventosgruposAtivo: TIntegerField;
    q_eventosgruposn_ativo: TStringField;
    dbckCli_Visu: TDBCheckBox;
    t_obscli_visu: TBooleanField;
    t_obs_ingcli_visu: TBooleanField;
    chkAtivos: TCheckBox;
    btnGpEvento: TBitBtn;
    qrUpdateObs_ing: TQuery;
    qrUpdateObs: TQuery;
    btnEventoAtivo: TBitBtn;
    btnObsEventoAtivo: TBitBtn;
    dbcbObsAtivo: TDBCheckBox;
    dbcbEventoAtivo: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnLocalizarObsClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnNovoObsClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCancelarObsClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnAlterarObsClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure t_eventosAfterOpen(DataSet: TDataSet);
    procedure btnGravarObsClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnExcluirObsClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure edtLocalizarObsChange(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnOKObsClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure t_eventosAfterPost(DataSet: TDataSet);
    procedure t_eventosBeforeDelete(DataSet: TDataSet);
    procedure t_obsAfterPost(DataSet: TDataSet);
    procedure t_obsBeforeDelete(DataSet: TDataSet);
    procedure q_eventosgruposAfterScroll(DataSet: TDataSet);
    procedure Q_LocalizarAfterScroll(DataSet: TDataSet);
    procedure q_eventosobsAfterScroll(DataSet: TDataSet);
    procedure DBG_eventosDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBG_obsDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure chkAtivosClick(Sender: TObject);
    procedure btnGpEventoClick(Sender: TObject);
    procedure dbcbEventoAtivoClick(Sender: TObject);
  private
    function TemObservacaoAtiva : Boolean;
    { private declarations }
  public
    { public declarations }
  end;

var
  f_follow: Tf_follow;
  op: integer;
  novo: string;

implementation

uses U_MSCOMEX, U_eventosgrupos;

{$R *.DFM}

procedure Tf_follow.FormClose(Sender: TObject; var Action: TCloseAction);
begin
        action := cafree;
        f_follow := nil;
        f_mscomex.EventosObservaesFOLLOWUP1.enabled := true;
end;

procedure Tf_follow.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;

  if v_editaevento = 0
   then begin
     btnCancelar.Enabled       := False;
     btnGravar.Enabled         := False;
     btnNovo.Enabled           := False;
     btnExcluir.Enabled        := False;
     btnAlterar.Enabled        := False;
     btnNovoObs.Enabled        := False;
     btnExcluirObs.Enabled     := False;
     btnAlterarObs.Enabled     := False;
   end;
end;

procedure Tf_follow.btnLocalizarClick(Sender: TObject);
begin
  pnlLocalizar.Top  := 26;
  pnlLocalizar.Left := 216;

  pnlLocalizar.Visible := True;
  pnlPrincipal.Enabled := False;

  chkAtivos.Checked := False;
  edtLocalizar.SetFocus;
end;

procedure Tf_follow.btnLocalizarObsClick(Sender: TObject);
begin
  pnlLocalizarObs.Top  := 98;
  pnlLocalizarObs.Left := 216;

  pnlLocalizarObs.Visible := True;
  pnlPrincipal.Enabled    := False;

  edtLocalizarObs.SetFocus;
end;

procedure Tf_follow.btnNovoClick(Sender: TObject);
begin
  T_eventos.Append;
  T_eventos_ing.Append;
  t_obs.Append;
  t_obs_ing.Append;

  logusu('P','Incluiu Evento: '+t_eventosdescricao.asstring);

  btnCancelar.Enabled      := True;
  btnGravar.Enabled        := True;
  btnNovo.Enabled          := False;
  btnExcluir.Enabled       := False;
  btnAlterar.Enabled       := False;
  btnLocalizar.Enabled     := False;
  btnNovoObs.Enabled       := False;
  btnExcluirObs.Enabled    := False;
  btnAlterarObs.Enabled    := False;
  btnLocalizarObs.Enabled  := False;
  DBG_eventos.Enabled      := False;
  DBG_obs.Enabled          := False;
  edtDesc.Enabled          := True;
  edtgrupo.Enabled         := True;
  edtqtd.Enabled           := True;
  edtfecha.enabled         := true;
  edtdesc_ing.enabled      := true;
  dbcbEventoAtivo.Enabled  := True;

  op := 1;  
  edtDesc.SetFocus;
end;

procedure Tf_follow.btnNovoObsClick(Sender: TObject);
begin
  T_obs.Append;
  T_obs_ing.Append;

  logusu('P','Incluiu OBS_Evento: '+t_eventosdescricao.asstring);

  btnCancelarObs.Enabled  := True;
  btnGravarObs.Enabled    := True;
  btnNovo.Enabled         := False;
  btnExcluir.Enabled      := False;
  btnAlterar.Enabled      := False;
  btnLocalizar.Enabled    := False;
  btnNovoObs.Enabled      := False;
  btnExcluirObs.Enabled   := False;
  btnAlterarObs.Enabled   := False;
  btnLocalizarObs.Enabled := False;
  DBG_eventos.Enabled     := False;
  DBG_obs.Enabled         := False;
  edtDescObs.Enabled      := True;
  edtDescObs_ing.Enabled  := True;
  dbckCli_Visu.Enabled    := True;
  dbcbObsAtivo.Enabled    := True;

  op := 1;
  edtDescObs.SetFocus;
end;

procedure Tf_follow.btnCancelarClick(Sender: TObject);
begin
  T_eventos.Cancel;
  T_eventos_ing.Cancel;

  btnCancelar.Enabled      := False;
  btnGravar.Enabled        := False;
  btnNovo.Enabled          := True;
  btnExcluir.Enabled       := True;
  btnAlterar.Enabled       := True;
  btnLocalizar.Enabled     := True;
  btnNovoObs.Enabled       := True;
  btnExcluirObs.Enabled    := True;
  btnAlterarObs.Enabled    := True;
  btnLocalizarObs.Enabled  := True;
  DBG_eventos.Enabled      := True;
  DBG_obs.Enabled          := True;
  edtDesc.Enabled          := false;
  edtgrupo.Enabled         := false;
  edtqtd.Enabled           := false;
  edtfecha.enabled         := false;
  edtdesc_ing.enabled      := false;
  dbcbEventoAtivo.Enabled  := False;

  btnNovo.SetFocus;
end;

procedure Tf_follow.btnCancelarObsClick(Sender: TObject);
begin
  T_obs.Cancel;
  T_obs_ing.Cancel;

  btnCancelarObs.Enabled  := False;
  btnGravarObs.Enabled    := False;
  btnNovo.Enabled         := True;
  btnExcluir.Enabled      := True;
  btnAlterar.Enabled      := True;
  btnLocalizar.Enabled    := True;
  btnNovoObs.Enabled      := True;
  btnExcluirObs.Enabled   := True;
  btnAlterarObs.Enabled   := True;
  btnLocalizarObs.Enabled := True;
  DBG_eventos.Enabled     := True;
  DBG_obs.Enabled         := True;
  edtDescObs.Enabled      := False;
  edtDescObs_ing.Enabled  := false;
  dbckCli_Visu.Enabled    := false;
  dbcbObsAtivo.Enabled    := False;  

  btnNovoObs.SetFocus;  
end;

procedure Tf_follow.btnAlterarClick(Sender: TObject);
var
  confalteracao : boolean;
begin
  Q_Follow.Close;
  Q_Follow.params[0].asstring := t_eventoscodigo.AsString;
  Q_Follow.open;
  confalteracao:= false;

  if Q_Follow.RecordCount <> 0
   then begin
     if MessageDlg(v_usuario+', ATENCÃO! Este Evento está sendo utilizado no Follow Up. Sua alteração será aplicada a todos os processos que utilizam este Evento no Follow Up. Confirma Alteração ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then confalteracao := true
      else confalteracao := false;
   end
   else begin
     if MessageDlg('Confirma alteração deste Evento?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then confalteracao:= true;
   end;

  if confalteracao
   then begin
     T_eventos.Edit;
     btnCancelar.Enabled      := True;
     btnGravar.Enabled        := True;
     btnNovo.Enabled          := False;
     btnExcluir.Enabled       := False;
     btnAlterar.Enabled       := False;
     btnLocalizar.Enabled     := False;
     btnNovoObs.Enabled       := False;
     btnExcluirObs.Enabled    := False;
     btnAlterarObs.Enabled    := False;
     btnLocalizarObs.Enabled  := False;
     DBG_eventos.Enabled      := False;
     DBG_obs.Enabled          := False;
     edtDesc.Enabled          := True;
     edtgrupo.Enabled         := True;
     edtqtd.Enabled           := True;
     edtfecha.enabled         := True;
     edtdesc_ing.enabled      := True;
     dbckCli_Visu.Enabled     := True;
     dbcbObsAtivo.Enabled     := True;
     dbcbEventoAtivo.Enabled  := True;

     op := 2;     
     edtDesc.SetFocus;
  end;
end;

procedure Tf_follow.btnAlterarObsClick(Sender: TObject);
var confalteracao:boolean;
begin
  Q_Follow.Close;
  Q_Follow.params[0].asstring := t_eventoscodigo.AsString;
  Q_Follow.open;
  confalteracao:= false;

  if Q_Follow.RecordCount <> 0
   then begin
     if  t_obsCodigo.AsString = '0'
      then begin
        ShowMessage('Não é possível alterar a Descrição onde o código for Zero(0).');
        btnCancelarObs.Enabled    := True;
        btnGravarObs.Enabled      := True;
        btnNovoObs.Enabled        := False;
        btnExcluirObs.Enabled     := False;
        btnAlterarObs.Enabled     := False;
        btnLocalizarObs.Enabled   := False;
        edtDescObs.Enabled        := False;
        edtDescObs_ing.Enabled    := False;
        dbckCli_Visu.Enabled      := True;
        dbcbObsAtivo.Enabled      := False;
        exit;
      end;

     if MessageDlg(v_usuario+', ATENCÃO! Esta Observação está sendo utilizado no Follow Up. Sua alteração será aplicada a todos os processos que utilizam esta Observação no Follow Up. Confirma Alteração ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then confalteracao:= true
      else confalteracao:= false;
   end
   else begin
     if MessageDlg('Confirma alteração desta Observação?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then confalteracao:= true;
   end;

  if confalteracao
   then begin
     T_obs.Edit;
     btnCancelarObs.Enabled  := True;
     btnGravarObs.Enabled    := True;
     btnNovo.Enabled         := False;
     btnExcluir.Enabled      := False;
     btnAlterar.Enabled      := False;
     btnLocalizar.Enabled    := False;
     btnNovoObs.Enabled      := False;
     btnExcluirObs.Enabled   := False;
     btnAlterarObs.Enabled   := False;
     btnLocalizarObs.Enabled := False;
     DBG_eventos.Enabled     := False;
     DBG_obs.Enabled         := False;
     edtDescObs.Enabled      := True;
     edtDescObs_ing.Enabled  := True;
     dbckCli_Visu.Enabled    := True;
     dbcbObsAtivo.Enabled    := True;     

     op := 2;
     edtDescObs.SetFocus;
   end;    
end;

procedure Tf_follow.btnGravarClick(Sender: TObject);
var
  qcodigo : string;
  temcod : boolean;
begin
  if op = 1
   then begin
     novo := '1';

     Q_Evento.Close;
     Q_Evento.params[0].asstring := '%';
     Q_Evento.open;

     novo := IntToStr(Q_Evento.RecordCount+1101);
     temcod := true;

     while temcod do
      begin
        Q_Evento.Close;
        Q_Evento.params[0].asstring := novo;
        Q_Evento.open;

        if (q_evento.recordcount = 0)
         then temcod := false
         else novo := IntToStr(strtoint(novo)+1);
      end;

     edtCod.Text:=novo;
     t_eventoscodigo.asstring := novo;
     t_eventos.post;
     t_eventos_ingcodigo.asstring := novo;
     t_eventos_ing.post;

     //Leonardo.alabarce -18/11/11 -ticket 967
     t_obsEvento.asstring    := novo;
     t_obsCodigo.asstring    := '0';
     t_obsDescricao.asstring := '';
     t_obsAtivo.asstring     := '1';
     t_obscli_visu.AsBoolean := false;
     t_obs.Post;

     t_obs_ingEvento.asstring      := novo;
     t_obs_ingCodigo.asstring      := '0';
     t_obs_ingDescricao.asstring   := '';
     t_obs_ingDescricao_i.asstring := '';
     t_obs_ingAtivo.asstring       := '1';
     t_obs_ingcli_visu.AsBoolean   := false;
     t_obs_ing.Post;
     //Fim ----------------------------------------------------

     MessageDlg('Evento incluido com sucesso!', mtInformation,[mbOk], 0);
     qcodigo := t_eventoscodigo.asstring;

     //eduardo.souza - 18/01/2012 - Odilma - Somente ativos
     q_eventosgrupos.ParamByName('Ativo').AsBoolean := chkAtivos.Checked;
     // fim da alteração - 18/01/2012
     
     q_eventosgrupos.close;
     q_eventosgrupos.open;
     q_eventosgrupos.Locate('codigo',qcodigo,[]);
     qrUpdateObs.close;
     qrUpdateObs.ExecSQL;
   end
   else begin
     t_eventos.edit;
     t_eventos.Post;
     t_eventos_ing.edit;
     t_eventos_ing.Post;
     MessageDlg('Alteração do Evento feita com sucesso!', mtInformation,[mbOk], 0);
     qcodigo := t_eventoscodigo.asstring;

     //eduardo.souza - 18/01/2012 - Odilma - Somente ativos
     q_eventosgrupos.ParamByName('Ativo').AsBoolean := chkAtivos.Checked;
     q_eventosgrupos.close;
     q_eventosgrupos.open;
     // fim da alteração - 18/01/2012

     q_eventosgrupos.Locate('codigo',qcodigo,[]);
   end;

  btnCancelar.Enabled       := False;
  btnGravar.Enabled         := False;
  btnNovo.Enabled           := True;
  btnExcluir.Enabled        := True;
  btnAlterar.Enabled        := True;
  btnLocalizar.Enabled      := True;
  btnNovoObs.Enabled        := True;
  btnExcluirObs.Enabled     := True;
  btnAlterarObs.Enabled     := True;
  btnLocalizarObs.Enabled   := True;
  DBG_eventos.Enabled       := True;
  DBG_obs.Enabled           := True;
  edtDesc.Enabled           := False;
  edtgrupo.Enabled          := False;
  edtqtd.Enabled            := False;
  edtfecha.enabled          := False;
  edtdesc_ing.enabled       := False;
  dbcbEventoAtivo.Enabled   := False;

  btnNovo.SetFocus;
end;

procedure Tf_follow.t_eventosAfterOpen(DataSet: TDataSet);
begin
  edtLocalizarObs.Clear;
end;

procedure Tf_follow.btnGravarObsClick(Sender: TObject);
var
  qcodigo : string;
begin
  if op = 1
   then begin
     novo :='1';
     Q_Obs.Close;
     Q_Obs.params[0].asstring := t_eventoscodigo.AsString;
     Q_Obs.open;

     novo := IntToStr(Q_Obs.RecordCount+1101);

     while q_obs.Locate('codigo',novo,[]) do
      begin
        novo := IntToStr(strtoint(novo)+1);
      end;

     edtCod.Text    := novo;
     edtCodObs.Text := novo;

     t_obsevento.asstring := t_eventoscodigo.AsString;
     t_obscodigo.asstring := novo;
     t_obs.post;
     t_obs_ingevento.asstring := t_eventoscodigo.AsString;
     t_obs_ingcodigo.asstring := novo;
     t_obs_ing.post;

     MessageDlg('Observação incluida com sucesso!', mtInformation,[mbOk], 0);
     qcodigo := t_obscodigo.asstring;
     q_eventosobs.close;
     q_eventosobs.open;
     q_eventosobs.Locate('codigo',qcodigo,[]);
   end
   else begin
     T_obs.edit;
     T_obs.Post;
     T_obs_ing.edit;
     T_obs_ing.Post;

     if dbckCli_Visu.Checked = true
      then begin
        qrUpdateObs_ing.close;
        qrUpdateObs_ing.ParamByName( 'valor' ).value   := 1;
        qrUpdateObs_ing.ParamByName( 'pEvento' ).value := q_eventosobsEvento.AsString;
        qrUpdateObs_ing.ParamByName( 'pCodigo' ).value := q_eventosobsCodigo.AsString;
        qrUpdateObs_ing.ExecSQL;
      end
      else begin
        qrUpdateObs_ing.close;
        qrUpdateObs_ing.ParamByName( 'valor' ).value   := 0;
        qrUpdateObs_ing.ParamByName( 'pEvento' ).value := q_eventosobsEvento.AsString;
        qrUpdateObs_ing.ParamByName( 'pCodigo' ).value := q_eventosobsCodigo.AsString;
        qrUpdateObs_ing.ExecSQL;
      end;

     MessageDlg('Alteração da Observação feita com sucesso!', mtInformation,[mbOk], 0);
     qcodigo := t_obscodigo.asstring;
     q_eventosobs.close;
     q_eventosobs.open;
     q_eventosobs.Locate('codigo',qcodigo,[]);
   end;

  qrUpdateObs_ing.close;
  qrUpdateObs.close;
  qrUpdateObs.ExecSQL;

  btnCancelarObs.Enabled    := False;
  btnGravarObs.Enabled      := False;
  btnNovo.Enabled           := True;
  btnExcluir.Enabled        := True;
  btnAlterar.Enabled        := True;
  btnLocalizar.Enabled      := True;
  btnNovoObs.Enabled        := True;
  btnExcluirObs.Enabled     := True;
  btnAlterarObs.Enabled     := True;
  btnLocalizarObs.Enabled   := True;
  DBG_eventos.Enabled       := True;
  DBG_obs.Enabled           := True;
  edtDescObs.Enabled        := False;
  edtDescObs_ing.Enabled    := False;
  dbckCli_Visu.Enabled      := False;
  dbcbObsAtivo.Enabled      := False;

  btnNovoObs.SetFocus;
end;

procedure Tf_follow.btnExcluirClick(Sender: TObject);
begin
  Q_Follow.Close;
  Q_Follow.params[0].asstring := t_eventoscodigo.AsString;
  Q_Follow.open;

  if Q_Follow.RecordCount <> 0
   then MessageDlg('Este Evento possui Follow UP. Não pode ser excluído!', mtInformation,[mbOk], 0)
   else if MessageDlg('Confirma exclusão deste Evento?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           //sql de exclusao de obs por evento
           t_obs.first;
           t_obs.FindKey([q_eventosobsevento.asstring]);

           while (not t_obs.eof) do
            begin
              if t_obsevento.asstring = t_eventoscodigo.asstring
               then begin
                 t_obs.delete;
               end
               else begin
                 t_obs.last;
               end;
            end;

           t_eventos.delete;
           t_eventos_ing.delete;

           //eduardo.souza - 18/01/2012 - Odilma - Somente ativos
           q_eventosgrupos.ParamByName('Ativo').AsBoolean := chkAtivos.Checked;
           // fim

           q_eventosgrupos.close;
           q_eventosgrupos.open;
           MessageDlg('Evento excluído!', mtInformation,[mbOk], 0);
         end;
  btnNovo.setFocus
end;

procedure Tf_follow.btnExcluirObsClick(Sender: TObject);
begin
  Q_Follow2.Close;
  Q_Follow2.params[0].asstring := t_eventoscodigo.AsString;
  Q_Follow2.params[1].asstring := t_obscodigo.AsString;
  Q_Follow2.open;

  if Q_Follow2.RecordCount <> 0
   then MessageDlg('Esta Observação possui Follow UP. Não pode ser excluído!', mtInformation,[mbOk], 0)
   else if MessageDlg('Confirma exclusão desta Observação?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           if t_obsCodigo.AsString = '0'
            then begin
              ShowMessage('O codigo Zero(0)não é permitido a Exclusão. ');
              Exit;
            end;

           t_obs.delete;
           t_obs_ing.delete;
           q_eventosobs.close;
           q_eventosobs.open;
           MessageDlg('Observação excluída!', mtInformation,[mbOk], 0);
         end;

  btnNovoObs.SetFocus;
end;

procedure Tf_follow.edtLocalizarChange(Sender: TObject);
begin
  Q_Localizar.Close;
  Q_Localizar.params[0].asstring := '%' +edtLocalizar.text+ '%';
  Q_Localizar.open;
end;

procedure Tf_follow.edtLocalizarObsChange(Sender: TObject);
begin
  Q_LocalizarObs.Close;
  Q_LocalizarObs.params[0].asstring := t_eventoscodigo.AsString;
  Q_LocalizarObs.params[1].asstring := '%' +edtLocalizarObs.text+ '%';
  Q_LocalizarObs.open;
end;

procedure Tf_follow.btnOKClick(Sender: TObject);
begin
  pnlLocalizar.Visible := False;
  pnlPrincipal.Enabled := True;

  q_eventosgrupos.Locate('codigo',q_localizarcodigo.asstring,[]);
  dbg_eventos.SetFocus;
end;

procedure Tf_follow.btnOKObsClick(Sender: TObject);
begin
  q_eventosobs.Locate('codigo',q_localizarObscodigo.asstring,[]);

  pnlLocalizarObs.Visible := False;
  pnlPrincipal.Enabled    := True;
  
  dbg_obs.SetFocus;
end;

procedure Tf_follow.FormCreate(Sender: TObject);
begin
  t_eventos.Open;
  t_eventos_ing.Open;
  t_obs.open;
  t_obs_ing.open;

  //eduardo.souza - 18/01/2012 - Odilma - Somente ativos
  q_eventosgrupos.ParamByName('Ativo').AsBoolean := chkAtivos.Checked;
  // fim alt - 18/01/2012

  q_eventosgrupos.Open;
  q_grupos.Open;
end;

procedure Tf_follow.t_eventosAfterPost(DataSet: TDataSet);
var
  qvar, qcampos : string;
begin
  logusu('P','Alterou Evento: '+t_eventosdescricao.asstring);
end;

procedure Tf_follow.t_eventosBeforeDelete(DataSet: TDataSet);
begin
  logusu('D','Excluiu Evento: '+t_eventosdescricao.asstring);
end;

procedure Tf_follow.t_obsAfterPost(DataSet: TDataSet);
var
  qvar, qcampos : string;
begin
  logusu('P','Alterou Obs-Eventos: '+t_obsdescricao.asstring);
end;

procedure Tf_follow.t_obsBeforeDelete(DataSet: TDataSet);
begin
  logusu('D','Excluiu Obs-Eventos: '+t_obsdescricao.asstring);
end;

procedure Tf_follow.q_eventosgruposAfterScroll(DataSet: TDataSet);
begin
  q_evefecha.close;
  q_evefecha.params[0].asstring := q_eventosgruposcodigo.asstring;
  q_evefecha.open;
    
  q_eventosobs.close;
  q_eventosobs.params[0].asstring := q_eventosgruposcodigo.asstring;
  q_eventosobs.open;

  t_eventos.FindKey([q_eventosgruposcodigo.asstring]);

  if not t_eventos_ing.FindKey([q_eventosgruposcodigo.asstring])
   then begin
     t_eventos_ing.append;
     t_eventos_ingcodigo.asstring := q_eventosgruposcodigo.asstring;
     t_eventos_ing.post;
   end;

  edtCod.Text := q_eventosgruposcodigo.asstring;
end;

procedure Tf_follow.Q_LocalizarAfterScroll(DataSet: TDataSet);
begin
  q_eventosgrupos.Locate('codigo',q_localizarcodigo.asstring,[]);
end;

procedure Tf_follow.q_eventosobsAfterScroll(DataSet: TDataSet);
begin
  if t_obs.FindKey([q_eventosobsevento.asstring,q_eventosobscodigo.asstring])
   then begin
     if not t_obs_ing.FindKey([q_eventosobsevento.asstring,q_eventosobscodigo.asstring])
      then begin
        t_obs_ing.append;
        t_obs_ingevento.asstring := t_obsevento.asstring;
        t_obs_ingcodigo.asstring := t_obscodigo.asstring;
        t_obs_ing.post;
      end;
   end;
end;

procedure Tf_follow.DBG_eventosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
 if (q_eventosgruposativo.asinteger = 1)
  then DBG_eventos.canvas.font.Color := clNavy
  else DBG_eventos.canvas.font.Color := clMaroon;
end;

procedure Tf_follow.DBG_obsDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if (q_eventosobsativo.asinteger = 1)
   then DBG_eventos.canvas.font.Color := clNavy
   else DBG_eventos.canvas.font.Color := clMaroon;
end;

procedure Tf_follow.chkAtivosClick(Sender: TObject);
var
  qcodigo : string;
begin
  qcodigo := t_eventoscodigo.asstring;

  //eduardo.souza - 18/01/2012 - Odilma - Somente ativos
  q_eventosgrupos.ParamByName('Ativo').AsBoolean := chkAtivos.Checked;
  q_eventosgrupos.close;
  q_eventosgrupos.open;
  // fim da alteração - 18/01/2012

  q_eventosgrupos.Locate('codigo',qcodigo,[]);
end;

procedure Tf_follow.btnGpEventoClick(Sender: TObject);
begin
  Application.CreateForm(Tf_eventosgrupos,f_eventosgrupos);
  logusu('A','Acessou Cadastro de Grupos de Eventos de Follow Up.');
  f_eventosgrupos.show;
end;

function Tf_follow.TemObservacaoAtiva: Boolean;
var
  QrAux : TQuery;
begin
  try
    QrAux := TQuery.Create(nil);
    QrAux.DatabaseName := 'DBNMSCOMEX';

    QrAux.SQL.Add('SELECT Ativo FROM Obs_Eventos WHERE Evento = :p0 AND Ativo = 1');
    QrAux.Params[0].Value := q_eventosgruposCodigo.AsString;
    QrAux.Open;

    if QrAux.RecordCount > 0
     then Result := True
     else Result := False;
  finally
    QrAux.Close;
    QrAux.Free;
  end;
end;

procedure Tf_follow.dbcbEventoAtivoClick(Sender: TObject);
begin
  if t_eventos.State in [dsEdit]
   then begin
     if dbcbEventoAtivo.Checked = False
      then begin
        if TemObservacaoAtiva
         then begin
           Application.MessageBox('Existem observações ativas para esse evento, não será possível desativá-lo.','Atenção',MB_ICONWARNING);
           dbcbEventoAtivo.Checked := True;
         end;
      end;
   end;
end;

end.
