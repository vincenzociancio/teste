unit U_relDebCred;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Db, DBTables, comObj,
  ComCtrls;

type
  TF_relDebCred = class(TForm)
    Panel1: TPanel;
    L_dataini: TLabel;
    BitBtn1: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    me_dini: TMaskEdit;
    me_dfin: TMaskEdit;
    q_Import: TQuery;
    dsImport: TDataSource;
    dblcbCli: TDBLookupComboBox;
    Label3: TLabel;
    cbCli: TCheckBox;
    dblcbcon: TDBLookupComboBox;
    cbcon: TCheckBox;
    cbloc: TCheckBox;
    dblcbloc: TDBLookupComboBox;
    Label15: TLabel;
    Label14: TLabel;
    ds_locais: TDataSource;
    ds_contratos: TDataSource;
    qrLocais: TQuery;
    qrContratos: TQuery;
    qrContratosEmpresa: TStringField;
    qrContratosFilial: TStringField;
    qrContratosImportador: TStringField;
    qrContratosContrato: TStringField;
    qrContratosDescricao: TStringField;
    qrContratosVigencia_inicial: TDateTimeField;
    qrContratosVigencia_final: TDateTimeField;
    qrContratosTipo: TStringField;
    qrContratosData_Baixa: TDateTimeField;
    qrContratosData_prorrogacao: TDateTimeField;
    qrParam: TQuery;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    qrLocaisEmpresa: TStringField;
    qrLocaisFilial: TStringField;
    qrLocaisContrato: TStringField;
    qrLocaisImportador: TStringField;
    qrLocaisDescricao: TStringField;
    qrLocaisLocal: TStringField;
    qrPlanilha: TQuery;
    qrDeb: TQuery;
    qrDebData_Registro: TDateTimeField;
    qrDebDescricao: TStringField;
    qrDebValor_Registrado: TFloatField;
    qrCred: TQuery;
    qrCredData_Credito: TDateTimeField;
    qrCredDescricao: TStringField;
    qrCredValor: TFloatField;
    qrDescLoc: TQuery;
    qrDescLocLocal: TStringField;
    qrDescLocDescricao: TStringField;
    qrDescCon: TQuery;
    qrPlanilhaCodMS: TStringField;
    qrPlanilhaData: TDateTimeField;
    qrPlanilhaCodCli: TStringField;
    qrPlanilhaLocal_Inventario: TStringField;
    qrPlanilhaContrato: TStringField;
    qrPlanilhaCodigo: TStringField;
    pnlGerando: TPanel;
    Label4: TLabel;
    rtPlanilha: TRichEdit;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    cbprocesso: TCheckBox;
    qrDescConContrato: TStringField;
    qrDescConDescricao: TStringField;
    qrDescConImportador: TStringField;
    qrDescConVigencia_inicial: TDateTimeField;
    qrDescConVigencia_final: TDateTimeField;
    qrDescConData_Baixa: TDateTimeField;
    qrDescConData_prorrogacao: TDateTimeField;
    q_ImportEmpresa: TStringField;
    q_ImportFilial: TStringField;
    q_ImportCodigo: TStringField;
    q_ImportRazao_Social: TStringField;
    q_ImportCNPJ_CPF_COMPLETO: TStringField;
    q_ImportCGC_CPF: TStringField;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbCliClick(Sender: TObject);
    procedure cbconClick(Sender: TObject);
    procedure cblocClick(Sender: TObject);
    procedure qrPlanilhaAfterScroll(DataSet: TDataSet);
    Procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer);
    Procedure CelResumo(linha : Integer; Coluna : Integer);
    Procedure CelTrac(kjh : Integer );
    Procedure SheetIni();
    Procedure SheetFim();
    Procedure Resumo_Cont();
    Procedure Resumo_Loc();
    Procedure ResumoFim();
    procedure q_ImportAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure rtPlanilhaChange(Sender: TObject);
    procedure qrContratosAfterScroll(DataSet: TDataSet);
    procedure qrLocaisAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbprocessoClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  Aleft = -4131;
  Aright = -4152;
  ACenter = -4108;
var
  F_relDebCred: TF_relDebCred;
  data_pror, data_baixa, dc_vig_ini,dc_vig_fim, v_res_aux_cont,v_res_aux_loc, dat_arq, nome_arq, data, data_arq,  desc_contrato, planilha, vEmp, vFil, vCli, vCon, vLocInv, v_form_tot_cred, v_form_tot_deb, v_desc_contrato1, v_desc_contrato2,  v_q_sheet1, v_q_sheet2 : String;
  excel : Variant;
  ttcred, ttdeb, ttsald : String;
  v_resumo_aux, i, v_lf, v_controle, v_linha, aud,f,klg, klg2, klg3, v_fim, p, linha, v_checked, v_form_maior : Integer;
implementation

uses U_MSCOMEX;

{$R *.DFM}


procedure TF_relDebCred.BitBtn1Click(Sender: TObject);
var
   sheet : Variant;
   v_cred_i, v_deb_i, coluna, aux,auy, aue, teste , linha2: Integer;
   h_est, h_tot, dir_cor, v_form_aux, astring, astring2: string;
   t_emp,t_emp2, pos_form_cred, pos_form_deb : integer;
   i,j : integer;
   FIni,FFim, FFim0 : TDateTime;
