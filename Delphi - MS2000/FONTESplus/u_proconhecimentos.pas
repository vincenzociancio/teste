unit u_proconhecimentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Grids, DBGrids, Buttons, ComCtrls,
  DBCtrls, ActnList;

type
  TF_proConhecimentos = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    tbConhecimentos: TTable;
    dsConhecimentos: TDataSource;
    dsVia: TDataSource;
    dsTransportadores: TDataSource;
    dsTipoDocCarga: TDataSource;
    dsUtilizacao: TDataSource;
    pnlBaixo: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    qrVia: TQuery;
    qrTransportadores: TQuery;
    qrTipoDocCarga: TQuery;
    qrUtilizacao: TQuery;
    alAtuTabelas: TActionList;
    acAtuTabelas: TAction;
    qrUnidade: TQuery;
    dsUnidade: TDataSource;
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
    tbConhecimentosEmpresa: TStringField;
    tbConhecimentosFilial: TStringField;
    tbConhecimentosProcesso: TStringField;
    tbConhecimentosVia: TStringField;
    tbConhecimentosMultimodal: TSmallintField;
    tbConhecimentosPLaca: TStringField;
    tbConhecimentosLacre: TStringField;
    tbConhecimentosEmbarcacao: TStringField;
    tbConhecimentosTransportador: TStringField;
    tbConhecimentosTipodoccarga: TStringField;
    tbConhecimentosNumerodoccarga: TStringField;
    tbConhecimentosNumeromaster: TStringField;
    tbConhecimentosLocal: TStringField;
    tbConhecimentosData: TDateTimeField;
    tbConhecimentosUtilizacao: TStringField;
    tbConhecimentosTipomanifesto: TStringField;
    tbConhecimentosNumeromanifesto: TStringField;
    tbConhecimentosCodigo_Presenca_Carga: TStringField;
    tbConhecimentosPeso_Bruto: TFloatField;
    tbConhecimentosPeso_Liquido: TFloatField;
    tbConhecimentosAgente: TStringField;
    tbConhecimentosPais_Procedencia: TStringField;
    tbConhecimentosURF_chegada: TStringField;
    tbConhecimentosData_Chegada_URF_Cheg: TDateTimeField;
    tbConhecimentosURF_Despacho: TStringField;
    tbConhecimentosData_Chegada_URF_Desp: TDateTimeField;
    tbConhecimentosRecinto_Alfandegario: TStringField;
    tbConhecimentosSetor_Alfandegario: TStringField;
    tbConhecimentosArmazem: TStringField;
    tbConhecimentosOperacao_FUNDAP: TSmallintField;
    tbConhecimentosContratante_OPCAMBIAL: TStringField;
    tbConhecimentosMoeda_Frete: TStringField;
    tbConhecimentosFrete_Prepaid: TFloatField;
    tbConhecimentosFrete_Collect: TFloatField;
    tbConhecimentosFrete_Ter_Nac: TFloatField;
    tbConhecimentosMoeda_Seguro: TStringField;
    tbConhecimentosValor_Seguro: TFloatField;
    tbConhecimentosMoeda_Despesas_ate_FOB: TStringField;
    tbConhecimentosValor_Despesas_ate_FOB: TFloatField;
    tbConhecimentosUnidade: TStringField;
    tbConhecimentosQuantidade: TFloatField;
    qrViaCodigo: TStringField;
    qrViaDescricao: TStringField;
    qrViaSIGLA: TStringField;
    qrTransportadoresCodigo: TStringField;
    qrTransportadoresRazao_Social: TStringField;
    qrTipoDocCargavia: TStringField;
    qrTipoDocCargacodigo: TStringField;
    qrTipoDocCargadescricao: TStringField;
    qrUtilizacaoCODIGO: TStringField;
    qrUtilizacaoDESCRICAO: TStringField;
    qrUnidadeCodigo: TStringField;
    qrUnidadeDescricao: TStringField;
    qrUnidadeAbrev: TStringField;
    q_verconhecimento: TQuery;
    q_verconhecimentoprocesso: TStringField;
    q_verconhecimentoNumerodoccarga: TStringField;
    q_verconhecimentoNumeromaster: TStringField;
    qrProcessosTipo: TStringField;
    tbConhecimentosDT_ETA: TDateTimeField;
    qAtualizaStatus: TQuery;
    qrProcessosStatus: TStringField;
    qAtuProcessoVisaoGeral: TQuery;
    qrUpdateTipo: TQuery;
    qrBandeira: TQuery;
    dsBandeira: TDataSource;
    tbConhecimentosBandeira: TStringField;
    qrBandeiracodigo: TStringField;
    qrBandeiradescricao: TStringField;
    tbConhecimentosAutorizacao_Marinha: TStringField;
    pnlPrincipal: TPanel;
    Label76: TLabel;
    Label83: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    sbLimpaTransp: TSpeedButton;
    sbLimpaTipo: TSpeedButton;
    sbLimpaUtil: TSpeedButton;
    Label10: TLabel;
    sbLimpaVolume: TSpeedButton;
    Label11: TLabel;
    Label12: TLabel;
    lblBandeira: TLabel;
    sbLimpaBandeira: TSpeedButton;
    Label15: TLabel;
    dbLcbVia: TDBLookupComboBox;
    dbLcbTransp: TDBLookupComboBox;
    dbEdtEmbarcacao: TDBEdit;
    dbLcbTipo: TDBLookupComboBox;
    dbEdtNumDocCarga: TDBEdit;
    dbEdtNumMaster: TDBEdit;
    dbLcbUtil: TDBLookupComboBox;
    dbEdtLocal: TDBEdit;
    dbEdtData: TDBEdit;
    dbEdtPlaca: TDBEdit;
    dbEdtLacre: TDBEdit;
    dbEdtVia: TDBEdit;
    dbEdtTransp: TDBEdit;
    dbEdtTipo: TDBEdit;
    dbEdtUtil: TDBEdit;
    dbcbVolume: TDBLookupComboBox;
    dbEdtCodVol: TDBEdit;
    dbEdtQuantidade: TDBEdit;
    CbMultimodal: TCheckBox;
    edtDTETA: TDBEdit;
    dbEditBandeira: TDBEdit;
    dbLcbBandeira: TDBLookupComboBox;
    dbEdtAutoMarinha: TDBEdit;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure dbLcbViaClick(Sender: TObject);
    procedure tbConhecimentosAfterPost(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnSairClick(Sender: TObject);
    procedure qrViaAfterOpen(DataSet: TDataSet);
    procedure sbLimpaViaClick(Sender: TObject);
    procedure sbLimpaTranspClick(Sender: TObject);
    procedure sbLimpaTipoClick(Sender: TObject);
    procedure sbLimpaUtilClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure dbEdtDataChange(Sender: TObject);
    procedure acAtuTabelasExecute(Sender: TObject);
    procedure sbLimpaVolumeClick(Sender: TObject);
    procedure dbEdtNumDocCargaKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtNumDocCargaExit(Sender: TObject);
    procedure dbEdtNumMasterExit(Sender: TObject);
    procedure tbConhecimentosAfterScroll(DataSet: TDataSet);
    procedure edtDTETAChange(Sender: TObject);
    procedure dbEdtNumDocCargaChange(Sender: TObject);
    procedure AtualizaProcessoVisaoGeral;
    procedure sbLimpaBandeiraClick(Sender: TObject);
  private
    { Private declarations }
  publiC
    { Public declarations }
  end;

var
  F_proConhecimentos: TF_proConhecimentos;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_proConhecimentos.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;

  { REFRESH NAS TABELAS }
  if not (qrProcessos.State = dsInactive)
   then acAtuTabelas.Execute;
end;

procedure TF_proConhecimentos.ME_nossarefChange(Sender: TObject);
var cnpj: String;
begin
  if Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8
   then Exit;

  if (IsClosedProcess( me_nossaref.Text, F_proConhecimentos ))
   then Abort;

  Screen.Cursor := crHourGlass;

  qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
  qrProcessos.Close;
  qrProcessos.Open;

  if (not qrProcessos.IsEmpty)
   then begin
     with qrTransportadores do
      begin
        Params[0].AsString := qrProcessosEmpresa.AsString;
        Params[1].AsString := qrProcessosFilial.AsString;
      end;

     if tbConhecimentos.State = dsInactive
      then tbConhecimentos.Open;

     { REFRESH NAS TABELAS }
     acAtuTabelas.Execute;

     v_AlteraPRO := 1;

     if (qrprocessosAtivo.asinteger = 0)
      then begin
        if (v_Edita_cliente_inativo = 0)
         then begin
           Showmessage(v_usuario+', este Cliente est� Inativo. Somente usu�rios habilitados para editar clientes inativos poder�o alterar as informa��es do processo.');
           v_AlteraPRO := 0;
         end;
      end;

     if (qrprocessosFechado.asinteger = 1)
      then begin
        if (v_Edita_Processo_Fechado = 0)
         then begin
           Showmessage(v_usuario+', este Processo est� Fechado. Somente usu�rios habilitados em editar processos fechados poder�o alterar as informa��es do processo.');
           v_AlteraPRO := 0;
         end
         else v_AlteraPRO := 1;
      end;

     if F_MSCOMEX.AcessaPasta(ME_nossaref.Text, qrProcessostipo.AsString, F_proConhecimentos) and
        F_MSCOMEX.DINaoSolicitada(ME_nossaref.Text, F_proConhecimentos)
      then v_AlteraPRO := 1
      else v_AlteraPRO := 0;

     if f_mscomex.q_usucli.recordcount > 0
      then begin
        if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[])
         then v_autorizadocli := 1
         else v_autorizadocli := 0;
      end
      else v_autorizadocli := 1;

     F_MSCOMEX.atualizacpastas(ME_nossaref.text);

     if (v_autorizadocli = 1)
      then begin
        cnpj := qrprocessosqcnpj.asstring;
        cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

        l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
        pnlPrincipal.Visible := True;
        pnlBaixo.Visible := True;

        if tbConhecimentos.RecordCount = 0
         then begin
           // n�o achou conhecimento ent�o grava
           tbConhecimentos.Insert;
           btnAlterar.Click;
         end;
      end
      else begin
        MessageDlg(v_usuario+', este Processo pertence a um Cliente que seu acesso n�o est� permitido!', mtInformation,[mbOk], 0);
        l_cliente.Caption := '';
        me_nossaref.Clear;
        pnlPrincipal.Visible := False;
        pnlBaixo.Visible     := False;
        me_nossaref.SetFocus;
      end;
   end
   else begin
     MessageDlg('Processo n�o encontrado!', mtInformation,[mbOk], 0);
     l_cliente.Caption := '';
     me_nossaref.Clear;
     pnlPrincipal.Visible := False;
     pnlBaixo.Visible := False;
     me_nossaref.SetFocus;
   end;

  Screen.Cursor := crDefault;
