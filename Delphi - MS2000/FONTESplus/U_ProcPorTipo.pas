unit U_ProcPorTipo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, ExtCtrls, Db, DBTables, Grids, DBGrids, Buttons, ComObj;

type
  Tf_procPorTipo = class(TForm)
    pnlPrinc: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qrCli: TQuery;
    QrCon: TQuery;
    dsCli: TDataSource;
    dsCon: TDataSource;
    dsParam: TDataSource;
    qrParam: TQuery;
    qrLocais: TQuery;
    dsLocais: TDataSource;
    Label4: TLabel;
    qrTipoProc: TQuery;
    dsTipoProc: TDataSource;
    BitBtn1: TBitBtn;
    qrGeral: TQuery;
    qrTipoDec: TQuery;
    dsTipoDec: TDataSource;
    Label5: TLabel;
    btnSair: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    cbTodos: TCheckBox;
    cbTodos2: TCheckBox;
    cbTodos3: TCheckBox;
    cbTodos4: TCheckBox;
    dbTipoDec: TDBGrid;
    cbTodos5: TCheckBox;
    DBLookupComboBox2: TDBLookupComboBox;
    dbTipoProc: TDBGrid;
    DBLookupComboBox3: TDBLookupComboBox;
    Image1: TImage;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    qrCliCodigo: TStringField;
    qrCliRazao_Social: TStringField;
    QrConDescricao: TStringField;
    QrConContrato: TStringField;
    qrLocaisEmpresa: TStringField;
    qrLocaisFilial: TStringField;
    qrLocaisContrato: TStringField;
    qrLocaisImportador: TStringField;
    qrLocaisDescricao: TStringField;
    qrLocaisLocal: TStringField;
    qrTipoProcCODIGO: TStringField;
    qrTipoProcDESCRICAO: TStringField;
    qrGeralContrato: TStringField;
    qrGerallocal: TStringField;
    qrGeralRefMS: TStringField;
    qrGeralDI: TStringField;
    qrGeralNumero_TR: TStringField;
    qrGeralstatus: TStringField;
    qrGeralRazao_Social: TStringField;
    qrGeralCodigo: TStringField;
    qrGeralNumero_RCR: TStringField;
    qrGeralCodigo_Cliente: TStringField;
    qrGeralCNPJ_CPF_COMPLETO: TStringField;
    qrTipoDecCodigo: TStringField;
    qrTipoDecDescricao: TStringField;
    qrTipoDecSIGLA: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure qrCliAfterScroll(DataSet: TDataSet);
    procedure QrConAfterScroll(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure cbTodosClick(Sender: TObject);
    procedure cbTodos2Click(Sender: TObject);
    procedure cbTodos3Click(Sender: TObject);
    procedure cbTodos4Click(Sender: TObject);
    procedure cbTodos5Click(Sender: TObject);
    procedure ChecaImportador();
    procedure ChecaContLoc();
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_procPorTipo: Tf_procPorTipo;
  vLocalAnt, vContAnt, vEmp, vFil,  vFiltro, vFiltro2 : String;
  Excel : Variant;
  vImpAnt : Integer;
  AuxChecaContLoc, aux, AuxNumeroContLoc, i, CelIni : Integer;
implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_procPorTipo.FormCreate(Sender: TObject);
begin
     qrParam.Open;
     vEmp := qrParamEmpresa.AsString;
     vFil := qrParamFilial.AsString;
     qrParam.Close;
     qrCli.Close;
     qrCli.Params[0].AsString := vEmp;
     qrCli.Params[1].AsString := vFil;
     qrCli.Open;
     qrTipoProc.Open;
     qrTipoDec.Open;

end;

procedure Tf_procPorTipo.qrCliAfterScroll(DataSet: TDataSet);
var x : integer;
begin
     QrCon.Close;
     QrCon.Params[0].AsString := vEmp;
     QrCon.Params[1].AsString := vFil;
     QrCon.Params[2].AsString := qrCliCodigo.AsString;
     QrCon.Open;

//     with DBGrid1 do begin
// for x := 0 to Pred( SelectedRows.Count) do begin
//  DataSource.DataSet.Bookmark := SelectedRows.Items[x];
// end;
//end;


end;

procedure Tf_procPorTipo.QrConAfterScroll(DataSet: TDataSet);
begin
     QrLocais.Close;
     QrLocais.Params[0].AsString := vEmp;
     QrLocais.Params[1].AsString := vFil;
     QrLocais.Params[2].AsString := qrCliCodigo.AsString;
     QrLocais.Params[3].AsString := QrConContrato.AsString;
     QrLocais.Open;

end;

procedure Tf_procPorTipo.BitBtn1Click(Sender: TObject);
var ExcelComment,vtipopro,vtipodec : String;
begin
    ExcelComment := '';
    image1.Picture.SaveToFile('c:\ms2000\ms2000.bmp');
    If (cbTodos.Checked = False) And (DBLookupComboBox1.Text = '') Then Begin
      MessageDlg('Selecione o Cliente.!', mtInformation,[mbOk], 0);
      DBLookupComboBox1.SetFocus;
      Exit;
    End;
    If (cbTodos2.Checked = False) And (DBLookupComboBox2.Text = '') Then Begin
      MessageDlg('Selecione o Contrato.!', mtInformation,[mbOk], 0);
      DBLookupComboBox2.SetFocus;
      Exit;
    End;
    If (cbTodos3.Checked = False) And (DBLookupComboBox3.Text = '') Then Begin
      MessageDlg('Selecione o Local de Inventário.!', mtInformation,[mbOk], 0);
      DBLookupComboBox3.SetFocus;
      Exit;
    End;

    AuxChecaContLoc := 0;
    aux := 0;
    If cbTodos.Checked = False Then qrGeral.SQL.Strings[4]:='AND Importadores.Codigo Like ' + '''' + qrCliCodigo.AsString + '''';
    If cbTodos2.Checked = False Then qrGeral.SQL.Strings[5]:='AND Contratos.Contrato Like ' + '''' +  QrConContrato.AsString + '''';
    If cbTodos3.Checked = False Then qrGeral.SQL.Strings[6]:='AND Locais_Inventario.Local Like ' + '''' + qrLocaisLocal.AsString + '''';
     vFiltro := ' AND Processos.status <> ''4'' ';
     If Not cbTodos4.Checked Then Begin
        if dbTipoProc.SelectedRows.Count=0 then begin
           Showmessage(v_usuario+', favor selecionar algum tipo de processo ou marcar todos!');
           dbTipoProc.setfocus;
           exit;
        end;
        ExcelComment := 'Tipos de Processos: ';
        vFiltro := vFiltro +'AND (';
        vtipopro := '';
        With dbTipoProc Do
            For i:=0 To SelectedRows.Count-1 Do Begin
               DataSource.DataSet.GotoBookmark(Pointer(SelectedRows.Items[i]));
               vFiltro := vFiltro +'Processos.Tipo = '''+ Fields[0].AsString +''' ';
               ExcelComment := ExcelComment + char(10) + Copy(Fields[1].AsString,1,25);
               If i <> (SelectedRows.Count-1) Then vFiltro := vFiltro +'OR ';
               vtipopro := vtipopro+trim(Copy(Fields[1].AsString,1,25))+',';
            End;
        vFiltro := vFiltro +') ';
        ExcelComment := ExcelComment + char(10) + char(10);
     End;
    qrGeral.SQL.Strings[7] := vFiltro;
     vFiltro2 := '';
     If Not cbTodos5.Checked Then Begin
        if dbTipoDec.SelectedRows.Count=0 then begin
           Showmessage(v_usuario+', favor selecionar algum tipo de declaração ou marcar todos!');
           dbTipoDec.setfocus;
           exit;
        end;

        ExcelComment := ExcelComment + 'Tipos de Declaração: ';
        vFiltro2 := vFiltro2 +'AND (';
        vtipodec:='';
        With dbTipoDec Do
            For i:=0 To SelectedRows.Count-1 Do Begin
               DataSource.DataSet.GotoBookmark(Pointer(SelectedRows.Items[i]));
               vFiltro2 := vFiltro2 +'Processos.Tipo_Declaracao = '''+ Fields[0].AsString +''' ';
               ExcelComment := ExcelComment + char(10) + Copy(Fields[2].AsString,1,25);
               If i <> (SelectedRows.Count-1) Then vFiltro2 := vFiltro2 +'OR ';
               vtipodec := vtipodec+trim(Copy(Fields[2].AsString,1,25))+',';
            End;
        vFiltro2 := vFiltro2 +') ';
        ExcelComment := ExcelComment + char(10) + char(10);
     End;
    qrGeral.SQL.Strings[8] := vFiltro2;
    qrGeral.Open;
    If qrGeral.RecordCount = 0 Then Begin
      If cbTodos.Checked = False Then
        Begin
            MessageDlg('Não há Processos!', mtInformation,[mbOk], 0);
            exit;
        End;
    End;
//    SHOWMESSAGE(qrGeral.SQL.Text);

     Excel:=CreateOleObject('Excel.Application');
     Excel.Application.DisplayAlerts := False;
     Excel.Workbooks.add(1);

     Excel.visible := True;
     Excel.Worksheets[1].Name := 'Relatório';
     Excel.ActiveWindow.DisplayGridlines := False;
     Excel.Cells[1,1].Font.Size := 12;
     Excel.Cells[1,1] := 'MS2000 - Sistema Gerencial Aduaneiro';
     Excel.Cells[1,1].Font.Bold := True;
     Excel.Cells[2,1] := v_versao;
     Excel.Cells[2,1].Font.Bold := True;
     //Excel.Worksheets[1].PageSetup.PaperSize := '9';
     Excel.ActiveSheet.PageSetup.LeftMargin := '28';
     Excel.ActiveSheet.PageSetup.RightMargin := '28';

     Excel.Cells[4,1] := 'RELATÓRIO DE PROCESSOS '  ;
     Excel.Cells[4,1].Font.Color := clMaroon;
     Excel.Cells[4,1].Font.Bold := True;
//Application.Cells(14, 3).AddComment "123" + Chr(10) + "456"

     If cbTodos4.Checked Then Excel.Cells[5,1] := 'Tipos de Processos: Todos'
     else Excel.Cells[5,1] := 'Tipos de Processos: '+vtipopro;

     If cbTodos5.Checked Then Excel.Cells[6,1] := 'Tipos de Declarações: Todas'
     else Excel.Cells[6,1] := 'Tipos de Declarações: '+vtipodec;


     Excel.Cells.Range['A' + IntToStr(7), 'D' + IntToStr(7)].Merge;
     i := 4;
     CelIni := 8;
     Excel.Cells.Range['A8', 'A8'].ColumnWidth := 38;
     Excel.Cells.Range['B8', 'B8'].ColumnWidth := 8;
     Excel.Cells.Range['C8', 'C8'].ColumnWidth := 9;
     Excel.Cells.Range['D8', 'D8'].ColumnWidth := 10;
     Excel.Cells.Range['E8', 'E8'].ColumnWidth := 17;
     Excel.Cells.Range['F8', 'F8'].ColumnWidth := 10;
     AuxNumeroContLoc := 0;
     vImpAnt := 0;
     vLocalAnt := '0';
     vContAnt := '0';
           While Not qrGeral.Eof Do Begin
               ChecaImportador();
               ChecaContLoc();
               Excel.Cells[i,1].Interior.Color := clSilver;
               Excel.Range['A'+IntToStr(i), 'A'+IntToStr(i)].Borders.Item[10].LineStyle := 1;
               Excel.Range['A'+IntToStr(i), 'A'+IntToStr(i)].Borders.Item[7].LineStyle := 1;
               Excel.Cells[i,2] := qrGeralRefMS.AsString;
               Excel.Cells[i,3] := qrGeralCodigo_Cliente.AsString;
               Excel.Cells[i,4].NumberFormat := '@';
               Excel.Cells[i,4] := qrGeralDI.AsString;
               Excel.Cells[i,5] := qrGeralNumero_RCR.AsString;
               Excel.Cells[i,6] := qrGeralNumero_TR.AsString;
               AuxNumeroContLoc := AuxNumeroContLoc +1;
  //             Excel.Cells[i,2] := qrCustoDescricao.AsString;
  //             Excel.Cells[i,3] := FormatFloat('###,###,##0.00', (qrCustoValor_Registrado.AsFloat));
    //           v_total := v_total + qrCustoValor_Registrado.AsFloat;
               qrGeral.Next;
               Excel.Range['A'+inttostr(celIni+1), 'F'+inttostr(celIni+1)].Interior.Pattern := 0;
               Excel.Range['A'+inttostr(celIni+1), 'F'+inttostr(celIni+1)].Interior.Color := clGray;
               Inc(i);

           End;
//                 showmessage(Excel.Cells[i,1].Text);
  //               showmessage(Excel.Cells[i,2].Text);
               If (Excel.Cells[i,1].Text <> '') and (Excel.Cells[i,2].Text = '') and  (Excel.Cells[i,3].Text = '') and  (Excel.Cells[i,4].Text = '') and  (Excel.Cells[i,5].Text = '') and  (Excel.Cells[i,6].Text = '') Then Begin

                 Excel.Range['A'+inttostr(i), 'A'+inttostr(i)].Borders.Item[7].LineStyle := 1;
                 Excel.Cells[i,1].Interior.Color := clSilver;
                 Excel.Range['B'+inttostr(i), 'F'+inttostr(i)].Interior.Color := clSilver;
                 Excel.Range['B'+inttostr(i), 'F'+inttostr(i)].Interior.Pattern := 16;
                 inc(i);
               End;
     Excel.Range['A'+Inttostr(CelIni+1), 'A'+inttostr(i-1)].Font.Size := 8;
     Excel.Range['B'+Inttostr(CelIni+1), 'F'+inttostr(i-1)].Font.Size := 9;
     Excel.Range['B'+IntTostr(CelIni+2), 'F'+inttostr(i-1)].HorizontalAlignment := -4131;
     Excel.Range['B'+IntTostr(CelIni+2), 'F'+inttostr(i-1)].Borders.LineStyle := 1;
     Excel.Range['A'+IntTostr(i-1), 'F'+inttostr(i-1)].Borders.Item[9].LineStyle := 1;
     Excel.Range['A4', 'F4'].Interior.Pattern := 0;
     Excel.Range['A4', 'A4'].Borders.Item[7].LineStyle := 0;

     If Not (cbTodos5.Checked) Or Not (cbTodos5.Checked) Then
       Begin
         Excel.Cells[7,1].AddComment (excelcomment);
         Excel.ActiveSheet.Comments[1].Shape.Width := '200';
         Excel.ActiveSheet.Comments[1].Shape.height := '250';
       End;
     Excel.Worksheets[1].Shapes.AddPicture ('c:\ms2000\ms2000.bmp', True, True, 375, 4, 110, 60);



    qrGeral.SQL.Strings[4]:= '';
    qrGeral.SQL.Strings[5]:= '';
    qrGeral.SQL.Strings[6]:= '';
    qrGeral.SQL.Strings[7]:= '';
    qrGeral.SQL.Strings[8]:= '';
end;

procedure Tf_procPorTipo.cbTodosClick(Sender: TObject);
begin
     If Not cbTodos.Checked Then Begin
       DBLookupComboBox1.Enabled := True;
       DBLookupComboBox1.SetFocus;
     End
     Else DBLookupComboBox1.Enabled := False;
end;

procedure Tf_procPorTipo.cbTodos2Click(Sender: TObject);
begin
     If Not cbTodos2.Checked Then Begin
       DBLookupComboBox2.Enabled := True;
       DBLookupComboBox2.SetFocus;
     End
     Else DBLookupComboBox2.Enabled := False;
end;

procedure Tf_procPorTipo.cbTodos3Click(Sender: TObject);
begin
     If Not cbTodos3.Checked Then Begin
       DBLookupComboBox3.Enabled := True;
       DBLookupComboBox3.SetFocus;
     End
     Else DBLookupComboBox3.Enabled := False;
end;

procedure Tf_procPorTipo.cbTodos4Click(Sender: TObject);
begin
     If Not cbTodos4.Checked Then Begin
       dbTipoProc.Enabled := True;
       dbTipoProc.SetFocus;
     End
     Else dbTipoProc.Enabled := False;
end;

procedure Tf_procPorTipo.cbTodos5Click(Sender: TObject);
begin
     If Not cbTodos5.Checked Then Begin
       dbTipoDec.Enabled := True;
       dbTipoDec.SetFocus;
     End
     Else dbTipoDec.Enabled := False;
end;
procedure Tf_procPorTipo.ChecaImportador();
Var anterior, atual : Integer;
Begin
     anterior := vImpAnt;
     atual := qrGeralCodigo.AsInteger;
     If atual <> Anterior Then Begin
       If AuxNumeroContLoc < 2 Then Begin
         Excel.Range['A'+inttostr(i), 'A'+inttostr(i)].Borders.Item[7].LineStyle := 1;
         Excel.Cells[i,1].Interior.Color := clSilver;
         Excel.Range['B'+inttostr(i), 'F'+inttostr(i)].Interior.Color := clSilver;
         Excel.Range['B'+inttostr(i), 'F'+inttostr(i)].Interior.Pattern := 16;
         Inc(i);
         AuxNumeroContLoc := 2;
       End;

       If aux <> 0 Then Begin
         Excel.Range['A'+Inttostr(CelIni), 'F'+inttostr(i)].Font.Size := 8;
         Excel.Range['B'+IntTostr(CelIni+2), 'F'+inttostr(i)].HorizontalAlignment := -4131;
         Excel.Range['B'+IntTostr(CelIni+2), 'F'+inttostr(i-1)].Borders.LineStyle := 1;
         Excel.Range['A'+inttostr(i), 'F'+inttostr(i)].Borders.Item[8].LineStyle := 1;
       End;
       aux := 1;
       Inc(i);
       Inc(i);
       CelIni := i;
       Excel.Cells[i,1] := 'Cliente : ' + qrGeralRazao_Social.AsString + ' - ' + qrGeralCNPJ_CPF_COMPLETO.AsString;
       Excel.Cells[i,1].Font.Bold := True;
       Excel.Cells[i,1].HorizontalAlignment := -4131;
       Excel.Cells.Range['A' + IntToStr(i), 'F' + IntToStr(i)].Merge;
       Inc(i);
       Excel.Range['A'+inttostr(i), 'F'+inttostr(i)].Interior.Color := clGray;
//       Inc(i);
       Excel.Range['A'+inttostr(i), 'F'+inttostr(i)].Borders.LineStyle := 1;
       Excel.Cells[i,2] := 'Ref MS';
       Excel.Cells[i,3] := 'Ref Cliente';
       Excel.Cells[i,4] := 'DI';
       Excel.Cells[i,5] := 'Numero_RCR';
       Excel.Cells[i,6] := 'Numero_TR';
       Excel.Range['A'+inttostr(i), 'F'+inttostr(i)].Font.Bold := True;
       Excel.Range['A'+inttostr(i), 'F'+inttostr(i)].HorizontalAlignment := -4108;
//       Inc(i);
       AuxChecaContLoc := 1;
       vImpAnt := qrGeralCodigo.AsInteger;
       AuxNumeroContLoc := 0;
     End;
End;

procedure Tf_procPorTipo.ChecaContLoc();
Var Canterior, Catual, Lanterior, Latual : String;
Begin
     Canterior := vContAnt;
     Catual := qrGeralContrato.AsString;
     Lanterior := vLocalAnt;
     Latual := qrGerallocal.AsString;
     If ((Catual <> Canterior) Or (Latual <> Lanterior) Or (AuxChecaContLoc = 1))  Then Begin
       If AuxNumeroContLoc < 2 Then Begin
       Excel.Range['A'+inttostr(i), 'A'+inttostr(i)].Borders.Item[7].LineStyle := 1;
       Excel.Cells[i,1].Interior.Color := clSilver;
       Excel.Range['B'+inttostr(i), 'F'+inttostr(i)].Interior.Color := clSilver;
       Excel.Range['B'+inttostr(i), 'F'+inttostr(i)].Interior.Pattern := 16;
//       Excel.Cells[i,1].Interior.Color := clSilver;
       Inc(i);
       AuxNumeroContLoc := 2;
       End;
       Excel.Cells[i,1] := 'Contrato: ' + qrGeralContrato.AsString;
       Excel.Cells[i,1].Font.Bold := True;
       Excel.Cells[i,1].HorizontalAlignment := -4108;
       Excel.Cells[i+1,1] := 'Local: ' + qrGerallocal.AsString;
       Excel.Cells[i+1,1].Font.Bold := True;
       Excel.Cells[i+1,1].HorizontalAlignment := -4108;
       Excel.Range['A'+inttostr(i), 'F'+inttostr(i)].Borders.Item[8].LineStyle := 1;
//       Inc(i);
       vLocalAnt := qrGerallocal.AsString;
       vContAnt := qrGeralContrato.AsString;
//       showmessage(inttostr(AuxNumeroContLoc));

       AuxNumeroContLoc := 0;
       AuxChecaContLoc := 0;
     End;
End;

procedure Tf_procPorTipo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action := cafree;
     f_procPorTipo := nil;
     f_mscomex.ProcessosporTipo1.enabled := true;
end;

procedure Tf_procPorTipo.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

  {   h := Height;
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

end.