begin
     {$I-}

     ttcred := '=';
     ttdeb := '=';
     ttsald := '=';
     v_lf := 0;
     v_linha := 6;
     desc_contrato := '*&^';
     v_controle := 0;
     klg := 1;
     klg2 := 0;
     klg3 := 0;
     f:=0;
     pnlGerando.Visible := True;
     bitbtn2.Enabled := False;
     q_import.Open;
     //q_Import.Refresh;
     Panel1.Enabled;
     bitbtn1.Enabled := False;
     data := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
     data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);
     v_q_sheet1 :='0';
     v_q_sheet2 :='1';
     v_desc_contrato1 :='0';
     v_desc_contrato2 :='1';
     t_emp2 := 0;

     qrDeb.Close;
     qrCred.Close;
     qrplanilha.close;

     If Not cbCon.Checked Then Begin
       qrPlanilha.SQL.Strings[5] := 'AND  P.Contrato Like :cont';
       qrPlanilha.Params[7].DataType := ftString;
       qrDeb.SQL.Strings[6] := 'AND P.Contrato Like :cont';
       qrDeb.Params[2].DataType := ftString;

       qrCred.SQL.Strings[9] := 'AND P.Contrato Like :cont';
       qrCred.Params[2].DataType := ftString;
     End;

     If Not cbloc.Checked Then Begin
       qrPlanilha.SQL.Strings[6] := 'AND P.Local_Inventario Like :loc_inv';
       qrPlanilha.Params[8].DataType := ftString;
       qrDeb.SQL.Strings[7] := 'AND P.Local_Inventario Like :loc_inv';
       qrDeb.Params[3].DataType := ftString;

       qrCred.SQL.Strings[10] := 'AND P.Local_Inventario Like :loc_inv';
       qrCred.Params[3].DataType := ftString;
     End;

     v_checked := 1;
     If (cbCli.Checked And Not cbprocesso.Checked) Then Begin
        v_checked := q_import.RecordCount;
        q_import.First;
     End;
{}   For t_emp := 1 To v_checked Do Begin
     If t_emp > 1 Then  Excel.Quit;
     Excel:=CreateOleObject('Excel.Application');
     Excel.Application.DisplayAlerts := False;
     Excel.Visible := TRUE;

     If not cbprocesso.Checked then Begin
     qrPlanilha.Params[0].AsString := q_ImportCNPJ_CPF_COMPLETO.AsString;
     rtPlanilha.Lines.Insert(0,'Gerando Planilha de: ' + q_ImportRazao_Social.AsString + ' . . . ');
     End
     Else rtPlanilha.Lines.Insert(0,'Gerando Planilha do Processo: ' + edit1.text + ' . . . ');

     pnlGerando.refresh;
     nome_arq := q_ImportCNPJ_CPF_COMPLETO.AsString;
     System.GetDir(0,dir_cor);
     dir_cor := dir_cor + '\Planilhas_Ms2000';
//     MkDir(dir_cor);
{     If IOResult <> 0 then
       rtPlanilha.Lines.Add('Diretório ' + dir_cor + 'Criado');
}
     If Not cbcon.Checked Then Begin
       qrPlanilha.Params[7].AsString := qrContratosContrato.AsString;
     End;
     If Not cbloc.Checked Then Begin
       qrPlanilha.Params[8].AsString := vLocInv;
     End;
     If me_dIni.Text = '  /  /    ' Then me_dIni.Text := '01/01/1900';
     If me_dFin.Text = '  /  /    ' Then me_dFin.Text := '01/01/2010';
     qrPlanilha.Params[1].AsDateTime := StrToDateTime(me_dIni.Text);
     inc(j);
     qrPlanilha.Params[2].AsDateTime := StrToDateTime(me_dFin.Text);
     inc(j);
     qrPlanilha.Params[3].AsDateTime := StrToDateTime(me_dIni.Text);
     inc(j);
     qrPlanilha.Params[4].AsDateTime := StrToDateTime(me_dFin.Text);
     qrPlanilha.Params[5].AsString := vEmp;
     qrPlanilha.Params[6].AsString := vFil;

     If cbprocesso.checked Then Begin
       qrPlanilha.Params[0].AsString := '%';
       qrPlanilha.SQL.Strings[5] := 'AND  P.Codigo Like :proc';
       qrPlanilha.Params[7].DataType := ftString;
       qrPlanilha.Params[7].AsString := edit1.text;
     End;

     qrPlanilha.Open;
     If cbprocesso.checked then Begin
       q_import.Locate('Codigo',qrPlanilhaCodigo.AsString,[]);
       qrPlanilha.Open;
     End;
     v_form_maior := (qrPlanilha.recordCount div 100) +1;
{2}  If qrplanilha.recordcount > 0 Then Begin
       inc(t_emp2);
       auy := 8;
       aud := 8;
       v_form_tot_deb := '=';
       v_form_tot_cred := '=';
