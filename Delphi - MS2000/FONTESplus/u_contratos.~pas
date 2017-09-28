unit u_contratos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Db, DBTables, Buttons, Mask;

type
  Tf_contratos = class(TForm)
    dsImportadores: TDataSource;
    t_Contratos: TTable;
    dsContratos: TDataSource;
    t_Locais: TTable;
    dsLocais: TDataSource;
    q_Import: TQuery;
    dsTipoContrato: TDataSource;
    q_TipoLocais: TQuery;
    dsTipoLocais: TDataSource;
    q_TipoContrato: TQuery;
    pnlTop: TPanel;
    pnlEsq: TPanel;
    Bevel2: TBevel;
    pnlDir: TPanel;
    q_ProcCont: TQuery;
    q_ProcLoc: TQuery;
    q_Teste: TQuery;
    q_uptr: TQuery;
    q_uptr_msdoc: TQuery;
    q_uptr2: TQuery;
    q_ImportEmpresa: TStringField;
    q_ImportFilial: TStringField;
    q_ImportCodigo: TStringField;
    q_ImportRazao_Social: TStringField;
    q_ImportPais: TStringField;
    q_ImportCNPJ_CPF_COMPLETO: TStringField;
    q_ImportCGC_CPF: TStringField;
    q_ImportTipo_Importador: TStringField;
    q_ImportEndereco: TStringField;
    q_ImportNumero: TStringField;
    q_ImportComplemento: TStringField;
    q_ImportBairro: TStringField;
    q_ImportCidade: TStringField;
    q_ImportCEP: TStringField;
    q_ImportUF: TStringField;
    q_ImportEstado: TStringField;
    q_ImportInscricao_Estadual: TStringField;
    q_ImportBanco: TStringField;
    q_ImportAgencia: TStringField;
    q_ImportConta_Corrente: TStringField;
    q_ImportConta_Corrente_Registro: TIntegerField;
    q_ImportConta_Corrente_Deposito: TIntegerField;
    q_Importlink: TStringField;
    q_ImportCAE: TStringField;
    q_ImportTelefone: TStringField;
    q_ImportAtivo: TSmallintField;
    q_ImportAcesso_WEB_MS: TSmallintField;
    q_ImportAcesso_WEB_CLI: TSmallintField;
    q_ImportAcesso_WEB_REC: TSmallintField;
    q_ImportBASE_ICMS: TSmallintField;
    t_ContratosEmpresa: TStringField;
    t_ContratosFilial: TStringField;
    t_ContratosImportador: TStringField;
    t_ContratosContrato: TStringField;
    t_ContratosDescricao: TStringField;
    t_ContratosVigencia_inicial: TDateTimeField;
    t_ContratosVigencia_final: TDateTimeField;
    t_ContratosTipo: TStringField;
    t_ContratosData_Baixa: TDateTimeField;
    t_ContratosData_prorrogacao: TDateTimeField;
    t_ContratosRepetro: TSmallintField;
    t_ContratosAtivo: TSmallintField;
    t_LocaisEmpresa: TStringField;
    t_LocaisFilial: TStringField;
    t_LocaisImportador: TStringField;
    t_LocaisContrato: TStringField;
    t_LocaisLocal: TStringField;
    t_LocaisDescricao: TStringField;
    t_LocaisTipo_local: TStringField;
    t_LocaisProcesso_Adm: TStringField;
    t_LocaisCNPJ: TStringField;
    t_LocaisUnidade_Jur: TStringField;
    t_LocaisFiel_nome: TStringField;
    t_LocaisFiel_cpf: TStringField;
    t_LocaisSIGLA: TStringField;
    t_LocaisAtivo: TSmallintField;
    q_TipoContratoCodigo: TStringField;
    q_TipoContratoDescricao: TStringField;
    q_TipoLocaisCodigo: TStringField;
    q_TipoLocaisDescricao: TStringField;
    q_upRepetro: TQuery;
    q_upRepetro_pro: TQuery;
    t_LocaisCentro_Custo: TStringField;
    t_LocaisCodigo_Contabil: TStringField;
    t_LocaisACESSO_RF_ANGRA: TIntegerField;
    btnSair: TBitBtn;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label7: TLabel;
    dbgContratos: TDBGrid;
    btnNovoCont: TBitBtn;
    btnAlterarCont: TBitBtn;
    btnExcluirCont: TBitBtn;
    btnGravarCont: TBitBtn;
    btnCancelarCont: TBitBtn;
    dbedtContrato: TDBEdit;
    dbedtVigIni: TDBEdit;
    dbedtbai: TDBEdit;
    dbedtpro: TDBEdit;
    dblcbTipoCont: TDBLookupComboBox;
    dbc_repetro: TDBCheckBox;
    dbcb1: TDBCheckBox;
    GroupBox4: TGroupBox;
    dbgLocais: TDBGrid;
    btnNovoLoc: TBitBtn;
    btnAlterarLoc: TBitBtn;
    btnExcluirLoc: TBitBtn;
    btnGravarLoc: TBitBtn;
    btnCancelarLoc: TBitBtn;
    btnImprimir: TBitBtn;
    rdg_Filtra_Ativos: TRadioGroup;
    dbedtVigFin: TDBEdit;
    dbedtDescCont: TDBEdit;
    dblcbImportadores: TDBLookupComboBox;
    dbgImport: TDBGrid;
    Label3: TLabel;
    dblcbRegimeFundamento: TDBLookupComboBox;
    Label4: TLabel;
    ds_Regime_Fundamento: TDataSource;
    qr_Regime_Fundamento: TQuery;
    qr_Regime_FundamentoRegime: TStringField;
    qr_Regime_FundamentoCodigo: TStringField;
    qr_Regime_Fundamentodescricao: TStringField;
    t_ContratosCod_Regime_Fundamento: TStringField;
    Label9: TLabel;
    dbedtLocal: TDBEdit;
    Label10: TLabel;
    dbedtDescLoc: TDBEdit;
    dblcbTipoLoc: TDBLookupComboBox;
    Label13: TLabel;
    Label11: TLabel;
    dbedtProcAdm: TDBEdit;
    dbedtNomeFiel: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    dbedtCPFFiel: TDBEdit;
    dbedtCNPJ: TDBEdit;
    Label12: TLabel;
    dbedtUnidJur: TDBEdit;
    Label14: TLabel;
    Label17: TLabel;
    dbedtSigla: TDBEdit;
    DBCB3: TDBCheckBox;
    lblObs: TLabel;
    dbcb2: TDBCheckBox;
    dbedtIN: TDBEdit;
    Label8: TLabel;
    t_ContratosINs: TStringField;
    t_ContratosSetor: TStringField;
    l_cliente: TLabel;
    t_ContratosValor_Icms: TFloatField;
    pnlICMS: TPanel;
    Panel2: TPanel;
    Label21: TLabel;
    dbedtValorICMS: TDBEdit;
    Label20: TLabel;
    Label22: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure t_ContratosAfterPost(DataSet: TDataSet);
    procedure t_ContratosBeforeDelete(DataSet: TDataSet);
    procedure t_LocaisAfterPost(DataSet: TDataSet);
    procedure t_LocaisBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoContClick(Sender: TObject);
    procedure btnAlterarContClick(Sender: TObject);
    procedure btnExcluirContClick(Sender: TObject);
    procedure btnCancelarContClick(Sender: TObject);
    procedure btnGravarContClick(Sender: TObject);
    procedure dbedtVigIniChange(Sender: TObject);
    procedure dbedtVigFinChange(Sender: TObject);
    procedure btnNovoLocClick(Sender: TObject);
    procedure btnAlterarLocClick(Sender: TObject);
    procedure btnExcluirLocClick(Sender: TObject);
    procedure t_ContratosAfterScroll(DataSet: TDataSet);
    procedure t_LocaisAfterScroll(DataSet: TDataSet);
    procedure btnCancelarLocClick(Sender: TObject);
    procedure btnGravarLocClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure dblcbImportadoresClick(Sender: TObject);
    procedure dbc_repetroClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_contratos: Tf_contratos;

