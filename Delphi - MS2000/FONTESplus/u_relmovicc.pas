unit u_relmovicc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, ExtCtrls, Db, DBTables, jpeg, ComObj, FileCtrl;

type
  Tf_relmovicc = class(TForm)
    p_extrato: TPanel;
    Panel5: TPanel;
    Label30: TLabel;
    dbGrdCC: TDBGrid;
    cbCC: TCheckBox;
    Panel15: TPanel;
    Q_extrato: TQuery;
    Label1: TLabel;
    dbGrdImport: TDBGrid;
    cbImport: TCheckBox;
    qrImport: TQuery;
    dsImport: TDataSource;
    qrCC: TQuery;
    qrCCCodigo: TAutoIncField;
    qrCCDescricao: TStringField;
    dsCC: TDataSource;
    qrLancamentos: TQuery;
    dsLancamento: TDataSource;
    GroupBox1: TGroupBox;
    Label33: TLabel;
    me_dataini: TMaskEdit;
    me_datafin: TMaskEdit;
    Label34: TLabel;
    Label35: TLabel;
    dbGrdLancamentos: TDBGrid;
    cbLancamentos: TCheckBox;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    q_up01: TQuery;
    q_up02: TQuery;
    q_up03: TQuery;
    Q_extratoQREG: TAutoIncField;
    Q_extratoUsuario: TStringField;
    Q_extratoData: TDateTimeField;
    Q_extratocontacorrente: TStringField;
    Q_extratoCodigo_mov: TIntegerField;
    Q_extratoEmpresa: TStringField;
    Q_extratoTipo: TStringField;
    Q_extratoDoc: TStringField;
    Q_extratoHistorico: TStringField;
    Q_extratoValor: TFloatField;
    Q_extratoD_Data: TDateTimeField;
    Q_extratoD_REG: TIntegerField;
    Q_extratoD_Processo: TStringField;
    Q_extratoD_Historico: TStringField;
    Q_extratoD_Detalhe: TStringField;
    Q_extratoD_Valor: TFloatField;
    Image1: TImage;
    q_up00: TQuery;
    cb_desmembra: TCheckBox;
    cb_cred: TCheckBox;
    cb_deb: TCheckBox;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    qrLancamentosCodigo: TAutoIncField;
    qrLancamentosDescricao: TStringField;
    qrLancamentosPositivo: TIntegerField;
    procedure btnImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbImportClick(Sender: TObject);
    procedure cbCCClick(Sender: TObject);
    procedure cbLancamentosClick(Sender: TObject);
    Procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);
    Procedure CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);
    
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
     vCodAPL = 'MOVCC';
     AL_DIREITA = -4152;
     AL_ESQUERDA = -4131;
     AL_CENTRO = -4108;
     Aleft = -4131;
     Aright = -4152;
     ACenter = -4108;

var
  f_relmovicc: Tf_relmovicc;

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

uses U_MSCOMEX, u_qrRelMoviCC, u_qrRelMoviCCImport;

{$R *.DFM}

procedure Tf_relmovicc.btnImprimirClick(Sender: TObject);
var data, data_arq, vTRS,vespacos,qdata: String;
linha2,qreg,qfonte,qlinhasoma,QMOV,qlinhaMOV:integer;
qsaldo:real;
ok:boolean;

