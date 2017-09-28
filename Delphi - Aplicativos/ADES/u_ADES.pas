unit u_ADES;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, FileCtrl, ActnList,
  ComObj, jpeg;
  
type
  TfrmADES = class(TForm)
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
    qrParametrosPATH_SERVER: TStringField;
    tmIniciar: TTimer;
    Image1: TImage;
    q_extrato: TQuery;
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
    q_extratoDT_DESEMBARACO: TDateTimeField;
    q_extratoAno: TIntegerField;
    q_extratoMes: TIntegerField;
    q_extratoURF_Despacho: TStringField;
    q_extratoDESCRICAO: TStringField;
    q_extratoFiscal: TStringField;
    q_extratoCanal: TStringField;
    q_extratoQTDDESEMB: TIntegerField;
    qrUsuarios: TQuery;
    qrUsuariosEmpresa: TStringField;
    qrUsuariosFilial: TStringField;
    qrUsuariosImportador: TStringField;
    qrUsuariosTipo: TStringField;
    qrUsuariosEmail: TStringField;
    qrUsuariosNome_completo: TStringField;
    qrUsuariosParametros: TStringField;
    qrUsuariosHTML: TIntegerField;
    qrUsuariosPlataforma: TStringField;
    qrUsuariosPara: TBooleanField;
    qrUsuariosCc: TBooleanField;
    qrUsuariosCCo: TBooleanField;
    qrUsuariosAtivo: TBooleanField;
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

type
  TMES = array[0..11] of string;

const
  vCodAPL = 'ADES';
  v_empresanome = 'MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
  AL_DIREITA  = -4152;
  AL_ESQUERDA = -4131;
  AL_CENTRO   = -4108;
  Aleft       = -4131;
  Aright      = -4152;
  ACenter     = -4108;

  VETMES: TMES = ('Janeiro','Fevereiro','Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');

var
  frmADES: TfrmADES;
  arqDir, arqNome, Linha: String;
  arqLog: TextFile;
  vEmp, vFil: String;
  vImp, vProc: String;
  vImpNome: String;
  vCNPJ : STRING;
  vInfoPor, vInfoIng, vnome_planilha: String;

  dirApl: String;

  vDe, vPara, vCC, vCCO: String;
  vAssunto: String;
  vTitulo: String;
  vBody: String;
  vHTML: Boolean = True;
  vAnexo: String = '';
  Excel : Variant;
  dir_cor,planilha_0,planilha,expor,q_status,vtexto:string;
  e_repetro:boolean;

implementation

{$R *.DFM}

{ FUNÇÃO PARA FORMATAR O VALOR COM ESPAÇOS ANTES DO VALOR }
procedure TfrmADES.FormCreate(Sender: TObject);
begin
  try
    with DB_MSCOMEX do
     begin
       Params.Values['USER NAME'] := 'ADES';
       Params.Values['PASSWORD']  := '@du@n@305ms';
       Connected := True;
     end;

    with qrUsuarios do
     begin
       Params[0].AsString := vCodAPL;
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

procedure TfrmADES.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  try
    DB_MSCOMEX.Connected := False;
    CloseFile(arqLog);
  except
  end;

  frmADES := nil;
  Action := caFree;
end;

procedure TfrmADES.acInicializaExecute(Sender: TObject);
begin
  dirApl := ExtractFilePath(Application.ExeName);

  arqDir := dirApl+'Log\';
  arqNome := vCodAPL+FormatDateTime('yyyymmdd',Now)+'.txt';
  AssignFile(arqLog,arqDir+arqNome);

  if not DirectoryExists(arqDir)
   then CreateDir(arqDir);

  if FileExists(arqDir+arqNome)
   then AppEnd(arqLog)
   else begin
     ReWrite(arqLog);
     Linha := '    DATA    |   HORA   | DESCRIÇÃO ';
     Writeln(arqLog, Linha);  Flush(arqLog);
   end;

  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + '>>> INICIANDO O PROCESSAMENTO DO ADES';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  { GERA E-MAIL }
  acGeraEmail.Execute;

  if acFinaliza.Checked
   then Exit;

  { FINALIZA APLICAÇÃO }
  acFinaliza.Execute;
end;

