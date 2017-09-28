unit u_contratos_juridico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, Grids, DBGrids, StdCtrls, ExtCtrls, Db, DBTables, Buttons, Mask;

type
  Tf_contratos_juridico = class(TForm)
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
    t_LocaisCentro_Custo: TStringField;
    t_LocaisCodigo_Contabil: TStringField;
    t_LocaisACESSO_RF_ANGRA: TIntegerField;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    dbgContratos: TDBGrid;
    btnNovoCont: TBitBtn;
    btnAlterarCont: TBitBtn;
    btnGravarCont: TBitBtn;
    btnCancelarCont: TBitBtn;
    dbedtContrato: TDBEdit;
    dbedtVigIni: TDBEdit;
    dbcb1: TDBCheckBox;
    btnImprimir: TBitBtn;
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
    Label8: TLabel;
    t_ContratosINs: TStringField;
    GroupBox4: TGroupBox;
    Label9: TLabel;
    Label10: TLabel;
    lblObs: TLabel;
    dbgLocais: TDBGrid;
    btnNovoLoc: TBitBtn;
    btnAlterarLoc: TBitBtn;
    btnGravarLoc: TBitBtn;
    btnCancelarLoc: TBitBtn;
    dbedtLocal: TDBEdit;
    dbedtDescLoc: TDBEdit;
    dbcb2: TDBCheckBox;
    dbedtIN: TDBEdit;
    btnSair: TBitBtn;
    qrCodigo_Contratos: TQuery;
    qrUPSetor_Contrato: TQuery;
    t_ContratosSetor: TStringField;
    qrCodigo_locais: TQuery;
    qrCodigo_locaiscontrato: TStringField;
    qrUpSetor_local: TQuery;
    qrCodigo_locaislocal: TStringField;
    t_LocaisSetor: TStringField;
    qrCodigo_Contratosidentificacao: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure t_ContratosAfterPost(DataSet: TDataSet);
    procedure t_ContratosBeforeDelete(DataSet: TDataSet);
    procedure t_LocaisAfterPost(DataSet: TDataSet);
    procedure t_LocaisBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure btnNovoContClick(Sender: TObject);
    procedure btnAlterarContClick(Sender: TObject);
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
    procedure dbgImportKeyPress(Sender: TObject; var Key: Char);
    procedure dblcbImportadoresClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_contratos_juridico: Tf_contratos_juridico;

implementation

uses U_MSCOMEX, U_RelContrato;

{$R *.DFM}

procedure Tf_contratos_juridico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     q_TipoLocais.Close;
     q_TipoContrato.Close;
     qr_Regime_Fundamento.close;
     t_Locais.Close;
     t_Contratos.Close;
     q_Import.Close;

     Action := caFree;
     f_contratos_juridico := nil;
     f_mscomex.ContratodehabilitaoaoRepetro1.Enabled := True;
end;

procedure Tf_contratos_juridico.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

{     h := Height;
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
     width := w;  }


end;

procedure Tf_contratos_juridico.t_ContratosAfterPost(DataSet: TDataSet);
var qcontrato:string;
begin
  logusu('P','Inclui/Alterou dados do Contrato: '+T_contratosdescricao.asstring);
  qcontrato := t_contratoscontrato.AsString;
  t_contratos.refresh;
  t_contratos.First;
  while (not t_contratos.eof) and (t_contratoscontrato.asstring<>qcontrato) do begin
        t_contratos.next;
  end;



end;

procedure Tf_contratos_juridico.t_ContratosBeforeDelete(DataSet: TDataSet);
begin

  logusu('E','Excluiu Contrato: '+T_contratosdescricao.asstring);  
end;

procedure Tf_contratos_juridico.t_LocaisAfterPost(DataSet: TDataSet);
begin

  logusu('P','Inclui/Alterou dados do Local de Inventario: '+T_locaisdescricao.asstring);  
end;

procedure Tf_contratos_juridico.t_LocaisBeforeDelete(DataSet: TDataSet);
begin

  logusu('E','Excluiu Local de Inventario: '+T_locaisdescricao.asstring);  
end;