//       excel.visible:=true;
       excel.Workbooks.add(1);

       If Not cbProcesso.Checked Then Begin
         Excel.Worksheets[1].Name := 'Resumo';
         Excel.Cells[1,1] := 'Empresa: ' + q_ImportRazao_Social.AsString;
         Excel.Cells[1,1].Font.Size := 12;
         Excel.Cells[2,1] := 'MS2000 - Sistema Gerencial Aduaneiro - Planilha de Débitos e Créditos por Processo';

         If (me_dIni.Text = '01/01/1900') And (me_dFin.Text = '01/01/2010') Then
           Excel.Cells[3,1] := 'Período: Visão Geral'
         Else Excel.Cells[3,1] := 'Período: ' + me_dIni.Text + ' até ' + me_dFin.Text;

         Excel.Cells[4,1] := 'Data da Consulta: ' + data;
         Excel.ActiveWindow.DisplayGridlines := False;
         Excel.Worksheets.Add;
       End;

     bitbtn1.tag := 0;
     linha:=0;
     SheetIni();
     fIni := StrToTime(FormatDateTime('hh:nn:ss', Now));
    // Try
     {Início dos Créditos}
     For linha:=0 To qrPlanilha.RecordCount-1 Do Begin
           v_desc_contrato1 := qrPlanilhaContrato.AsString;
           v_q_sheet1 := qrPlanilhaLocal_Inventario.AsString;
            If QrCred.RecordCount > 0 Then Begin
              Celtitulo(aud,2,'Data', clBlue, ACenter, clWhite, 8);
              Celtitulo(aud,3,'Descrição Créditos', clBlue, ACenter, clWhite, 8);
              Celtitulo(aud,4,'Valor', clBlue, ACenter, clWhite, 8);

           End;
           Inc(aud);
           auy:=aud;
           Celtitulo(auy-1,1,'Ref.MS: ' + qrPlanilhaCodMS.AsString, clSilver, ACenter, clBlack, 7);
           Inc(auy);
           Excel.Cells[auy-1,1].NumberFormat := '@';
           Celtitulo(auy-1,1,'Dt.Abertura: ' + qrPlanilhaData.AsString, clSilver, ACenter, clBlack, 7);
           Inc(auy);
           Celtitulo(auy-1,1,'Ref.Cliente: ' + qrPlanilhaCodCli.AsString, clSilver, ACenter, clBlack, 7);
           Inc(auy);
           CelTitulo(7,1,'Referências',clGray, ACenter, clWhite, 8);
           CelTitulo(7,3,'Movimentações',clGray, ACenter, clWhite, 8);
           Excel.Cells.Range['B5','D5'].Merge;
           v_cred_i := aud;
           For linha2:=0 to qrCred.recordcount-1 do Begin
              For coluna:=1 To qrCred.FieldCount Do Begin
                 If coluna = 1 then Begin
                   Excel.Cells[aud, coluna+1].NumberFormat := '@';
                   Excel.Cells[aud, coluna+1].HorizontalAlignment := -4108;
                 End;
                 If coluna < 3 Then Celtitulo(aud, coluna+1, qrCred.Fields[coluna-1].AsString, clWhite, ACenter, clNavy, 7);
                 If coluna = 3 Then Celtitulo(aud, coluna+1, FormatFloat('###,###,##0.00', (qrCred.Fields[coluna-1].AsFloat)), clWhite, ACenter, clNavy, 7);


                 If coluna = 2 then Excel.Cells[aud, coluna+1].HorizontalAlignment := -4131;
                 If coluna = 3 then Begin
                   Excel.Cells[aud, coluna+1].HorizontalAlignment := -4152;
                   Excel.Cells[aud, coluna+1].numberFormat := '#.##0,00';
                 End;

              End;
              aud:=aud+1;
              qrCred.next;
           End;
           If qrCred.RecordCount > 0 Then Begin
              Celtitulo(aud,3,'Subtotal Créditos', clBlue, ARight, clWhite, 8);
              Celtitulo(aud,4,'', clBlue, ARight, clWhite, 8);

              v_form_aux := '=';

              For aue := v_cred_i To aud-1 Do Begin
                 v_form_aux := v_form_aux + '+' + '$D$' + inttostr(aue) ;
              End;
              pos_form_cred := aud;
              Excel.cells[aud, 4].Formula := v_form_aux;{"=$A$4+$A$10"}
              v_form_tot_cred := v_form_tot_cred + '+' + '$D$' + inttostr(aud);

              If v_form_maior >= 2 Then Begin
                  Inc(klg2);
                  If ((klg2 mod 100) = 0) Then Begin
                    Inc(klg);
                    Excel.Cells.Range['O' + IntToStr(klg),'P' + IntToStr(klg)].FormulaHidden := True;
                  End;
                  If (((klg2 mod 100) = 0) Or (klg2 = 1)) Then Begin
                    Excel.Cells[klg, 15].Formula := '=';
                    Excel.Cells[klg, 16].Formula := '=';
                  End;
                  Excel.Cells[klg, 15].Formula := Excel.Cells[klg, 15].Formula + '+' + '$D$' + inttostr(aud);
                  Excel.Cells[klg, 15].Font.Color := clWhite;
                  Excel.Cells[klg, 16].Font.Color := clWhite;
              End;


              astring := 'b' + inttostr(aud);
              astring2 := 'c' + inttostr(aud);
              Excel.Cells.Range[astring, astring2].Merge;
           End
           Else Begin
               aud:=aud -2;
               pos_form_cred := 0;
           End;
           aud:=aud +1;

     {Fim dos créditos}

            If QrDeb.RecordCount > 0 Then Begin
              Celtitulo(aud,2,'Data', clRed, ACenter, clWhite, 8);
              Celtitulo(aud,3,'Descrição Débitos', clRed, ACenter, clWhite, 8);
              Celtitulo(aud,4,'Valor', clRed, ACenter, clWhite, 8);

              Inc(aud);
           End;
           v_deb_i := aud;
           For linha2:=0 to qrdeb.recordcount-1 do Begin
              For coluna:=1 To qrDeb.FieldCount Do Begin

                 If coluna = 1 Then Begin
                   Excel.Cells[aud, coluna+1].NumberFormat := '@';
                   Excel.Cells[aud, coluna+1].HorizontalAlignment := -4108;
                 End;
                 If coluna < 3 Then Celtitulo (aud, coluna+1, qrDeb.Fields[coluna-1].AsString, clWhite, ACenter, clNavy, 7);
                 If coluna = 3 Then Celtitulo(aud, coluna+1, FormatFloat('###,###,##0.00', (qrDeb.Fields[coluna-1].AsFloat)), clWhite, ACenter, clNavy, 7);

                 If coluna = 2 Then Excel.Cells[aud, coluna+1].HorizontalAlignment := -4131;
                 If coluna = 3 Then Begin
                   Excel.Cells[aud, coluna+1].HorizontalAlignment := -4152;
                   Excel.Cells[aud, coluna+1].numberFormat := '#.##0,00';

                 End;
            End;
              aud:=aud+1;
              qrdeb.next;
           End;