begin
     If me_dataini.Text = '  /  /    ' Then Begin
        MessageDlg('Informe o Período de Extrato!', mtWarning, [mbOk], 0);
        me_dataini.SetFocus;
        Exit;
     End;

     If me_datafin.Text = '  /  /    ' Then Begin
        MessageDlg('Informe o Período de Extrato!', mtWarning, [mbOk], 0);
        me_datafin.SetFocus;
        Exit;
     End;

     q_up00.Params[0].asstring := v_usuario;

     q_up01.Params[0].asstring := v_usuario;
     q_up01.Params[1].AsDateTime := strtodate(me_dataini.Text);
     q_up01.Params[2].AsDateTime := strtodate(me_datafin.Text);
     q_up01.Params[3].asstring := '%';
     q_up01.Params[4].asstring := '%';
     q_up01.Params[5].asstring := '%';

     q_up02.Params[0].asstring := v_usuario;
     q_up02.Params[1].AsDateTime := strtodate(me_dataini.Text);
     q_up02.Params[2].AsDateTime := strtodate(me_datafin.Text);
     q_up02.Params[3].asstring := '%';
     q_up02.Params[4].asstring := '%';
     q_up02.Params[5].asstring := '%';

     q_up03.Params[0].asstring := v_usuario;
     q_up03.Params[1].AsDateTime := strtodate(me_dataini.Text);
     q_up03.Params[2].AsDateTime := strtodate(me_datafin.Text);
     q_up03.Params[3].asstring := '%';
     q_up03.Params[4].asstring := '%';
     q_up03.Params[5].asstring := '%';


     If not cbImport.Checked Then Begin
          q_up01.Params[5].asstring := qrImportCodigo.AsString;
          q_up02.Params[5].asstring := qrImportCodigo.AsString;
          q_up03.Params[5].asstring := qrImportCodigo.AsString;
     End;

     If not cbCC.Checked Then Begin
          q_up01.Params[3].asstring := qrCCCodigo.Asstring;
          q_up02.Params[3].asstring := qrCCCodigo.Asstring;
          q_up03.Params[3].asstring := qrCCCodigo.Asstring;
     End;

     If not cbLancamentos.Checked Then Begin
          q_up01.Params[4].asstring := qrLancamentosCodigo.Asstring;
          q_up02.Params[4].asstring := qrLancamentosCodigo.Asstring;
          q_up03.Params[4].asstring := qrLancamentosCodigo.Asstring;
     End;

     q_up00.ExecSQL;
     q_up01.ExecSQL;

     If cb_desmembra.Checked Then Begin
        q_up02.ExecSQL;
        q_up03.ExecSQL;
     end;
     vespacos := '                                                                                                                                          ';
     vespacos := copy(vespacos,1,50);

     vnome_planilha := 'MOVCC - '+FormatDateTime('ddmmyyyy', Now)+' - '+FormatDateTime('hhnn', Now);

    {$I-}
     image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
     data := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
     data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);