procedure Tf_contratos_juridico.FormCreate(Sender: TObject);
var emp, fil: String;
begin
  emp := F_MSCOMEX.t_parametrosEmpresa.AsString;
  fil := F_MSCOMEX.t_parametrosFilial.AsString;
  q_Import.Close;
  q_Import.Params[0].AsString := emp;
  q_Import.Params[1].AsString := fil;
  q_Import.Open;
{  t_Contratos.Open;
  t_Locais.Open;
  q_TipoContrato.Open;
  qr_Regime_Fundamento.Open;
  q_TipoLocais.Open;}


end;

procedure Tf_contratos_juridico.btnNovoContClick(Sender: TObject);
begin

  t_Contratos.close;
  t_Contratos.Open;


   With qrCodigo_Contratos Do Begin
        Close;
        Open;
        last;
   End;

  t_Contratos.Append;
  pnlTop.Enabled := False;
  pnlDir.Enabled := False;

  btnNovoCont.Enabled := False;
  btnAlterarCont.Enabled := False;
  btnGravarCont.Enabled := True;
  btnCancelarCont.Enabled := True;
  btnGravarCont.Tag := 1;

  dbgContratos.Enabled  := False;
  dbedtDescCont.Enabled := True;
  dbedtVigIni.Enabled   := True;
  dbedtVigFin.Enabled   := True;
  dblcbRegimeFundamento.Enabled := True;

  q_TipoContrato.First;
  qr_Regime_Fundamento.First;
  t_ContratosTipo.AsString := q_TipoContratoCodigo.AsString;
  t_ContratosCod_Regime_Fundamento.AsString := qr_Regime_FundamentoCodigo.AsString;
  btnSair.Enabled:=false;
  dbedtIN.text := '844';
  {
   Sandro - 01/11/2012
   Foi acrescentado na tabela contrato o campo identificacao que é um inteiro de autoinc.
   Sendo assim toda vez que é incluido um novo contrato o campo contrato que é uma string está recebendo
   o campo identificacao + 1
   Nesta tabela a chave primária é composto por empresa + filial + importador + contrato, sendo assim
   dificilmente este numero irá se repetir.
   Lembrando que na tela de contrato do operacional (Irene) o campo contrato e aberto para edição do usuário
  }
 If qrCodigo_Contratos.RecordCount = 0 then begin
    dbedtContrato.text := '1'
 End
 Else begin
    dbedtContrato.text := IntToStr(StrToInt(qrCodigo_Contratosidentificacao.AsString) + 1);
 End;

end;

procedure Tf_contratos_juridico.btnAlterarContClick(Sender: TObject);
begin
  pnlTop.Enabled := False;
  pnlDir.Enabled := False;

  btnNovoCont.Enabled := False;
  btnAlterarCont.Enabled := False;
  btnGravarCont.Enabled := True;
  btnCancelarCont.Enabled := True;
  btnGravarCont.Tag := 2;

  dbgContratos.Enabled  := False;
  dbedtDescCont.Enabled := True;
  dbedtVigIni.Enabled   := True;
  dbedtVigFin.Enabled   := True;
  dblcbRegimeFundamento.Enabled := True;
  dbcb1.Enabled := true;

  t_Contratos.refresh();
  t_Contratos.Edit;
  dbedtDescCont.SetFocus;
  btnSair.Enabled:=false;
end;

procedure Tf_contratos_juridico.btnCancelarContClick(Sender: TObject);
begin
  pnlTop.Enabled := True;
  pnlDir.Enabled := True;

  btnNovoCont.Enabled := True;
  btnAlterarCont.Enabled := True;
  btnGravarCont.Enabled := False;
  btnCancelarCont.Enabled := False;
  btnGravarCont.Tag := 0;

  dbgContratos.Enabled  := True;
  dbedtContrato.Enabled := False;
  dbedtDescCont.Enabled := False;
  dbedtVigIni.Enabled   := False;
  dbedtVigFin.Enabled   := False;
  dblcbRegimeFundamento.Enabled := False;
  dbcb1.Enabled := false;
  dbedtIN.Enabled:=false;


  t_Contratos.Cancel;
  btnNovoCont.SetFocus;
  btnSair.Enabled:=True;
