unit u_AFAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, FileCtrl, ActnList,
  ComObj, jpeg;
  
type
  TfrmAFAT = class(TForm)
    DB_MSCOMEX: TDatabase;
    alALC: TActionList;
    acInicializa: TAction;
    acGeraEmail: TAction;
    acProcessa: TAction;
    acEnviaEmail: TAction;
    acFinaliza: TAction;
    pnlTop: TPanel;
    pnlLog: TPanel;
    reProcessa: TRichEdit;
    qrParametros: TQuery;
    qrParametrosEmpresa: TStringField;
    qrParametrosFilial: TStringField;
    tbEmailAuto: TTable;
    qrEmailAviso: TQuery;
    qrParametrosPATH_SERVER: TStringField;
    tmIniciar: TTimer;
    Image1: TImage;
    q_extrato: TQuery;
    DSPRO: TDataSource;
    T_follow: TTable;
    ds_follow: TDataSource;
    T_eventos: TTable;
    T_obs: TTable;
    T_AFAT: TTable;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    T_followProcesso: TStringField;
    T_followSequencial: TAutoIncField;
    T_followCodevento: TStringField;
    T_followCodobs: TStringField;
    T_followObs_especifica: TStringField;
    T_followData: TDateTimeField;
    T_followHora: TStringField;
    T_followlink: TStringField;
    T_followData_final: TDateTimeField;
    T_followHora_final: TStringField;
    T_followDuracao: TIntegerField;
    T_followUsuario: TStringField;
    T_followRef_Follow: TIntegerField;
    q_cred: TQuery;
    q_credProcesso: TStringField;
    q_credCredito: TStringField;
    q_credData_Credito: TDateTimeField;
    q_credValor: TFloatField;
    tbEmailAutoCodigo: TAutoIncField;
    tbEmailAutoPrograma: TStringField;
    tbEmailAutoAssunto: TStringField;
    tbEmailAutoTitulo: TStringField;
    tbEmailAutoDe: TStringField;
    tbEmailAutoCC: TStringField;
    tbEmailAutoCCO: TStringField;
    tbEmailAutoBody: TMemoField;
    tbEmailAutoAnexo: TStringField;
    tbEmailAutoHTML: TIntegerField;
    tbEmailAutoData: TDateTimeField;
    tbEmailAutoHora: TDateTimeField;
    T_AFATEmpresa: TStringField;
    T_AFATFilial: TStringField;
    T_AFATCodigo: TStringField;
    T_AFATDatas: TMemoField;
    T_eventosCodigo: TStringField;
    T_eventosDescricao: TStringField;
    T_eventosGrupo: TStringField;
    T_eventosQTD_HorasLimite: TIntegerField;
    T_eventosCodigo_Fecha: TStringField;
    T_eventosAtivo: TIntegerField;
    T_obsEvento: TStringField;
    T_obsCodigo: TStringField;
    T_obsDescricao: TStringField;
    T_obsAtivo: TIntegerField;
    q_extratoData: TDateTimeField;
    q_extratonomeempresa: TStringField;
    q_extratoEmpresa: TStringField;
    q_extratoFilial: TStringField;
    q_extratoImportador: TStringField;
    q_extratoCodigo: TStringField;
    q_extratoSaldo_Faturamento: TFloatField;
    q_extratosem_nfs: TIntegerField;
    q_extratoData_1: TDateTimeField;
    q_extratoStatus: TStringField;
    q_extratoFaturado: TIntegerField;
    q_extratoqtipo: TStringField;
    q_extratoDESCRICAO: TStringField;
    q_extratoResponsavel_Empresa: TStringField;
    q_extratoNome_Completo: TStringField;
    q_extratoQNOMELOC: TStringField;
    q_extratoQEMAILLOC: TStringField;
    q_extratoData_liberacao: TDateTimeField;
    q_extratoNFiscal: TStringField;
    tbEmailAutoPara: TStringField;
    q_extratoaguardando_medicao: TIntegerField;
    q_extratoData_Recebimento_Financ: TDateTimeField;
    qrEmailAvisoEmpresa: TStringField;
    qrEmailAvisoFilial: TStringField;
    qrEmailAvisoImportador: TStringField;
    qrEmailAvisoTipo: TStringField;
    qrEmailAvisoEmail: TStringField;
    qrEmailAvisoNome_completo: TStringField;
    qrEmailAvisoParametros: TStringField;
    qrEmailAvisoHTML: TIntegerField;
    qrEmailAvisoPlataforma: TStringField;
    qrEmailAvisoPara: TBooleanField;
    qrEmailAvisoCc: TBooleanField;
    qrEmailAvisoCCo: TBooleanField;
    qrEmailAvisoAtivo: TBooleanField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure acInicializaExecute(Sender: TObject);
    procedure acGeraEmailExecute(Sender: TObject);
    procedure acProcessaExecute(Sender: TObject);
    procedure acEnviaEmailExecute(Sender: TObject);
    procedure acFinalizaExecute(Sender: TObject);
    procedure reProcessaChange(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure tmIniciarTimer(Sender: TObject);
    Procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);
    Procedure CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);
    procedure processar(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  vCodAPL = 'AFAT';
  v_empresanome = 'MS LOGÍSTICA ADUANEIRA LTDA.';
  
  AL_DIREITA  = -4152;
  AL_ESQUERDA = -4131;
  AL_CENTRO   = -4108;
  Aleft       = -4131;
  Aright      = -4152;
  ACenter     = -4108;
  
var
  frmAFAT: TfrmAFAT;
  arqDir, arqNome, Linha: String;
  arqLog: TextFile;
  vEmp, vFil: String;
  vImp, vProc: String;
  vImpNome: String;
  vCNPJ : STRING;
  vInfoPor, vInfoIng, vnome_planilha: String;

  dirApl: String;

  vDe, vCC, vPara, vCCO: String;
  vAssunto: String;
  vTitulo: String;
  vBody: String;
  vHTML: integer = 1;
  vAnexo: String = '';

  Excel : Variant;
  dir_cor,planilha_0,planilha,expor,q_status,vtexto:string;
  e_repetro:boolean;
  qregtot:integer;

implementation

{$R *.DFM}

procedure TfrmAFAT.FormCreate(Sender: TObject);
begin
  try
    with DB_MSCOMEX do
     begin
       Params.Values['USER NAME'] := 'AFAT';
       Params.Values['PASSWORD']  := 'lasbrug30@';
       
       Connected := True;
     end;
  except
    on E:Exception do
     begin
       MessageDlg('Erro de Conexão com o Banco de Dados! Verifique sua conexão de rede.'+#13#10+#13#10+'ERRO: '+E.message, mtError,[mbOk], 0);
       Close;
       Application.Terminate;
       Exit;
     end;
  end;
end;

procedure TfrmAFAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DB_MSCOMEX.Connected := False;
    CloseFile(arqLog);
  except
  end;

  frmAFAT := nil;
  Action := caFree;
end;

procedure TfrmAFAT.acInicializaExecute(Sender: TObject);
begin
  dirApl := ExtractFilePath(Application.ExeName);

  arqDir := dirApl+'Log\';
  arqNome := vCodAPL+FormatDateTime('yyyymmdd',Now)+'.txt';
  AssignFile(arqLog,arqDir+arqNome);

  if Not DirectoryExists(arqDir)
   then CreateDir(arqDir);

  if FileExists(arqDir+arqNome)
   then AppEnd(arqLog)
   else begin
     ReWrite(arqLog);
     Linha := '    DATA    |   HORA   | DESCRIÇÃO ';
     Writeln(arqLog, Linha);  Flush(arqLog);
   end;

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + '>>> INICIANDO O PROCESSAMENTO DO AFAT';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  { GERA E-MAIL }
  acGeraEmail.Execute;

  qrEmailAviso.Close;

  if acFinaliza.Checked
   then Exit;

  { FINALIZA APLICAÇÃO }
  acFinaliza.Execute;
end;

procedure TfrmAFAT.acGeraEmailExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + 'GERANDO PLANILHA AUTOMÁTICA - AFAT';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  vTitulo := Caption;
  vDe := 'AFAT<auditoria@logistic-ms.com.br>';

  vImp := '';
  vImpNome := '';
  VCNPJ := '';

  { ENVIA E-MAIL PARA CONTATOS DA EMPRESA }
  Application.ProcessMessages;

  if acFinaliza.Checked
   then Exit;

  vPara := '';
  vCC   := '';
  vCCO  := '';

  { GERANDO PLANILHA }
  processar(frmAFAT);

  vAssunto := 'AFAT - PLANILHA DE PROCESSOS A FATURAR';

  vBody := '<BR>'
         + 'Prezados,<BR><BR>'
         + 'Segue a planilha gerada automaticamente pelo sistema <B>'+ vnome_planilha +'</B>.<BR><BR>'
         + 'Este e-mail é automático e não necessita de resposta.'
         + '<BR><BR>';

  vHTML := 1;

  if acFinaliza.Checked
   then Exit;

 { ENVIA E-MAIL PARA CONTATOS DA EMPRESA }
  qrEmailAviso.open;
  qrEmailAviso.First;

  while not qrEmailAviso.Eof do
   begin
     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + 'EMAIL: '+ qrEmailAvisoNome_completo.AsString;
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);

     if qrEmailAvisoPara.AsBoolean
      then begin
        if (vPara = '')
         then vPara := qrEmailAvisoEmail.AsString + '; '
         else vPara := vPara + qrEmailAvisoEmail.AsString + '; ';
      end;

     if qrEmailAvisoCc.AsBoolean
      then begin
        if (vCC = '')
         then vCC := qrEmailAvisoEmail.AsString + '; '
         else vCC := vCC + qrEmailAvisoEmail.AsString + '; ';
      end;

     if qrEmailAvisoCCo.AsBoolean
      then begin
        if (vCCO = '')
         then vCCO := qrEmailAvisoEmail.AsString + '; '
         else vCCO := vCCO + qrEmailAvisoEmail.AsString + '; ';
      end;

     qrEmailAviso.Next;
   end;

  { ENVIA E-MAIL }
  acEnviaEmail.Execute;

  if acFinaliza.Checked
   then Exit;
end;

procedure TfrmAFAT.processar(Sender: TObject);
var
  data, data_arq, vTRS, vespacos, vdat : string;
  linha2, qreg, vlib, vlib1, vlib2, vlibf : integer;
  qsalde, vval : real;
  ok : boolean;
  qdatas : string;
  qdata, qhora, qseq : string;
  qfollowDataHora, qfollowEvento, qfollowObs : string;
begin
  vespacos := '                                                                                                                                          ';
  vespacos := copy(vespacos,1,50);

  vnome_planilha := 'AFAT - '+FormatDateTime('ddmmyyyy', Now)+' - '+FormatDateTime('hhnn', Now);

  {$I-}
  image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
  
  data     := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
  data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);

  System.GetDir(0,dir_cor);
  dir_cor := dir_cor + '\Planilhas_Ms2000';
  dir_cor := dir_cor + '\AFAT';

  Excel := CreateOleObject('Excel.Application');
  Excel.Application.DisplayAlerts := False;
  Excel.Visible := False;
  Excel.Workbooks.add(1);

  Excel.Worksheets[1].Name := 'AFAT';
  Excel.WorkSheets['AFAT'].Select;
  Excel.WorkSheets['AFAT'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);

  Excel.Cells[1,1] := vespacos+v_empresanome;
  Excel.Cells[1,1].Font.Size := 12;
  Excel.cells[1,1].Font.Bold := True;

  Excel.Cells[2,1] := vespacos+'AFAT - PLANILHA DE PROCESSOS À FATURAR';

  Excel.Cells[3,1] := vespacos+'Verde: (data liberação = hoje)';
  Excel.cells[3,1].Font.Color := clGreen;
  Excel.cells[3,1].Font.Bold := True;

  Excel.Cells[4,1] := vespacos+'Vermelho: (data liberação < hoje)';
  Excel.cells[4,1].Font.Color := clMaroon;
  Excel.cells[4,1].Font.Bold := True;

  Excel.Cells[5,1] := vespacos+'Data da Planilha: ' + data;
  Excel.ActiveWindow.DisplayGridlines := FALSE;

  linha2 := 6;

  Celtitulo(linha2, 1,'Empresa', clNavy, ACenter, clNavy, 8, 20);
  Celtitulo(linha2, 2,'Ref.MS', clNavy, ACenter, clNavy, 8, 10);
  Celtitulo(linha2, 3,'Dt.Abertura', clNavy, ACenter, clNavy, 8, 10);
  Celtitulo(linha2, 4,'Tipo de Processo', clNavy, ACenter, clNavy, 8, 45);
  Celtitulo(linha2, 5,'Aguardando Medição', clNavy, ACenter, clNavy, 8, 25);
  Celtitulo(linha2, 6,'Status do Processo', clNavy, ACenter, clNavy, 8, 45);
  Celtitulo(linha2, 7,'Adiantamento', clNavy, ACenter, clNavy, 8, 15);
  Celtitulo(linha2, 8,'Data Adiantamento', clNavy, ACenter, clNavy, 8, 16);
  Celtitulo(linha2, 9,'Dt.Liberação', clNavy, ACenter, clNavy, 8, 10);
  Celtitulo(linha2, 10,'Responsável', clNavy, ACenter, clNavy, 8, 15);
  Celtitulo(linha2, 11,'Email Localização Pasta', clNavy, ACenter, clNavy, 8, 45);
  Celtitulo(linha2, 12,'Follow Data/Hora', clNavy, ACenter, clNavy, 8, 45);
  Celtitulo(linha2, 13,'Follow Evento', clNavy, ACenter, clNavy, 8, 45);
  Celtitulo(linha2, 14,'Follow Obs', clNavy, ACenter, clNavy, 8, 45);
  Celtitulo(linha2, 15,'Data de Recebimento - Financeiro', clNavy, ACenter, clNavy, 8, 45);

  q_extrato.open;
  q_cred.open;
  t_afat.Open;
  t_follow.Open;
  t_eventos.Open;
  T_obs.open;

  qreg := 0;
  qregtot := 0;

  while (not q_extrato.eof) and (qreg<11) do
   begin
     if (q_extratonfiscal.IsNull) and (q_extratocodigo.asstring <> '01230/01')
      then begin //inicio nfiscal
        qregtot := qregtot + 1;
        vlib  := clWhite;
        vlibf := clNavy;

        vlib1 := clGreen;
        vlib2 := clMaroon;

        if (q_extratoData_Liberacao.AsString <> '')
         then begin
           vlib := vlib1;

           if ((q_extratoData_Liberacao.Asdatetime+2)<date())
            then begin
              vlib := vlib2;
            end;

           vlibf  := clWhite;
         end;

        linha2  := linha2+1;

        CelDetalhe(linha2, 1,q_extratonomeempresa.asstring, vlib, ALEFT, vlibf, 8, 20);
        CelDetalhe(linha2, 2,q_extratocodigo.asstring, vlib, ALEFT, vlibf, 8, 10);
        CelDetalhe(linha2, 3,''''+q_extratodata.asstring, vlib, ALEFT, vlibf, 8, 10);
        CelDetalhe(linha2, 4,q_extratoqtipo.asstring, vlib, ALEFT, vlibf, 8, 45);

        if (q_extratoaguardando_medicao.AsInteger = 1)
         then CelDetalhe(linha2, 5, 'Sim', vlib, ACenter, vlibf, 8, 25)
         else CelDetalhe(linha2, 5, 'Não', vlib, ACenter, vlibf, 8, 25);

        CelDetalhe(linha2, 6,q_extratodescricao.asstring, vlib, ALEFT, vlibf, 8, 45);

        vval := 0;
        vdat := '';

        if q_cred.Locate('Processo',q_extratocodigo.asstring,[])
         then begin
           vval := q_credvalor.asfloat;
           vdat := q_creddata_credito.asstring;
         end;

        CelDetalhe(linha2, 7,''''+floattostrf(vval,fffixed,15,2), vlib, ALEFT, vlibf, 8, 16);
        CelDetalhe(linha2, 8,''''+vdat, vlib, ALEFT, vlibf, 8, 16);
        CelDetalhe(linha2, 9,''''+q_extratodata_liberacao.asstring, vlib, ALEFT, vlibf, 8, 10);
        CelDetalhe(linha2, 10,q_extratoResponsavel_empresa.AsString, vlib, ALEFT, vlibf, 8, 15);
        CelDetalhe(linha2, 11,q_extratoQNOMELOC.AsString+' - '+q_extratoqemailloc.AsString, vlib, ALEFT, vlibf, 8, 45);

        //processar ultimo follow
        qfollowDataHora := '';
        qfollowEvento   := '';
        qfollowObs      := '';
        t_follow.first;

        qdata := '01/01/2000';
        qhora := '00:00';
        qseq  := '0';

        while not t_follow.Eof do
         begin
           if (not t_followdata.IsNull) and (not t_followhora.IsNull)
            then begin
              if (strtodate(qdata) <= t_followdata.asdatetime)
               then begin
                 qdata := t_followdata.asstring;
                 qfollowDataHora := '';
                 qfollowEvento   := '';
                 qfollowObs      := '';

                 qfollowDataHora := qfollowDataHora+t_followdata.asstring+' às '+t_followhora.asstring;
                 qfollowEvento   := qfollowEvento+t_eventosDescricao.asstring;
                 qfollowObs      := qfollowObs+t_obsDescricao.asstring;

                 if (qhora <=t_followhora.asstring)
                  then begin
                    qfollowDataHora := '';
                    qfollowEvento   := '';
                    qfollowObs      := '';

                    qfollowDataHora := qfollowDataHora+t_followdata.asstring+' às '+t_followhora.asstring;
                    qfollowEvento   := qfollowEvento+t_eventosDescricao.asstring;
                    qfollowObs      := qfollowObs+t_obsDescricao.asstring;

                    qhora := t_followhora.asstring;

                    if (qseq <=t_followsequencial.asstring)
                     then begin
                       qfollowDataHora := '';
                       qfollowEvento   := '';
                       qfollowObs      := '';

                       qfollowDataHora := qfollowDataHora+t_followdata.asstring+' às '+t_followhora.asstring;
                       qfollowEvento   := qfollowEvento+t_eventosDescricao.asstring;
                       qfollowObs      := qfollowObs+t_obsDescricao.asstring;

                       qseq := t_followsequencial.asstring;
                     end;
                  end;
               end;
            end;

           t_follow.next;
         end;

        qdatas := ' '+trim(t_afatdatas.asstring);

        if pos(datetostr(date()),qdatas) > 0
         then begin
         end
         else begin
           if qdatas <> ''
            then qdatas := qdatas+','+datetostr(date())
            else qdatas := datetostr(date())
         end;

        t_afat.edit;
        t_afatdatas.asstring := qdatas;
        t_afat.post;

        CelDetalhe(linha2, 12,qfollowDataHora, vlib, ALEFT, vlibf, 8, 45);
        CelDetalhe(linha2, 13,qfollowEvento, vlib, ALEFT, vlibf, 8, 45);
        CelDetalhe(linha2, 14,qfollowObs, vlib, ALEFT, vlibf, 8, 45);
        CelDetalhe(linha2, 15,''''+q_extratoData_Recebimento_Financ.AsString, vlib, ACenter, vlibf, 8, 45);
        Excel.WorkSheets['AFAT'].Range['K'+ IntToStr(linha2)].AddComment('Datas AFAT:'+CHR(10)+TRIM(qdatas));
      end;//fim nfiscal

     q_extrato.Next;
   end;

  Excel.Workbooks[1].SaveAs(dir_cor + '\' + vnome_planilha );
  Application.ProcessMessages;

  Excel.Quit;
  Excel := unassigned;

  vanexo := 'Planilhas_Ms2000\AFAT\'+vnome_planilha+'.xls';
end;

procedure TfrmAFAT.acEnviaEmailExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + 'Gravando e-Mails automáticos...';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  if (vPara + vCC + vCCO) = ''
   then begin
     Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + '<*> ERRO! Não há e-Mail para envio.';
     Writeln(arqLog, Linha);  Flush(arqLog);
     reProcessa.Lines.Append(Linha);
     Exit;
   end;

  try
    tbEmailAuto.Open;
    tbEmailAuto.Append;
    tbEmailAutoPrograma.AsString := vCodAPL;
    tbEmailAutoTitulo.AsString   := vTitulo;
    tbEmailAutoAssunto.AsString  := vAssunto+' - ( '+inttostr(qregtot)+' processos )';
    tbEmailAutoAnexo.AsString    := vAnexo;
    tbEmailAutoHTML.Asinteger    := vHTML;
    tbEmailAutoDe.AsString       := vDe;
    tbEmailAutoPara.Value        := vPara;
    tbEmailAutoCC.AsString       := vCC;
    tbEmailAutoCCO.AsString      := vCCO;    
    tbEmailAutoBody.AsString     := vBody;
    tbEmailAutoData.AsDateTime   := Date();
    tbEmailAutoHora.AsDateTime   := Now();
    tbEmailAuto.Post;
    tbEmailAuto.Close;
  except
    on E:Exception do
     begin
       Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now)
                  + '<*> ERRO! e-Mail não gravado. MSG: '+ StringReplace(E.Message, #13#10, ' ', [rfReplaceAll]);
       Writeln(arqLog, Linha);  Flush(arqLog);
       reProcessa.Lines.Append(Linha);
     end;
  end;     
end;

procedure TfrmAFAT.acFinalizaExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + '>>> FINALIZANDO O PROCESSAMENTO DO AFAT';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);
  acFinaliza.Checked := True;
  CloseFile(arqLog);
  Close;
end;

procedure TfrmAFAT.reProcessaChange(Sender: TObject);
begin
  pnlTop.Refresh;
  pnlLog.Refresh;
end;

procedure TfrmAFAT.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if acFinaliza.Checked
   then CanClose := True
   else begin
     CanClose := False;
     acFinaliza.Execute;
   end;
end;

procedure TfrmAFAT.FormShow(Sender: TObject);
begin
  tmIniciar.Enabled := True;
end;

procedure TfrmAFAT.tmIniciarTimer(Sender: TObject);
begin
  tmIniciar.Enabled := False;

  acInicializa.Execute;
end;

Procedure TfrmAFAT.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
begin
  Excel.cells[linha, coluna] := CTitulo;

  Excel.cells[linha, coluna].interior.Color      := CColor;
  Excel.cells[linha, coluna].Font.Color          := clWhite;
  Excel.cells[linha, coluna].Font.Size           := FSize;
  Excel.cells[linha, coluna].Font.Bold           := True;
  Excel.cells[linha, coluna].HorizontalAlignment := CAlign;
  Excel.Columns[coluna].ColumnWidth              := COLSize;
end;

Procedure TfrmAFAT.CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
begin
  Excel.cells[linha, coluna]                := CTitulo;
  Excel.cells[linha, coluna].interior.Color := CColor;
  Excel.cells[linha, coluna].Font.Color     := FColor;
  Excel.cells[linha, coluna].Font.Size      := FSize;

  Excel.cells[linha, coluna].HorizontalAlignment := CAlign;
  Excel.cells[linha, coluna].Borders.Weight      := 2;
  Excel.cells[linha, coluna].Borders.LineStyle   := 1;
  Excel.Columns[coluna].ColumnWidth              := COLSize;
end;

procedure TfrmAFAT.acProcessaExecute(Sender: TObject);
begin
  //
end;

end.