{3}
           If qrDeb.RecordCount > 0 Then Begin
             Celtitulo(aud,3,'Subtotal Débitos', clRed, ARight, clWhite, 8);
             Celtitulo(aud,4,'', clRed, ARight, clWhite, 8);

             v_form_aux := '=';
             For aue := v_deb_i To aud-1 Do Begin
                v_form_aux := v_form_aux + '+' + '$D$' + inttostr(aue) ;

             End;
             Excel.cells[aud, 4].Formula := v_form_aux;{"=$A$4+$A$10"}
             v_form_tot_deb := v_form_tot_deb + '+' + '$D$' + inttostr(aud);

              If v_form_maior >= 2 Then Begin
                Inc(klg3);
                Excel.Cells[klg, 16].Formula := Excel.Cells[klg, 16].Formula + '+' + '$D$' + inttostr(aud);
              End;

             pos_form_deb := aud;

             astring := 'b' + inttostr(aud);
             astring2 := 'c' + inttostr(aud);
             Excel.Cells.Range[astring, astring2].Merge;
           End
           Else Begin
               aud:=aud -1;
               pos_form_deb := 0
           End;
           Inc(aud);

           Celtitulo(aud,3,'Saldo Processo', clSilver, ACenter, clBlack, 8);
           Excel.cells[aud, 1].Borders.Item[9].LineStyle := 1;
           Excel.cells[7, 1].Borders.LineStyle := 1;

       {SOMATÓRIO DO SALDO PROCESSO}

           Celtitulo(aud,4,'', clSilver, ARight, clBlack, 8);

           If (pos_form_cred > 0) And (pos_form_deb > 0) Then
             v_form_aux := '=$D' + IntToStr(pos_form_cred) + '-' + '$D$' + IntToStr(pos_form_deb)
           Else If pos_form_cred = 0 Then v_form_aux := '=-$D' + IntToStr(pos_form_deb)
           Else If pos_form_deb = 0 Then v_form_aux := '=$D' + IntToStr(pos_form_cred);

           Excel.cells[aud, 4].Formula := v_form_aux;{"=$A$4+$A$10"}

      {FIM SOMATÓRIO DO SALDO PROCESSO}

           astring := 'b' + inttostr(aud);
           astring2 := 'c' + inttostr(aud);
           Excel.Cells.Range[astring, astring2].Merge;
           aud:=aud +1;
           qrPlanilha.Next;
           if linha > 0 then begin
             v_desc_contrato2 := qrPlanilhaContrato.AsString;
             v_q_sheet2 := qrPlanilhaLocal_Inventario.AsString;
           End  //senao da erro no primeiro registro
           else if linha = 0 then v_q_sheet2 := v_q_sheet1;

           If (v_q_sheet1 <> v_q_sheet2) Then Begin
             SheetFim();
             v_form_tot_deb := '=';
             v_form_tot_cred := '=';
             aud := 8;
             auy := 8;
             Excel.Worksheets[Planilha].Select;
             Excel.Worksheets.Add;
             SheetIni();

           End;
           If rtplanilha.Tag = 0 Then Begin
             ffIM := StrToTime(FormatDateTime('hh:nn:ss', Now));
             rtplanilha.Lines.Insert(0,'Tempo estimado: ' + timetostr((ffim-fini)*qrPlanilha.RecordCount));
             rtplanilha.Tag := 1;
           End;
         End;
         SheetFim();

{2}  End;
     If qrplanilha.recordcount > 0 Then Begin

       If Not cbProcesso.Checked Then Begin
         ResumoFim();
         For i := 1 To 4 Do Excel.Cells[i,1].Font.Bold := True;
         For i := 1 To 4 Do Excel.Cells[i,1].Font.Color := clNavy;
         For i := 1 To 4 Do Excel.Cells.Range['A' + IntToStr(i), 'E' + IntToStr(i)].Merge;

         Excel.Worksheets['Resumo'].PageSetup.Zoom := 50;


         Inc(v_Linha);
         Inc(v_Linha);
///
         Excel.cells[v_linha, 1].Borders.Weight := 4;
         Excel.cells[v_linha, 1].Borders.LineStyle := 1;
         Excel.Cells[v_linha, 1].Interior.Color := clBlack;
         Excel.Cells[v_linha, 1].Font.Color := clWhite;
         Excel.Cells[v_linha, 1].Font.Bold := True;
         Excel.Cells[v_linha, 1] := 'SALDOS TOTAIS';
         Excel.Cells[v_linha, 1].HorizontalAlignment := -4108;

         Excel.cells[v_linha, 2].Borders.Weight := 4;
         Excel.cells[v_linha, 2].Borders.LineStyle := 1;
         Excel.Cells[v_linha, 2].Interior.Color := RGB(255, 255, 128);

         Excel.cells[v_linha, 3].Borders.Weight := 4;
         Excel.cells[v_linha, 3].Borders.LineStyle := 1;
         Excel.Cells[v_linha, 3].Interior.Color := RGB(255, 255, 128);
         Excel.Cells[v_linha, 3].Formula := ttCred;
         Excel.Cells[v_linha, 3].Font.Size := 8;
         Excel.Cells[v_linha, 3].Font.Bold := True;

         Excel.cells[v_linha, 4].Borders.Weight := 4;
         Excel.cells[v_linha, 4].Borders.LineStyle := 1;
         Excel.Cells[v_linha, 4].Interior.Color := RGB(255, 255, 128);
         Excel.Cells[v_linha, 4].Formula := ttdeb;
         Excel.Cells[v_linha, 4].Font.Size := 8;
         Excel.Cells[v_linha, 4].Font.Bold := True;

         Excel.cells[v_linha, 5].Borders.Weight := 4;
         Excel.cells[v_linha, 5].Borders.LineStyle := 1;
         Excel.Cells[v_linha, 5].Interior.Color := RGB(255, 255, 128);
         Excel.Cells[v_linha, 5].Formula := ttsald;
         Excel.Cells[v_linha, 5].Font.Size := 8;
         Excel.Cells[v_linha, 5].Font.Bold := True;

       End;

       Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(Copy(Data_arq,1,11),'/','_', [rfReplaceAll]) + ' - '+stringreplace(q_ImportRazao_Social.AsString,'/','-', [rfReplaceAll])+ ' - ' + nome_arq + '.xls', ,'ms2000');

       rtPlanilha.Lines.Insert(0,'Planilha de ' + q_ImportRazao_Social.AsString + ' Gerada!');
       FFim0 := StrToTime(FormatDateTime('hh:nn:ss', Now));
       rtplanilha.Lines.Insert(0,'Tempo Total: ' + timetostr(ffim0-fini));
       rtPlanilha.Lines.Insert(0,'');
       rtPlanilha.Tag:=0;
     End
     Else Begin
       rtPlanilha.Lines.Insert(0,'Importador Sem Contratos ');
       rtPlanilha.Lines.Insert(0,'');
     End;
//     excel.Quit;
     q_import.next;
//        excel.columns.AutoFit; // esta linha é para fazer com que o Excel dimencione as células adequadamente.
 //    Except
   //        Application.MessageBox ('Aconteceu um erro desconhecido durante a conversão'+'da tabela para o Ms-Excel','Erro',MB_OK+MB_ICONEXCLAMATION);
  //   End;


END;
    rtPlanilha.Lines.Insert(0,'Planilhas Geradas com Sucesso no Diretório ' + dir_cor );
    bitbtn2.Enabled := True;
    bitbtn2.SetFocus;
end;

