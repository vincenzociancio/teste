unit u_PlaProcKoyo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, ExtCtrls, Mask, comObj, Db, DBTables, FileCtrl;

const
  ALEFT = -4131;
  ARIGHT = -4152;
  ACENTER = -4108;

type
  Tf_PlaProcKoyo = class(TForm)
    pnlGerando: TPanel;
    Label4: TLabel;
    reInfo: TRichEdit;
    BitBtn2: TBitBtn;
    pnlPrincipal: TPanel;
    L_dataini: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    BitBtn1: TBitBtn;
    edtPerIni: TMaskEdit;
    edtPerFin: TMaskEdit;
    qrPlanilha: TQuery;
    qrFaturas: TQuery;
    qrNumerarios: TQuery;
    qrTransport: TQuery;
    qrParametros: TQuery;
    qrParametrosEmpresa: TStringField;
    qrParametrosFilial: TStringField;
    qrTransportRazao_Social: TStringField;
    qrFaturasCodigo: TStringField;
    qrNumerariosNumerario: TStringField;
    qrNumerariosValor_Registrado: TFloatField;
    qrPlanilhaCodigo: TStringField;
    qrPlanilhaRazao_Social: TStringField;
    qrPlanilhaCodigo_1: TStringField;
    qrPlanilhaCodigo_Cliente: TStringField;
    qrPlanilhaTipo: TStringField;
    qrPlanilhaAgente: TStringField;
    qrPlanilhaCodVia: TStringField;
    qrPlanilhaVia: TStringField;
    qrPlanilhaResponsavel_Empresa: TStringField;
    qrPlanilhaNumeromaster: TStringField;
    qrPlanilhaNumerodoccarga: TStringField;
    qrPlanilhaEmbarcacao: TStringField;
    qrPlanilhaCia: TStringField;
    qrPlanilhaDocChegada: TStringField;
    qrPlanilhaData_Chegada_URF_Cheg: TDateTimeField;
    qrPlanilhaNR_DECLARACAO_IMP: TStringField;
    qrPlanilhaDDE: TStringField;
    qrPlanilhaDT_REGISTRO_DI: TStringField;
    qrPlanilhaCodCanal: TStringField;
    qrPlanilhaCanal: TStringField;
    qrPlanilhaFiscal: TStringField;
    qrPlanilhaDT_DESEMBARACO: TDateTimeField;
    qrPlanilhaData_liberacao: TDateTimeField;
    qrPlanilhaCarregamento: TStringField;
    qrPlanilhaFrete_Prepaid: TFloatField;
    qrPlanilhaFrete_Collect: TFloatField;
    qrPlanilhaFrete_Ter_Nac: TFloatField;
    qrPlanilhaTxFrete: TFloatField;
    qrPlanilhaValor_Seguro: TFloatField;
    qrPlanilhaTxSeguro: TFloatField;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
    Excel: Variant; // PLANILHA EXCEL
    procedure GerarPlanilha();
  public
    { Public declarations }
  end;

procedure CelFormat(Sender: Variant; L, C: Integer; CTitulo: String; CAlign: Integer; FSize: Integer; CColor: Integer; FColor: Integer; FBold: Boolean);

var
   f_PlaProcKoyo: Tf_PlaProcKoyo;
   vEmp, vFil: String;
   vPerIni, vPerFin: TDate;

  v_linha: integer;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_PlaProcKoyo.FormCreate(Sender: TObject);
begin
     With qrParametros Do Begin
         Open;
         vEmp := qrParametrosEmpresa.AsString;
         vFil := qrParametrosFilial.AsString;
         Close;
     End;
     With qrPlanilha Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     With qrTransport Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     With qrFaturas Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
     With qrNumerarios Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;
end;

procedure Tf_PlaProcKoyo.FormActivate(Sender: TObject);
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
     width := w;  }
end;

procedure Tf_PlaProcKoyo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    // f_mscomex.RelatrioProcessosKoyo1.enabled := true;
     f_PlaProcKoyo := Nil;
     Action := caFree;
end;