implementation

uses U_MSCOMEX, U_RelContrato;

{$R *.DFM}

procedure Tf_contratos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  q_TipoLocais.Close;
  q_TipoContrato.Close;
  qr_Regime_Fundamento.close;
  t_Locais.Close;
  t_Contratos.Close;
  q_Import.Close;

  Action := caFree;
  f_contratos := nil;
  f_mscomex.Contratos2.Enabled := True;
end;

procedure Tf_contratos.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_contratos.t_ContratosAfterPost(DataSet: TDataSet);
var
  qcontrato : string;
begin
  logusu('P','Inclui/Alterou dados do Contrato: '+T_contratosdescricao.asstring);
  qcontrato := t_contratoscontrato.AsString;
  t_contratos.refresh;
  t_contratos.First;

  while (not t_contratos.eof) and (t_contratoscontrato.asstring<>qcontrato) do
   begin
     t_contratos.next;
   end;

  q_upREPETRO.params[0].asstring := t_contratosempresa.asstring;
  q_upREPETRO.params[1].asstring := t_contratosfilial.asstring;
  q_upREPETRO.params[2].asstring := t_contratosimportador.asstring;
  q_upREPETRO.params[3].asstring := t_contratoscontrato.asstring;
  q_upREPETRO.execsql;

  q_upREPETRO_PRO.params[0].asstring := t_contratosempresa.asstring;
  q_upREPETRO_PRO.params[1].asstring := t_contratosfilial.asstring;
  q_upREPETRO_PRO.params[2].asstring := t_contratosimportador.asstring;
  q_upREPETRO_PRO.params[3].asstring := t_contratoscontrato.asstring;
  q_upREPETRO_PRO.execsql;
