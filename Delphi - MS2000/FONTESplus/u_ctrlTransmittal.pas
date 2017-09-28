unit u_ctrlTransmittal;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, Db, DBTables, Mask, DBCtrls;

type
  TF_ctrlTransmittal = class(TForm)
    pnlPrinc: TPanel;
    pnlMenu: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnLocalizar: TBitBtn;
    btnFiltrar: TBitBtn;
    btnRelatorio: TBitBtn;
    Panel6: TPanel;
    mmFiltro: TMemo;
    dbGrdPatri: TDBGrid;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    qrTrans: TQuery;
    dsTrans: TDataSource;
    tbTransmittal: TTable;
    dsTtransmittal: TDataSource;
    Panel2: TPanel;
    qrUsuario: TQuery;
    dsUsuario: TDataSource;
    dsSetor: TDataSource;
    qrSetor: TQuery;
    pnlFiltrar: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    btnOkFiltrar: TBitBtn;
    dblcb3: TDBLookupComboBox;
    dblcb4: TDBLookupComboBox;
    edtValDe: TEdit;
    edtValAte: TEdit;
    cbSet: TCheckBox;
    cbRem: TCheckBox;
    cbDat: TCheckBox;
    btnCancFiltrar: TBitBtn;
    Panel7: TPanel;
    cbDes: TCheckBox;
    cbimp: TCheckBox;
    btnItem: TBitBtn;
    pnlItens: TPanel;
    Panel9: TPanel;
    DBGrid1: TDBGrid;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    qrItens: TQuery;
    dsItens: TDataSource;
    btnSair_Item: TBitBtn;
    btnSair: TBitBtn;
    DBMemo1: TDBMemo;
    tbEdtItens: TTable;
    dsItens2: TDataSource;
    pnlLoc: TPanel;
    rgLoc: TRadioGroup;
    edtLoc: TEdit;
    btnOkLoc: TBitBtn;
    btnCancLoc: TBitBtn;
    Panel3: TPanel;
    Panel11: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Panel12: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DBEdit4: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo3: TDBMemo;
    Panel8: TPanel;
    Label10: TLabel;
    Label16: TLabel;
    Label9: TLabel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    Panel10: TPanel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBMemo2: TDBMemo;
    pnlImprime: TPanel;
    rgImpr: TRadioGroup;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Panel13: TPanel;
    qrDel: TQuery;
    Label5: TLabel;
    DBEdit8: TDBEdit;
    Panel14: TPanel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    Label6: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit12: TDBEdit;
    Label20: TLabel;
    dbeditnum: TDBEdit;
    Panel15: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    qrParametros: TQuery;
    tbParametros: TTable;
    tbedtitensAux: TTable;
    Panel16: TPanel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBEdit13: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    pnlIncluir: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    lblImportador: TLabel;
    lblDestinatario: TLabel;
    lblSetor: TLabel;
    Label29: TLabel;
    SpeedButton1: TSpeedButton;
    btnOkInc: TBitBtn;
    dbLcbImport: TDBLookupComboBox;
    btnCancInc: TBitBtn;
    Panel1: TPanel;
    dbEdtTransmittal: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Edit1: TEdit;
    edtImportDesc: TDBEdit;
    DBEdit22: TDBEdit;
    pnlAlterar: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    Panel4: TPanel;
    cbdestinacao: TCheckBox;
    edtDestinacao: TEdit;
    edtImport: TEdit;
    qrImport: TQuery;
    dsImport: TDataSource;
    dblcbDestinatario: TDBLookupComboBox;
    qrDestinatario: TQuery;
    dsDestinatario: TDataSource;
    DBLookupComboBox5: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    DBEdit3: TDBEdit;
    DBEdit24: TDBEdit;
    Label33: TLabel;
    Label32: TLabel;
    Panel17: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    Label30: TLabel;
    Label31: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit23: TDBEdit;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    e_proc: TEdit;
    Label34: TLabel;
    b_linhas: TBitBtn;
    q_pro: TQuery;
    q_fat: TQuery;
    q_delit: TQuery;
    tbParametrosEmpresa: TStringField;
    tbParametrosFilial: TStringField;
    tbParametrosNumerador_Processos: TStringField;
    tbParametrosNumerador_Documentos: TStringField;
    tbParametrosEndereco_ftp: TStringField;
    tbParametrosUsuario_ftp: TStringField;
    tbParametrosSenha_ftp: TStringField;
    tbParametrosHost: TStringField;
    tbParametrosVersao: TStringField;
    tbParametroskeycrypt: TStringField;
    tbParametrosHost_smtp: TStringField;
    tbParametrosPorta_smtp: TSmallintField;
    tbParametrosUsuario_smtp: TStringField;
    tbParametrosSenha_smtp: TStringField;
    tbParametrosNumerador_Transmittal: TStringField;
    tbParametrosPATH_SERVER: TStringField;
    tbParametrosAliq_PIS_PASEP: TFloatField;
    tbParametrosAliq_COFINS: TFloatField;
    tbParametrosAliq_ICMS: TFloatField;
    tbParametrosAliq_ICMS_EXTRA: TFloatField;
    tbParametrosNumerador_Sol_Cheques: TStringField;
    tbParametrosNumerador_Sol_Reg: TStringField;
    tbParametrosNumerador_Sol_Tracla: TStringField;
    qrParametrosNumerador_transmittal: TStringField;
    qrTransEmpresa: TStringField;
    qrTransFilial: TStringField;
    qrTransCodigo: TStringField;
    qrTransData: TDateTimeField;
    qrTransImportador: TStringField;
    qrTransImportador_nome: TStringField;
    qrTransDestinatario: TIntegerField;
    qrTransDestinacao: TStringField;
    qrTransSetor: TStringField;
    qrTransRemetente: TStringField;
    qrTransDestinatarioold: TStringField;
    qrTransData_Recebimento: TDateTimeField;
    qrTransReceptor: TStringField;
    qrTransRazao_Social: TStringField;
    qrTransdescricao: TStringField;
    qrTransRazao_Social_1: TStringField;
    qrTransNome_Completo: TStringField;
    qrTransdestinatario_nome: TStringField;
    tbTransmittalEmpresa: TStringField;
    tbTransmittalFilial: TStringField;
    tbTransmittalCodigo: TStringField;
    tbTransmittalData: TDateTimeField;
    tbTransmittalImportador: TStringField;
    tbTransmittalImportador_nome: TStringField;
    tbTransmittalDestinatario: TIntegerField;
    tbTransmittalDestinacao: TStringField;
    tbTransmittalSetor: TStringField;
    tbTransmittalRemetente: TStringField;
    tbTransmittalDestinatarioold: TStringField;
    tbTransmittalData_Recebimento: TDateTimeField;
    tbTransmittalReceptor: TStringField;
    qrImportEmpresa: TStringField;
    qrImportFilial: TStringField;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    qrUsuarioEmpresa: TStringField;
    qrUsuarioFilial: TStringField;
    qrUsuarioUsuario: TStringField;
    qrUsuarioSenha: TStringField;
    qrUsuarioNome_Completo: TStringField;
    qrUsuarioDiretorio_SISCOMEX: TStringField;
    qrUsuarioNivel: TStringField;
    qrUsuarioNivel_ccorrente: TStringField;
    qrUsuarioData_validade_senha: TDateTimeField;
    qrUsuarioEmail: TStringField;
    qrUsuarioEmail_Sol_Num: TSmallintField;
    qrUsuarioEmail_aviso_oper: TSmallintField;
    qrUsuarioEmail_aviso_finan: TSmallintField;
    qrUsuarioEmail_aviso_diretoria: TSmallintField;
    qrUsuarioEmail_aviso_sistema: TSmallintField;
    qrUsuarioDistribui_processo: TSmallintField;
    qrUsuarioAbre_processos: TSmallintField;
    qrUsuarioEdita_eventos: TSmallintField;
    qrUsuarioDigitalizador: TSmallintField;
    qrUsuarioTraduz_Classifica: TSmallintField;
    qrUsuarioInativa_Cliente: TSmallintField;
    qrUsuarioEdita_cliente_inativo: TSmallintField;
    qrUsuarioFecha_Processo: TSmallintField;
    qrUsuarioEdita_Processo_Fechado: TSmallintField;
    qrUsuarioAcessa_Patrimonio: TSmallintField;
    qrUsuarioSupervisor: TStringField;
    qrUsuarioAcessa_PARAFAT: TSmallintField;
    qrUsuarioDesconto_Faturamento: TSmallintField;
    qrUsuarioResponsavel: TSmallintField;
    qrUsuarioDistribui_processoC: TSmallintField;
    qrUsuarioResponsavelC: TSmallintField;
    qrUsuarioSupervisorC: TStringField;
    qrUsuarioSetor: TStringField;
    qrSetorcodigo: TStringField;
    qrSetordescricao: TStringField;
    qrItensEmpresa: TStringField;
    qrItensFilial: TStringField;
    qrItensCodigo: TStringField;
    qrItensSequencial: TIntegerField;
    qrItensDescricao: TMemoField;
    qrItensQuantidade: TIntegerField;
    qrItensRemarks: TStringField;
    tbEdtItensEmpresa: TStringField;
    tbEdtItensFilial: TStringField;
    tbEdtItensCodigo: TStringField;
    tbEdtItensSequencial: TIntegerField;
    tbEdtItensDescricao: TMemoField;
    tbEdtItensQuantidade: TIntegerField;
    tbEdtItensRemarks: TStringField;
    tbedtitensAuxEmpresa: TStringField;
    tbedtitensAuxFilial: TStringField;
    tbedtitensAuxCodigo: TStringField;
    tbedtitensAuxSequencial: TIntegerField;
    tbedtitensAuxDescricao: TMemoField;
    tbedtitensAuxQuantidade: TIntegerField;
    tbedtitensAuxRemarks: TStringField;
    qrDestinatariocodigo: TIntegerField;
    qrDestinatariodestinatario: TStringField;
    q_proCodigo: TStringField;
    q_proTipo: TStringField;
    q_proNFiscal: TStringField;
    q_proDI: TStringField;
    q_proNumerodoccarga: TStringField;
    q_proNumeromaster: TStringField;
    q_proNumeromanifesto: TStringField;
    q_proCodigo_Presenca_Carga: TStringField;
    q_fatProcesso: TStringField;
    q_fatFatura: TStringField;
    q_proDDE: TStringField;
    q_proCodigo_Cliente: TStringField;
    Label35: TLabel;
    dbedProcesso: TDBEdit;
    tbTransmittalprocesso: TStringField;
    Label36: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    qrProcessos: TQuery;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosFechado: TSmallintField;
    qrProcessosATIVO: TSmallintField;
    qrProcessosImportador: TStringField;
    qrProcessosResponsavel_empresa: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    qrProcessosTipo: TStringField;
    qrTransprocesso: TStringField;
    lblProcesso: TLabel;
    q_proNumero_TR: TStringField;
    procedure btnOkIncClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnCancIncClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnOkLocClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOkFiltrarClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure btnCancFiltrarClick(Sender: TObject);
    procedure btnItemClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnCancLocClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure cbSetClick(Sender: TObject);
    procedure cbRemClick(Sender: TObject);
    procedure cbDesClick(Sender: TObject);
    procedure cbimpClick(Sender: TObject);
    procedure cbDatClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbLcbImportClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure cbdestinacaoClick(Sender: TObject);
    procedure DBMemo2KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo2KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBMemo3KeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo3KeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure b_linhasClick(Sender: TObject);  
    procedure dbedProcessoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_ctrlTransmittal: TF_ctrlTransmittal;
  v_setor, v_rem, v_cod, v_imp, VEmp, VFil, v_tbParametros{, v_tbTransmittal} : String;
  lbset, lbrem, lbimp, lbdes, lbdestinacao, lbdatde, lbdatate : String;
  v_codItens : Integer;
  sqlAux : String;
  v_data, auxx : String;