procedure TF_relDebCred.FormCreate(Sender: TObject);
begin
     q_import.Close;
     qrParam.Open;
     vEmp := qrParamEmpresa.AsString;
     vFil := qrParamFilial.AsString;
     q_import.Params[0].AsString := vEmp;
     q_import.Params[1].AsString := vFil;
     q_import.Open;
     qrContratos.Open;
     qrLocais.Open;
     qrParam.Close;
end;

procedure TF_relDebCred.cbCliClick(Sender: TObject);
begin
     If cbCli.Checked = True Then Begin
       dblcbCli.Enabled := False;
       cbCon.Checked := True;
       cbLoc.Checked := True;
       q_import.Close;
       qrContratos.Close;
       qrLocais.Close;
     End
     Else Begin
         dblcbCli.Enabled := True;
         dblcbCli.SetFocus;
         q_import.Open;
     End;
     dblcbCon.Enabled := False;
end;

procedure TF_relDebCred.cbconClick(Sender: TObject);
begin
     If Not cbCli.Checked Then Begin
       If dblcbCli.text = '' Then Begin
       cbCon.Checked := True;
       dblcbCli.SetFocus;

       End
       else
       If cbCon.Checked = True Then dblcbCon.Enabled := False
         Else Begin
             dblcbCon.Enabled := True;
             dblcbCon.SetFocus;
             cbLoc.Checked := True;
         End;
         cbLoc.Checked := True;
     End
     Else Begin
         cbCon.Checked := True;
     End;
     dblcbloc.Enabled := False;
end;

procedure TF_relDebCred.cblocClick(Sender: TObject);
begin
     If Not cbCon.Checked Then Begin
     If dblcbCon.text = '' Then Begin
       cbLoc.Checked := True;
       dblcbCon.SetFocus;
     End
     Else  If cbLoc.Checked = True Then dblcbLoc.Enabled := False
         Else Begin
             dblcbLoc.Enabled := True;
             dblcbLoc.SetFocus;
         End;
     End
     Else Begin
         cbLoc.Checked := True;
     End;
end;

procedure TF_relDebCred.qrPlanilhaAfterScroll(DataSet: TDataSet);
var k : integer;
begin
     Inc(P);
     qrDescCon.Close;
     qrDescCon.Params[0].AsString := qrPlanilhaCodigo.AsString;
     qrDescCon.Params[1].AsString := qrPlanilhaContrato.AsString;
     qrDescCon.Open;

     qrDescLoc.Close;
     qrDescLoc.Params[0].AsString := qrPlanilhaLocal_Inventario.AsString;
     qrDescLoc.Params[1].AsString := qrPlanilhaContrato.AsString;
     qrDescLoc.Open;

     With qrCred Do Begin
         Close;
         k:=0;
         If cbProcesso.Checked Then Begin
           Params[k].AsString := '%';
           inc(k);
         End
         Else Begin
             Params[k].AsString := F_relDebCred.q_ImportCNPJ_CPF_COMPLETO.AsString;
             Inc(k);
         End;
         Params[k].AsString := qrPlanilhaCodMS.AsString;
         inc(k);
         If Not cbcon.Checked Then Begin
           Params[k].AsString := vCon;
           inc(k);
         End;
         If Not cbloc.Checked Then Begin
           Params[k].AsString := vLocInv;
           inc(k);
         End;
//         Params[k].AsString := qrPlanilhaCodCli.AsString;
  //       inc(k);

         Open;
     End;
     With qrDeb Do Begin
         Close;
         k:=0;
         If cbProcesso.Checked Then Begin
           Params[k].AsString := '%';
           inc(k);
         End
         Else Begin
             Params[k].AsString := F_relDebCred.q_ImportCNPJ_CPF_COMPLETO.AsString;
             Inc(k);
         End;
         Params[k].AsString := qrPlanilhaCodMS.AsString;
         inc(k);
     If Not cbcon.Checked Then Begin
         Params[k].AsString := vCon;
         inc(k);
     End;
     If Not cbloc.Checked Then Begin
         Params[k].AsString := vLocInv;
         inc(k);
     End;
//         Params[k].AsString := qrPlanilhaCodCli.AsString;
 //        inc(k);
         Open;
     End;

end;
    Procedure TF_relDebCred.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer);
       Begin
           Excel.cells[linha, coluna] := CTitulo;
           Excel.cells[linha, coluna].interior.Color := CColor;
           Excel.cells[linha, coluna].Font.Color := FColor;
           Excel.cells[linha, coluna].Font.Size := FSize;
           Excel.cells[linha, coluna].Font.Bold := True;
           Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
        End;

Procedure TF_relDebCred.SheetIni();
Var
  j : Integer;
  v_aux_desc, aux : String;
Begin

     klg:=1;
     klg2:=0;
     klg3:=0;

     qrDescCon.Close;
     qrDescCon.Params[0].AsString := qrPlanilhaContrato.AsString;
     qrDescCon.Params[1].AsString := qrPlanilhaCodigo.AsString;
     qrDescCon.Open;

     dc_vig_ini := qrDescConVigencia_inicial.AsString;
     dc_vig_fim := qrDescConVigencia_final.AsString;
     data_baixa := qrDescConData_Baixa.AsString;
     data_pror := qrDescConData_prorrogacao.AsString;