///     nome_arq := q_ImportCNPJ_CPF_COMPLETO.AsString;

     System.GetDir(0,dir_cor);
     dir_cor := dir_cor + '\Planilhas_Ms2000';

     MkDir(dir_cor);

     Excel:=CreateOleObject('Excel.Application');
     Excel.Application.DisplayAlerts := False;
     Excel.Visible := true;
     excel.Workbooks.add(1);

     Excel.Worksheets[1].Name := 'MOVCC';
     Excel.WorkSheets['MOVCC'].Select;
     Excel.WorkSheets['MOVCC'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);
     Excel.Cells[1,1] := vespacos+v_empresanome;
     Excel.Cells[1,1].Font.Size := 12;
     Excel.cells[1,1].Font.Bold := True;

     Excel.Cells[2,1] := vespacos+'PLANILHA DE MOVIMENTAÇÕES EM CONTAS CORRENTES';
     Excel.Cells[3,1] := vespacos+'Período: '+me_dataini.text+' até ' +me_datafin.text ;

     Excel.Cells[5,1] := vespacos+'Data da Planilha: ' + data;
     If cb_desmembra.Checked Then Begin
     Celtitulo(5, 8,'DESMEMBRAMENTOS', clSilver	, ACenter, clWhite, 8, 10);
     Excel.Cells.Range['H5','M5'].Merge;
     end;
     Excel.ActiveWindow.DisplayGridlines := FALSE;

     linha2:=6;

     Celtitulo(linha2, 1,'Data', clNavy, ACenter, clWhite, 8, 10);
     Celtitulo(linha2, 2,'Conta Corrente', clNavy, ACenter, clWhite, 8, 20);
     Celtitulo(linha2, 3,'Empresa', clNavy, ACenter, clWhite, 8, 20);
     Celtitulo(linha2, 4,'Tipo', clNavy, ACenter, clWhite, 8, 15);
     Celtitulo(linha2, 5,'Doc', clNavy, ACenter, clWhite, 8, 10);
     Celtitulo(linha2, 6,'Histórico', clNavy, ACenter, clWhite, 8, 30);
     Celtitulo(linha2, 7,'Valor', clNavy, ACenter, clWhite, 8, 10);
     If cb_desmembra.Checked Then Begin
     Celtitulo(linha2, 8,'Data', clNavy, ACenter, clWhite, 8, 10);
     Celtitulo(linha2, 9,'Processo', clNavy, ACenter, clWhite, 8, 10);
     Celtitulo(linha2,10,'Histórico', clNavy, ACenter, clWhite, 8, 30);
     Celtitulo(linha2,11,'Detalhe', clNavy, ACenter, clWhite, 8, 30);
     Celtitulo(linha2,12,'Valor', clNavy, ACenter, clWhite, 8, 10);
     Celtitulo(linha2,13,'Saldo', clNavy, ACenter, clWhite, 8, 10);
     end;


     q_extrato.Params[0].asstring := v_usuario;
     q_extrato.open;

     qreg := 0;
     qdata := q_extratodata.asstring;
     QMOV  := q_extratocodigo_mov.asinteger;
     qsaldo := q_extratovalor.asfloat;
     qlinhaSoma := 7;
     qlinhaMOV := 7;
     while (not q_extrato.eof) and (qreg<100) do begin

           ok := false;

           If (cb_cred.Checked) and  ((q_extratovalor.asfloat>0) or (q_extratod_valor.asfloat>0)) Then ok := true;

           If (cb_deb.Checked) and  ((q_extratovalor.asfloat<0) or (q_extratod_valor.asfloat<0)) Then ok := true;

           if ok then begin

           //qreg := qreg+1;
           linha2  := linha2+1;
{           if qdata <> q_extratodata.asstring then begin
              Celtitulo(linha2, 1,'Sub Total '+qdata, clNavy, ACenter, clWhite, 10, 10);
              Excel.Cells.Range['A'+INTTOSTR(LINHA2),'E'+INTTOSTR(LINHA2)].Merge;
              Celtitulo(linha2, 6,  floattostrf(0,fffixed,15,2), clNavy, ARight, clWhite, 10, 10);
              Excel.Cells[linha2, 6].NumberFormatLocal  := 0;
              Excel.Cells[linha2, 6].FormulaR1C1Local  := '=SOMA(L'+IntToStr(qlinhasoma)+'C7:L'+IntToStr(linha2-1)+'C7)';
              Excel.Cells[linha2, 6].NumberFormatLocal := '#.##0,00';
              Celtitulo(linha2, 7,'', clNavy, ACenter, clWhite, 10, 10);
              If cb_desmembra.Checked Then Begin
              Celtitulo(linha2, 7,'', clNavy, ACenter, clWhite, 10, 10);
              Excel.Cells.Range['G'+INTTOSTR(LINHA2),'L'+INTTOSTR(LINHA2)].Merge;
              END;

              qdata := q_extratodata.asstring;
              linha2  := linha2+1;
              qlinhasoma := linha2;
           end
           else begin
           end;
}
           if qmov <> q_extratocodigo_mov.asinteger then begin
              If cb_desmembra.Checked Then Begin
                CelDetalhe(linha2-1,13,floattostrf(0,fffixed,15,2), clSilver, Aright, qfonte, 8, 10);
                Excel.Cells[linha2-1, 13] := qsaldo;
                Excel.Cells[linha2-1,13].NumberFormatLocal  := '#.##0,00';
                Excel.cells[linha2-1, 13].Font.Bold := True;