end;

procedure Tf_contratos.t_ContratosBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu Contrato: '+T_contratosdescricao.asstring);  
end;

procedure Tf_contratos.t_LocaisAfterPost(DataSet: TDataSet);
begin
  logusu('P','Inclui/Alterou dados do Local de Inventario: '+T_locaisdescricao.asstring);
end;

procedure Tf_contratos.t_LocaisBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu Local de Inventario: '+T_locaisdescricao.asstring);  
end;

procedure Tf_contratos.FormCreate(Sender: TObject);
var
  emp,
  fil : String;
begin
  emp := F_MSCOMEX.t_parametrosEmpresa.AsString;
  fil := F_MSCOMEX.t_parametrosFilial.AsString;

  q_Import.Close;
  q_Import.Params[0].AsString := emp;
  q_Import.Params[1].AsString := fil;
  q_Import.Open;
end;

procedure Tf_contratos.btnNovoContClick(Sender: TObject);
begin
  t_Contratos.Append;
  pnlTop.Enabled := False;
  pnlDir.Enabled := False;
  pnlICMS.Enabled := true;
  btnNovoCont.Enabled     := False;
  btnAlterarCont.Enabled  := False;
  btnExcluirCont.Enabled  := False;
  btnGravarCont.Enabled   := True;
  btnCancelarCont.Enabled := True;
  btnGravarCont.Tag := 1;

  dbgContratos.Enabled          := False;
  dbedtContrato.Enabled         := True;
  dbedtDescCont.Enabled         := True;
  dbedtVigIni.Enabled           := True;
  dbedtVigFin.Enabled           := True;
  dblcbTipoCont.Enabled         := True;
  dblcbRegimeFundamento.Enabled := True;
  dbedtIN.Enabled:= True;

  q_TipoContrato.First;
  qr_Regime_Fundamento.First;
  t_ContratosTipo.AsString := q_TipoContratoCodigo.AsString;
  t_ContratosCod_Regime_Fundamento.AsString := qr_Regime_FundamentoCodigo.AsString;
  dbedtContrato.SetFocus;
  btnSair.Enabled:=false;
end;