//     showmessage(qrPlanilhaCodigo.AsString);
  //   showmessage(qrPlanilhaContrato.AsString);

     If (desc_contrato <> stringreplace(qrDescConDescricao.AsString,'/','-', [rfReplaceAll])) Or (desc_contrato = '*&^') Then Begin
       v_Controle := 1;
       If desc_contrato <> '*&^' Then v_lf := 1;
     End;

     desc_contrato := qrDescConDescricao.AsString;
   //  showmessage(qrDescConDescricao.AsString);
     If Desc_contrato = '' Then desc_contrato := 'Sem Contrato';

     qrDescLoc.Close;
     qrDescLoc.Params[0].AsString := qrPlanilhaLocal_Inventario.AsString;
     qrDescLoc.Params[1].AsString := qrPlanilhaContrato.AsString;
     qrDescLoc.Open;
     v_aux_desc := qrDescLocDescricao.AsString;
     v_res_aux_cont := desc_contrato;

     If v_aux_desc = '' Then v_aux_desc := 'Sem Local';
     v_res_aux_loc := v_aux_desc;

     Excel.Cells[2,1] := 'Contrato: ' + desc_contrato;
     Excel.Cells[3,1] := 'Local de Inventário: ' + v_aux_desc;

     v_aux_desc := stringreplace(v_aux_desc,'/','-', [rfReplaceAll]);

     desc_contrato := stringreplace(desc_contrato,'/','-', [rfReplaceAll]);


     planilha := Copy(desc_contrato,1,14) + ' - ' + Copy(v_aux_desc,1,14);
     Excel.Worksheets[1].Name := Planilha;
     For j:= 1 To 6 Do Begin
        Excel.Cells[j,1].Font.Bold := True;
        Excel.Cells[j,1].Font.Color := clGray;
     End;
     q_import.open;
     qrplanilha.open;
     Excel.Cells[1,1] := 'Empresa: ' + q_ImportRazao_Social.AsString;
     Excel.Cells[1,1].Font.Size := 12;


     Excel.Cells[4,1] := 'MS2000 - Sistema Gerencial Aduaneiro - Planilha de Débitos e Créditos por Processo';
     If (me_dIni.Text = '01/01/1900') And (me_dFin.Text = '01/01/2010') Then
       Excel.Cells[5,1] := 'Período: Visão Geral'
     Else Excel.Cells[5,1] := 'Período: ' + me_dIni.Text + ' até ' + me_dFin.Text;
     Excel.Cells[6,1] := 'Data da Consulta: ' + data;
     Excel.ActiveWindow.DisplayGridlines := False;
     Excel.cells[8,1].Borders.Item[8].LineStyle := 1;
//     Excel.WorkSheets[Planilha].Columns['D'].numberFormat := '#.##0,00';

     end;

Procedure TF_relDebCred.SheetFim();
var bn : Integer;
    bns : String;
Begin
        bn := 0;
        v_fim := aud-1;
        Excel.Cells.Range['B7', 'D'+intToStr(v_fim+3)].Borders.LineStyle := 1;
        Excel.Cells.Range['A8', 'A'+intToStr(v_fim)].interior.Color := clSilver;
        Excel.Cells.Range['A1', 'D1'].Merge;
        Excel.Cells.Range['A4', 'D4'].Merge;
        Excel.Cells.Range['B7', 'D7'].Merge;
        Excel.Cells.Range['A2', 'D2'].Merge;
        Excel.Cells.Range['A3', 'D3'].Merge;
        Excel.Cells.Range['A5', 'D5'].Merge;
        Excel.Cells.Range['A6', 'D6'].Merge;
        Excel.Cells.Range['A8', 'D21'].columns.Autofit;
        Excel.Cells.Range['B8', 'B8'].ColumnWidth := Excel.Cells.Columns['B'].ColumnWidth + 2;
        Excel.Cells.Range['C8', 'C8'].ColumnWidth := Excel.Cells.Columns['C'].ColumnWidth + 10;
        Excel.Cells.Range['D8', 'D8'].ColumnWidth := Excel.Cells.Columns['D'].ColumnWidth + 2;
        Excel.Cells.Range['A8', 'A8'].ColumnWidth := 20;

        Celtitulo(v_fim+1,1,'Totais de Créditos', clGray, ACenter, clWhite, 8);
        If (v_form_maior) < 2 Then Begin
          If v_form_tot_cred <> '=' Then Begin
            Excel.Cells[v_fim+1,4].Formula := v_form_tot_cred;
          end
          Else Excel.Cells[v_fim+1,4] := '0,00';
        End
        Else Begin

          bns := '=';
          For bn := 1 to v_form_maior Do Begin
             bns := bns + '+' + '$O$' + IntToStr(bn);
          End;
          Excel.Cells[v_fim+1,4].Formula := bns;
        End;
        Excel.Cells[v_fim+1,4].Font.Size := 8;
        Excel.Cells[v_fim+1,4].Font.Bold := True;
        Excel.cells[v_fim+1,4].HorizontalAlignment := ARight;
        Excel.cells[v_fim+1,1].Borders.LineStyle := 1;
        Excel.Cells.Range['B' + IntToStr(v_fim+1), 'D'+IntToStr(v_fim+1)].Merge;

        Celtitulo(v_fim+2,1,'Totais de Débitos', clGray, ACenter, clWhite, 8);
        If (v_form_maior) < 2 Then Begin
          If v_form_tot_deb <> '=' Then Excel.Cells[v_fim+2,4].Formula := v_form_tot_deb
          Else Excel.Cells[v_fim+1,4] := '0,00';
        End
        Else Begin
  //            v_form_tot_cred := v_form_tot_cred + '+' + '$D$' + inttostr(aud);

          bns := '=';
          For bn := 1 to v_form_maior Do Begin
             bns := bns + '+' + '$P$' + IntToStr(bn);
          End;
          Excel.Cells[v_fim+2,4].Formula := bns;
        End;

        Excel.Cells[v_fim+2,4].Font.Size := 8;
        Excel.Cells[v_fim+2,4].Font.Bold := True;
        Excel.cells[v_fim+2,4].HorizontalAlignment := ARight;
        Excel.cells[v_fim+2,1].Borders.LineStyle := 1;

        Excel.Cells.Range['B' + IntToStr(v_fim+2), 'D'+IntToStr(v_fim+2)].Merge;

        Celtitulo(v_fim+3,1,'SALDO', clGray, ACenter, clWhite, 8);
        Excel.Cells.Range['B' + IntToStr(v_fim+3), 'D'+IntToStr(v_fim+3)].Merge;
        Excel.Cells[v_fim+3,2].Font.Size := 8;
        Excel.Cells[v_fim+3,2].Font.Bold := True;
        Excel.cells[v_fim+3,4].HorizontalAlignment := ARight;
        Excel.cells[v_fim+3,1].Borders.LineStyle := 1;
        Excel.Cells[v_fim+3,2].Formula :=  '=$B' + IntToStr(v_fim+1) + '-' + '$B$' + IntToStr(v_fim+2);
        If Not cbProcesso.Checked Then Resumo_loc();
End;

procedure TF_relDebCred.q_ImportAfterScroll(DataSet: TDataSet);
var j: integer;
begin
//     q_import.Open;
      if not cbProcesso.Checked Then begin
     qrContratos.Close;
     qrContratos.Params[0].AsString := vEmp;
     qrContratos.Params[1].AsString := vFil;
     qrContratos.Params[2].AsString := q_ImportCodigo.AsString;
     qrContratos.open;