procedure Tf_PlaProcKoyo.BitBtn1Click(Sender: TObject);
begin
     If edtPerIni.Text = '  /  /    ' Then
        vPerIni := StrToDate('01/01/2000')
     Else
        Try
           vPerIni := StrToDate(edtPerIni.Text);
        Except
           MessageDlg('Período Inicial inválido!', mtInformation, [mbOk], 0);
           edtPerIni.SetFocus;
           Exit;
        End;

     If edtPerFin.Text = '  /  /    ' Then
        vPerFin := StrToDate(FormatDateTime('dd/mm/yyyy',Now))
     Else
        Try
           vPerFin := StrToDate(edtPerFin.Text);
        Except
           MessageDlg('Período Final inválido!', mtInformation, [mbOk], 0);
           edtPerFin.SetFocus;
           Exit;
        End;

     With pnlGerando Do Begin
         Left := 12;
         Top := 12;
         Visible := True;
     End;
     pnlPrincipal.Enabled := False;

     Excel := CreateOleObject('Excel.Application');
     Excel.Application.DisplayAlerts := False;

     GerarPlanilha();

     Excel.Quit;
     Excel := Unassigned;

     BitBtn2.Enabled := True;
end;

procedure Tf_PlaProcKoyo.BitBtn2Click(Sender: TObject);
begin
     pnlGerando.Visible := False;
     pnlPrincipal.Enabled := True;
     BitBtn2.Enabled := False;
end;

procedure CelFormat(Sender: Variant; L, C: Integer; CTitulo: String; CAlign: Integer; FSize: Integer; CColor: Integer; FColor: Integer; FBold: Boolean);
begin
     Sender.Cells[L, C] := CTitulo;
     Sender.Cells[L, C].Interior.Color := CColor;
     Sender.Cells[L, C].Font.Color := FColor;
     Sender.Cells[L, C].Font.Size := FSize;
     Sender.Cells[L, C].Font.Bold := FBold;
     Sender.Cells[L, C].HorizontalAlignment := CAlign;
end;

procedure Tf_PlaProcKoyo.GerarPlanilha();
var
   vPeriodo: String;
   vLN, vLNInicio: Integer;
   vFornec, vFat: String;
   vEmbarcacao: String;
   vTipoExport: Boolean;
   vDeclaracao: String;
   vDtReg: String;
   vCarregamento: String;
   vFrete, vSeguro, vArmaz, vHono, vDespesas: Double;
   vCorCanal: TColor;
   vDir, vArq: String;
   vNumer: String;
   vImp: String;
   vPos: Integer;

begin
     reInfo.Clear;
     With qrPlanilha Do Begin
         Params[2].AsDateTime := vPerIni;
         Params[3].AsDateTime := vPerFin;
         Open;
         If RecordCount = 0 Then Begin
            reInfo.Lines.Append('Não foi encontrado processo da Koyo neste período!');
            Close;
            Exit;
         End;
     End;

     reInfo.Lines.Append('Gerando Planilha da Koyo...');

     vImp := qrPlanilhaRazao_Social.AsString;
     vArq := 'Processos - '+ vImp +' - '+ FormatDateTime('yyyy-mm-dd hh.nn.ss', Now) +'.xls';