procedure TfrmADES.acGeraEmailExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + 'GERANDO PLANILHA AUTOMÁTICA - ADES ';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  vTitulo := Caption;
  vDe := 'ADES<auditoria@logistic-ms.com.br>';

  vImp     := '';
  vImpNome := '';
  VCNPJ    := '';

  { ENVIA E-MAIL PARA CONTATOS DA EMPRESA }

  Application.ProcessMessages;

  if acFinaliza.Checked
   then Exit;

  vPara := '';
  vCC   := '';
  vCCO  := '';

  { GERANDO PLANILHA }
  processar(frmADES);

  vAssunto := 'ADES';

  vBody := '<BR>'
     + 'Prezados,<BR><BR>'
     + 'Segue a planilha gerada automáticamente pelo sistema <B>'+ vnome_planilha +'</B>.<BR><BR>'
     + 'Este e-mail é automático e não necessita de resposta.'
     + '<BR><BR>';

  vHTML := True;

  if acFinaliza.Checked
   then Exit;

  acEnviaEmail.Execute;

  if acFinaliza.Checked
   then Exit;
end;

procedure TfrmADES.processar(Sender: TObject);
var
  data, data_arq, vespacos,vperiodo: String;
  linha2,qreg:integer;
  qano1,qano2,qmes,vano,vmes,qsub,qtot:integer;
