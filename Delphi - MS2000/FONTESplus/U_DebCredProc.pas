//////////////////////////////////////////////////////////////////////
//  Alterações - Gustavo - 05/04/2004                               //
//  1- Alterada a formatacao do papel                               //
//  2- Alterada as Margens esquerda e direita                       //
//  3- Correção da data invertida                                   //
//  4- Adicionado CCP a Planilha Excel                              //
//                                                                  //
//                                                                  //
//////////////////////////////////////////////////////////////////////
unit U_DebCredProc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, Grids, DBGrids, DBTables, Buttons, ComCtrls, Mask,
  ExtCtrls, ComObj;

type
  TF_DebCredProc = class(TForm)
    dsImport: TDataSource;
    QImport: TQuery;
    QProc: TQuery;
    QDeb: TQuery;
    QCred: TQuery;
    dsProc: TDataSource;
    dsDeb: TDataSource;
    dsCred: TDataSource;
    QDebDebito: TFloatField;
    QDebProcesso: TStringField;
    QCredProcesso: TStringField;
    QCredValor: TFloatField;
    QCredCredito: TStringField;
    pnlGerando: TPanel;
    Label8: TLabel;
    rePlanilha: TRichEdit;
    btnOk: TBitBtn;
    pnlPrincipal: TPanel;
    btnRel: TBitBtn;
    btnSair: TBitBtn;
    cb_saldos: TCheckBox;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    dtpPerDe: TDateTimePicker;
    dtpPerAte: TDateTimePicker;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    dtpperate2: TDateTimePicker;
    btnPlanilha: TBitBtn;
    SaveDialog1: TSaveDialog;
    qr_Bak: TQuery;
    dbTipoDec: TDBGrid;
    Panel3: TPanel;
    DBGrid3: TDBGrid;
    cb_status: TCheckBox;
    Panel6: TPanel;
    ds_tipospro: TDataSource;
    Q_TIPOSPRO: TQuery;
    Q_TIPOSPROCODIGO: TStringField;
    Q_TIPOSPRODESCRICAO: TStringField;
    cb_cli: TCheckBox;
    cb_totlan: TCheckBox;
    qr_BakCodigo: TStringField;
    qr_BakImportador: TStringField;
    QImportCodigo: TStringField;
    QImportRazao_Social: TStringField;
    QImportEmpresa: TStringField;
    QImportFilial: TStringField;
    QImportcnpj_cpf_completo: TStringField;
    QProcCodigo: TStringField;
    QProcImportador: TStringField;
    QProcCod: TStringField;
    QProcData: TDateTimeField;
    QProcCliente: TStringField;
    QProcStatus: TStringField;
    QProccodstatus: TStringField;
    edCodCliente: TEdit;
    edNomeCliente: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnRelClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure DBGrid1Enter(Sender: TObject);
    procedure btnPlanilhaClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure rePlanilhaChange(Sender: TObject);
    procedure dtpPerAteExit(Sender: TObject);
    procedure cb_cliClick(Sender: TObject);
    procedure cb_totlanClick(Sender: TObject);
    procedure edCodClienteChange(Sender: TObject);
    procedure edNomeClienteChange(Sender: TObject);
    procedure edCodClienteKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_DebCredProc: TF_DebCredProc;
  vFiltro : String;
implementation

uses U_MSComex, U_RelSintDebCreProc;

const
  ALEFT   = -4131;
  ARIGHT  = -4152;
  ACENTER = -4108;

var
  plaExcel: Variant;

{$R *.DFM}

procedure CelTitulo(Sender: Variant; l, c: Integer; Texto: String;
        Alinha, Tamanho: Integer; Back_Cor, Cor: TColor; Negrito: Boolean);
begin
  Sender.Cells[l, c] := Texto;
  Sender.Cells[l, c].Interior.Color := Back_Cor;
  Sender.Cells[l, c].Font.Color := Cor;
  Sender.Cells[l, c].Font.Size := Tamanho;
  Sender.Cells[l, c].Font.Bold := Negrito;
  Sender.Cells[l, c].HorizontalAlignment := Alinha;
end;

procedure CelValor(Sender: Variant; l, c: Integer; Valor: Real;
        Alinha, Tamanho: Integer; Back_Cor, Cor: TColor; Negrito: Boolean);