end;

procedure Tf_contratos_juridico.btnGravarContClick(Sender: TObject);
var
   SemErro: Boolean;
   vigIniS, vigFinS: String;
   vigIniD, vigFinD: TDateTime;
   cont: integer;
   contrato: string;
begin
  vigIniS := t_ContratosVigencia_inicial.AsString;
  vigFinS := t_ContratosVigencia_final.AsString;
  vigIniD := t_ContratosVigencia_inicial.AsDateTime;
  vigFinD := t_ContratosVigencia_final.AsDateTime;
  SemErro := True;

  if vigIniS <> ''  then
     if vigFinS = '' then begin
        MessageDlg('Contrato sem Vigência Final!', mtInformation,[mbOk], 0);
        dbedtVigFin.SetFocus;
        SemErro := False;
     end
     else begin
        if vigIniD > vigFinD then begin
           MessageDlg('A data da Vigência Final é menor do que a data da Vigência Inicial!', mtInformation,[mbOk], 0);
           dbedtVigFin.SetFocus;
           SemErro := False;
        end
     end
  else
     if vigFinS <> '' then begin
        MessageDlg('Contrato sem Vigência Inicial!', mtInformation,[mbOk], 0);
        dbedtVigIni.SetFocus;
        SemErro := False;
     end;

  if SemErro then
     if dbedtContrato.Text = '' then begin
        MessageDlg('Digite o código do Contrato!', mtInformation,[mbOk], 0);
        dbedtContrato.SetFocus;
     end
     else
        if dbedtDescCont.Text = '' then begin
           MessageDlg('Digite a descrição do Contrato!', mtInformation,[mbOk], 0);
           dbedtDescCont.SetFocus;
        end
        else begin
           cont := 0;
           if btnGravarCont.Tag = 1 then begin
              q_Teste.SQL.Clear;
              q_Teste.SQL.Add('SELECT C.Contrato FROM Parametros AS P INNER JOIN Contratos AS C ');
              q_Teste.SQL.Add('ON P.Filial = C.Filial AND P.Empresa = C.Empresa ');
              q_Teste.SQL.Add('WHERE C.Importador = "'+t_ContratosImportador.AsString+'" ');
              q_Teste.SQL.Add('AND C.Contrato = "'+t_ContratosContrato.AsString+'" ');
              q_Teste.Open;
              cont := q_Teste.RecordCount;
           end;
           if cont <> 0 then begin
              MessageDlg('Já existe Contrato com este código!', mtInformation,[mbOk], 0);
              dbedtContrato.SetFocus;
           end
           else begin
              contrato :=  dbedtContrato.text;
              t_Contratos.Post;
              if btnGravarCont.Tag = 1 then begin
                 qrUPSetor_Contrato.Close;
                 qrUPSetor_Contrato.Params[0].AsString := contrato;
                 qrUPSetor_Contrato.Params[1].AsString := q_ImportCodigo.AsString;
                 qrUPSetor_Contrato.ExecSQL;

                 t_Contratos.close;
                 t_Contratos.Open;
                 t_Contratos.Filter := 'Setor = '''+'JUR' +''' ';
                 t_Contratos.Filtered := true;

                 ShowMessage('Contrato incluído com sucesso!');
              End   
              else
                 ShowMessage('Contrato alterado com sucesso!');


              pnlTop.Enabled := True;
              pnlDir.Enabled := True;

              btnNovoLoc.Enabled := True;
              btnNovoCont.Enabled := True;
              btnAlterarCont.Enabled := True;
              btnGravarCont.Enabled := False;
              btnCancelarCont.Enabled := False;
              btnGravarCont.Tag := 0;

              dbgContratos.Enabled  := True;
              dbedtContrato.Enabled := False;
              dbedtDescCont.Enabled := False;
              dbedtVigIni.Enabled   := False;
              dbedtVigFin.Enabled   := False;
              dblcbRegimeFundamento.Enabled := False;
              dbcb1.Enabled := false;
              dbedtIN.Enabled:= false;


              btnNovoCont.SetFocus;
           end;
           q_Teste.Close
        end;
        btnSair.Enabled:=True;
end;

procedure Tf_contratos_juridico.dbedtVigIniChange(Sender: TObject);
begin
     if btnGravarCont.Tag <> 0 then
        if dbedtVigIni.Text = '  /  /    ' then
           t_ContratosVigencia_inicial.AsString := '';
end;

procedure Tf_contratos_juridico.dbedtVigFinChange(Sender: TObject);
begin
     if btnGravarCont.Tag <> 0 then
        if dbedtVigFin.Text = '  /  /    ' then
           t_ContratosVigencia_final.AsString := '';
end;

procedure Tf_contratos_juridico.btnNovoLocClick(Sender: TObject);
begin
  t_Locais.close;
  t_Locais.Open;
  t_Locais.last;

   With qrCodigo_locais do Begin
        Close;
        Params[0].AsString := t_ContratosContrato.AsString;
        Params[1].AsString := t_LocaisImportador.AsString;
        Params[2].AsString := t_LocaisLocal.AsString;
        Open;
   End;

  t_Locais.Append;
  pnlTop.Enabled := False;
  pnlEsq.Enabled := False;

  btnNovoLoc.Enabled := False;
  btnAlterarLoc.Enabled := False;
  btnGravarLoc.Enabled := True;
  btnCancelarLoc.Enabled := True;
  btnGravarLoc.Tag := 1;

  dbgLocais.Enabled     := False;
  dbedtDescLoc.Enabled  := True;


  q_TipoLocais.First;
  t_LocaisTipo_local.AsString := q_TipoLocaisCodigo.AsString;
//  dbedtLocal.SetFocus;

  If qrCodigo_locais.RecordCount = 0 then begin
    dbedtLocal.text := '1'
  End
  Else begin
    dbedtLocal.text := IntToStr(StrToInt(qrCodigo_locaislocal.AsString) + 1);
  End;

end;

procedure Tf_contratos_juridico.btnAlterarLocClick(Sender: TObject);
begin
  pnlTop.Enabled := False;
  pnlEsq.Enabled := False;

  btnNovoLoc.Enabled := False;
  btnAlterarLoc.Enabled := False;
  btnGravarLoc.Enabled := True;
  btnCancelarLoc.Enabled := True;
  btnGravarLoc.Tag := 2;

  dbgLocais.Enabled     := False;
  dbedtDescLoc.Enabled  := True;
  dbcb2.Enabled := true;


  t_Locais.Edit;
  dbedtDescLoc.SetFocus;
end;

procedure Tf_contratos_juridico.btnExcluirLocClick(Sender: TObject);
begin
     q_ProcLoc.Params[0].AsString := t_LocaisImportador.AsString;
     q_ProcLoc.Params[1].AsString := t_LocaisContrato.AsString;
     q_ProcLoc.Params[2].AsString := t_LocaisLocal.AsString;
     q_ProcLoc.Open;
     if q_ProcLoc.RecordCount <> 0 then
        MessageDlg('Existem Processos com este Local de Inventário. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
       if MessageDlg('Confirma exclusão deste Local de Inventário?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           t_Locais.Delete;
           ShowMessage('Local de Inventário excluído!');
         end;
     q_ProcLoc.Close;
     btnNovoLoc.SetFocus;
end;

procedure Tf_contratos_juridico.t_ContratosAfterScroll(DataSet: TDataSet);
begin
     if t_Contratos.RecordCount = 0 then begin
        btnAlterarCont.Enabled := False;
        btnNovoLoc.Enabled := False;
        btnImprimir.Enabled := False;
     end
     else begin
        btnAlterarCont.Enabled := True;
        btnNovoLoc.Enabled := True;
        btnImprimir.Enabled := True;
     end
end;

procedure Tf_contratos_juridico.t_LocaisAfterScroll(DataSet: TDataSet);
begin
     lblObs.Caption := '';
     if t_Locais.RecordCount = 0 then begin
        btnAlterarLoc.Enabled := False;
     end
     else begin
        btnAlterarLoc.Enabled := True;

       // if dbedtSigla.Text = '' then
      //     lblObs.Caption := 'OBS:'+#13#10+'Local de Inventário sem Sigla!';
     end
end;

procedure Tf_contratos_juridico.btnCancelarLocClick(Sender: TObject);
begin
  pnlTop.Enabled := True;
  pnlEsq.Enabled := True;

  btnNovoLoc.Enabled := True;
  btnAlterarLoc.Enabled := True;
  btnGravarLoc.Enabled := False;
  btnCancelarLoc.Enabled := False;
  btnGravarLoc.Tag := 0;

  dbgLocais.Enabled     := True;
  dbedtLocal.Enabled    := False;
  dbedtDescLoc.Enabled  := False;
  dbcb2.Enabled := false;

  t_Locais.Cancel;
  btnNovoLoc.SetFocus;
end;

procedure Tf_contratos_juridico.btnGravarLocClick(Sender: TObject);
var cont: integer;
contrato: string;
begin
     if Trim(dbedtLocal.Text) = '' then begin
        MessageDlg('Digite o código do Local de Inventário!', mtInformation,[mbOk], 0);
        dbedtLocal.SetFocus;
        Exit;
     end;
//     else
     if Trim(dbedtDescLoc.Text) = '' then begin
        MessageDlg('Digite a descrição do Local de Inventário!', mtInformation,[mbOk], 0);
        dbedtDescLoc.SetFocus;
        Exit;
     end;
//        else begin
    { if Trim(dbedtSigla.Text) = '' then
        if MessageDlg('A Sigla está em branco e é usada em alguns relatórios. Deseja Incluir a Sigla?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
           dbedtSigla.SetFocus;
           Exit;
        end;}

           cont := 0;
           if btnGravarLoc.Tag = 1 then begin
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
           if cont <> 0 then begin
              MessageDlg('Já existe Local de Inventário com este código!', mtInformation,[mbOk], 0);
              dbedtLocal.SetFocus;
              Exit;
           end;
//           else begin
              contrato :=  dbedtLocal.text;
              t_Locais.Post;
              t_Locais.Refresh;
              if btnGravarLoc.Tag = 1 then begin
                 qrUpSetor_local.Close;
                 qrUpSetor_local.Params[0].AsString := t_ContratosContrato.AsString;
                 qrUpSetor_local.Params[1].AsString := q_ImportCodigo.AsString;
                 qrUpSetor_local.Params[2].AsString := contrato;
                 qrUpSetor_local.ExecSQL;

                 ShowMessage('Local de Inventário incluído com sucesso!');
              End
              else
                 ShowMessage('Local de Inventário alterado com sucesso!');
              pnlTop.Enabled := True;
              pnlEsq.Enabled := True;

              btnNovoLoc.Enabled := True;
              btnAlterarLoc.Enabled := True;

              btnGravarLoc.Enabled := False;
              btnCancelarLoc.Enabled := False;
              btnGravarLoc.Tag := 0;

              dbgLocais.Enabled     := True;
              dbedtLocal.Enabled    := False;
              dbedtDescLoc.Enabled  := False;
              dbcb2.Enabled := false;


              //btnNovoLoc.SetFocus;
              dbgLocais.SetFocus;
//           end;
//        end;
end;

procedure Tf_contratos_juridico.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_contratos_juridico.btnImprimirClick(Sender: TObject);
begin
     if not Assigned(F_RelContrato) then Application.CreateForm(TF_RelContrato, F_RelContrato);
//     F_RelContrato.q_Import.Open;
     F_RelContrato.qrContrato.Preview;
end;

procedure Tf_contratos_juridico.dbgImportKeyPress(Sender: TObject; var Key: Char);
begin
//showmessage(char(key));
//q_import.Locate('[Razão social]', char(key), []);
end;

procedure Tf_contratos_juridico.dblcbImportadoresClick(Sender: TObject);
begin
  t_Contratos.Open;
  t_Locais.Open;
  q_TipoContrato.Open;
  qr_Regime_Fundamento.Open;
  q_TipoLocais.Open;
  t_Contratos.Filter := 'Setor = '''+'JUR' +''' ';
  t_Contratos.Filtered := true;
end;

end.