end;

procedure TF_proConhecimentos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  f_mscomex.Conhecimentos1.Enabled := True;
  F_proConhecimentos := Nil;
  Action := caFree;
end;

procedure TF_proConhecimentos.dbLcbViaClick(Sender: TObject);
var
  via : String;
begin
  if not (tbConhecimentos.State in [dsInsert, dsEdit])
   then Exit;

  tbConhecimentosTransportador.AsString := Trim(tbConhecimentosTransportador.AsString);
  tbConhecimentosTipoDocCarga.AsString  := Trim(tbConhecimentosTipoDocCarga.AsString);

  { MAR�TIMO, FLUVIAL E LACUSTRE }
  via := tbConhecimentosVia.AsString;

  if ((via = '1') or (via = '2') or (via = '3'))
   then begin
     tbConhecimentosPlaca.AsString := '';
     tbConhecimentosLacre.AsString := '';

     dbLcbTransp.Enabled      := True;
     dbEdtEmbarcacao.Enabled  := True;
     dbLcbTipo.Enabled        := True;
     dbEdtNumDocCarga.Enabled := True;
     dbEdtNumMaster.Enabled   := True;
     dbLcbUtil.Enabled        := True;
     dbEdtLocal.Enabled       := True;
     dbEdtData.Enabled        := True;
     dbEdtPlaca.Enabled       := False;
     dbEdtAutoMarinha.Enabled := False;
     dbEdtLacre.Enabled       := False;
     sbLimpaTransp.Enabled    := True;
     sbLimpaTipo.Enabled      := True;
     sbLimpaUtil.Enabled      := True;
   end;

  { A�REO E FERROVI�RIO }
  if (via = '4') or (via = '6')
   then begin
     dbLcbTransp.Enabled      := True;
     dbEdtEmbarcacao.Enabled  := True;
     dbLcbTipo.Enabled        := True;
     dbEdtNumDocCarga.Enabled := True;
     dbEdtNumMaster.Enabled   := True;
     dbLcbUtil.Enabled        := True;
     dbEdtLocal.Enabled       := True;
     dbEdtData.Enabled        := True;
     edtDTETA.Enabled         := true;
     dbEdtPlaca.Enabled       := False;
     dbEdtAutoMarinha.Enabled := False;
     dbEdtLacre.Enabled       := False;
     sbLimpaTransp.Enabled    := True;
     sbLimpaTipo.Enabled      := True;
     sbLimpaUtil.Enabled      := True;
   end;

  { POSTAL }
  if via = '5'
   then begin
     ShowMessage(v_usuario+', para via = Postal informe o c�digo de barras no campo "Identifica��o".'+#13#10+
                           'Informe tamb�m o local e data de postagem.');

     tbConhecimentosTransportador.AsString := '';
     tbConhecimentosEmbarcacao.AsString    := '';
     tbConhecimentosTipoDocCarga.AsString  := '';
     tbConhecimentosNumeroMaster.AsString  := '';
     tbConhecimentosUtilizacao.AsString    := '';
     tbConhecimentosPlaca.AsString         := '';
     tbConhecimentosLacre.AsString         := '';

     dbLcbTransp.Enabled      := False;
     dbEdtEmbarcacao.Enabled  := False;
     dbLcbTipo.Enabled        := False;
     dbEdtNumDocCarga.Enabled := True;
     dbEdtNumMaster.Enabled   := False;
     dbLcbUtil.Enabled        := False;
     dbEdtLocal.Enabled       := True;
     dbEdtData.Enabled        := True;
     dbEdtPlaca.Enabled       := False;
     dbEdtAutoMarinha.Enabled := False;
     dbEdtLacre.Enabled       := False;
     sbLimpaTransp.Enabled    := False;
     sbLimpaTipo.Enabled      := False;
     sbLimpaUtil.Enabled      := False;
   end;

  { RODOVI�RIO }
  if via = '7'
   then begin
     tbConhecimentosEmbarcacao.AsString   := '';
     tbConhecimentosTipoDocCarga.AsString := '';
     tbConhecimentosNumeroMaster.AsString := '';

     dbLcbTransp.Enabled      := True;
     dbEdtEmbarcacao.Enabled  := False;
     dbLcbTipo.Enabled        := False;
     dbEdtNumDocCarga.Enabled := True;
     dbEdtNumMaster.Enabled   := False;
     dbLcbUtil.Enabled        := True;
     dbEdtLocal.Enabled       := True;
     dbEdtData.Enabled        := True;
     dbEdtPlaca.Enabled       := True;
     dbEdtAutoMarinha.Enabled := True;
     dbEdtLacre.Enabled       := True;
     sbLimpaTransp.Enabled    := True;
     sbLimpaTipo.Enabled      := False;
     sbLimpaUtil.Enabled      := True;
   end;

  { DUCTO E MEIOS PR�PRIOS }
  if (via = '8') or (via = '9') or (via = 'A')
   then begin
     tbConhecimentosTransportador.AsString := '';
     tbConhecimentosEmbarcacao.AsString    := '';
     tbConhecimentosTipoDocCarga.AsString  := '';
     tbConhecimentosNumeroMaster.AsString  := '';
     tbConhecimentosUtilizacao.AsString    := '';
     tbConhecimentosPlaca.AsString         := '';
     tbConhecimentosLacre.AsString         := '';

     dbLcbTransp.Enabled      := False;
     dbEdtEmbarcacao.Enabled  := False;
     dbLcbTipo.Enabled        := False;
     dbEdtNumDocCarga.Enabled := False;
     dbEdtNumMaster.Enabled   := False;
     dbLcbUtil.Enabled        := False;
     dbEdtLocal.Enabled       := True;
     dbEdtData.Enabled        := True;
     dbEdtPlaca.Enabled       := False;
     dbEdtAutoMarinha.Enabled := False;
     dbEdtLacre.Enabled       := False;
     sbLimpaTransp.Enabled    := False;
     sbLimpaTipo.Enabled      := False;
     sbLimpaUtil.Enabled      := False;
   end;

  { ENTRADA F�CTA }
  if via = '10'
   then begin
     ShowMessage(v_usuario+', Entrada F�cta n�o necessita de informa��es de Transporte.');

     tbConhecimentosTransportador.AsString  := '';
     tbConhecimentosEmbarcacao.AsString     := '';
     tbConhecimentosTipoDocCarga.AsString   := '';
     tbConhecimentosNumeroDocCarga.AsString := '';
     tbConhecimentosNumeroMaster.AsString   := '';
     tbConhecimentosUtilizacao.AsString     := '';
     tbConhecimentosLocal.AsString          := '';
     tbConhecimentosData.AsString           := '';
     tbConhecimentosPlaca.AsString          := '';
     tbConhecimentosLacre.AsString          := '';

     dbLcbTransp.Enabled      := False;
     dbEdtEmbarcacao.Enabled  := False;
     dbLcbTipo.Enabled        := False;
     dbEdtNumDocCarga.Enabled := False;
     dbEdtNumMaster.Enabled   := False;
     dbLcbUtil.Enabled        := False;
     dbEdtLocal.Enabled       := False;
     dbEdtData.Enabled        := False;
     dbEdtPlaca.Enabled       := False;
     dbEdtAutoMarinha.Enabled := False;
     dbEdtLacre.Enabled       := False;
     sbLimpaTransp.Enabled    := False;
     sbLimpaTipo.Enabled      := False;
     sbLimpaUtil.Enabled      := False;
   end;

     {
        Codigo  Descricao       SIGLA
        1       Mar�timo	M
        2       Fluvial 	FLU
        3       Lacustre	L
        4       A�reo	        A
        5       Postal  	P
        6       Ferrovi�rio	FER
        7       Rodovi�rio	R
        8       Ducto   	D
        9       Meios Pr�prios	MP
        10      Entrada F�cta	EF
     }