//                Excel.Cells.Range['A'+IntToStr(qlinhaMOV), 'M'+IntToStr(linha2-1)].Borders.LineStyle := 0;
//                Excel.Cells.Range['A'+IntToStr(qlinhaMOV), 'M'+IntToStr(linha2-1)].Borders.Weight := 3;
              END;

              qmov := q_extratocodigo_mov.asinteger;
              qsaldo := q_extratovalor.asfloat;
              qlinhaMOV := linha2;
           end
           else begin
           qsaldo := qsaldo-q_extratod_valor.asfloat;

           end;



           qfonte := clNavy;
           if (q_extratovalor.asfloat<0) or (q_extratod_valor.asfloat<0) then  qfonte := clMaroon;
           CelDetalhe(linha2, 1,''''+q_extratoData.asstring, clWhite, ALEFT, qfonte, 8, 10);
           CelDetalhe(linha2, 2,q_extratocontacorrente.asstring, clWhite, ALEFT, qfonte, 8, 20);
           CelDetalhe(linha2, 3,q_extratoempresa.asstring, clWhite, ALEFT, qfonte, 8, 20);
           CelDetalhe(linha2, 4,q_extratotipo.asstring, clWhite, ALEFT, qfonte, 8, 15);
           CelDetalhe(linha2, 5,q_extratodoc.asstring, clWhite, ALEFT, qfonte, 8, 10);
           CelDetalhe(linha2, 6,q_extratohistorico.asstring, clWhite, ALEFT, qfonte, 8, 30);
           CelDetalhe(linha2, 7,floattostrf(q_extratovalor.asfloat,fffixed,15,2), clWhite, Aright, qfonte, 8, 10);
           Excel.Cells[linha2, 7] := q_extratovalor.asfloat;
           Excel.Cells[linha2, 7].NumberFormatLocal  := '#.##0,00';

           If cb_desmembra.Checked Then Begin
           CelDetalhe(linha2, 8,''''+q_extratod_Data.asstring, clSilver, ALEFT, qfonte, 8, 10);
           CelDetalhe(linha2, 9,''''+q_extratod_processo.asstring, clSilver, ALEFT, qfonte, 8, 10);
           CelDetalhe(linha2,10,q_extratod_historico.asstring, clSilver, ALEFT, qfonte, 8, 30);
           CelDetalhe(linha2,11,q_extratod_detalhe.asstring, clSilver, ALEFT, qfonte, 8, 30);
           CelDetalhe(linha2,12,floattostrf(q_extratod_valor.asfloat,fffixed,15,2), clSilver, Aright, qfonte, 8, 10);
           Excel.Cells[linha2, 12] := q_extratod_valor.asfloat;
           Excel.Cells[linha2,12].NumberFormatLocal  := '#.##0,00';
           CelDetalhe(linha2, 13,' ', clSilver, ALEFT, qfonte, 8, 10);

           end;
           end;

           q_extrato.Next;
     end;
     q_extrato.Close;
     linha2  := linha2+1;

              If cb_desmembra.Checked Then Begin
                CelDetalhe(linha2-1,13,floattostrf(0,fffixed,15,2), clSilver, Aright, qfonte, 8, 10);
                Excel.Cells[linha2-1, 13] := qsaldo;
                Excel.Cells[linha2-1,13].NumberFormatLocal  := '#.##0,00';
                Excel.cells[linha2-1, 13].Font.Bold := True;
  //              Excel.Cells.Range['A'+IntToStr(qlinhaMOV), 'M'+IntToStr(linha2-1)].Borders.LineStyle := 1;
//                Excel.Cells.Range['A'+IntToStr(qlinhaMOV), 'M'+IntToStr(linha2-1)].Borders.Weight := 3;

              END;




{              Celtitulo(linha2, 1,'Sub Total '+qdata, clNavy, ACenter, clWhite, 10, 10);
              Excel.Cells.Range['A'+INTTOSTR(LINHA2),'E'+INTTOSTR(LINHA2)].Merge;
              Celtitulo(linha2, 6,  floattostrf(0,fffixed,15,2), clNavy, ARight, clWhite, 10, 10);
              Excel.Cells[linha2, 6].NumberFormatLocal  := 0;
              Excel.Cells[linha2, 6].FormulaR1C1Local  := '=SOMA(L'+IntToStr(qlinhasoma)+'C7:L'+IntToStr(linha2-1)+'C7)';
              Excel.Cells[linha2, 6].NumberFormatLocal := '#.##0,00';
              Celtitulo(linha2, 7,'', clNavy, ACenter, clWhite, 10, 10);
              If cb_desmembra.Checked Then Begin
              Celtitulo(linha2, 7,'', clNavy, ACenter, clWhite, 10, 10);
              Excel.Cells.Range['G'+INTTOSTR(LINHA2),'L'+INTTOSTR(LINHA2)].Merge;
              END;

              qdata := q_extratodata.asstring;
              linha2  := linha2+1;
              qlinhasoma := linha2;

     Celtitulo(linha2, 1,'TOTAL', clNavy, ACenter, clWhite, 10, 10);
     Excel.Cells.Range['A'+INTTOSTR(LINHA2),'F'+INTTOSTR(LINHA2)].Merge;
     Celtitulo(linha2, 7,  floattostrf(0,fffixed,15,2), clNavy, ARight, clWhite, 10, 10);
     Excel.Cells[linha2, 7].NumberFormatLocal  := 0;
     Excel.Cells[linha2, 7].FormulaR1C1Local  := '=SOMA(L7C7:L'+IntToStr(linha2-1)+'C7)';
     Excel.Cells[linha2, 7].NumberFormatLocal := '#.##0,00';
     If cb_desmembra.Checked Then Begin
     Celtitulo(linha2, 8,' ', clNavy, ACenter, clWhite, 10, 10);
     Excel.Cells.Range['H'+INTTOSTR(LINHA2),'L'+INTTOSTR(LINHA2)].Merge;
     END;
 }


     //Excel.WorkBooks[1].Save;
     Excel.Workbooks[1].SaveAs(dir_cor + '\' + vnome_planilha );
     Application.ProcessMessages;

     Excel.Quit;
     Excel := unassigned;


     showmessage(v_usuario+', a planilha foi gerada com sucesso no diretório: '+ dir_cor + '\' + vnome_planilha+'.xls');

     q_extrato.Close;

end;

procedure Tf_relmovicc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   //  F_MSCOMEX.MovimentaesemContaCorrente1.Enabled := True;
     f_relmovicc := Nil;
     Action := caFree;
end;

procedure Tf_relmovicc.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


     {h := Height;
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
     width := w;}
end;

procedure Tf_relmovicc.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_relmovicc.FormCreate(Sender: TObject);
begin

     With qrImport Do Begin
         Params[0].AsString := v_empresa;
         Params[1].AsString := v_filial;
         Open;
     End;
     With qrCC Do Begin
         Params[0].AsString := v_empresa;
         Params[1].AsString := v_filial;
         Open;
     End;

     qrLancamentos.Open;


end;

procedure Tf_relmovicc.cbImportClick(Sender: TObject);
begin
     If cbImport.Checked Then
        dbGrdImport.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit]
     Else
        dbGrdImport.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
end;

procedure Tf_relmovicc.cbCCClick(Sender: TObject);
begin
     If cbCC.Checked Then
        dbGrdCC.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit]
     Else
        dbGrdCC.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
end;

procedure Tf_relmovicc.cbLancamentosClick(Sender: TObject);
begin
     If cbLancamentos.Checked Then
        dbGrdLancamentos.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit]
     Else
        dbGrdLancamentos.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
end;


Procedure Tf_relmovicc.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
           Excel.cells[linha, coluna] := CTitulo;
           Excel.cells[linha, coluna].interior.Color := CColor;
           Excel.cells[linha, coluna].Font.Color := FColor;
           Excel.cells[linha, coluna].Font.Size := FSize;
           Excel.cells[linha, coluna].Font.Bold := True;
           Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
   //        Excel.cells[linha, coluna].Borders.Weight := 2;
    //       Excel.cells[linha, coluna].Borders.LineStyle := 1;
//           Excel.rows[linha].RowHeight := 100;
           Excel.Columns[coluna].ColumnWidth := COLSize;
    //       Excel.cells[linha, coluna].VerticalAlignment := CAlign;

End;


Procedure Tf_relmovicc.CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
           Excel.cells[linha, coluna] := CTitulo;
           Excel.cells[linha, coluna].interior.Color := CColor;
           Excel.cells[linha, coluna].Font.Color := FColor;
           Excel.cells[linha, coluna].Font.Size := FSize;

           Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
           Excel.cells[linha, coluna].Borders.Weight := 2;
           Excel.cells[linha, coluna].Borders.LineStyle := 1;
//           Excel.rows[linha].RowHeight := 100;
           Excel.Columns[coluna].ColumnWidth := COLSize;
    //       Excel.cells[linha, coluna].VerticalAlignment := CAlign;

End;


end.