//     Excel.Visible := True;
     Excel.WorkBooks.Add(1);
     Excel.Worksheets[1].Name := 'Processos';
     Excel.ActiveWindow.DisplayGridLines := False;

     If (edtPerIni.Text = '  /  /    ') And (edtPerFin.Text = '  /  /    ') Then
        vPeriodo := 'Visão Geral'
     Else If edtPerIni.Text = '  /  /    ' Then
        vPeriodo := 'Até: '+ FormatDateTime('dd/mm/yyyy', vPerFin)
     Else If edtPerFin.Text = '  /  /    ' Then
        vPeriodo := 'De: '+ FormatDateTime('dd/mm/yyyy', vPerIni)
     Else
        vPeriodo := 'De: '+ FormatDateTime('dd/mm/yyyy', vPerIni) +' Até: '+ FormatDateTime('dd/mm/yyyy', vPerFin);

     { TÍTULO }
     CelFormat(Excel, 1, 1, v_sistema, ALEFT, 12, clWhite, clBlack, True);
     CelFormat(Excel, 2, 1, v_versao, ALEFT, 10, clWhite, clBlack, True);
     CelFormat(Excel, 4, 1, 'PLANILHA DE PROCESSOS', ALEFT, 10, clWhite, clMaroon, True);
     Excel.Range['A4', 'J4'].Borders[4].LineStyle := 1;
     Excel.Range['A4', 'J4'].Borders[4].Weight := 3;
     CelFormat(Excel, 5, 1, 'Cliente: ', ALEFT, 10, clWhite, clBlack, True);
     CelFormat(Excel, 5, 2, qrPlanilhaRazao_Social.AsString, ALEFT, 10, clWhite, clBlack, False);
     CelFormat(Excel, 6, 1, 'Período:', ALEFT, 10, clWhite, clBlack, True);
     CelFormat(Excel, 6, 2, vPeriodo, ALEFT, 10, clWhite, clBlack, False);
     CelFormat(Excel, 7, 1, 'Data da Consulta: '+ FormatDateTime('dd/mm/yyyy - hh:nn', Now), ALEFT, 10, clWhite, clBlack, False);

     vLNInicio := 8;
     vLN := vLNInicio;

     { CABEÇALHO }
     CelFormat(Excel, vLN, 1,  'REF.MS', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 2,  'REF.CLIENTE', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 3,  'TRANSITÁRIO', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 4,  'FORNECEDOR', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 5,  'MODAL', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 6,  'RESPONSÁVEL', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 7,  'CONHECIMENTO', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 8,  'FATURA(S)', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 9,  'NAVIO / CIA AÉREA', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 10, 'DTA', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 11, 'CHEG. FRONT.', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 12, 'DI/DDE', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 13, 'REGISTRO', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 14, 'CANAL CONF.', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 15, 'FISCAL', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 16, 'DESEMB.', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 17, 'CARREGAMENTO', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 18, 'FRETE INTERN.', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 19, 'SEGURO', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 20, 'ARMAZENAGEM', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 21, 'HONORÁRIOS', ACENTER, 8, clWhite, clBlack, True);
     CelFormat(Excel, vLN, 22, 'DESPESAS', ACENTER, 8, clWhite, clBlack, True);

     Excel.Cells[vLN,  1].ColumnWidth := 8;
     Excel.Cells[vLN,  2].ColumnWidth := 16;
     Excel.Cells[vLN,  3].ColumnWidth := 16;
     Excel.Cells[vLN,  4].ColumnWidth := 30;
     Excel.Cells[vLN,  5].ColumnWidth := 12;
     Excel.Cells[vLN,  6].ColumnWidth := 20;
     Excel.Cells[vLN,  7].ColumnWidth := 13;
     Excel.Cells[vLN,  8].ColumnWidth := 32;
     Excel.Cells[vLN,  9].ColumnWidth := 25;
     Excel.Cells[vLN, 10].ColumnWidth := 12;
     Excel.Cells[vLN, 11].ColumnWidth := 11;
     Excel.Cells[vLN, 12].ColumnWidth := 25;
     Excel.Cells[vLN, 13].ColumnWidth := 10;
     Excel.Cells[vLN, 14].ColumnWidth := 11;
     Excel.Cells[vLN, 15].ColumnWidth := 18;
     Excel.Cells[vLN, 16].ColumnWidth := 10;
     Excel.Cells[vLN, 17].ColumnWidth := 22;
     Excel.Cells[vLN, 18].ColumnWidth := 13;
     Excel.Cells[vLN, 19].ColumnWidth := 13;
     Excel.Cells[vLN, 20].ColumnWidth := 13;
     Excel.Cells[vLN, 21].ColumnWidth := 13;
     Excel.Cells[vLN, 22].ColumnWidth := 13;