implementation

uses U_MSCOMEX, U_relImpTransmittal, U_RelTransAnal;

{$R *.DFM}

procedure TF_ctrlTransmittal.btnOkIncClick(Sender: TObject);
var
  v_transmittal, v_ano : String;
begin
  if (Edit1.Text = '')
   then begin
     MessageDlg('Preencha o campo "Data"',mtInformation,[mbOK],0);
     Exit;
   end;

  if (DBLookupComboBox1.Text = '')
   then begin
     MessageDlg('Preencha o campo "Setor do remetente"',mtInformation,[mbOK],0);
     Exit;
   end;

  if (dblcbDestinatario.Text = '')
   then begin
     MessageDlg('Preencha o campo "Destinatário"',mtInformation,[mbOK],0);
     Exit;
   end;
   //leonardo.alabarce 22/11/2011 - Solicitado por Odilma  - ticket 975
    if Length(F_MSCOMEX.LRTrim(dbedProcesso.Text)) = 8  then begin
       F_MSCOMEX.IncluiFollow(dbedProcesso.Text,'1021','1122','', v_usuario,Date, Time())
    end;
  //fim-----------------------------------------
  tbparametros.close;
  tbparametros.Open;
  
  v_tbParametros := tbParametrosNumerador_transmittal.AsString;
  v_ano          := (Copy(v_tbParametros,7,2));
  v_transmittal  := formatfloat('0000#',StrToInt(Copy(v_tbParametros,1,5)) + 1) + '/' + v_ano;

  qrtrans.Close;
  qrtrans.Open;

  while qrtrans.locate('Codigo',v_transmittal,[]) do
   begin
     qrtrans.Close;
     qrtrans.Open;

     tbparametros.close;
     tbparametros.Open;

     v_tbParametros := tbParametrosNumerador_transmittal.AsString;
     v_ano          := (Copy(v_tbParametros,7,2));
     v_transmittal  := formatfloat('0000#',StrToInt(Copy(v_tbParametros,1,5)) + 1) + '/' + v_ano;

     tbparametros.edit;
     tbParametrosNumerador_transmittal.AsString := v_transmittal;
     tbParametros.Post;

     dbEdtTransmittal.Text := v_transmittal;
   end;


  if (v_tbParametros = '') Or (v_tbParametros = Null)
   then Showmessage('Verificar tabela Parâmetros!')
   else begin
     tbparametros.edit;
     tbParametrosNumerador_transmittal.AsString := v_transmittal;
     tbParametros.Post;

     dbEdtTransmittal.Text := v_transmittal;
   end;

  tbTransmittalEmpresa.AsString   := VEmp;
  tbTransmittalFilial.AsString    := VFil;
  tbTransmittalData.AsDateTime    := StrToDateTime(v_data);
  tbTransmittalRemetente.AsString := v_usuario;

  logusu('I','Inseriu Novo Transmittal.'+ tbTransmittalCodigo.AsString + ' - Usuário: '+ v_usuario);

  pnlPrinc.Enabled := True;
  qrTrans.Close;
  tbTransmittal.First;
  qrtrans.Open;
  dbGrdPatri.Refresh;
  pnlIncluir.Visible := False;
  dbGrdPatri.SetFocus;

  qrUsuario.Close;
  qrSetor.Close;

  if not qrTrans.locate('codigo',v_transmittal,[])
   then qrTrans.Last;
     
  qrItens.Close;
  qrItens.Params[0].AsString := v_transmittal;
  qrItens.Open;

  pnlItens.Visible := True;
  dbGrid1.SetFocus;


end;

procedure TF_ctrlTransmittal.btnIncluirClick(Sender: TObject);
begin
  pnlPrinc.Enabled := False;

  with tbTransmittal do
   begin
     Filtered := False;
     Open;
     Last;
     tbParametros.Open;
     tbParametros.Close;
     Append;
   end;

  v_data := FormatDateTime('dd/mm/yyyy', Now);
  edit1.Text := v_data;

  qrTrans.Open;
  pnlIncluir.Visible := True;

  qrimport.Close;
  qrImport.Params[0].AsString := VEmp;
  qrImport.Params[1].AsString := VFil;
  qrImport.open;

  qrUsuario.Open;
  qrSetor.Open;
end;

procedure TF_ctrlTransmittal.FormCreate(Sender: TObject);
begin
  v_rem   := '*';
  v_setor := '*';
  sqlaux  := '';

  pnlAlterar.Height := 360;
  pnlAlterar.Left   := 248;
  pnlAlterar.Top    := 25;
  pnlIncluir.Height := 297;
  pnlIncluir.Left   := 336;
  pnlIncluir.Top    := 25;
  pnlLoc.Left       := 216;
  pnlLoc.Top        := 90;
  pnlLoc.Height     := 210;
  pnlFiltrar.Left   := 208;
  pnlFiltrar.Top    := 12;
  pnlFiltrar.Height := 357;

  pnlItens.Left   := 25;
  pnlItens.Top    := 96;
  pnlItens.Height := 241;

  pnlImprime.Left   := 192;
  pnlImprime.Top    := 93;
  pnlImprime.Height := 156;

  panel11.left   := 40;
  panel11.Top    := 100;
  panel11.Height := 216;

  qrTrans.Open;

  F_ctrlTransmittal.Left := 0;
  F_ctrlTransmittal.Top  := 0;

  F_ctrlTransmittal.width  := 794;
  F_ctrlTransmittal.height := 410;

  vEmp := F_MSComex.t_parametrosEmpresa.AsString;
  vFil := F_MSComex.t_parametrosFilial.AsString;
  
  qrDestinatario.Open;
  tbEdtItens.open;
end;

procedure TF_ctrlTransmittal.btnCancIncClick(Sender: TObject);
var
  aux : String;
begin
  Screen.Cursor := crHourGlass;
  tbTransmittal.Cancel;

  qrImport.Close;
  qrSetor.Close;
  qrUsuario.Close;
  aux := qrTransCodigo.AsString;
  
  with qrTrans do
   begin
     Close;
     Open;
   end;

  if qrTrans.Locate('Codigo', aux, [loPartialKey])
   then begin
     qrTrans.FindNext;
     qrTrans.FindPrior;
   end;

  pnlIncluir.Visible := False;
  pnlPrinc.Enabled   := True;
  dbGrdPatri.SetFocus;
  Screen.Cursor := crDefault;
end;