//     showmessage(vlocinv);
     qrPlanilha.Close;
     End;
 end;

procedure TF_relDebCred.FormActivate(Sender: TObject);
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
end;

procedure TF_relDebCred.BitBtn3Click(Sender: TObject);
begin
     pnlGerando.Visible := False;
     Panel1.Enabled := True;

end;

procedure TF_relDebCred.BitBtn2Click(Sender: TObject);
begin
     q_import.first;
     Excel.Quit;
     Excel := unassigned;
     pnlGerando.Visible := False;
     Panel1.Enabled := True;
     bitbtn1.Enabled := True;

end;

procedure TF_relDebCred.rtPlanilhaChange(Sender: TObject);
begin
     pnlGerando.Refresh;
     Refresh;
end;

procedure TF_relDebCred.qrContratosAfterScroll(DataSet: TDataSet);
begin
     vCon := qrContratosContrato.AsString;
     qrLocais.Close;
     qrLocais.Params[0].AsString := vEmp;
     qrLocais.Params[1].AsString := vFil;
     qrLocais.Params[2].AsString := q_ImportCodigo.AsString;
     qrLocais.Params[3].AsString := vCon;
     qrLocais.Open;
end;

procedure TF_relDebCred.qrLocaisAfterScroll(DataSet: TDataSet);
begin
     vLocInv := qrLocaisLocal.AsString;
     klg:=1;
     klg2:=0;
     klg3:=0;


end;

procedure TF_relDebCred.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action := cafree;
        f_relDebCred := nil;
        f_mscomex.PlanilhaExcelDbitosCrditosporProcesso1.enabled := true;

end;

procedure TF_relDebCred.cbprocessoClick(Sender: TObject);
begin
     If cbProcesso.Checked Then Begin
        cbCli.Enabled := False;
        cbCon.Enabled := False;
        CbLoc.Enabled := False;
        me_dIni.Enabled := False;
        me_dFin.Enabled := False;
     End
     Else Begin
        cbCli.Enabled := True;
        cbCon.Enabled := True;
        CbLoc.Enabled := True;
        me_dIni.Enabled := True;
        me_dFin.Enabled := True;
     End;
end;

Procedure TF_relDebCred.Resumo_Cont();
Begin
     If v_lf = 1 Then Begin
       resumoFim();
       v_lf := 0;
     End;
     Excel.Worksheets['Resumo'].Select;
     v_resumo_aux := v_linha;

     Celtitulo(v_linha+1,1,v_res_aux_cont , RGB(255, 255, 128) , ACenter, clBlack, 8);
     Celtitulo(v_linha,1,'Contrato', RGB(64, 64, 64), ACenter, clWhite, 10);
     Celtitulo(v_linha,2,'Local de Inventário', RGB(64, 64, 64), ACenter, clWhite, 10);
     Celtitulo(v_linha,3,'Total Crédito', RGB(64, 64, 64), ACenter, clWhite, 10);
     Celtitulo(v_linha,4,'Total Débito', RGB(64, 64, 64), ACenter, clWhite, 10);
     Celtitulo(v_linha,5,'Saldo', RGB(64, 64, 64), ACenter, clWhite, 10);

     Excel.Cells.Range['A' + IntToStr(v_linha), 'E'+IntToStr(v_linha)].Borders.LineStyle := 1;
     Excel.Cells.Range['A6', 'E12'].columns.autofit; //:= Excel.Cells.Columns['B'].ColumnWidth + 2;
     Inc(v_linha);

{        Excel.Cells[v_linha,1] := v_res_aux_cont;
        Excel.Cells[v_linha,1].Font.Size := 8;
        Excel.Cells[v_linha,1].Font.Bold := True;
        Excel.Cells[v_linha,1].HorizontalAlignment := ACenter;
}

End;
Procedure TF_relDebCred.Resumo_Loc();

Begin
     Excel.Worksheets['Resumo'].Select;
     Celtitulo(v_linha,1,'' , RGB(255, 255, 128) , ACenter, clBlack, 8);
     If v_Controle = 1 Then Begin
       Resumo_Cont();
       v_controle := 0;
     End;

     Excel.Cells[v_linha,1].Font.Size := 8;

     Celtitulo(v_linha,2,v_res_aux_loc , clSilver, ALeft, clBlack, 8);
     CelResumo(v_linha,2);

     Celtitulo(v_linha,3,'' , clSilver, ARight, clBlack, 8);
     Excel.Cells[v_linha,3].Formula := '=' + '''' + Planilha + '''' + '!' + '$B'+ IntToStr(v_fim+1);
     CelResumo(v_linha,3);

     Celtitulo(v_linha,4,'' , clSilver, ARight, clBlack, 8);
     Excel.Cells[v_linha,4].Formula := '=' + '''' + Planilha + '''' + '!' + '$B'+ IntToStr(v_fim+2);
     CelResumo(v_linha,4);

     Celtitulo(v_linha,5,'' , clSilver, ARight, clBlack, 8);
     Excel.Cells[v_linha,5].Formula := '=' + '''' + Planilha + '''' + '!' + '$B'+ IntToStr(v_fim+3);
     CelResumo(v_linha,5);

     Excel.Cells.Range['A6', 'E12'].columns.autofit;
     Inc(v_linha);
     Excel.Cells.Range['A6', 'A6'].ColumnWidth := 35;
     Excel.Cells.Range['B6', 'B6'].ColumnWidth := 35;

     Excel.Cells.Range['C6', 'C6'].ColumnWidth := 15;
     Excel.Cells.Range['D6', 'D6'].ColumnWidth := 15;
     Excel.Cells.Range['E6', 'E6'].ColumnWidth := 15;
End;

Procedure TF_relDebCred.CelResumo(linha : Integer; Coluna : Integer);
Begin
     Excel.Cells[linha, Coluna].Font.Size := 8;
     Excel.cells[linha, Coluna].Borders.Item[9].LineStyle := 3;
     Excel.cells[linha, Coluna].Borders.Item[7].LineStyle := 1;
     Excel.cells[linha, Coluna].Borders.Item[10].LineStyle := 1;