begin
  qano1 := strtoint(copy(datetostr(date()),7,4))-1;
  qano2 := strtoint(copy(datetostr(date()),7,4));
  qmes  := strtoint(copy(datetostr(date()),4,2));

  vespacos := '                                                                                                                                          ';
  vespacos := copy(vespacos+vespacos,1,50);

  vnome_planilha := 'ADES - '+FormatDateTime('ddmmyyyy', Now)+' - '+FormatDateTime('hhnn', Now);

  {$I-}
  image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
  data := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
  data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);

  System.GetDir(0,dir_cor);
  dir_cor := dir_cor + '\Planilhas_Ms2000';
  dir_cor := dir_cor + '\ADES';

  Excel:=CreateOleObject('Excel.Application');
  Excel.Application.DisplayAlerts := False;
  Excel.Visible := FALSE;
  Excel.Workbooks.add(1);

  Excel.Worksheets[1].Name := 'ADES';
  Excel.WorkSheets['ADES'].Select;
  Excel.WorkSheets['ADES'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);
  Excel.Cells[1,1] := vespacos+v_empresanome;
  Excel.Cells[1,1].Font.Size := 12;
  Excel.cells[1,1].Font.Bold := True;

  Excel.Cells[2,1] := vespacos+'ADES - ANÁLISE DE DESEMBARAÇOS';
  Excel.Cells[5,1] := vespacos+'Data da Planilha: ' + data;
  Excel.ActiveWindow.DisplayGridlines := FALSE;

  linha2 := 6;

  Celtitulo(linha2, 1,'Período', clNavy, ACenter, clNavy, 8, 20);
  Celtitulo(linha2, 2,'URF.Despacho', clNavy, ACenter, clNavy, 8, 30);
  Celtitulo(linha2, 3,'Fiscal', clNavy, ACenter, clNavy, 8, 15);
  Celtitulo(linha2, 4,'Canal', clNavy, ACenter, clNavy, 8, 15);
  Celtitulo(linha2, 5,'Qtd.Desemb.', clNavy, ACenter, clNavy, 8, 10);

  q_extrato.open;
  q_extrato.Filter := 'Ano = '''+inttostr(qano1)+''' Or Ano = '''+inttostr(qano2)+''' ';
  q_extrato.Filtered := true;

  qreg := 0;
  qtot := 0;

  while (not q_extrato.eof) and (qreg<11) do
   begin
     if ((q_extratoano.asinteger=qano1) and (q_extratomes.asinteger>=qmes)) or
        ((q_extratoano.asinteger=qano2) and (q_extratomes.asinteger<qmes))
      then begin
        qreg := qreg+1;
        vano := q_extratoano.asinteger;
        vmes := q_extratomes.asinteger;
        vperiodo := inttostr(vano)+'/'+vetmes[vmes-1];
        qsub := 0;

        while (not q_extrato.eof) and (vano=q_extratoano.asinteger) and (vmes = q_extratomes.asinteger) do
         begin
           linha2  := linha2+1;
           qsub := qsub+q_extratoqtddesemb.asinteger;
           CelDetalhe(linha2, 1,''''+vperiodo, clWhite, ALEFT, clNavy, 8, 20);
           CelDetalhe(linha2, 2,''''+q_extratourf_despacho.asstring+'-'+q_extratodescricao.asstring, clWhite, ALEFT, clNavy, 8, 30);
           CelDetalhe(linha2, 3,''''+q_extratofiscal.asstring, clWhite, ALEFT, clNavy, 8, 15);
           CelDetalhe(linha2, 4,''''+q_extratocanal.asstring, clWhite, ALEFT, clNavy, 8, 15);
           CelDetalhe(linha2, 5,''''+q_extratoqtddesemb.asstring, clWhite, ALEFT, clNavy, 8, 10);

           q_extrato.Next;
         end;

        linha2  := linha2+1;
        Celtitulo(linha2, 1,'Subtotal - '+vperiodo, clNavy, ACenter, clNavy, 8, 20);
        Celtitulo(linha2, 2,' ', clNavy, ACenter, clNavy, 8, 30);
        Celtitulo(linha2, 3,' ', clNavy, ACenter, clNavy, 8, 15);
        Celtitulo(linha2, 4,' ', clNavy, ACenter, clNavy, 8, 15);
        Celtitulo(linha2, 5,''''+inttostr(qsub), clNavy, ACenter, clNavy, 8, 10);
        qtot := qtot+qsub;
      end
      else q_extrato.Next;
   end;

  q_extrato.Close;

  linha2  := linha2+1;
  Celtitulo(linha2, 1,'Total Geral', clNavy, ACenter, clNavy, 8, 20);
  Celtitulo(linha2, 2,' ', clNavy, ACenter, clNavy, 8, 30);
  Celtitulo(linha2, 3,' ', clNavy, ACenter, clNavy, 8, 15);
  Celtitulo(linha2, 4,' ', clNavy, ACenter, clNavy, 8, 15);
  Celtitulo(linha2, 5,''''+inttostr(qtot), clNavy, ACenter, clNavy, 8, 10);

  Excel.Workbooks[1].SaveAs(dir_cor + '\' + vnome_planilha );
  Application.ProcessMessages;

  Excel.Quit;
  Excel := unassigned;

  vanexo := 'Planilhas_Ms2000\ADES\'+vnome_planilha+'.xlsx';
end;

procedure TfrmADES.acEnviaEmailExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + 'Gravando e-Mails automáticos...';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);

  with qrUsuarios do
   begin
     Open;

     while not Eof Do
      begin
        if (Pos(qrUsuariosEmail.AsString, vPara) = 0) and
           (Pos(qrUsuariosEmail.AsString, vCC)   = 0) and
           (Pos(qrUsuariosEmail.AsString, vCCO)  = 0)
         then begin
           if vPara  <> ''
            then vPara := vPara  + ', ';
            
           vPara := vPara + qrUsuariosEmail.AsString;
         end;

        Next;
      end;

     Close;
   end;

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
    tbEmailAutoAssunto.AsString  := vAssunto;
    tbEmailAutoAnexo.AsString    := vAnexo;
    tbEmailAutoHTML.AsBoolean    := vHTML;
    tbEmailAutoDe.AsString       := vDe;
    tbEmailAutoPara.AsString     := vPara;
    tbEmailAutoPara.AsString     := 'duda.ms2000@mslogistica.com.br';
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

procedure TfrmADES.acFinalizaExecute(Sender: TObject);
begin
  Linha := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now) + '>>> FINALIZANDO O PROCESSAMENTO DO ADES';
  Writeln(arqLog, Linha);  Flush(arqLog);
  reProcessa.Lines.Append(Linha);
  acFinaliza.Checked := True;
  CloseFile(arqLog);
  Close;
end;

procedure TfrmADES.reProcessaChange(Sender: TObject);
begin
  pnlTop.Refresh;
  pnlLog.Refresh;
end;

procedure TfrmADES.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if acFinaliza.Checked
   then CanClose := True
   else begin
     CanClose := False;
     acFinaliza.Execute;
   end;
end;

procedure TfrmADES.FormShow(Sender: TObject);
begin
  tmIniciar.Enabled := True;
end;

procedure TfrmADES.tmIniciarTimer(Sender: TObject);
begin
  tmIniciar.Enabled := False;

  acInicializa.Execute;
end;


Procedure TfrmADES.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
  Excel.cells[linha, coluna] := CTitulo;
  Excel.cells[linha, coluna].interior.Color      := CColor;
  Excel.cells[linha, coluna].Font.Color          := clWhite;
  Excel.cells[linha, coluna].Font.Size           := FSize;
  Excel.cells[linha, coluna].Font.Bold           := True;
  Excel.cells[linha, coluna].HorizontalAlignment := CAlign;
  Excel.Columns[coluna].ColumnWidth              := COLSize;
End;


Procedure TfrmADES.CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
  Excel.cells[linha, coluna] := CTitulo;
  Excel.cells[linha, coluna].interior.Color      := CColor;
  Excel.cells[linha, coluna].Font.Color          := FColor;
  Excel.cells[linha, coluna].Font.Size           := FSize;
  Excel.cells[linha, coluna].HorizontalAlignment := CAlign;
  Excel.cells[linha, coluna].Borders.Weight      := 2;
  Excel.cells[linha, coluna].Borders.LineStyle   := 1;
  Excel.Columns[coluna].ColumnWidth              := COLSize;
End;

procedure TfrmADES.acProcessaExecute(Sender: TObject);
begin
  //
end;

end.