procedure TF_ctrlTransmittal.btnAlterarClick(Sender: TObject);
begin
  if Not ((v_usuario = qrTransRemetente.AsString) Or (strtoint(v_nivel) <= 7))
   then begin
     MessageDlg('Acesso nao Permitido!',mtWarning,[mbOK],0);
     Exit;
   end;

  if not ((v_usuario = qrTransRemetente.AsString) or (strtoint(v_nivel) <= 5))
   then panel17.enabled := False;

  tbTransmittal.Close;

  with tbTransmittal do
   begin
     Filter := 'Codigo= '''+ qrTransCodigo.AsString +''' '+' and Remetente= '''+ qrTransRemetente.AsString +''' ';
     Filtered := True;
     Open;
   end;

  if tbTransmittalCodigo.AsString = ''
   then begin
     MessageDlg('Registro Vazio',mtInformation,[mbOK],0);
     Exit;
   end;

   lblProcesso.Caption := qrtransprocesso.asstring;

  tbTransmittal.Edit;
  pnlAlterar.Visible := True;
  pnlPrinc.Enabled   := False;

  qrImport.Params[0].AsString := VEmp;
  qrImport.Params[1].AsString := VFil;
  qrImport.Open;
  
  qrUsuario.Open;
  qrSetor.Open;
end;

procedure TF_ctrlTransmittal.BitBtn2Click(Sender: TObject);
var
  aux : String;
begin
  aux := qrTransCodigo.AsString;
  Screen.Cursor := crHourGlass;
  tbTransmittal.Post;
  logusu('A','Alterou dados do Transmittal.'+ tbTransmittalCodigo.AsString + ' - Usuário: '+ v_usuario);
  tbTransmittal.Close;
  qrTrans.Close;
  qrtrans.Open;

  pnlAlterar.Visible := False;
  pnlPrinc.Enabled := True;
  Screen.Cursor := crDefault;


  if qrTrans.Locate('Codigo', aux, [loPartialKey])
   then qrTrans.FindField('Codigo');

    //leonardo.alabarce 22/11/2011 - Solicitado por Odilma  - ticket 975
  if qrtransprocesso.asstring <> '' then begin
   if ((qrTransData_Recebimento.asstring <> '') and (qrTransReceptor.asstring <> '' ))then begin
    F_MSCOMEX.IncluiFollow(lblProcesso.Caption,'1021','1150','', v_usuario,Date, Time())
   end;
  end;
  //fim-------------------------------------------------------
end;

procedure TF_ctrlTransmittal.BitBtn3Click(Sender: TObject);
var
  aux : String;
begin
  pnlPrinc.Enabled := True;
  Screen.Cursor := crHourGlass;
  tbTransmittal.Cancel;

  qrImport.Close;
  qrSetor.Close;
  qrUsuario.Close;
  aux := qrTransCodigo.AsString;

  with qrTrans do
   begin
     Close;
     Open;
   end;

  pnlAlterar.Visible := False;
  pnlPrinc.Enabled   := True;
  dbGrdPatri.SetFocus;
  Screen.Cursor := crDefault;

  if qrTrans.Locate('Codigo', aux, [loPartialKey])
   then begin
     qrTrans.FindNext;
     qrTrans.FindPrior;
   end;
end;

procedure TF_ctrlTransmittal.btnExcluirClick(Sender: TObject);
var
  aux : String;
begin
  if strtoint(v_nivel) > 5
   then begin
     MessageDlg('Acesso nao Permitido!',mtWarning,[mbOK],0);
     Exit;
   end;

  with tbTransmittal do
   begin
     Filter := 'Codigo= '''+ qrTransCodigo.AsString +''' '+' and Remetente= '''+ qrTransRemetente.AsString +''' ';
     Filtered := True;
     Open;
   end;

  if tbTransmittalCodigo.AsString = ''
   then begin
     MessageDlg('Registro Vazio',mtInformation,[mbOK],0);
     Exit;
   end;
   
  if MessageDlg('Confirma a exclusão do Transmittal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;
   
  logusu('E','Excluiu dados do Transmittal.'+ tbTransmittalCodigo.AsString + ' - Usuário: '+ v_usuario);
  qrDel.Params[0].AsString := qrTransCodigo.AsString;
  qrDel.ExecSQL;
  tbTransmittal.Delete;
  MessageDlg('Transmittal excluído com sucesso.', mtInformation, [mbOk], 0);

  with qrTrans do
   begin
     qrTrans.FindPrior;
     aux := qrTransCodigo.AsString;
     Close;
     Open;
   end;
   
  if qrTrans.Locate('Codigo', aux, [loPartialKey])
   then qrTrans.FindNext;
end;

Procedure TF_ctrlTransmittal.btnOkLocClick(Sender: TObject);
var
 Campo : String;
begin
  case rgLoc.ItemIndex Of
     0: begin
        campo := 'Codigo';
    end;
     1: begin
        campo := 'Data';
    end;
     2: begin
        campo := 'Importador_Nome';
    end;
     3: begin
        campo := 'destinatario_nome';
    end;
     4: begin
        campo := 'Nome_Completo';
    end;
     5: begin
        campo := 'Descricao';
    end;
     6: begin
        campo := 'Destinacao';
    end;
     7: begin
        campo := 'Processo';
    end;
  end;

  if qrTrans.Locate(campo, edtLoc.Text, [loPartialKey])
   then begin
     pnlLoc.Visible   := False;
     pnlPrinc.Enabled := True;
   end
   else MessageDlg('Parâmetro solicitado não foi localizado.', mtInformation,[mbOk], 0);
end;

procedure TF_ctrlTransmittal.btnLocalizarClick(Sender: TObject);
begin
  pnlPrinc.Enabled := False;
  pnlLoc.Visible   := True;
end;

procedure TF_ctrlTransmittal.btnOkFiltrarClick(Sender: TObject);
var
  i : integer;
  aux : String;
begin
  if dblcb3.text <> ''
   then lbset := dblcb3.text;

  if dblcb4.text <> ''
   then lbrem := dblcb4.text;

  if dblookupcombobox5.text <> ''
   then lbdes := dblookupcombobox5.text;

  if edtDestinacao.text <> ''
   then lbdestinacao := edtDestinacao.text;

  if edtImport.text <> ''
   then lbimp := edtImport.text;

  if edtValde.text <> ''
   then lbdatde := edtValde.text;

  if edtValate.text <> ''
   then lbdatate := edtValate.text;

  for i:= 1 to 6 do dbgrdpatri.columns[i].Visible := True;

  qrTrans.Close;
  sqlAux := 'WHERE S.Codigo <> Null';
  mmFiltro.Clear;
  mmFiltro.Lines.Append('TRANSMITTALS FILTRADOS POR:');

  if cbSet.Checked
   then begin
     if dblcb3.Text = ''
      then begin
        cbSet.Checked := False;
        qrTrans.Open;
        Exit;
      end;

     sqlAux := sqlAux + ' AND S.Descricao = ''' + dblcb3.Text + '''';
     mmFiltro.Lines.Append('SETOR: '+dblcb3.Text);
     mmFiltro.Tag := 1;
     dbgrdpatri.columns[6].Visible := False;
   end;


  if cbRem.Checked
   then begin
     if dblcb4.Text = ''
      then begin
        cbRem.Checked := False;
        qrTrans.Open;
        Exit;
      end;

     sqlAux := sqlAux + ' AND U.Nome_Completo = ''' + dblcb4.Text + '''';
     mmFiltro.Lines.Append('REMETENTE: '+dblcb4.Text);
     mmFiltro.Tag := 1;
     dbgrdpatri.columns[5].Visible := False;
   end;

  if cbDes.Checked
   then begin
     if dblookupcombobox5.Text = ''
      then begin
        cbDes.Checked := False;
        qrTrans.Open;
        Exit;
      end;

     if tipoBanco = 1
      then sqlAux := sqlAux + ' AND Destinatario.Destinatario Like ''' +'%'+ DBLookupComboBox5.Text +'%'+ '''';

     sqlAux := sqlAux + ' AND Destinatario.Destinatario Like ''' +'*'+ DBLookupComboBox5.Text +'*'+ '''';
     mmFiltro.Lines.Append('DESTINATÁRIO: '+qrDestinatariodestinatario.AsString);
     mmFiltro.Tag := 1;
     dbgrdpatri.columns[3].Visible := False;
   end;

  if cbImp.Checked
   then begin
     if edtImport.Text = ''
      then begin
        cbImp.Checked := False;
        qrTrans.Open;
        Exit;
      end;

     if tipoBanco = 1
      then sqlAux := sqlAux + ' AND T.Importador_nome Like ''' + '%'+edtImport.Text+'%' + '''';

     mmFiltro.Lines.Append('IMPORTADOR: '+edtImport.Text);
     mmFiltro.Tag := 1;
     dbgrdpatri.columns[2].Visible := False;
   end;

  if cbDestinacao.Checked
   then begin
     if edtDestinacao.Text = ''
      then begin
        cbDestinacao.Checked := False;
        qrTrans.Open;
        Exit;
      end;

     if tipoBanco = 1
      then sqlAux := sqlAux + ' AND T.Destinacao Like ''' +'%'+ edtDestinacao.Text +'%'+ '''';

     mmFiltro.Lines.Append('DESTINAÇÃO: '+edtDestinacao.Text);
     mmFiltro.Tag := 1;
     dbgrdpatri.columns[4].Visible := False;
   end;

  if cbDat.Checked
   then begin
     if (edtValDe.Text = '') and (edtValAte.Text = '')
      then begin
        cbdat.Checked := False;
        qrTrans.Open;
        Exit;
      end;

     dbgrdpatri.columns[1].Visible := False;
     mmFiltro.Tag := 1;
     mmFiltro.Lines.Append('DATA DE: '+edtValDe.Text+' ATÉ: '+edtValAte.Text);

     if (edtValDe.Text <> '')
      then begin
        if tipoBanco = 1
         then sqlAux := sqlAux + ' AND T.Data >= Cast(' + '''' + edtValDe.Text+ '''' + 'as datetime)';
      end;

     if (edtValAte.Text <> '')
      then begin
        if tipoBanco = 1
         then sqlAux := sqlAux + ' AND T.Data <= Cast(' + '''' + edtValAte.Text+ '''' + ' as datetime)';
      end;
   end;
   
  if mmFiltro.Tag =1
   then mmfiltro.Visible := True
   else mmFiltro.Visible := False;
   
  mmFiltro.Tag := 0;

  if dblcb4.Text <> ''
   then v_rem := qrUsuarioUsuario.AsString
   else v_rem := '*';

  if cbSet.Checked
   then v_setor := qrSetorcodigo.AsString
   else v_setor := '*';

  qrTrans.SQL.Strings[3] := sqlAux;

  qrTrans.Open;
  pnlFiltrar.Visible := False;
  pnlPrinc.Enabled := True;

  qrImport.Close;
  qrUsuario.Close;
  qrSetor.Close;

  for i:= 1 to 6 do dbgrdpatri.columns[i].Visible := True;
end;

procedure TF_ctrlTransmittal.btnFiltrarClick(Sender: TObject);
begin
  qrImport.Params[0].AsString := VEmp;
  qrImport.Params[1].AsString := VFil;
  qrImport.Open;
  
  qrUsuario.Open;
  qrSetor.Open;

  pnlFiltrar.Visible := True;
  pnlPrinc.Enabled := False;
end;

procedure TF_ctrlTransmittal.btnCancFiltrarClick(Sender: TObject);
var
  i : integer;
begin
  mmFiltro.Clear;
  mmFiltro.Lines.Append('PATRIMÔNIOS FILTRADOS POR:');

  sqlAux := 'WHERE S.Codigo <> Null';
  qrTrans.SQL.Strings[3] := sqlAux;
  qrtrans.close;
  qrtrans.open;

  qrImport.Close;
  qrUsuario.Close;
  qrSetor.Close;

  pnlFiltrar.Visible := False;
  pnlPrinc.Enabled   := True;
end;

procedure TF_ctrlTransmittal.btnItemClick(Sender: TObject);
begin
  if (qrTransCodigo.AsString = '') Or (qrTransCodigo.AsString = Null)
   then begin
     MessageDlg('Registro Vazio!',mtWarning,[mbOK],0);
     Exit;
   end;
   
  pnlPrinc.Enabled := False;

  qrItens.Close;
  qrItens.Params[0].AsString := qrTransCodigo.AsString;
  qrItens.Open;

  pnlItens.Visible := True;
  dbGrid1.SetFocus;
end;

procedure TF_ctrlTransmittal.BitBtn7Click(Sender: TObject);
var
  aux : String;
begin
  aux := (dbEditnum.Text);
  tbedtitensaux.open;

  if aux <> auxx
   then if tbEdtItensAux.FindKey([vemp, vfil, qrtransCodigo, aux])
         then begin
           MessageDlg('Já existe Item de Transmittal com este Número.', mtInformation, [mbOk], 0);
           Exit;
         end;

  tbedtitensaux.Close;

  pnlItens.Enabled := True;
  Screen.Cursor    := crHourGlass;

  tbEdtItens.Post;

  logusu('A','Alterou dados dos Itens do Transmittal.'+ tbTransmittalCodigo.AsString + ' - Usuário: '+ v_usuario);
  tbTransmittal.Close;

  qrItens.Close;
  qrItens.Open;
  qritens.locate('sequencial',strtoint(aux),[]);

  Screen.Cursor    := crDefault;
  pnlItens.Enabled := True;
  panel8.Visible   := False;

  dbGrid1.SetFocus;
end;

procedure TF_ctrlTransmittal.btnSairClick(Sender: TObject);
begin
  pnlItens.Visible := False;
  pnlPrinc.Enabled := True;
  dbGrdPatri.SetFocus;
end;

procedure TF_ctrlTransmittal.BitBtn5Click(Sender: TObject);
begin
  if not ((v_usuario = qrTransRemetente.AsString) or (strtoint(v_nivel) <= 5))
   then begin
     MessageDlg('Acesso nao Permitido!',mtWarning,[mbOK],0);
     Exit;
   end;

  if (qrItensSequencial.AsString = '') or (qrItensSequencial.AsString = Null)
   then begin
     MessageDlg('Registro Vazio!',mtWarning,[mbOK],0);
     Exit;
   end;

  pnlItens.Enabled := False;
  
  panel8.Left      := 40;
  panel8.Top       := 100;
  panel8.Height    := 220;

  tbEdtItens.FindKey([qrItensEmpresa.asstring,qrItensFilial.asstring,qrItenscodigo.asstring,qrItenssequencial.asinteger]);
  tbEdtItens.refresh();
  tbEdtItens.Edit;

  panel8.Visible := True;
  dbEditNum.SetFocus;
  auxx := dbeditnum.Text;
end;

procedure TF_ctrlTransmittal.BitBtn8Click(Sender: TObject);
begin
  pnlItens.Enabled := True;
  panel8.Visible   := False;
  tbedtitens.Cancel;
end;

procedure TF_ctrlTransmittal.BitBtn4Click(Sender: TObject);
begin
  if not ((v_usuario = qrTransRemetente.AsString) or (strtoint(v_nivel) <= 5))
   then begin
     MessageDlg('Acesso nao Permitido!',mtWarning,[mbOK],0);
     Exit;
   end;

  pnlItens.Enabled := False;

  v_codItens := 1;

  if qritens.RecordCount > 0
   then begin
     qritens.last;
     v_codItens := qritensSequencial.AsInteger+1;
   end;

  tbEdtItens.Append;
  tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
  tbEdtItensFilial.asstring      := qrTransFilial.asstring;
  tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
  tbEdtItensSequencial.AsInteger := v_codItens;

  panel11.Visible := True;
  DBEdit8.SetFocus;
end;

procedure TF_ctrlTransmittal.BitBtn9Click(Sender: TObject);
var
  aux : string;
begin
  if Trim(DBEdit8.Text) = ''
   then begin
     MessageDlg('Número do Item de Transmittal não pode ser vazio.', mtInformation, [mbOk], 0);
     DBEdit8.SetFocus;
     Exit;
   end;

  aux := (dbEditnum.Text);
  tbedtitensaux.open;

  if aux <> auxx
   then if tbEdtItensAux.FindKey([vemp, vfil, qrtransCodigo, aux])
         then begin
           MessageDlg('Já existe Item de Transmittal com este Número.', mtInformation, [mbOk], 0);
           Exit;
         end;

  tbedtitensaux.Close;
  pnlitens.Enabled := True;
  tbEdtItens.Post;
  Panel11.Visible := False;
  pnlItens.Enabled := True;
  
  qrItens.Close;
  qrItens.Open;
  qrItens.Last;
  
  panel11.Visible := False;
end;

procedure TF_ctrlTransmittal.BitBtn10Click(Sender: TObject);
begin
  pnlItens.Enabled := True;
  panel11.Visible  := False;
  tbEdtItens.Cancel;
end;

procedure TF_ctrlTransmittal.BitBtn6Click(Sender: TObject);
begin
  if not ((v_usuario = qrTransRemetente.AsString) or (strtoint(v_nivel) <= 5))
   then begin
     MessageDlg('Acesso nao Permitido!',mtWarning,[mbOK],0);
     Exit;
   end;

  if (qrItensSequencial.AsString = '') Or (qrItensSequencial.AsString = Null)
   then begin
     MessageDlg('Registro Vazio!',mtWarning,[mbOK],0);
     Exit;
   end;

  if MessageDlg('Confirma a exclusão do Transmittal?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;

  if tbEdtItens.FindKey([qrItensEmpresa.asstring,qrItensFilial.asstring,qrItenscodigo.asstring,qrItenssequencial.asinteger])
   then begin
     logusu('E','Excluiu dados do Itens de Transmittal.'+ tbTransmittalCodigo.AsString + ' - Usuário: '+ v_usuario);
     tbEdtItens.Delete;

     MessageDlg('Item de Transmittal excluído com sucesso.', mtInformation, [mbOk], 0);
     qritens.Close;
     qritens.open;
     qritens.last;
   end;

  panel11.Visible := False;
end;

procedure TF_ctrlTransmittal.btnCancLocClick(Sender: TObject);
begin
  pnlLoc.Visible   := False;
  pnlPrinc.Enabled := True;
  dbGrdPatri.SetFocus;
end;

procedure TF_ctrlTransmittal.BitBtn1Click(Sender: TObject);
var
  aux : String;
begin
  if not Assigned(F_RelImpTransmittal)
   then Application.CreateForm(TF_RelImpTransmittal, F_RelImpTransmittal);

  if not (Trim(qrTransData_Recebimento.AsString) = '')
   then begin
     F_relImpTransmittal.QRLblData.caption := qrTransData_Recebimento.AsString;
   end
   else F_relImpTransmittal.QRLblData.caption := '';

  if not (Trim(qrTransReceptor.AsString) = '')
   then begin
     F_relImpTransmittal.qrlblnome.caption := qrTransReceptor.AsString;
   end
   else F_relImpTransmittal.qrlblnome.caption := '';

  F_RelImpTransmittal.Preview;
end;

procedure TF_ctrlTransmittal.btnRelatorioClick(Sender: TObject);
begin
  pnlImprime.Visible := True;
end;

procedure TF_ctrlTransmittal.BitBtn11Click(Sender: TObject);
begin
  if rgimpr.ItemIndex = 1
   then begin
     pnlImprime.Visible := False;
     pnlPrinc.Enabled := True;

     if not Assigned(f_reltransanal)
      then Application.CreateForm(Tf_reltransanal, f_reltransanal);

     f_reltransanal.GroupHeaderBand1.Enabled := True;
     f_reltransanal.QRSubDetail2.Enabled     := True;
     f_reltransanal.GroupFooterBand1.Enabled := True;
     f_reltransanal.Preview;
   end
   else begin
     pnlImprime.Visible := False;
     pnlPrinc.Enabled   := True;
     
     if not Assigned(f_reltransanal)
      then Application.CreateForm(Tf_reltransanal, f_reltransanal);

     f_reltransanal.GroupHeaderBand1.Enabled := False;
     f_reltransanal.QRSubDetail2.Enabled     := False;
     f_reltransanal.GroupFooterBand1.Enabled := False;
     f_reltransanal.Preview;
   end;
end;

procedure TF_ctrlTransmittal.BitBtn12Click(Sender: TObject);
begin
  pnlImprime.Visible := False;
  pnlPrinc.Enabled   := True;
end;

procedure TF_ctrlTransmittal.cbSetClick(Sender: TObject);
begin
  if cbset.Checked
   then dblcb3.Enabled := True
   else begin
     dblcb3.Enabled  := False;
     dblcb3.KeyValue := '';
   end;
end;

procedure TF_ctrlTransmittal.cbRemClick(Sender: TObject);
begin
  if cbrem.Checked
   then dblcb4.Enabled := True
   else begin
     dblcb4.Enabled := False;
     dblcb4.KeyValue := '';
   end;
end;

procedure TF_ctrlTransmittal.cbDesClick(Sender: TObject);
begin
  if cbdes.Checked
   then dblookupcombobox5.Enabled := True
   else begin
     dblookupcombobox5.Enabled  := False;
     dblookupcombobox5.KeyValue := '';
   end;
end;

procedure TF_ctrlTransmittal.cbimpClick(Sender: TObject);
begin
  if cbimp.Checked
   then edtImport.Enabled := True
   else begin
     edtImport.Enabled := False;
     edtImport.Text    := '';
   end;
end;

procedure TF_ctrlTransmittal.cbDatClick(Sender: TObject);
begin
  if cbdat.Checked
   then begin
     edtValDe.Enabled  := True;
     edtValAte.Enabled := True;
   end
   else begin
     edtValDe.Enabled  := False;
     edtValDe.Text     := '';
     
     edtValAte.Enabled := False;
     edtValAte.Text    := '';
   end;
end;

procedure TF_ctrlTransmittal.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I: Integer;
begin
  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;
  
  Action            := caFree;
  F_ctrlTransmittal := Nil;
  f_mscomex.ControledeTransmittal2.Enabled := true;
end;

procedure TF_ctrlTransmittal.SpeedButton1Click(Sender: TObject);
begin
  dblcbImport.KeyValue  := '';
  edtImportDesc.Text    := '';
  edtImportDesc.Enabled := True;
  edtImportDesc.Color   := clWhite;
  edtImportDesc.SetFocus;
end;

procedure TF_ctrlTransmittal.dbLcbImportClick(Sender: TObject);
begin
  if dbLcbImport.Text = ''
   then begin
     edtImportDesc.Enabled := True;
     edtImportDesc.Color   := clWhite;
   end
   else begin
     edtImportDesc.Enabled := False;
     edtImportDesc.Color   := clSilver;
     edtImportDesc.Text    := dbLcbImport.Text;
   end;
end;

procedure TF_ctrlTransmittal.SpeedButton2Click(Sender: TObject);
begin
  DBLookupComboBox2.KeyValue := '';

  DBEdit21.Enabled := True;
  DBEdit21.Color := clWhite;
  DBEdit21.SetFocus;
  DBEdit21.Text := '';
  
  tbTransmittalImportador.AsString := '';
end;

procedure TF_ctrlTransmittal.DBLookupComboBox2Click(Sender: TObject);
begin
  if DBLookupComboBox2.Text = ''
   then begin
     dbedit21.Enabled := True;
     dbedit21.Color   := clWhite;
   end
   else begin
     dbedit21.Enabled := False;
     dbedit21.Color   := clSilver;
     dbedit21.Text    := dbLcbImport.Text;
   end;
end;

procedure TF_ctrlTransmittal.cbdestinacaoClick(Sender: TObject);
begin
  if cbdestinacao.Checked
   then edtDestinacao.Enabled := True
   else begin
     edtDestinacao.Enabled := False;
     edtDestinacao.Text    := '';
   end;
end;

procedure TF_ctrlTransmittal.DBMemo2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if dbmemo2.lines.Count >= 35
   then key := #8;
end;

procedure TF_ctrlTransmittal.DBMemo2KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dbmemo2.lines.Count >= 35
   then dbmemo2.lines.delete(34);
end;

procedure TF_ctrlTransmittal.DBMemo3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if dbmemo3.lines.Count >= 35
   then key := #8;
end;

procedure TF_ctrlTransmittal.DBMemo3KeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if dbmemo3.lines.Count >= 35
   then dbmemo3.lines.delete(34);
end;

procedure TF_ctrlTransmittal.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure TF_ctrlTransmittal.b_linhasClick(Sender: TObject);
var
  temtipo : boolean;
  qfaturas : string;
begin
  if Not ((v_usuario = qrTransRemetente.AsString) Or (strtoint(v_nivel) <= 5))
   then begin
     MessageDlg('Acesso nao Permitido!',mtWarning,[mbOK],0);
     Exit;
   end;

  if MessageDlg(v_usuario+', Confirma a exclusão das linhas e inserir linhas padrão faturamento?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then exit;

  q_pro.close;
  q_pro.Params[0].AsString := e_proc.text;
  q_pro.open;

  if q_pro.RecordCount = 0
   then begin
     MessageDlg('Processo não encontrado!',mtWarning,[mbOK],0);
     Exit;
   end;

  temtipo := false;

  {IMPORTAÇÃO MARITIMO}
  if q_protipo.asstring = '12'
   then begin
     temtipo := true;

     q_delit.Params[0].AsString := qrTransCodigo.asstring;
     q_delit.ExecSQL;

     qfaturas := '';
     q_fat.close;
     q_fat.Params[0].AsString := e_proc.text;
     q_fat.open;

     while not q_fat.eof do
      begin
        if qfaturas = ''
         then qfaturas := q_fatfatura.asstring
         else qfaturas := qfaturas+', '+q_fatfatura.asstring;

        q_fat.Next;
      end;

{
  Importação - Marítimo
linha
 Descricao
 Quantidade
 Remarks

1
 DEMONSTRATIVO FINANCEIRO MS: 03859/08
 1
 ORIGINAL

2
 NF. DE SERVIÇOS MS Nº 037899
 1
 ORIGINAL

3
 CI Nº 08/1459183-8
 1
 ORIGINAL

4
 TELA SISCOMEX
 1
 CÓPIA

5
 DI Nº 08/1459183-8
 1
 COPIA

6
 DTA Nº 08/0424051-5
 1
 COPIA

7
 DARJ / ICMS - R$ 2.197,30 - R$ 32.959,53
 2
 ORIGINAIS

8
 BL Nº OA82-000254
 1
 COPIA

9
 PROFORMA INVOICE Nº EGLABPAB08A2573
 1
 COPIA

10
 PACKING LIST Nº EGLABPAB08A2573
 1
 COPIA

11
 MARINHA MERCANTE Nº 0800607995 - R$ 1.038,08
 1
 COPIA

12
 NOTA FISCAL DE SERVIÇOS CEVA Nº 48042 - R$ 416,38
 1
 ORIGINAL

13
 NOTA FISCAL DE SERVIÇOS COSTA DO SOL Nº 004078 - R$ 1.169,42
 1
 ORIGINAL

14
 PLANILHA COSTA DO SOL Nº 017120/2008-I
 1
 ORIGINAL

15
 NOTA FISCAL DE ENTRADA Nº 4342 - R$ 219.730,23
 1
 ORIGINAL

16
 RECIBO MS - R$ 36,26
 1
 ORIGINAL
}

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 1;
     tbEdtItensdescricao.asstring   := 'DEMONSTRATIVO FINANCEIRO REF.MS: '+q_procodigo.asstring;//03859/08
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 2;
     tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº '+q_pronfiscal.asstring;//037899
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 3;
     tbEdtItensdescricao.asstring   := 'CI Nº '+q_prodi.asstring;//08/1459183-8
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 4;
     tbEdtItensdescricao.asstring   := 'TELA SISCOMEX';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'CÓPIA';

     if qrTransImportador.AsString <> '2' {No caso de Transocean não}
      then begin
        tbEdtItens.Append;
        tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
        tbEdtItensFilial.asstring      := qrTransFilial.asstring;
        tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
        tbEdtItensSequencial.AsInteger := 5;
        tbEdtItensdescricao.asstring   := 'DI Nº '+q_prodi.asstring;//08/1459183-8
        tbEdtItensquantidade.asinteger := 1;
        tbEdtItensremarks.asstring     := 'CÓPIA';
      end;

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensdescricao.asstring   := 'DTA Nº '+q_pronumeromanifesto.asstring;//08/1459183-8
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'CÓPIA';

     if qrTransImportador.AsString = '2'
      then tbEdtItensSequencial.AsInteger := 5
      else tbEdtItensSequencial.AsInteger := 6;

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensdescricao.asstring   := 'DARJ / ICMS';
     tbEdtItensquantidade.asinteger := 2;
     tbEdtItensremarks.asstring     := 'ORIGINAIS';

     if qrTransImportador.AsString = '2'
      then tbEdtItensSequencial.AsInteger := 6
      else tbEdtItensSequencial.AsInteger := 7;

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensdescricao.asstring   := 'BL Nº '+q_pronumerodoccarga.asstring;//OA82-000254
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'CÓPIA';

     if qrTransImportador.AsString = '2'
      then tbEdtItensSequencial.AsInteger := 7
      else tbEdtItensSequencial.AsInteger := 8;

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensdescricao.asstring   := 'PROFORMA INVOICE Nº '+qfaturas;
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'CÓPIA';

     if qrTransImportador.AsString = '2'
      then tbEdtItensSequencial.AsInteger := 8
      else tbEdtItensSequencial.AsInteger := 9;

     if qrTransImportador.AsString <> '2' {No caso da Transocean não}
      then begin
        tbEdtItens.Append;
        tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
        tbEdtItensFilial.asstring      := qrTransFilial.asstring;
        tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
        tbEdtItensSequencial.AsInteger := 10;
        tbEdtItensdescricao.asstring   := 'PACKING LIST Nº '+qfaturas;
        tbEdtItensquantidade.asinteger := 1;
        tbEdtItensremarks.asstring     := 'CÓPIA';
      end;

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensdescricao.asstring   := 'MARINHA MERCANTE Nº ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'CÓPIA';

     if qrTransImportador.AsString = '2'
      then tbEdtItensSequencial.AsInteger := 9
      else tbEdtItensSequencial.AsInteger := 11;


     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇOS CEVA Nº ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     if qrTransImportador.AsString = '2'
      then tbEdtItensSequencial.AsInteger := 10
      else tbEdtItensSequencial.AsInteger := 12;

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇOS COSTA DO SOL Nº ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     if qrTransImportador.AsString = '2'
      then tbEdtItensSequencial.AsInteger := 11
      else tbEdtItensSequencial.AsInteger := 13;

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensdescricao.asstring   := 'PLANILHA COSTA DO SOL Nº ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     if qrTransImportador.AsString = '2'
      then tbEdtItensSequencial.AsInteger := 12
      else tbEdtItensSequencial.AsInteger := 14;

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE ENTRADA Nº ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     if qrTransImportador.AsString = '2'
      then tbEdtItensSequencial.AsInteger := 13
      else tbEdtItensSequencial.AsInteger := 15;

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensdescricao.asstring   := 'RECIBO MS ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     if qrTransImportador.AsString = '2'
      then tbEdtItensSequencial.AsInteger := 14
      else tbEdtItensSequencial.AsInteger := 16;

     tbEdtItens.edit;
     tbEdtItens.post;

     tbEdtItens.close;
     tbEdtItens.open;

     qritens.Close;
     qritens.open;
   end;
   {FIM IMPORTAÇÃO MARITIMO}

   {IMPORTAÇÃO AÉREO}
   if q_protipo.asstring = '11'
    then begin
      temtipo := true;

      q_delit.Params[0].AsString := qrTransCodigo.asstring;
      q_delit.ExecSQL;

      qfaturas := '';

      q_fat.close;
      q_fat.Params[0].AsString := e_proc.text;
      q_fat.open;

      while not q_fat.eof do
       begin
         if qfaturas = ''
          then qfaturas := q_fatfatura.asstring
          else qfaturas := qfaturas+', '+q_fatfatura.asstring;

         q_fat.Next;
       end;

{
linha
 Descricao
 Quantidade
 Remarks

1
 DEMONSTRATIVO FINANCEIRO REF.MS:
 1
 ORIGINAL

2
 NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº
 1
 ORIGINAL

3
 CI Nº
 1
 ORIGINAL

4
 TELA SISCOMEX
 1
 CÓPIA

5
 DI Nº
 1
 COPIA

6
 DARJ / ICMS
 1
 COPIA

7
 AWB Nº 020-9048.240D
 1
 COPIA

8
 PROFORMA INVOICE Nº EGLABPAB08A4591
 1
 COPIA

9
 NOTA FISCAL DE SERVIÇOS CEVA Nº 50782 - R$ 172,40
 1
 ORIGINAL

10
 RECIBO INFRAERO DAI Nº
 1
 ORIGINAL

}

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 1;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring := 'FINANCIAL STATEMENT - REFERENCE MS: '+q_procodigo.asstring;//03859/08
         tbEdtItensremarks.asstring   := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring := 'DEMONSTRATIVO FINANCEIRO REF.MS: '+q_procodigo.asstring;//03859/08
         tbEdtItensremarks.asstring   := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 2;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'INVOICE (NOTA FISCAL) SERVICES PROVIDE - MS Nº '+q_pronfiscal.asstring;//037899
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº '+q_pronfiscal.asstring;//037899
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 3;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'PROOF OF IMPORTATION (CI) Nº '+q_prodi.asstring;//08/1459183-8
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'CI Nº '+q_prodi.asstring;//08/1459183-8
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 4;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'SISCOMEX SCREEN';
         tbEdtItensremarks.asstring     := 'COPY';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'TELA SISCOMEX';
         tbEdtItensremarks.asstring     := 'CÓPIA';
       end;

      tbEdtItensquantidade.asinteger := 1;

      if qrTransImportador.AsString <> '2' {No caso da Transocean não}
      then begin
        tbEdtItens.Append;
        tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
        tbEdtItensFilial.asstring      := qrTransFilial.asstring;
        tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
        tbEdtItensSequencial.AsInteger := 5;

        if qrTransImportador.AsString = '351'
         then begin
           tbEdtItensdescricao.asstring   := 'IMPORT DECLARATION (DI) Nº '+q_prodi.asstring;//08/1459183-8
           tbEdtItensremarks.asstring     := 'COPY';
         end
         else begin
           tbEdtItensdescricao.asstring   := 'DI Nº '+q_prodi.asstring;//08/1459183-8
           tbEdtItensremarks.asstring     := 'CÓPIA';
         end;

        tbEdtItensquantidade.asinteger := 1;
      end;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'EXONERATION SLIP';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'DARJ / ICMS';
         tbEdtItensremarks.asstring     := 'CÓPIA';
       end;

      tbEdtItensquantidade.asinteger := 1;

      if qrTransImportador.AsString = '2'
       then tbEdtItensSequencial.AsInteger := 5
       else tbEdtItensSequencial.AsInteger := 6;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'AIR WAY BILL (AWB) Nº '+q_pronumerodoccarga.asstring;//OA82-000254
         tbEdtItensremarks.asstring     := 'COPY';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'AWB Nº '+q_pronumerodoccarga.asstring;//OA82-000254
         tbEdtItensremarks.asstring     := 'CÓPIA';
       end;

      tbEdtItensquantidade.asinteger := 1;

      if qrTransImportador.AsString = '2'
       then tbEdtItensSequencial.AsInteger := 6
       else tbEdtItensSequencial.AsInteger := 7;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'PROFORMA INVOICE Nº '+qfaturas;
         tbEdtItensremarks.asstring     := 'COPY';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'PROFORMA INVOICE Nº '+qfaturas;
         tbEdtItensremarks.asstring     := 'CÓPIA';
       end;

      tbEdtItensquantidade.asinteger := 1;

      if qrTransImportador.AsString = '2'
       then tbEdtItensSequencial.AsInteger := 7
       else tbEdtItensSequencial.AsInteger := 8;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'RESPONSABILITY TERM (TR) Nº ' + q_proNumero_TR.AsString;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇOS CEVA Nº ';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      if qrTransImportador.AsString = '2'
       then tbEdtItensSequencial.AsInteger := 8
       else tbEdtItensSequencial.AsInteger := 9;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'CLEARENCE RECEIPT Nº ';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'RECIBO INFRAERO DAI Nº ';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      if qrTransImportador.AsString = '2'
       then tbEdtItensSequencial.AsInteger := 9
       else tbEdtItensSequencial.AsInteger := 10;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItens.Append;
         tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
         tbEdtItensFilial.asstring      := qrTransFilial.asstring;
         tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
         tbEdtItensdescricao.asstring   := 'RECEIPT INFRAERO DAI Nº ';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
         tbEdtItensquantidade.asinteger := 1;
         tbEdtItensSequencial.AsInteger := 11;

         tbEdtItens.Append;
         tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
         tbEdtItensFilial.asstring      := qrTransFilial.asstring;
         tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
         tbEdtItensdescricao.asstring   := 'INVOICE (NOTA FISCAL) SERVICES PROVIDE - PORTOLOG Nº R$  ATTAICHED PAID SLIP';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
         tbEdtItensquantidade.asinteger := 1;
         tbEdtItensSequencial.AsInteger := 12;

         tbEdtItens.Append;
         tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
         tbEdtItensFilial.asstring      := qrTransFilial.asstring;
         tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
         tbEdtItensdescricao.asstring   := 'TEMPORARY ADMISSION CONCESSION (RCR)';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
         tbEdtItensquantidade.asinteger := 1;
         tbEdtItensSequencial.AsInteger := 13;

         tbEdtItens.Append;
         tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
         tbEdtItensFilial.asstring      := qrTransFilial.asstring;
         tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
         tbEdtItensdescricao.asstring   := 'BANK SLIP BRADESCO Nº ' + q_procodigo.asstring;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
         tbEdtItensquantidade.asinteger := 1;
         tbEdtItensSequencial.AsInteger := 14;
       end;

      tbEdtItens.edit;
      tbEdtItens.post;

      tbEdtItens.close;
      tbEdtItens.open;

      qritens.Close;
      qritens.open;
    end;
    {FIM IMPORTACAO AÉREO}

   {INICIO IMPORTAÇÃO - BEM PRINCIPAL}
   if q_protipo.asstring = 'IB'
    then begin
      temtipo := true;

      q_delit.Params[0].AsString := qrTransCodigo.asstring;
      q_delit.ExecSQL;

      qfaturas := '';

      q_fat.close;
      q_fat.Params[0].AsString := e_proc.text;
      q_fat.open;

      while not q_fat.eof do
       begin
         if qfaturas = ''
          then qfaturas := q_fatfatura.asstring
          else qfaturas := qfaturas+', '+q_fatfatura.asstring;

         q_fat.Next;
       end;

{
linha
 Descricao
 Quantidade
 Remarks

1
 DEMONSTRATIVO FINANCEIRO REF.MS:
 1
 ORIGINAL

2
 NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº
 1
 ORIGINAL

3
 TABELA TAXA CÂMBIO
 1
 COPIA

4
 CI Nº
 1
 COPIA

5
 TELA SISCOMEX
 1
 CÓPIA

6
 DI Nº
 1
 COPIA

7
 GUIA DE EXONERAÇÃO
 1
 ORIGINAL

8
 PROFORMA INVOICE Nº
 1
 ORIGINAL

9
 TR Nº
 1
 ORIGINAL

10
 NOTA FISCAL PREFEITURA MUNICIPAL
 1
 COPIA

11
 DESPESAS REFERENTES A VIAGEM TOTAL =
 1
 ORIGINAL

12
 RECIBO CARTÓRIO TOTAL
 1
 ORIGINAL

13
 FLYTOUR
 1
 ORIGINAL

14
 RCR
 1
 ORIGINAL

15
 BOLETO BRADESCO R$
 1
 ORIGINAL

}

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 1;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring := 'FINANCIAL STATEMENT - REFERENCE MS: '+q_procodigo.asstring;//03859/08
         tbEdtItensremarks.asstring   := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring := 'DEMONSTRATIVO FINANCEIRO REF.MS: '+q_procodigo.asstring;//03859/08
         tbEdtItensremarks.asstring   := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 2;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'INVOICE (NOTA FISCAL) SERVICES PROVIDE - MS Nº '+q_pronfiscal.asstring;//037899
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº '+q_pronfiscal.asstring;//037899
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 3;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'EXCHANGE RATE TABLE';
         tbEdtItensremarks.asstring     := 'COPY';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'TABELA TAXA CAMBIO';
         tbEdtItensremarks.asstring     := 'CÓPIA';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 4;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'PROOF OF IMPORTATION (CI) Nº '+q_prodi.asstring;
         tbEdtItensremarks.asstring     := 'COPY';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'CI Nº '+q_prodi.asstring;
         tbEdtItensremarks.asstring     := 'CÓPIA';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 5;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'SISCOMEX SCREEN';
         tbEdtItensremarks.asstring     := 'COPY';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'TELA SISCOMEX';
         tbEdtItensremarks.asstring     := 'CÓPIA';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 6;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'IMPORT DECLARATION (DI) Nº '+q_prodi.asstring;//08/1459183-8
         tbEdtItensremarks.asstring     := 'COPY';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'DI Nº '+q_prodi.asstring;//08/1459183-8
         tbEdtItensremarks.asstring     := 'CÓPIA';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 7;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'EXONERATION SLIP';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'GUIA DE EXONERAÇÃO';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 8;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'PROFORMA INVOICE Nº '+qfaturas;
         tbEdtItensremarks.asstring     := 'COPY';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'PROFORMA INVOICE Nº '+qfaturas;
         tbEdtItensremarks.asstring     := 'CÓPIA';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 9;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'RESPONSABILITY TERM (TR) Nº ' + q_proNumero_TR.AsString;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'TR Nº ' + q_proNumero_TR.AsString;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 10;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'INVOICE (NOTA FISCAL) CITY ';
         tbEdtItensremarks.asstring     := 'COPY';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'NOTA FISCAL PREFEITURA MUNICIPAL';
         tbEdtItensremarks.asstring     := 'CÓPIA';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 11;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'EXPENSES OF THE TRIP TOTAL';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'DESPESAS REFERENTES A VIAGEM TOTAL';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 12;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'TOTAL REGISTRY RECEIPTS';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'RECIBOS CARTÓRIO TOTAL';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 13;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'FLYTOUR';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'FLYTOUR';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 14;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'RCR';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'RCR';
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItensquantidade.asinteger := 1;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 15;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'BANK SLIP BRADESCO Nº ' + q_procodigo.asstring;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'BOLETO BRADESCO Nº ' + q_procodigo.asstring;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItens.edit;
      tbEdtItens.post;

      tbEdtItens.close;
      tbEdtItens.open;

      qritens.Close;
      qritens.open;
    end;
   {FIM IMPORTACAO - BEM PRINCIPAL}

   {INICIO TRANSFERÊNCIA DE TITULARIDADE}
   if q_protipo.asstring = 'TT'
    then begin
      temtipo := true;

      q_delit.Params[0].AsString := qrTransCodigo.asstring;
      q_delit.ExecSQL;

      qfaturas := '';

      q_fat.close;
      q_fat.Params[0].AsString := e_proc.text;
      q_fat.open;

      while not q_fat.eof do
       begin
         if qfaturas = ''
          then qfaturas := q_fatfatura.asstring
          else qfaturas := qfaturas+', '+q_fatfatura.asstring;

         q_fat.Next;
       end;

{
linha
 Descricao
 Quantidade
 Remarks

1
 DEMONSTRATIVO FINANCEIRO REF.MS:
 1
 ORIGINAL

2
 NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº
 1
 ORIGINAL

3
 CI Nº
 1
 COPIA

4
 DI Nº
 1
 CÓPIA

5
 GUIA EXONERAÇÃO
 2
 ORIGINAL

6
 PROFORMA INVOICE / PACKING LIST Nº
 1
 COPIA

7
 TR
 1
 ORIGINAL

8
 RCR
 1
 ORIGINAL

9
 DTR
 1
 ORIGINAL

10
 BOLETO BRADESCO R$
 1
 COPIA
}

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 1;
      tbEdtItensdescricao.asstring   := 'DEMONSTRATIVO FINANCEIRO REF.MS: '+q_procodigo.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 2;
      tbEdtItensdescricao.asstring   := 'NFE MS LOGÍSTICA Nº '+q_pronfiscal.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 3;
      tbEdtItensdescricao.asstring   := 'CI Nº '+q_prodi.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'COPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 4;
      tbEdtItensdescricao.asstring   := 'DI Nº '+q_prodi.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 5;
      tbEdtItensdescricao.asstring   := 'GUIA EXONERAÇÃO';
      tbEdtItensquantidade.asinteger := 2;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 6;
      tbEdtItensdescricao.asstring   := 'PROFORMA INVOICE / PACKING LIST Nº '+qfaturas;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 7;
      tbEdtItensdescricao.asstring   := 'TR Nº ' + q_proNumero_TR.AsString;;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 8;
      tbEdtItensdescricao.asstring   := 'RCR';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 9;
      tbEdtItensdescricao.asstring   := 'DTR';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 10;
      tbEdtItensdescricao.asstring   := 'BOLETO BRADESCO R$ ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'COPIA';

      tbEdtItens.edit;
      tbEdtItens.post;

      tbEdtItens.close;
      tbEdtItens.open;

      qritens.Close;
      qritens.open;
    end;
    {FIM TRANSFERÊNCIA DE TITULARIDADE}

    {TRADUÇÃO}
   if q_protipo.asstring = 'TD'
    then begin
      temtipo := true;

      q_delit.Params[0].AsString := qrTransCodigo.asstring;
      q_delit.ExecSQL;

      qfaturas := '';
      
      q_fat.close;
      q_fat.Params[0].AsString := e_proc.text;
      q_fat.open;
      
      while not q_fat.eof do
       begin
         if qfaturas = ''
          then qfaturas := q_fatfatura.asstring
          else qfaturas := qfaturas + ', ' + q_fatfatura.asstring;

         q_fat.Next;
       end;

{
linha
 Descricao
 Quantidade
 Remarks

1
 DEMONSTRATIVO FINANCEIRO REF. MS
 1
 ORIGINAL

2
 NFS-E MS Nº
 1
 ORIGINAL

3
 BOLETO BANCÁRIO BRADESCO Nº
 1
 ORIGINAL
}

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 1;
      tbEdtItensquantidade.asinteger := 1;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'FINANCIAL STATEMENT REF.MS ' + q_procodigo.asstring;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'DEMONSTRATIVO FINANCEIRO REF. MS ' + q_procodigo.asstring;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 2;
      tbEdtItensquantidade.asinteger := 1;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'INVOICE (NOTA FISCAL) SERVICES PROVIDED MS ' + q_proNFiscal.AsString;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'NFS-E MS Nº ' + q_proNFiscal.AsString;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 3;
      tbEdtItensquantidade.asinteger := 1;

      if qrTransImportador.AsString = '351'
       then begin
         tbEdtItensdescricao.asstring   := 'BANK SLIP BRADESCO Nº ' + q_procodigo.asstring;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end
       else begin
         tbEdtItensdescricao.asstring   := 'BOLETO BANCÁRIO BRADESCO Nº ' + q_procodigo.asstring;
         tbEdtItensremarks.asstring     := 'ORIGINAL';
       end;

      tbEdtItens.edit;
      tbEdtItens.post;

      tbEdtItens.close;
      tbEdtItens.open;

      qritens.Close;
      qritens.open;
    end;
    {FIM TRADUÇÃO}

   {REEXPORTAÇÃO}
   if q_protipo.asstring = '22'
    then begin
      temtipo := true;

      q_delit.Params[0].AsString := qrTransCodigo.asstring;
      q_delit.ExecSQL;

      qfaturas := '';

      q_fat.close;
      q_fat.Params[0].AsString := e_proc.text;
      q_fat.open;
      
      while not q_fat.eof do
       begin
         if qfaturas = ''
          then qfaturas := q_fatfatura.asstring
          else qfaturas := qfaturas+', '+q_fatfatura.asstring;

         q_fat.Next;
       end;

{
linha
 Descricao
 Quantidade
 Remarks

1
 FATURA / HONORÁRIOS MS Nº
 1
 ORIGINAL

2
 NFS-E MS Nº
 1
 ORIGINAL

3
 DDE Nº.:
 1
 CÓPIA

4
 RE Nº.:
 1
 ORIGINAL

5
 B/L Nº.:
 1
 ORIGINAL

6
 PROFORMA INVOICE Nº.:
 1
 ORIGINAL

7
 PACKING LIST Nº.:
 1
 ORIGINAL

8
 REQUERIMENTO REF. EXPORTAÇÃO
 1
 ORIGINAL
}

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 1;
      tbEdtItensdescricao.asstring   := 'FATURA / HONORÁRIOS MS Nº '+q_procodigo.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 2;
      tbEdtItensdescricao.asstring   := 'NFS-E MS Nº '+q_proNFiscal.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 3;
      tbEdtItensdescricao.asstring   := 'DDE Nº.: '+q_proDDE.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 4;
      tbEdtItensdescricao.asstring   := 'RE Nº.: ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 5;
      tbEdtItensdescricao.asstring   := 'B/L Nº.: ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 6;
      tbEdtItensdescricao.asstring   := 'PROFORMA INVOICE Nº.: '+q_proCodigo_Cliente.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 7;
      tbEdtItensdescricao.asstring   := 'PACKING LIST Nº.: '+q_proCodigo_Cliente.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 8;
      tbEdtItensdescricao.asstring   := 'REQUERIMENTO REF. REEXPORTAÇÃO';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.edit;
      tbEdtItens.post;

      tbEdtItens.close;
      tbEdtItens.open;

      qritens.Close;
      qritens.open;
    end;
    {FIM REEXPORTAÇÃO}

   {EXPORTAÇÃO}
   if q_protipo.asstring = '21'
    then begin
      temtipo := true;

      q_delit.Params[0].AsString := qrTransCodigo.asstring;
      q_delit.ExecSQL;

      qfaturas := '';

      q_fat.close;
      q_fat.Params[0].AsString := e_proc.text;
      q_fat.open;
      
      while not q_fat.eof do
       begin
         if qfaturas = ''
          then qfaturas := q_fatfatura.asstring
          else qfaturas := qfaturas+', '+q_fatfatura.asstring;

         q_fat.Next;
       end;

{
linha
 Descricao
 Quantidade
 Remarks

1
 DEMONSTRATIVO FINANCEIRO REF.MS:
 1
 ORIGINAL

2
 NOTA FISCAL DE SERVIÇOS MS Nº
 1
 ORIGINAL

3
 DDE Nº.:
 1
 CÓPIA

4
 RE Nº.:
 1
 CÓPIA

5
 AWB
 1
 CÓPIA

6
 PROFORMA INVOICE Nº.:
 1
 CÓPIA

7
 PACKING LIST Nº.:
 1
 CÓPIA

8
 REQUERIMENTO DE LIBERAÇÃO Nº
 1
 ORIGINAL
}

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 1;
      tbEdtItensdescricao.asstring   := 'DEMONSTRATIVO FINANCEIRO REF.MS '+q_procodigo.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 2;
      tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇO MS Nº. '+q_proNFiscal.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 3;
      tbEdtItensdescricao.asstring   := 'DDE Nº.: '+q_proDDE.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 4;
      tbEdtItensdescricao.asstring   := 'RE Nº.: ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 5;
      tbEdtItensdescricao.asstring   := 'AWB Nº.: ' + q_pronumerodoccarga.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 6;
      tbEdtItensdescricao.asstring   := 'PROFORMA INVOICE Nº.: '+q_proCodigo_Cliente.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 7;
      tbEdtItensdescricao.asstring   := 'PACKING LIST Nº.: '+q_proCodigo_Cliente.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 8;
      tbEdtItensdescricao.asstring   := 'RECIBO DE LIBERAÇÃO Nº.: ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.edit;
      tbEdtItens.post;

      tbEdtItens.close;
      tbEdtItens.open;

      qritens.Close;
      qritens.open;
    end;
    {FIM EXPORTAÇÃO}

    {BAIXA DE TERMO}
   if q_protipo.asstring = 'BT'
    then begin
      temtipo := true;

      q_delit.Params[0].AsString := qrTransCodigo.asstring;
      q_delit.ExecSQL;

      qfaturas := '';
      
      q_fat.close;
      q_fat.Params[0].AsString := e_proc.text;
      q_fat.open;
      
      while not q_fat.eof do
       begin
         if qfaturas = ''
          then qfaturas := q_fatfatura.asstring
          else qfaturas := qfaturas + ', ' + q_fatfatura.asstring;

         q_fat.Next;
       end;

{
linha
 Descricao
 Quantidade
 Remarks

1
 FATURA MS Nº
 1
 ORIGINAL

2
 NFS-E MS Nº
 1
 ORIGINAL

3
 TR. Nº
 1
 CÓPIA
}

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 1;
      tbEdtItensdescricao.asstring   := 'FATURA MS Nº '+q_procodigo.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 2;
      tbEdtItensdescricao.asstring   := 'NFS-E MS Nº '+q_proNFiscal.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 3;
      tbEdtItensdescricao.asstring   := 'TR. Nº ' + q_proNumero_TR.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.edit;
      tbEdtItens.post;

      tbEdtItens.close;
      tbEdtItens.open;

      qritens.Close;
      qritens.open;
    end;
    {FIM BAIXA DE TERMO}

   {INICIO TRANSFERÊNCIA DE TITULARIDADE}
   if q_protipo.asstring = 'TT'
    then begin
      temtipo := true;

      q_delit.Params[0].AsString := qrTransCodigo.asstring;
      q_delit.ExecSQL;

      qfaturas := '';

      q_fat.close;
      q_fat.Params[0].AsString := e_proc.text;
      q_fat.open;

      while not q_fat.eof do
       begin
         if qfaturas = ''
          then qfaturas := q_fatfatura.asstring
          else qfaturas := qfaturas+', '+q_fatfatura.asstring;

         q_fat.Next;
       end;

{
linha
 Descricao
 Quantidade
 Remarks

1
 DEMONSTRATIVO FINANCEIRO REF.MS:
 1
 ORIGINAL

2
 NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº
 1
 ORIGINAL

3
 CI Nº
 1
 COPIA

4
 DI Nº
 1
 CÓPIA

5
 GUIA EXONERAÇÃO
 2
 ORIGINAL

6
 PROFORMA INVOICE / PACKING LIST Nº
 1
 COPIA

7
 TR
 1
 ORIGINAL

8
 RCR
 1
 ORIGINAL

9
 DTR
 1
 ORIGINAL

10
 BOLETO BRADESCO R$
 1
 COPIA
}

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 1;
      tbEdtItensdescricao.asstring   := 'DEMONSTRATIVO FINANCEIRO REF.MS: '+q_procodigo.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 2;
      tbEdtItensdescricao.asstring   := 'NFE MS LOGÍSTICA Nº '+q_pronfiscal.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 3;
      tbEdtItensdescricao.asstring   := 'CI Nº '+q_prodi.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'COPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 4;
      tbEdtItensdescricao.asstring   := 'DI Nº '+q_prodi.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 5;
      tbEdtItensdescricao.asstring   := 'GUIA EXONERAÇÃO';
      tbEdtItensquantidade.asinteger := 2;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 6;
      tbEdtItensdescricao.asstring   := 'PROFORMA INVOICE / PACKING LIST Nº '+qfaturas;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 7;
      tbEdtItensdescricao.asstring   := 'TR Nº ' + q_proNumero_TR.AsString;;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 8;
      tbEdtItensdescricao.asstring   := 'RCR';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 9;
      tbEdtItensdescricao.asstring   := 'DTR';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 10;
      tbEdtItensdescricao.asstring   := 'BOLETO BRADESCO R$ ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'COPIA';

      tbEdtItens.edit;
      tbEdtItens.post;

      tbEdtItens.close;
      tbEdtItens.open;

      qritens.Close;
      qritens.open;
    end;
    {FIM TRANSFERÊNCIA DE TITULARIDADE}

    {PRORROGAÇÃO}
   if q_protipo.asstring = '8'
    then begin
      temtipo := true;

      q_delit.Params[0].AsString := qrTransCodigo.asstring;
      q_delit.ExecSQL;

      qfaturas := '';

      q_fat.close;
      q_fat.Params[0].AsString := e_proc.text;
      q_fat.open;

      while not q_fat.eof do
       begin
         if qfaturas = ''
          then qfaturas := q_fatfatura.asstring
          else qfaturas := qfaturas + ', ' + q_fatfatura.asstring;

         q_fat.Next;
       end;

{
linha
 Descricao
 Quantidade
 Remarks

1
 DEMONSTRATIVO MS Nº
 1
 ORIGINAL

2
 NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº
 1
 ORIGINAL

3
 DARF II =
 DARF IPI =
 DARF PIS =
 DARF COFINS =
 1
 ORIGINAL

4
 DARJ
 1
 ORIGINAL

5
 RECIBO CARTÓRIO =
 1
 ORIGINAL

6
 TR Nº
 1
 CÓPIA

7
 RPR Nº
 1
 ORIGINAL

8
 RECIBO MS =
 1
 ORIGINAL

9
 BOLETO PARA PAGAMENTO BRADESCO Nº
 1
 ORIGINAL
}

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 1;
      tbEdtItensdescricao.asstring   := 'DEMONSTRATIVO MS Nº '+q_procodigo.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 2;
      tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº '+q_proNFiscal.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 3;
      tbEdtItensdescricao.asstring   := 'DARF II = ' + #13#10 +
                                        'DARF IPI = ' + #13#10 +
                                        'DARF PIS = ' + #13#10 +
                                        'DARF COFINS = ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 4;
      tbEdtItensdescricao.asstring   := 'DARJ = ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 5;
      tbEdtItensdescricao.asstring   := 'RECIBO CARTÓRIO ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 6;
      tbEdtItensdescricao.asstring   := 'TR Nº ' + q_proNumero_TR.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'CÓPIA';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 7;
      tbEdtItensdescricao.asstring   := 'RPR Nº ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 8;
      tbEdtItensdescricao.asstring   := 'RECIBO MS = ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 9;
      tbEdtItensdescricao.asstring   := 'BOLETO PARA PAGAMENTO BRADESCO Nº ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.edit;
      tbEdtItens.post;

      tbEdtItens.close;
      tbEdtItens.open;

      qritens.Close;
      qritens.open;
    end;
    {FIM PRORROGAÇÃO}

    {ATO DECLARATÓRIO}
   if q_protipo.asstring = 'AD'
    then begin
      temtipo := true;

      q_delit.Params[0].AsString := qrTransCodigo.asstring;
      q_delit.ExecSQL;

      qfaturas := '';

      q_fat.close;
      q_fat.Params[0].AsString := e_proc.text;
      q_fat.open;

      while not q_fat.eof do
       begin
         if qfaturas = ''
          then qfaturas := q_fatfatura.asstring
          else qfaturas := qfaturas + ', ' + q_fatfatura.asstring;

         q_fat.Next;
       end;

{
linha
 Descricao
 Quantidade
 Remarks

1
 DEMONSTRATIVO FINANCEIRO MS.:
 1
 ORIGINAL

2
 NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº
 1
 ORIGINAL

3
 ATO DECLARATÓRIO
 1
 ORIGINAL

4
 COMPROVANTE DE ATUAÇÃO DE PROCESSOS
 1
 ORIGINAL

5
 REQUERIMENTO DE HABILITAÇÃO AO REPETRO
 1
 ORIGINAL

6
 RECIBO CARTÓRIO = R$
 1
 CÓPIA

7
 BOLETO PARA PAGAMENTO BRADESCO Nº
 1
 ORIGINAL
}

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 1;
      tbEdtItensdescricao.asstring   := 'DEMONSTRATIVO MS Nº '+q_procodigo.asstring;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 2;
      tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº '+q_proNFiscal.AsString;
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 3;
      tbEdtItensdescricao.asstring   := 'ATO DECLARATÓRIO';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 4;
      tbEdtItensdescricao.asstring   := 'COMPROVANTE DE ATUAÇÃO DE PROCESSOS';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 5;
      tbEdtItensdescricao.asstring   := 'REQUERIMENTO DE HABILITAÇÃO AO REPETRO';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 6;
      tbEdtItensdescricao.asstring   := 'RECIBO CARTÓRIO = R$ ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.Append;
      tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
      tbEdtItensFilial.asstring      := qrTransFilial.asstring;
      tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
      tbEdtItensSequencial.AsInteger := 7;
      tbEdtItensdescricao.asstring   := 'BOLETO PARA PAGAMENTO BRADESCO Nº ';
      tbEdtItensquantidade.asinteger := 1;
      tbEdtItensremarks.asstring     := 'ORIGINAL';

      tbEdtItens.edit;
      tbEdtItens.post;

      tbEdtItens.close;
      tbEdtItens.open;

      qritens.Close;
      qritens.open;
    end;
    {FIM ATO DECLARATÓRIO}

   {IMPORTAÇÃO FICTA}
  if q_protipo.asstring = '19'
   then begin
     temtipo := true;

     q_delit.Params[0].AsString := qrTransCodigo.asstring;
     q_delit.ExecSQL;

     qfaturas := '';
     q_fat.close;
     q_fat.Params[0].AsString := e_proc.text;
     q_fat.open;

     while not q_fat.eof do
      begin
        if qfaturas = ''
         then qfaturas := q_fatfatura.asstring
         else qfaturas := qfaturas+', '+q_fatfatura.asstring;

        q_fat.Next;
      end;

{
  Importação - FICTA
 linha
 Descricao
 Quantidade
 Remarks

1
 DEMONSTRATIVO FINANCEIRO MS
 1
 ORIGINAL

2
 NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº
 1
 ORIGINAL

3
 TELA SISCOMEX
 1
 ORIGINAL

4
 CI Nº
 1
 CÓPIA

5
 DI Nº
 1
 COPIA

6
 DUA Nº
 1
 COPIA

7
 PROFORMA INVOICE
 1
 CÓPIA

8
 PACKING LIST Nº
 1
 COPIA

9
 DDE Nº
 1
 COPIA

10
 RE Nº
 1
 COPIA

11
 TR Nº
 1
 ORIGINAL

12
 RECIBO CORREIOS = R$
 1
 ORIGINAL

13
 NOTA FISCAL DE SERVIÇOS NITSHORE Nº
 PLANILHA DE CALCULOS NITSHORE Nº
 BOLETO DE PAGAMENTO EM ANEXO
 1
 ORIGINAL

14
 RCR Nº
 1
 ORIGINAL

15
 RECIBO MS = R$
 1
 ORIGINAL

16
 BOLETO PARA PAGAMENTO BRADESCO Nº 
 1
 ORIGINAL
}

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 1;
     tbEdtItensdescricao.asstring   := 'DEMONSTRATIVO FINANCEIRO MS.: '+q_procodigo.asstring;//03859/08
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 2;
     tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇOS MS LOGÍSTICA Nº '+q_pronfiscal.asstring;//037899
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 3;
     tbEdtItensdescricao.asstring   := 'TELA SISCOMEX';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 4;
     tbEdtItensdescricao.asstring   := 'CI Nº '+q_prodi.asstring;
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 5;
     tbEdtItensdescricao.asstring   := 'DI Nº '+q_prodi.asstring;
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 6;
     tbEdtItensdescricao.asstring   := 'DUA Nº ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'CÓPIA';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 7;
     tbEdtItensdescricao.asstring   := 'PROFORMA INVOICE Nº '+qfaturas;
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'CÓPIA';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 8;
     tbEdtItensdescricao.asstring   := 'PACKING LIST Nº '+qfaturas;
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'CÓPIA';

     tbEdtItens.Append;     
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 9;
     tbEdtItensdescricao.asstring   := 'DDE Nº '+q_proDDE.AsString;
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'CÓPIA';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 10;
     tbEdtItensdescricao.asstring   := 'RE Nº ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'CÓPIA';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 11;
     tbEdtItensdescricao.asstring   := 'TR Nº ' + q_proNumero_TR.AsString;
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 12;
     tbEdtItensdescricao.asstring   := 'RECIBO CORREIOS = R$ ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 13;     
     tbEdtItensdescricao.asstring   := 'NOTA FISCAL DE SERVIÇOS NITSHORE Nº ' + #13#10 +
                                       'PLANILHA DE CALCULOS NITHSORE Nº ' + #13#10 +
                                       'BOLETO DE PAGAMENTO EM ANEXO';                                        
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 14;
     tbEdtItensdescricao.asstring   := 'RCR Nº ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 15;
     tbEdtItensdescricao.asstring   := 'RECIBO MS = R$ ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.Append;
     tbEdtItensEmpresa.asstring     := qrTransEmpresa.asstring;
     tbEdtItensFilial.asstring      := qrTransFilial.asstring;
     tbEdtItensCodigo.asstring      := qrTransCodigo.asstring;
     tbEdtItensSequencial.AsInteger := 16;
     tbEdtItensdescricao.asstring   := 'BOLETO PARA PAGAMENTO BRADESCO Nº ';
     tbEdtItensquantidade.asinteger := 1;
     tbEdtItensremarks.asstring     := 'ORIGINAL';

     tbEdtItens.edit;
     tbEdtItens.post;

     tbEdtItens.close;
     tbEdtItens.open;

     qritens.Close;
     qritens.open;
   end;
   {FIM IMPORTAÇÃO FICTA}

  if not temtipo
   then MessageDlg(v_usuario+', Tipo deste processo não tem parâmetros para inserir as linhas!',mtWarning,[mbOK],0)
   else MessageDlg(v_usuario+', as linhas foram inseridas conforme os parâmetros para este tipo de processo!',mtWarning,[mbOK],0);
end;



procedure TF_ctrlTransmittal.dbedProcessoChange(Sender: TObject);
begin
       If Length(F_MSCOMEX.LRTrim(dbedProcesso.Text)) <> 8 Then
        Exit;

     qrProcessos.ParamByName( 'Processo' ).Value := dbedProcesso.Text;
     qrProcessos.Close ;
     qrProcessos.Open ;

      If (qrProcessos.IsEmpty ) Then Begin
          MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
          dbedProcesso.Clear;
        dbedProcesso.SetFocus;
     End;

end;

end.