end;

procedure TF_proConhecimentos.tbConhecimentosAfterPost(DataSet: TDataSet);
begin
  logusu('P','Alterou Conhecimento de Transporte do Processo:'+tbConhecimentosProcesso.AsString);
  f_mscomex.MSPGP(me_nossaref.text);
end;

procedure TF_proConhecimentos.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if tbConhecimentos.State In [dsInsert, dsEdit]
   then begin
     MessageDlg('O Conhecimento de Transporte est� em edi��o!', mtInformation,[mbOk], 0);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure TF_proConhecimentos.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure TF_proConhecimentos.qrViaAfterOpen(DataSet: TDataSet);
begin
  qrTipoDocCarga.Filter := 'Via = '''+qrViaCodigo.AsString+''' ';

  if tbConhecimentos.State in [dsInsert, dsEdit]
   then sbLimpaTipo.Click;
end;

procedure TF_proConhecimentos.sbLimpaViaClick(Sender: TObject);
begin
  tbConhecimentosVia.AsString          := '';
  tbConhecimentosTipodoccarga.AsString := '';
end;

procedure TF_proConhecimentos.sbLimpaTranspClick(Sender: TObject);
begin
  tbConhecimentosTransportador.AsString := '';
end;

procedure TF_proConhecimentos.sbLimpaTipoClick(Sender: TObject);
begin
  tbConhecimentosTipodoccarga.AsString := '';
end;

procedure TF_proConhecimentos.sbLimpaUtilClick(Sender: TObject);
begin
  tbConhecimentosUtilizacao.AsString := '';
end;

procedure TF_proConhecimentos.btnAlterarClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1)
   then begin
     if tbConhecimentos.State <> dsInsert
      then tbConhecimentos.Edit;

     dbLcbTransp.Enabled      := True;
     dbEdtEmbarcacao.Enabled  := True;
     dbLcbTipo.Enabled        := True;
     dbEdtNumDocCarga.Enabled := True;
     dbEdtNumMaster.Enabled   := True;
     dbLcbUtil.Enabled        := True;
     dbEdtLocal.Enabled       := True;
     dbEdtData.Enabled        := True;
     edtDTETA.Enabled         := true;
     dbEdtPlaca.Enabled       := True;
     dbEdtAutoMarinha.Enabled := True;
     dbEdtLacre.Enabled       := True;

     dbLcbVia.OnClick(Sender);

     pnlTop.Enabled       := False;
     pnlPrincipal.Enabled := True;
     btnAlterar.Enabled   := False;
     btnSalvar.Enabled    := True;
     btnCancelar.Enabled  := True;
     btnSair.Enabled      := False;
     dbEdtVia.SetFocus;
   end
   else Showmessage(v_usuario+', ATEN��O! Acesso n�o permitido � processos sob Responsabilidade e/ou o processo est� fechado e/ou o Cliente est� Inativo.');
end;

procedure TF_proConhecimentos.btnSalvarClick(Sender: TObject);
begin
  if (dbEdtTipo.text = '3') or (dbLcbTipo.text = 'HOUSE AWB')
   then begin
     if (dbEdtNumDocCarga.text = '')
      then begin
        ShowMessage ('O Campo identifica��o House � obrigat�rio estar preenchido com o tipo de documento de carga "House AWB". ');
        dbEdtNumDocCarga.SetFocus ;
        Exit;
      end;

     if (dbEdtNumMaster.text = '')
      then begin
        ShowMessage ('O Campo Identifica��o Master � obrigat�rio estar preenchido com o tipo de documento de carga "House AWB". ');
        dbEdtNumMaster.SetFocus ;
        Exit;
      end;
   end;

  if ( qrViaCodigo.Value = '1' ) // 1- Mar�timo
   then Begin
     if ( Trim( qrProcessosTipo.Value ) <> '12' ) AND ( Trim( qrProcessosTipo.Value ) <> '15' ) AND ( Trim( qrProcessosTipo.Value ) <> '17' )
      then begin
        Application.MessageBox('O cadastro n�o pode ser conclu�do, pois a via de transporte informada est� incompat�vel com o tipo de processo.','Informa��o', MB_OK+MB_ICONINFORMATION);
        btnCancelar.Click;
        ME_nossaref.Clear;
        ME_nossaref.SetFocus;
        Exit;
      end;
   end
   else if ( qrViaCodigo.Value = '4' ) // 4- A�reo
         then begin
           if ( Trim( qrProcessosTipo.Value ) <> '11' ) AND ( Trim( qrProcessosTipo.Value ) <> '14' ) AND ( Trim( qrProcessosTipo.Value ) <> '17' ) // 11- Importa��o - A�reo
            then Begin
              Application.MessageBox('O cadastro n�o pode ser conclu�do, pois a via de transporte informada est� incompat�vel com o tipo de processo.','Informa��o', MB_OK+MB_ICONINFORMATION);
              btnCancelar.Click;
              ME_nossaref.Clear;
              ME_nossaref.SetFocus;
              Exit;
            end;
         end;

  dbLcbVia.OnClick(Sender);

  if (dbEdtVia.Text <> '') and (dbLcbVia.Text = '')
   then begin
     ShowMessage('Via de Transporte inv�lido!');
     dbEdtVia.SetFocus;
     Exit;
   end;

  if (dbEdtTransp.Text <> '') and (dbLcbTransp.Text = '')
   then begin
     ShowMessage('Transportador inv�lido!');
     dbEdtTransp.SetFocus;
     Exit;
   end;

  if (dbEdtTipo.Text <> '') and (dbLcbTipo.Text = '')
   then begin
     ShowMessage('Tipo Documento de Carga inv�lido!');
     dbEdtTipo.SetFocus;
     Exit;
   end;

  if (dbEdtUtil.Text <> '') and (dbLcbUtil.Text = '')
   then begin
     ShowMessage('Utiliza��o inv�lida!');
     dbEdtUtil.SetFocus;
     Exit;
   end;

  Screen.Cursor := crHourGlass;

  if CbMultimodal.Checked
   then tbConhecimentosMultimodal.asinteger := 1
   else tbConhecimentosMultimodal.asinteger := 0;

  q_verconhecimento.close;
  q_verconhecimento.Params[0].AsString := dbEdtNumDocCarga.Text;
  q_verconhecimento.Params[1].AsString := me_nossaref.text;
  q_verconhecimento.Params[2].AsString := dbEdtTipo.Text;

  if dbEdtNumDocCarga.Text = ''
   then q_verconhecimento.Params[0].AsString := 'nao';

  q_verconhecimento.open;

  if q_verconhecimento.RecordCount>0
   then begin
     Showmessage(v_usuario+', Identifica��o House est� sendo utilizado em outro processo: '+ q_verconhecimentoprocesso.asstring+' . Favor verificar.');
     exit;
   end;

  tbConhecimentos.Post;

  pnlTop.Enabled := True;
  
  pnlPrincipal.Enabled := False;
  btnAlterar.Enabled   := True;
  btnSalvar.Enabled    := False;
  btnCancelar.Enabled  := False;
  btnSair.Enabled      := True;
  
  Screen.Cursor := crDefault;
end;

procedure TF_proConhecimentos.btnCancelarClick(Sender: TObject);
begin
  tbConhecimentos.Cancel;

  pnlTop.Enabled       := True;
  pnlPrincipal.Enabled := False;
  btnAlterar.Enabled   := True;
  btnSalvar.Enabled    := False;
  btnCancelar.Enabled  := False;
  btnSair.Enabled      := True;
end;

procedure TF_proConhecimentos.dbEdtDataChange(Sender: TObject);
begin
  if tbConhecimentos.State in [dsInsert, dsEdit]
   then if dbEdtData.Text = '  /  /    '
         then tbConhecimentosData.AsString := '';
end;

procedure TF_proConhecimentos.acAtuTabelasExecute(Sender: TObject);
begin
  with qrTransportadores do
   begin
     Close;
     Open;
   end;

  with qrUtilizacao do
   begin
     Close;
     Open;
   end;

  with qrUnidade do
   begin
     Close;
     Open;
   end;

  with qrTipoDocCarga do
   begin
     Close;
     Open;
   end;

  with qrVia do
   begin
     Close;
     Open;
   end;

  with qrBandeira do
   begin
     Close;
     Open;
   end;
end;

procedure TF_proConhecimentos.sbLimpaVolumeClick(Sender: TObject);
begin
  tbConhecimentosUnidade.AsString := '';
end;

procedure TF_proConhecimentos.dbEdtNumDocCargaKeyPress(Sender: TObject;
  var Key: Char );
begin
  if Key = #32
   then begin
     Key := #0;
     showmessage(v_usuario +', Espa�os n�o s�o permitidos.');
   end
   else if ((key in ['0'..'9','a'..'z','A'..'Z',#03,#22 ] = false) and (word(key) <> vk_back))
         then begin
           key := #0;
           showmessage(v_usuario +', somente Letras e n�meros s�o permitidos.');
         end;
end;

procedure TF_proConhecimentos.dbEdtNumDocCargaExit(Sender: TObject);
begin
  dbEdtNumDocCarga.Text := uppercase(dbEdtNumDocCarga.Text);
end;

procedure TF_proConhecimentos.dbEdtNumMasterExit(Sender: TObject);
begin
  dbEdtNumMaster.Text := uppercase(dbEdtNumMaster.Text);
end;

procedure TF_proConhecimentos.tbConhecimentosAfterScroll(
  DataSet: TDataSet);
begin
  if tbConhecimentosMultimodal.asinteger = 0
   then CbMultimodal.Checked := false
   else CbMultimodal.Checked := true;
end;

procedure TF_proConhecimentos.edtDTETAChange(Sender: TObject);
begin
  if tbConhecimentos.State In [dsInsert, dsEdit]
   then if edtDTETA.Text = '  /  /    '
         then tbConhecimentosDT_ETA.AsString := '';
end;

function RemoveAcento(texto: string): string; stdcall;
{Fun��o que serve para identificar uma acento, cedilha ou trema em caracteres com letra
mai�scula ou min�scula; recebe como vari�vel uma string; retorna uma string.} 
const 
  ComAcento = '��������������������������������';
  SemAcento = 'AAEOUAOAEIOUCUONAAAEOUAOAEIOUCUO';
var 
  x: Integer; 
begin
  for x := 1 to Length(texto) do
  if Pos(texto[x], ComAcento) <> 0 then
  texto[x] := SemAcento[Pos(texto[x], ComAcento)];
  Result := texto;
end; // da fun��o RemoveAcentoCedilhaTrema

procedure TF_proConhecimentos.dbEdtNumDocCargaChange(Sender: TObject);
begin
  if (dbEdtTipo.text = '3') or (dbLcbTipo.text = 'HOUSE AWB')
   then dbEdtNumDocCarga.text := RemoveAcento(dbEdtNumDocCarga.text);
end;

procedure TF_proConhecimentos.AtualizaProcessoVisaoGeral;
begin
  with qAtuProcessoVisaoGeral do
   begin
     Close;
     ParamByName('pProcesso').value := ME_nossaref.text;
     ExecSQL;
   end;
end;

procedure TF_proConhecimentos.sbLimpaBandeiraClick(Sender: TObject);
begin
  tbConhecimentosBandeira.AsString := '';
end;

end.