//     Excel.Range['B'+IntToStr(vLN), 'V'+IntToStr(vLN)].Columns.AutoFit;
//     Excel.Cells.Range['C'+IntToStr(vLN), 'E'+IntToStr(vLN)].Merge;

     vPos := reInfo.Lines.Add('Processando: 0%');
     While Not qrPlanilha.Eof Do Begin
          Application.ProcessMessages;

          { RELACIONANDO FORNECEDORES DAS FATURAS DO PROCESSO }
          With qrTransport Do Begin
              Params[2].AsString := qrPlanilhaCodigo.AsString;
              Open;
              vFornec := '';
              While Not Eof Do Begin
                   If vFornec <> '' Then vFornec := vFornec + ', ';
                   vFornec := vFornec + qrTransportRazao_Social.AsString;
                   Next;
              End;
              Close;
          End;
          { RELACIONANDO FATURAS DO PROCESSO }
          With qrFaturas Do Begin
              Params[2].AsString := qrPlanilhaCodigo.AsString;
              Open;
              vFat := '';
              While Not Eof Do Begin
                   If vFat <> '' Then vFat := vFat + ', ';
                   vFat := vFat + qrFaturasCodigo.AsString;
                   Next;
              End;
              Close;
          End;

          { VERIFICA A VIA TRANSPORTE }
          If qrPlanilhaCodVia.AsString = '1' Then
             vEmbarcacao := qrPlanilhaEmbarcacao.AsString
          Else
             vEmbarcacao := qrPlanilhaCia.AsString;

          vTipoExport := (qrPlanilhaTipo.AsString = '21');

          { VERIFICA A DECLARAÇÃO }
          If vTipoExport Then
             vDeclaracao := qrPlanilhaDDE.AsString
          Else
             vDeclaracao := qrPlanilhaNR_DECLARACAO_IMP.AsString;

          { FORMATANDO DATA DE REGISTRO DA DI }
          vDtReg := qrPlanilhaDT_REGISTRO_DI.AsString;
          Try
             vDtReg := Copy(vDtReg, 1, 2) +'/'+ Copy(vDtReg, 3, 2) +'/'+ Copy(vDtReg, 5, 4);
          Except
          End;

          { DEFININDO A COR DO CANAL }
          If qrPlanilhaCodCanal.AsString = 'A' Then
             vCorCanal := clGray
          Else If qrPlanilhaCodCanal.AsString = 'D' Then
             vCorCanal := clTeal
          Else If qrPlanilhaCodCanal.AsString = 'L' Then
             vCorCanal := clMaroon
          Else If qrPlanilhaCodCanal.AsString = 'V' Then
             vCorCanal := clOlive
          Else
             vCorCanal := clBlack;

          { FORMATANDO CARREGAMENTO }
          vCarregamento := FormatDateTime('dd-mm - ', qrPlanilhaData_Liberacao.AsDateTime)
                         + qrPlanilhaCarregamento.AsString;

          { PEGANDO VALOR DO FRETE }
          vFrete := (qrPlanilhaFrete_Prepaid.AsFloat + qrPlanilhaFrete_Collect.AsFloat - qrPlanilhaFrete_Ter_Nac.AsFloat) * qrPlanilhaTxFrete.AsFloat;
          { PEGANDO VALOR DO SEGURO }
          vSeguro := qrPlanilhaValor_Seguro.AsFloat * qrPlanilhaTxSeguro.AsFloat;

          { RELACIONANDO VALORES DOS NUMERÁRIOS DO PROCESSO }
          With qrNumerarios Do Begin
              Params[2].AsString := qrPlanilhaCodigo.AsString;
              Open;
              vArmaz := 0; vHono := 0; vDespesas := 0;
              While Not Eof Do Begin
                   vNumer := qrNumerariosNumerario.AsString;
                   If vNumer = 'ARM' Then
                      vArmaz := vArmaz + qrNumerariosValor_Registrado.AsFloat
                   Else If vNumer = 'HONO' Then
                      vHono := vHono + qrNumerariosValor_Registrado.AsFloat;
                   If (vNumer = 'DES')  OR (vNumer = 'TCP')  OR (vNumer = 'RECO') OR
                      (vNumer = 'HONO') OR (vNumer = 'FINT') OR (vNumer = 'THC')  OR
                      (vNumer = 'TXBL') OR (vNumer = 'TRAD') OR (vNumer = 'DESC') OR
                      (vNumer = 'ARM')  OR (vNumer = 'DELF') OR (vNumer = 'COLE') Then
                      vDespesas := vDespesas + qrNumerariosValor_Registrado.AsFloat;
                   Next;
              End;
              Close;
          End;

          Inc(vLN);
          CelFormat(Excel, vLN, 1, qrPlanilhaCodigo.AsString, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 2, qrPlanilhaCodigo_Cliente.AsString, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 3, qrPlanilhaAgente.AsString, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 4, vFornec, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 5, qrPlanilhaVia.AsString, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 6, qrPlanilhaResponsavel_Empresa.AsString, ACENTER, 8, clWhite, clBlack, False);
          //// FAZER TRATAMENTO PARA O CONHECIMENTO
          CelFormat(Excel, vLN, 7, qrPlanilhaNumeromaster.AsString, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 8, vFat, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 9, vEmbarcacao, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 10, qrPlanilhaDocChegada.AsString, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 11, qrPlanilhaData_Chegada_URF_Cheg.AsString, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 12, vDeclaracao, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 13, vDtReg, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 14, qrPlanilhaCanal.AsString, ACENTER, 8, clWhite, vCorCanal, False);
          CelFormat(Excel, vLN, 15, qrPlanilhaFiscal.AsString, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 16, qrPlanilhaDT_DESEMBARACO.AsString, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 17, vCarregamento, ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 18, FormatFloat('#,##0.00', vFrete), ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 19, FormatFloat('#,##0.00', vSeguro), ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 20, FormatFloat('#,##0.00', vArmaz), ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 21, FormatFloat('#,##0.00', vHono), ACENTER, 8, clWhite, clBlack, False);
          CelFormat(Excel, vLN, 22, FormatFloat('#,##0.00', vDespesas), ACENTER, 8, clWhite, clBlack, False);

          reInfo.Lines.Strings[vPos] := 'Processando: '+ IntToStr(Round((vLN-vLNInicio)*100/qrPlanilha.RecordCount)) +'%';

          qrPlanilha.Next;
     End;
     qrPlanilha.Close;

     { FORMATA TABELA }
     Excel.Range['A'+IntToStr(vLNInicio), 'V'+IntToStr(vLN)].WrapText := True;
     Excel.Range['A'+IntToStr(vLNInicio), 'A'+IntToStr(vLN)].Rows.AutoFit;

     Excel.Range['A'+IntToStr(vLNInicio), 'V'+IntToStr(vLN)].VerticalAlignment := ACENTER;
     Excel.Range['A'+IntToStr(vLNInicio), 'V'+IntToStr(vLN)].Borders.LineStyle := 1;
     Excel.Range['A'+IntToStr(vLNInicio), 'V'+IntToStr(vLN)].Borders.Weight := 1;

     Excel.Range['R'+IntToStr(vLNInicio+1), 'V'+IntToStr(vLN)].HorizontalAlignment := ARIGHT;
     Excel.Range['R'+IntToStr(vLNInicio+1), 'V'+IntToStr(vLN)].NumberFormatLocal := '#.##0,00;[Vermelho](#.##0,00)';

     vDir := ExtractFilePath(Application.ExeName) +'Planilhas_Ms2000\';
     If Not DirectoryExists(vDir) Then
        CreateDir(vDir);

     Excel.WorkBooks[1].SaveAs(vDir + vArq);

     reInfo.Lines.Append('Planilha da "'+ vImp +'" gerada!');
     reInfo.Lines.Append('');
     reInfo.Lines.Append('Planilha gerada no diretório: '+ vDir);
     reInfo.Lines.Append('Nome da Planilha: '+ vArq);
end;

end.