begin
  Sender.Cells[l, c].Value := Valor;
  Sender.Cells[l, c].Interior.Color := Back_Cor;
  Sender.Cells[l, c].Font.Color := Cor;
  Sender.Cells[l, c].Font.Size := Tamanho;
  Sender.Cells[l, c].Font.Bold := Negrito;
  Sender.Cells[l, c].HorizontalAlignment := Alinha;
end;

procedure TF_DebCredProc.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


    { h := Height;
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
     pnlGerando.Top := 24;
     pnlGerando.Left := 8;
end;

procedure TF_DebCredProc.FormCreate(Sender: TObject);
begin
     QImport.Open;
     dtpPerDe.Date := IncMonth(Date(),-1);
     dtpPerDe.Checked := true;
     dtpPerAte.Date := Date();
     dtpPerAte.Checked := true;
     dtpPerAte2.Date := Date();
     dtpPerAte2.Checked := true;
     q_tipospro.open;
end;

procedure TF_DebCredProc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     QImport.Close;
     Action := CaFree;
     F_DebCredProc := nil;
     F_MSComex.DbitosCrditosporProcesso1.Enabled := True;
end;

procedure TF_DebCredProc.btnRelClick(Sender: TObject);
var i: Integer;
begin
   if cb_totlan.Checked then begin
     dtpPerDe.Date := strtodate('01/01/1900');
     dtpPerAte.Date := strtodate('31/12/2500');
     dtpPerAte2.Date := strtodate('31/12/2500');
   end;

     if dbtipodec.SelectedRows.count=0 then begin
        showmessage(v_usuario+', Por favor selecione um Cliente!');
        dbtipodec.SetFocus;
        exit;
     end;
     vFiltro := 'WHERE I.Codigo <> NULL ';
     vFiltro := vFiltro +'AND (';
     With dbTipoDec Do
         For i:=0 To SelectedRows.Count-1 Do Begin
            DataSource.DataSet.GotoBookmark(Pointer(SelectedRows.Items[i]));
            vFiltro := vFiltro +'I.Codigo = '''+ Fields[0].AsString +''' ';
            If i <> (SelectedRows.Count-1) Then vFiltro := vFiltro +'OR ';
         End;
     vFiltro := vFiltro +') ';
     //showmessage(vFiltro);
     QImport.SQL.Strings[2] := vFiltro;
     qimport.open;
     pnlPrincipal.Enabled := False;
     Try
        With QDeb Do Begin
             Close;
             Params[0].AsDateTime := dtpPerDe.Date;
             Params[1].AsDateTime := dtpPerAte2.Date;
             Params[2].AsString := QImportEmpresa.AsString;
             Params[3].AsString := QImportFilial.AsString;
             Open;
        End;

        With QProc Do Begin
         Close;
         Params[0].AsDateTime := dtpPerDe.Date;
         Params[1].AsDateTime := dtpPerAte2.Date;
         Params[2].AsString   := QImportCodigo.AsString;
         Params[3].AsString   := '%';
         if not cb_status.checked then Params[3].AsString   := Q_TIPOSPROCODIGO.AsString;
         Open;
        End;

        try
          if not Assigned(F_RelSintDebCredProc)
            then Application.CreateForm(TF_RelSintDebCredProc, F_RelSintDebCredProc);

          F_RelSintDebCredProc.qrDebCredProc.Preview;
        finally
          FreeAndNil(F_RelSintDebCredProc);
        end;

        QImport.Filter := '';
        QImport.Filtered := False;
        edCodCliente.Clear;
        edNomeCliente.Clear;
     Finally
        pnlPrincipal.Enabled := True;
        qimport.Close;
        QImport.SQL.Strings[2] := '';
        qimport.open;
     End;                                                              
end;

procedure TF_DebCredProc.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TF_DebCredProc.DBGrid1Enter(Sender: TObject);
begin
   qimport.Filter := '';
   qimport.Filtered := false;
end;

procedure TF_DebCredProc.btnPlanilhaClick(Sender: TObject);
var
   vData: String;
   vPerDe, vPerAte, dir_cor: String;
   deb, cred, irrf,ccp, sal: Real;
   ln, i: Integer;

begin
   if cb_totlan.Checked then begin
     dtpPerDe.Date := strtodate('01/01/1900');
     dtpPerAte.Date := strtodate('31/12/2500');
     dtpPerAte2.Date := strtodate('31/12/2500');
   end;

     {$I-}
     vFiltro := 'WHERE I.Codigo <> NULL ';
     vFiltro := vFiltro +'AND (';
     With dbTipoDec Do
         For i:=0 To SelectedRows.Count-1 Do Begin
            DataSource.DataSet.GotoBookmark(Pointer(SelectedRows.Items[i]));
            vFiltro := vFiltro +'I.Codigo = '''+ Fields[0].AsString +''' ';
            If i <> (SelectedRows.Count-1) Then vFiltro := vFiltro +'OR ';
         End;
     vFiltro := vFiltro +') ';
     //showmessage(vFiltro);
     QImport.SQL.Strings[2] := vFiltro;
     qimport.open;
     System.GetDir(0,dir_cor);
     dir_cor := dir_cor + '\Planilhas_Ms2000';
     MkDir(dir_cor);
     rePlanilha.Clear;
     pnlGerando.Visible := True;
     btnOk.Enabled := False;

     pnlPrincipal.Enabled := False;

     vData := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);


//     If cb_todos.Checked Then Begin
//        QImport.Filter := '';
  //      qimport.Filtered := False;
//     End
  //   Else Begin
//        QImport.Filter := 'codigo = '''+ QImportCodigo.AsString +''' ';
   //     QImport.Filtered := True;
   //  End;
//   showmessage(inttostr(qimport.RecordCount));
     plaExcel := CreateOleObject('Excel.Application');
     plaExcel.Application.DisplayAlerts := False;
   While not QImport.Eof Do Begin
     rePlanilha.SetFocus;
     rePlanilha.Lines.Append('Gerando Planilha de: '+ QImportRazao_Social.AsString +' . . . ');
     With QProc Do Begin
         Close;
         Params[0].AsDateTime := dtpPerDe.Date;
         Params[1].AsDateTime := dtpPerAte2.Date;
         Params[2].AsString   := QImportCodigo.AsString;
         Params[3].AsString   := '%';
         if not cb_status.checked then Params[3].AsString   := Q_TIPOSPROCODIGO.AsString;
         Open;
     End;
     With QDeb Do Begin
         Close;
         Params[0].AsDateTime := dtpPerDe.Date;
         Params[1].AsDateTime := dtpPerAte2.Date;
         Params[2].AsString := QImportEmpresa.AsString;
         Params[3].AsString := QImportFilial.AsString;
         Open;
     End;

{     If QProc.RecordCount = 0 Then Begin
        rePlanilha.Lines.Append('Nenhum registro foi encontrado para esta consulta!');
        btnOk.Enabled := True;
        btnOk.SetFocus;
        Exit;
     End;
 }

        plaExcel.Visible := False;//True;

        plaExcel.WorkBooks.Add(1);
        plaExcel.WorkSheets[1].Name := 'Planilha';
        plaExcel.ActiveWindow.DisplayGridLines := False;

        //plaExcel.Worksheets[1].PageSetup.PaperSize := '9';  //gu
        plaExcel.ActiveSheet.PageSetup.LeftMargin := '28';      //gu
        plaExcel.ActiveSheet.PageSetup.RightMargin := '28';       //gu

        CelTitulo(plaExcel, 1, 1, v_sistema, ALEFT, 12, clWhite, clBlack, True);
        CelTitulo(plaExcel, 2, 1, v_versao, ALEFT, 10, clWhite, clBlack, True);
        CelTitulo(plaExcel, 4, 1, 'PLANILHA DE DÉBITOS E CRÉDITOS POR PROCESSO', ALEFT, 10, clWhite, clMaroon, True);
//        CelTitulo(plaExcel, 4, 5, 'Data da Consulta: ' + vData, ALEFT, 10, clWhite, clBlack, True);
        plaExcel.Range['A4', 'J4'].Borders[4].LineStyle := 1;
        plaExcel.Range['A4', 'J4'].Borders[4].Weight := 3;

        CelTitulo(plaExcel, 5, 1, 'Cliente: ', ALEFT, 10, clWhite, clBlack, True);
        CelTitulo(plaExcel, 5, 2, QImportRazao_Social.AsString+' - CNPJ: '+QIMPORTCNPJ_CPF_COMPLETO.ASSTRING, ALEFT, 10, clWhite, clBlack, False);
        CelTitulo(plaExcel, 6, 1, 'Período de abertura: ', ALEFT, 10, clWhite, clBlack, True);
//        CelTitulo(plaExcel, 6, 4, 'Período de desembaraço: ', ALEFT, 10, clWhite, clBlack, True);
        CelTitulo(plaExcel, 6, 7, 'Posição em: ', ALEFT, 10, clWhite, clBlack, True);

        vPerDe := '';
        If dtpPerDe.Checked Then
           vPerDe := DateToStr(dtpPerDe.Date);
        vPerAte := '';
        If dtpPerAte.Checked Then
           vPerAte := DateToStr(dtpPerAte.Date);

        CelTitulo(plaExcel, 7, 1, 'De: '+ vPerDe +'  Até: '+ vPerAte, ALEFT, 10, clWhite, clBlack, False);
//        CelTitulo(plaExcel, 7, 4, 'De: '+'  Até: ', ALEFT, 10, clWhite, clBlack, False);
        CelTitulo(plaExcel, 7, 7, 'De: '+ DateToStr(dtpPerDe.Date) +'  Até: '+ DateToStr(dtpPerate.Date), ALEFT, 10, clWhite, clBlack, False);

        If cb_saldos.Checked Then
           CelTitulo(plaExcel, 8, 1, 'Imprime - Somente Saldos em aberto', ALEFT, 10, clWhite, clBlack, True);

        ln := 9;

        CelTitulo(plaExcel, ln, 1, 'Ref. MS', ACENTER, 8, clWhite, clBlack, True);
        CelTitulo(plaExcel, ln, 2, 'Ref. Empresa', ACENTER, 8, clWhite, clBlack, True);
        CelTitulo(plaExcel, ln, 3, 'Data de Abertura', ACENTER, 8, clWhite, clBlack, True);
        CelTitulo(plaExcel, ln, 4, 'Status', ACENTER, 8, clWhite, clBlack, True);
        plaExcel.Cells.Range['C'+IntToStr(ln), 'F'+IntToStr(ln)].Merge;
        CelTitulo(plaExcel, ln, 7, 'Créditos', ACENTER, 8, clWhite, clBlack, True);
        CelTitulo(plaExcel, ln, 8, 'IRRF', ACENTER, 8, clWhite, clBlack, True);
        CelTitulo(plaExcel, ln, 9, 'CCP', ACENTER, 8, clWhite, clBlack, True);

        CelTitulo(plaExcel, ln, 10, 'Débitos', ACENTER, 8, clWhite, clBlack, True);
        CelTitulo(plaExcel, ln, 11, 'Saldos', ACENTER, 8, clWhite, clBlack, True);
        plaExcel.Rows[ln].RowHeight := 25;

        While Not QProc.Eof Do Begin
             With QCred Do Begin
                 Close;
                 Params[0].AsDateTime := dtpPerDe.Date;
                 Params[1].AsDateTime := dtpPerate2.Date;
                 Params[2].AsString := QProcCod.AsString;
                 Params[3].AsString := QImportEmpresa.AsString;
                 Params[4].AsString := QImportFilial.AsString;
                 Open;
             End;

             cred := 0;
             irrf := 0;
{             While Not QCred.Eof Do Begin
                  If QCredCredito.AsString <> 'IRRF' Then
                     cred := cred + QCredValor.AsFloat
                  Else
                  irrf := irrf + QCredValor.AsFloat;
                  QCred.Next;
             End;
}        ccp := 0;
         While Not QCred.Eof Do Begin
              If QCredCredito.AsString = 'IRRF' Then irrf := irrf + QCredValor.AsFloat
              else begin
                   If QCredCredito.AsString = 'CCP' Then ccp := ccp + QCredValor.AsFloat
                   else cred := cred + QCredValor.AsFloat;
              end;

              QCred.Next;
         End;

             deb := 0;
             If qdeb.Locate('Processo', QProcCod.AsString, [loCaseInsensitive]) Then
                deb := QDebDebito.AsFloat;

             sal := cred + irrf + ccp  - deb;
             sal := StrToFloat(FormatFloat('0.00', sal));

             If cb_saldos.Checked Then
                If sal = 0 Then Begin
                   QProc.Next;
                   Continue;
                End;

             Inc(ln);
             CelTitulo(plaExcel, ln, 1, QProcCod.AsString, ACENTER, 8, clWhite, clBlack, False);
             CelTitulo(plaExcel, ln, 2, QProccliente.AsString, ACENTER, 8, clWhite, clBlack, False);
             PlaExcel.Cells[ln,3].NumberFormat := '@';
             CelTitulo(plaExcel, ln, 3, QProcData.AsString, ACENTER, 8, clWhite, clBlack, False);
             CelTitulo(plaExcel, ln, 4, QProcStatus.AsString, ALEFT, 8, clWhite, clBlack, False);
             plaExcel.Cells.Range['C'+IntToStr(ln), 'F'+IntToStr(ln)].Merge;
             CelValor(plaExcel, ln, 7, cred, ARIGHT, 8, clWhite, clBlack, False);
             CelValor(plaExcel, ln, 8, irrf, ARIGHT, 8, clWhite, clBlack, False);
             CelValor(plaExcel, ln, 9, ccp, ARIGHT, 8, clWhite, clBlack, False);
             CelValor(plaExcel, ln, 10, deb, ARIGHT, 8, clWhite, clBlack, False);
             CelValor(plaExcel, ln, 11, sal, ARIGHT, 8, clWhite, clNavy, False);
             plaExcel.Cells[ln,7].NumberFormatLocal := '#.##0,00';
             plaExcel.Cells[ln,8].NumberFormatLocal := '#.##0,00';
             plaExcel.Cells[ln,9].NumberFormatLocal := '#.##0,00';
             plaExcel.Cells[ln,10].NumberFormatLocal := '#.##0,00';
             plaExcel.Cells[ln,11].NumberFormatLocal := '#.##0,00;[Vermelho](#.##0,00)';

             QProc.Next;
        End;

        If ln = 9 Then Begin
           rePlanilha.Lines.Append('Nenhum registro foi encontrado para esta consulta!');
//           btnOk.Enabled := True;
//           btnOk.SetFocus;
//           plaExcel.Quit;
//           Break;
        End
        Else Begin
            plaExcel.Range['A9', 'K'+IntToStr(ln)].WrapText := True;
            plaExcel.Range['A9', 'F9'].ColumnWidth := 9;
            plaExcel.Range['G9', 'K9'].ColumnWidth := 9;
            plaExcel.Range['A10', 'A'+IntToStr(ln)].RowHeight := 24;

//  //        plaExcel.Range['C10', 'C'+IntToStr(ln)].Rows.AutoFit;

            Inc(ln);

            plaExcel.Range['A9', 'K'+IntToStr(ln)].VerticalAlignment := ACENTER;
            plaExcel.Range['A9', 'K'+IntToStr(ln)].Borders.LineStyle := 1;
            plaExcel.Range['A9', 'K'+IntToStr(ln)].Borders.Weight := 1;

            CelTitulo(plaExcel, ln, 1, 'TOTAL', ARIGHT, 10, clSilver, clBlack, True);
            plaExcel.Cells.Range['A'+IntToStr(ln), 'F'+IntToStr(ln)].Merge;
            CelTitulo(plaExcel, ln, 7, '', ARIGHT, 8, clWhite, clBlack, True);
            CelTitulo(plaExcel, ln, 8, '', ARIGHT, 8, clWhite, clBlack, True);
            CelTitulo(plaExcel, ln, 9, '', ARIGHT, 8, clWhite, clBlack, True);
            CelTitulo(plaExcel, ln, 10, '', ARIGHT, 8, clWhite, clBlack, True);
            CelTitulo(plaExcel, ln, 11, '', ARIGHT, 8, clWhite, clBlack, True);
            plaExcel.Cells[ln,7].FormulaR1C1Local := '=SOMA(L10C7:L'+IntToStr(ln-1)+'C7)';
            plaExcel.Cells[ln,8].FormulaR1C1Local := '=SOMA(L10C8:L'+IntToStr(ln-1)+'C8)';
            plaExcel.Cells[ln,9].FormulaR1C1Local := '=SOMA(L10C9:L'+IntToStr(ln-1)+'C9)';
            plaExcel.Cells[ln,10].FormulaR1C1Local := '=SOMA(L10C10:L'+IntToStr(ln-1)+'C10)';
            plaExcel.Cells[ln,11].FormulaR1C1Local := '=SOMA(L10C11:L'+IntToStr(ln-1)+'C11)';
            plaExcel.Cells[ln,7].NumberFormatLocal := '#.##0,00';
            plaExcel.Cells[ln,8].NumberFormatLocal := '#.##0,00';
            plaExcel.Cells[ln,9].NumberFormatLocal := '#.##0,00';
            plaExcel.Cells[ln,10].NumberFormatLocal := '#.##0,00';
            plaExcel.Cells[ln,11].NumberFormatLocal := '#.##0,00;[Vermelho](#.##0,00)';
            plaExcel.Rows[ln].RowHeight := 25;

            rePlanilha.Lines.Append('Planilha gerada com sucesso!');

            plaExcel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(Copy(FormatDateTime(' yyyy/mm/dd - ', Now),1,11),'/','_', [rfReplaceAll]) + ' - PRODEBCRED - '+stringreplace(QImportRazao_Social.AsString,'/','-', [rfReplaceAll])+ ' - ' + QIMPORTCNPJ_CPF_COMPLETO.ASSTRING + '.xls');

       end;

      plaExcel.Workbooks[1].Close;
      qImport.Next;
   end;

     rePlanilha.Lines.Append('Planilha(s) gerada(s) no diretório Planilhas_MS2000!');
     plaExcel.Quit;
     plaExcel := unassigned;

     qimport.Close;
     QImport.SQL.Strings[2] := '';
     qimport.open;
     btnOk.Enabled := True;
     btnOk.SetFocus;
end;

procedure TF_DebCredProc.btnOkClick(Sender: TObject);
begin
     QImport.Filter := '';
     QImport.Filtered := False;
     pnlGerando.Visible := False;
     pnlPrincipal.Enabled := True;
end;

procedure TF_DebCredProc.rePlanilhaChange(Sender: TObject);
begin
     pnlGerando.Refresh;
end;

procedure TF_DebCredProc.dtpPerAteExit(Sender: TObject);
begin
dtpPerAte2.Date := dtpPerAte.Date;
end;

procedure TF_DebCredProc.cb_cliClick(Sender: TObject);
var
vlLinha: Integer;
begin

with dbTipoDec.DataSource.DataSet do
begin
    First;
    for vlLinha := 0 to RecordCount - 1 do begin
        dbTipoDec.SelectedRows.CurrentRowSelected := cb_cli.Checked;
        Next;
    end;
end;

dbTipoDec.SelectedRows.Refresh;


end;

procedure TF_DebCredProc.cb_totlanClick(Sender: TObject);
begin
   groupbox1.Enabled := (not cb_totlan.Checked);
   groupbox3.Enabled := (not cb_totlan.Checked);
   if cb_totlan.Checked then begin
     dtpPerDe.Date := strtodate('01/01/1900');
     dtpPerAte.Date := strtodate('31/12/2500');
     dtpPerAte2.Date := strtodate('31/12/2500');
   end;
end;

procedure TF_DebCredProc.edCodClienteChange(Sender: TObject);
begin
  if (edCodCliente.Text <> '')
   then begin
     QImport.Filter   := 'Codigo = '''+edCodCliente.Text+'*''';
     QImport.Filtered := True;
   end
   else begin
     QImport.Filter   := '';
     QImport.Filtered := False;
   end;
end;

procedure TF_DebCredProc.edNomeClienteChange(Sender: TObject);
begin
  if (edNomeCliente.Text <> '')
   then begin
     QImport.Filter   := 'Razao_Social = '''+UpperCase(edNomeCliente.Text)+'*''';
     QImport.Filtered := True;
   end
   else begin
     QImport.Filter   := '';
     QImport.Filtered := False;
   end;
end;

procedure TF_DebCredProc.edCodClienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['a'..'z','A'..'Z','0'..'9',#8,#13])
   then Key := #0;
end;
end.