procedure Tf_contratos.btnAlterarContClick(Sender: TObject);
begin
  pnlTop.Enabled := False;
  pnlDir.Enabled := False;
  pnlICMS.Enabled := true;
  btnNovoCont.Enabled     := False;
  btnAlterarCont.Enabled  := False;
  btnExcluirCont.Enabled  := False;
  btnGravarCont.Enabled   := True;
  btnCancelarCont.Enabled := True;
  
  btnGravarCont.Tag := 2;

  dbgContratos.Enabled          := False;
  dbedtDescCont.Enabled         := True;
  dbedtVigIni.Enabled           := True;
  dbedtVigFin.Enabled           := True;
  dblcbTipoCont.Enabled         := True;
  dblcbRegimeFundamento.Enabled := True;
  dbedtbai.Enabled              := True;
  dbedtpro.Enabled              := True;
  dbc_repetro.Enabled           := True;
  dbcb1.Enabled                 := true;
  dbedtIN.Enabled               := true;

  t_Contratos.refresh();
  t_Contratos.Edit;
  dbedtDescCont.SetFocus;

  btnSair.Enabled := false;
end;

procedure Tf_contratos.btnExcluirContClick(Sender: TObject);
begin
  q_ProcCont.Params[0].AsString := t_ContratosImportador.AsString;
  q_ProcCont.Params[1].AsString := t_ContratosContrato.AsString;
  q_ProcCont.Open;

  if q_ProcCont.RecordCount <> 0
   then MessageDlg('Existem Processos com este Contrato. Não pode ser excluído!', mtInformation,[mbOk], 0)
   else if MessageDlg('Confirma exclusão deste Contrato? Todos seus Locais de Inventário também serão excluídos.', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           while not t_Locais.Eof do
             t_Locais.Delete;
             
           t_Contratos.Delete;
           ShowMessage('Contrato excluído!');
         end;

  q_ProcCont.Close;
  btnNovoCont.SetFocus;
  btnSair.Enabled:=True;
end;

procedure Tf_contratos.btnCancelarContClick(Sender: TObject);
begin
  pnlTop.Enabled := True;
  pnlDir.Enabled := True;

  btnNovoCont.Enabled     := True;
  btnAlterarCont.Enabled  := True;
  btnExcluirCont.Enabled  := True;
  btnGravarCont.Enabled   := False;
  btnCancelarCont.Enabled := False;

  btnGravarCont.Tag := 0;

  dbgContratos.Enabled          := True;
  dbedtContrato.Enabled         := False;
  dbedtDescCont.Enabled         := False;
  dbedtVigIni.Enabled           := False;
  dbedtVigFin.Enabled           := False;
  dblcbTipoCont.Enabled         := False;
  dblcbRegimeFundamento.Enabled := False;
  dbedtbai.Enabled              := false;
  dbedtpro.Enabled              := false;
  dbc_repetro.Enabled           := false;
  dbcb1.Enabled                 := false;
  dbedtIN.Enabled               := false;
  pnlICMS.Enabled               := false;
  t_Contratos.Cancel;
  btnNovoCont.SetFocus;
  btnSair.Enabled := True; 
end;

procedure Tf_contratos.btnGravarContClick(Sender: TObject);
var
  SemErro : Boolean;
  vigIniS, vigFinS, Contrato, data_prorrogacao : String;
  vigIniD, vigFinD : TDateTime;
  cont : integer;
begin
  vigIniS := t_ContratosVigencia_inicial.AsString;
  vigFinS := t_ContratosVigencia_final.AsString;
  vigIniD := t_ContratosVigencia_inicial.AsDateTime;
  vigFinD := t_ContratosVigencia_final.AsDateTime;
  SemErro := True;
  Contrato := '';
  data_prorrogacao :=  dbedtpro.Text;

  if vigIniS <> ''
   then if vigFinS = ''
         then begin
           MessageDlg('Contrato sem Vigência Final!', mtInformation,[mbOk], 0);
           dbedtVigFin.SetFocus;
           SemErro := False;
         end
         else begin
           if vigIniD > vigFinD
            then begin
              MessageDlg('A data da Vigência Final é menor do que a data da Vigência Inicial!', mtInformation,[mbOk], 0);
              dbedtVigFin.SetFocus;
              SemErro := False;
            end
         end
   else
     if vigFinS <> ''
      then begin
        MessageDlg('Contrato sem Vigência Inicial!', mtInformation,[mbOk], 0);
        dbedtVigIni.SetFocus;
        SemErro := False;
      end;

  if SemErro
   then if dbedtContrato.Text = ''
         then begin
           MessageDlg('Digite o código do Contrato!', mtInformation,[mbOk], 0);
           dbedtContrato.SetFocus;
         end
         else
           if dbedtDescCont.Text = ''
            then begin
              MessageDlg('Digite a descrição do Contrato!', mtInformation,[mbOk], 0);
              dbedtDescCont.SetFocus;
            end
            else begin
              cont := 0;

              if btnGravarCont.Tag = 1
               then begin
                 q_Teste.SQL.Clear;
                 q_Teste.SQL.Add('SELECT C.Contrato FROM Parametros AS P INNER JOIN Contratos AS C ');
                 q_Teste.SQL.Add('ON P.Filial = C.Filial AND P.Empresa = C.Empresa ');
                 q_Teste.SQL.Add('WHERE C.Importador = "'+t_ContratosImportador.AsString+'" ');
                 q_Teste.SQL.Add('AND C.Contrato = "'+t_ContratosContrato.AsString+'" ');
                 q_Teste.Open;
                 cont := q_Teste.RecordCount;
               end;

              {Ao dar o Post perdia o foco do contrato, no caso a variável Contrato resolve este problema.}
              Contrato := t_ContratosContrato.Value;

              if cont <> 0
               then begin
                 MessageDlg('Já existe Contrato com este código!', mtInformation,[mbOk], 0);
                 dbedtContrato.SetFocus;
               end
               else begin
                 t_Contratos.Post;
                 t_Contratos.Close;
                 t_Contratos.Open;
                 t_Contratos.Filter :=  'Setor = '''+'OPN' +''' and Contrato = '''+ Contrato + '''';
                 t_Contratos.Filtered := true;

                 if btnGravarCont.Tag = 1
                  then ShowMessage('Contrato incluído com sucesso!')
                  else ShowMessage('Contrato alterado com sucesso!');

                 if MessageDlg(v_usuario+', Atenção! Confirma aplicação da vigência Final deste contrato para vigência de todos os TR''S vinculados a este contrato?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
                  then begin
                    logusu('P','Confirmou Alteração de todas as vigências finais dos TR''s do contrao:'+t_contratoscontrato.asstring+'- '+t_contratoscontrato.asstring+' do importador:'+t_contratosimportador.asstring);

                    q_uptr.params[0].asstring := t_contratosempresa.asstring;
                    q_uptr.params[1].asstring := t_contratosfilial.asstring;
                    q_uptr.params[2].asstring := t_contratosimportador.asstring;
                    q_uptr.params[3].asstring := Contrato;//t_contratoscontrato.asstring;
                    q_uptr.execsql;

                    q_uptr_msdoc.params[0].asstring := t_contratosempresa.asstring;
                    q_uptr_msdoc.params[1].asstring := t_contratosfilial.asstring;
                    q_uptr_msdoc.params[2].asstring := t_contratosimportador.asstring;
                    q_uptr_msdoc.params[3].asstring := Contrato;//t_contratoscontrato.asstring;
                    q_uptr_msdoc.execsql;

                    ShowMessage(v_usuario+' Foram alteradas todas as vigências dos termos vinculados à este contrato!');
                  end;

                 {CORREÇÃO DO TICKET 3548 LEANDRO.SERRA 05/09/2012-e}
                 if (data_prorrogacao <> '')
                  then begin
                    if MessageDlg(v_usuario+', Atenção! Confirma aplicação da Prorrogação deste contrato para todos os TR''S vinculados a este contrato(com exceção dos já baixados)?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
                     then begin
                       logusu('P','Confirmou Alteração de todas as Prorrogações dos TR''s do contrato:'+t_contratoscontrato.asstring+'- '+t_contratoscontrato.asstring+' do importador:'+t_contratosimportador.asstring);

                       q_uptr2.params[0].asstring := t_contratosempresa.asstring;
                       q_uptr2.params[1].asstring := t_contratosfilial.asstring;
                       q_uptr2.params[2].asstring := t_contratosimportador.asstring;
                       q_uptr2.params[3].asstring := Contrato;//t_contratoscontrato.asstring;
                       q_uptr2.execsql;

                       ShowMessage(v_usuario+' Foram prorrogados (exceto os baixados) os termos vinculados à este contrato!');
                     end;
                  end;

                 t_Contratos.Close;
                 t_Contratos.Open;
                 t_Contratos.Filter :=  'Setor = '''+'OPN' +''' and Contrato = '''+ Contrato + '''';
                 t_Contratos.Filtered := true;

                 pnlTop.Enabled := True;
                 pnlDir.Enabled := True;

                 btnNovoLoc.Enabled      := True;
                 btnNovoCont.Enabled     := True;
                 btnAlterarCont.Enabled  := True;
                 btnExcluirCont.Enabled  := True;
                 btnGravarCont.Enabled   := False;
                 btnCancelarCont.Enabled := False;
                 btnGravarCont.Tag := 0;

                 dbgContratos.Enabled          := True;
                 dbedtContrato.Enabled         := False;
                 dbedtDescCont.Enabled         := False;
                 dbedtVigIni.Enabled           := False;
                 dbedtVigFin.Enabled           := False;
                 dblcbTipoCont.Enabled         := False;
                 dblcbRegimeFundamento.Enabled := False;
                 dbedtbai.Enabled              := false;
                 dbedtpro.Enabled              := false;
                 dbc_repetro.Enabled           := false;
                 dbcb1.Enabled                 := false;
                 dbedtIN.Enabled               := false;
                 pnlICMS.Enabled := false;
                 btnNovoCont.SetFocus;
               end;

              q_Teste.Close
           end;

  btnSair.Enabled:=True;
end;

procedure Tf_contratos.dbedtVigIniChange(Sender: TObject);
begin
  if btnGravarCont.Tag <> 0
   then if dbedtVigIni.Text = '  /  /    '
         then t_ContratosVigencia_inicial.AsString := '';
end;

procedure Tf_contratos.dbedtVigFinChange(Sender: TObject);
begin
  if btnGravarCont.Tag <> 0
   then if dbedtVigFin.Text = '  /  /    '
         then t_ContratosVigencia_final.AsString := '';
end;

procedure Tf_contratos.btnNovoLocClick(Sender: TObject);
begin
  t_Locais.Append;
  pnlTop.Enabled := False;
  pnlEsq.Enabled := False;

  btnNovoLoc.Enabled     := False;
  btnAlterarLoc.Enabled  := False;
  btnExcluirLoc.Enabled  := False;
  btnGravarLoc.Enabled   := True;
  btnCancelarLoc.Enabled := True;
  btnGravarLoc.Tag       := 1;

  dbgLocais.Enabled     := False;
  dbedtLocal.Enabled    := True;
  dbedtDescLoc.Enabled  := True;
  dblcbTipoLoc.Enabled  := True;
  dbedtProcAdm.Enabled  := True;
  dbedtCNPJ.Enabled     := True;
  dbedtUnidJur.Enabled  := True;
  dbedtNomeFiel.Enabled := True;
  dbedtCPFFiel.Enabled  := True;
  dbedtSigla.Enabled    := True;

  q_TipoLocais.First;
  t_LocaisTipo_local.AsString := q_TipoLocaisCodigo.AsString;
  dbedtLocal.SetFocus;
end;

procedure Tf_contratos.btnAlterarLocClick(Sender: TObject);
begin
  pnlTop.Enabled := False;
  pnlEsq.Enabled := False;

  btnNovoLoc.Enabled     := False;
  btnAlterarLoc.Enabled  := False;
  btnExcluirLoc.Enabled  := False;
  btnGravarLoc.Enabled   := True;
  btnCancelarLoc.Enabled := True;
  btnGravarLoc.Tag       := 2;

  dbgLocais.Enabled     := False;
  dbedtDescLoc.Enabled  := True;
  dblcbTipoLoc.Enabled  := True;
  dbedtProcAdm.Enabled  := True;
  dbedtCNPJ.Enabled     := True;
  dbedtUnidJur.Enabled  := True;
  dbedtNomeFiel.Enabled := True;
  dbedtCPFFiel.Enabled  := True;
  dbedtSigla.Enabled    := True;
  dbcb2.Enabled         := true;
  dbcb3.Enabled         := true;

  t_Locais.Edit;
  dbedtDescLoc.SetFocus;
end;

procedure Tf_contratos.btnExcluirLocClick(Sender: TObject);
begin
  q_ProcLoc.Params[0].AsString := t_LocaisImportador.AsString;
  q_ProcLoc.Params[1].AsString := t_LocaisContrato.AsString;
  q_ProcLoc.Params[2].AsString := t_LocaisLocal.AsString;
  q_ProcLoc.Open;
     
  if q_ProcLoc.RecordCount <> 0
   then MessageDlg('Existem Processos com este Local de Inventário. Não pode ser excluído!', mtInformation,[mbOk], 0)
   else if MessageDlg('Confirma exclusão deste Local de Inventário?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           t_Locais.Delete;
           ShowMessage('Local de Inventário excluído!');
         end;
         
  q_ProcLoc.Close;
  btnNovoLoc.SetFocus;
end;

procedure Tf_contratos.t_ContratosAfterScroll(DataSet: TDataSet);
begin
  if t_Contratos.RecordCount = 0
   then begin
     btnAlterarCont.Enabled := False;
     btnExcluirCont.Enabled := False;
     btnNovoLoc.Enabled     := False;
     btnImprimir.Enabled    := False;
   end
   else begin
     btnAlterarCont.Enabled := True;
     btnExcluirCont.Enabled := True;
     btnNovoLoc.Enabled     := True;
     btnImprimir.Enabled    := True;
   end;
end;

procedure Tf_contratos.t_LocaisAfterScroll(DataSet: TDataSet);
begin
  lblObs.Caption := '';

  if t_Locais.RecordCount = 0
   then begin
     btnAlterarLoc.Enabled := False;
     btnExcluirLoc.Enabled := False;
   end
   else begin
     btnAlterarLoc.Enabled := True;
     btnExcluirLoc.Enabled := True;

     if dbedtSigla.Text = ''
      then lblObs.Caption := 'OBS:'+#13#10+'Local de Inventário sem Sigla!';
   end
end;

procedure Tf_contratos.btnCancelarLocClick(Sender: TObject);
begin
  pnlTop.Enabled := True;
  pnlEsq.Enabled := True;

  btnNovoLoc.Enabled     := True;
  btnAlterarLoc.Enabled  := True;
  btnExcluirLoc.Enabled  := True;
  btnGravarLoc.Enabled   := False;
  btnCancelarLoc.Enabled := False;
  btnGravarLoc.Tag       := 0;

  dbgLocais.Enabled     := True;
  dbedtLocal.Enabled    := False;
  dbedtDescLoc.Enabled  := False;
  dblcbTipoLoc.Enabled  := False;
  dbedtProcAdm.Enabled  := False;
  dbedtCNPJ.Enabled     := False;
  dbedtUnidJur.Enabled  := False;
  dbedtNomeFiel.Enabled := False;
  dbedtCPFFiel.Enabled  := False;
  dbedtSigla.Enabled    := False;

  dbcb2.Enabled := false;
  dbcb3.Enabled := FALSE;

  t_Locais.Cancel;
  btnNovoLoc.SetFocus;
end;

procedure Tf_contratos.btnGravarLocClick(Sender: TObject);
var
  cont: integer;
begin
  if Trim(dbedtLocal.Text) = ''
   then begin
     MessageDlg('Digite o código do Local de Inventário!', mtInformation,[mbOk], 0);
     dbedtLocal.SetFocus;
     Exit;
   end;

  if Trim(dbedtDescLoc.Text) = ''
   then begin
     MessageDlg('Digite a descrição do Local de Inventário!', mtInformation,[mbOk], 0);
     dbedtDescLoc.SetFocus;
     Exit;
   end;

  if Trim(dbedtSigla.Text) = ''
   then if MessageDlg('A Sigla está em branco e é usada em alguns relatórios. Deseja Incluir a Sigla?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           dbedtSigla.SetFocus;
           Exit;
         end;

  cont := 0;

  if btnGravarLoc.Tag = 1
   then begin
     q_Teste.SQL.Clear;
     q_Teste.SQL.Add('SELECT L.Local FROM Parametros AS P INNER JOIN Locais_Inventario AS L ');
     q_Teste.SQL.Add('ON P.Filial = L.Filial AND P.Empresa = L.Empresa ');
     q_Teste.SQL.Add('WHERE L.Importador = "'+t_LocaisImportador.AsString+'" ');
     q_Teste.SQL.Add('AND L.Contrato = "'+t_LocaisContrato.AsString+'" ');
     q_Teste.SQL.Add('AND L.Local = "'+t_LocaisLocal.AsString+'" ');
     q_Teste.Open;
     cont := q_Teste.RecordCount;
   end;

  q_Teste.Close;

  if cont <> 0
   then begin
     MessageDlg('Já existe Local de Inventário com este código!', mtInformation,[mbOk], 0);
     dbedtLocal.SetFocus;
     Exit;
   end;

  t_Locais.Post;
  t_Locais.Refresh;

  if btnGravarLoc.Tag = 1
   then ShowMessage('Local de Inventário incluído com sucesso!')
   else ShowMessage('Local de Inventário alterado com sucesso!');

  pnlTop.Enabled := True;
  pnlEsq.Enabled := True;

  btnNovoLoc.Enabled     := True;
  btnAlterarLoc.Enabled  := True;
  btnExcluirLoc.Enabled  := True;
  btnGravarLoc.Enabled   := False;
  btnCancelarLoc.Enabled := False;
  
  btnGravarLoc.Tag := 0;

  dbgLocais.Enabled     := True;
  dbedtLocal.Enabled    := False;
  dbedtDescLoc.Enabled  := False;
  dblcbTipoLoc.Enabled  := False;
  dbedtProcAdm.Enabled  := False;
  dbedtCNPJ.Enabled     := False;
  dbedtUnidJur.Enabled  := False;
  dbedtNomeFiel.Enabled := False;
  dbedtCPFFiel.Enabled  := False;
  dbedtSigla.Enabled    := False;

  dbcb2.Enabled := false;
  dbcb3.Enabled := FALSE;

  dbgLocais.SetFocus;
end;

procedure Tf_contratos.btnSairClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_contratos.btnImprimirClick(Sender: TObject);
begin
  if not Assigned(F_RelContrato)
   then Application.CreateForm(TF_RelContrato, F_RelContrato);

  F_RelContrato.qrContrato.Preview;
end;

procedure Tf_contratos.dblcbImportadoresClick(Sender: TObject);
var
  cnpj : String;
begin
  t_Contratos.Open;
  t_Locais.Open;
  q_TipoContrato.Open;
  qr_Regime_Fundamento.Open;
  q_TipoLocais.Open;

  t_Contratos.Filter   := 'Setor = '''+'OPN' +''' ';
  t_Contratos.Filtered := true;

  if (dblcbImportadores.KeyValue <> '')
   then begin
     cnpj := q_ImportCNPJ_CPF_COMPLETO.asstring;
     cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

     l_cliente.Caption := 'CNPJ: '+cnpj;
   end
   else l_cliente.Caption := '';
end;


procedure Tf_contratos.dbc_repetroClick(Sender: TObject);
begin
  if(dbc_repetro.Checked)
   then pnlICMS.Visible := true
   else pnlICMS.Visible := False;
end;

end.