//   Excel.Worksheets[Planilha].Select;

End;
Procedure TF_relDebCred.ResumoFim();
Var
 axx : Integer;
 axxs : String;
Begin

//     If ((v_resumo_aux+1) = (v_linha-1)) Then v_linha:=v_linha-1;
//     showmessage(inttostr(v_resumo_aux) +' ' +inttostr(v_linha));

     If (dc_vig_ini <> '') Or (dc_vig_fim <> '') Then Begin
       If (dc_vig_ini <> '') And (dc_vig_fim <> '') Then Celtitulo(v_resumo_aux+2{v_linha},1,'Vigência - De: ' + dc_vig_ini + ' até: ' + dc_vig_fim, RGB(255, 255, 128) , ACenter, clBlack, 8)
       Else If (dc_vig_ini <> '') Then Celtitulo(v_resumo_aux+2,1,'Vigência - De: ' + dc_vig_ini , RGB(255, 255, 128) , ACenter, clBlack, 8)
       Else If (dc_vig_fim <> '') Then Celtitulo(v_resumo_aux+2,1,'Vigência - até: ' + dc_vig_fim , RGB(255, 255, 128) , ACenter, clBlack, 8);
     Excel.Cells[v_linha,1].Font.Size := 8;

//     If ((v_resumo_aux+1) > (v_linha-2)) Then v_linha:=v_linha+1;



       If  ((v_resumo_aux+1) > (v_linha-2)) Then Begin
         Excel.Cells[v_linha, 1].Interior.Color := RGB(255, 255, 128);
         For i := 2 To 5 Do CelTrac(i);
         Inc(v_linha);
       End;
     End;
     If data_pror <> '' Then Begin
       Celtitulo(v_linha,1,'Data de Prorrogação: ' + data_pror, RGB(255, 255, 128) , ACenter, clBlack, 8);
       If  ((v_resumo_aux+1) > (v_linha-3)) Then Begin
         Excel.Cells[v_linha, 1].Interior.Color := RGB(255, 255, 128);

         For i := 2 To 5 Do CelTrac(i);

         If (dc_vig_ini <> '') Or (dc_vig_fim <> '') Then
           For i:=2 To 5 Do Begin
              Excel.cells[v_linha, i].Borders.Item[8].LineStyle := 0;
              Excel.cells[v_linha-1, i].Borders.Item[8].LineStyle := 1;
           End;
         Inc(v_linha);
       End;

     End;

     If data_baixa <> '' Then Begin
       Celtitulo(v_linha,1,'Data de Baixa: ' + data_baixa, RGB(255, 255, 128) , ACenter, clBlack, 8);
       If  ((v_resumo_aux+1) > (v_linha-3)) Then Begin
         Excel.Cells[v_linha, 1].Interior.Color := RGB(255, 255, 128);
         For i := 2 To 5 Do CelTrac(i);

         If (dc_vig_ini <> '') Or (dc_vig_fim <> '') Then
           For i:=2 To 5 Do Begin
              Excel.cells[v_linha, i].Borders.Item[8].LineStyle := 0;
              Excel.cells[v_linha-1, i].Borders.Item[8].LineStyle := 1;
           End;
         Inc(v_linha);
       End;

     End;
     Excel.Cells.Range['A' + IntToStr(v_linha), 'E'+IntToStr(v_linha)].Borders.LineStyle := 1;

     Excel.Cells[v_linha, 1].Interior.Color := RGB(255, 255, 128);
     Excel.cells[v_linha, 1].Borders.Item[8].LineStyle := 0;

     For i:=2 To 5 Do Excel.Cells[v_linha, i].Interior.Color := RGB(255, 255, 128);

     Excel.Cells.Range['A' + IntToStr(v_linha), 'E'+IntToStr(v_linha)].Borders.LineStyle := 1;
     Excel.Cells[v_linha, 1].Borders.Item[8].LineStyle := 0;
     Excel.Cells[v_linha, 1].Borders.Item[10].LineStyle := 0;
     axxs := '='; //+ '''' + Planilha + '''' + '!' ;
     For axx := v_resumo_aux+1 To v_linha-1 Do Begin
        axxs := axxs + '+' + '$C'+ IntToStr(axx);
     End;
     Excel.Cells[v_linha, 3].Formula := axxs;
     ttcred := ttcred + '+$C' + inttostr(v_linha);
     Excel.Cells[v_linha, 3].Font.Size := 8;
     Excel.Cells[v_linha, 3].Font.Bold := True;

     axxs := '='; //+ '''' + Planilha + '''' + '!' ;
     For axx := v_resumo_aux+1 To v_linha-1 Do Begin
        axxs := axxs + '+' + '$D'+ IntToStr(axx);
     End;
     Excel.Cells[v_linha, 4].Formula := axxs;
     ttdeb := ttdeb + '+$D' + inttostr(v_linha);
     Excel.Cells[v_linha, 4].Font.Size := 8;
     Excel.Cells[v_linha, 4].Font.Bold := True;

     axxs := '='; //+ '''' + Planilha + '''' + '!' ;
     For axx := v_resumo_aux+1 To v_linha-1 Do Begin
        axxs := axxs + '+' + '$E'+ IntToStr(axx);
     End;
     Excel.Cells[v_linha, 5].Formula := axxs;
     ttsald := ttsald + '+$E' + inttostr(v_linha);
     Excel.Cells[v_linha, 5].Font.Size := 8;
     Excel.Cells[v_linha, 5].Font.Bold := True;

     Inc(v_linha);

     Excel.Cells[v_linha,1].Interior.Color := clWhite;
     For i:=2 To 5 Do Excel.Cells[v_linha,i].Interior.Color := clWhite;

     Inc(v_linha);
End;
Procedure TF_relDebCred.CelTrac(kjh : Integer);
Begin
       Excel.cells[v_linha, kjh].Borders.Item[8].LineStyle := 3;
       Excel.cells[v_linha, kjh].Borders.Item[7].LineStyle := 1;
       Excel.cells[v_linha, kjh].Borders.Item[10].LineStyle := 1;
       Excel.Cells[v_linha, kjh].Interior.Color := clSilver;
       Excel.cells[v_linha, kjh].Interior.Pattern := 16;

End;
end.
