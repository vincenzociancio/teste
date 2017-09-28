unit u_pnlMedicaoHonorarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, DBCtrls, Buttons, Db, DBTables, ExtCtrls, Mask,
  ComObj, jpeg, FileCtrl;

type
  Tf_pnlMedicaoHonorarios = class(TForm)
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Panel1: TPanel;
    b_incluir: TBitBtn;
    b_alterar: TBitBtn;
    b_salvar: TBitBtn;
    b_excluir: TBitBtn;
    b_excel: TBitBtn;
    Label4: TLabel;
    b_incluiritem: TBitBtn;
    DBG_itens: TDBGrid;
    p_itens: TPanel;
    Image1: TImage;
    DataSource1: TDataSource;
    q_Planilha: TQuery;
    q_Itens_Planilha: TQuery;
    DataSource2: TDataSource;
    q_PlanilhaPlanilha: TStringField;
    q_PlanilhaData: TDateTimeField;
    edPlanilha: TEdit;
    q_Aux: TQuery;
    q_PlanilhaSequencial: TIntegerField;
    edData: TMaskEdit;
    Label3: TLabel;
    lblImportador: TLabel;
    edRefMS: TEdit;
    b_cancelar: TBitBtn;
    Label5: TLabel;
    edFiltroPlanilha: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    edFiltroProcesso: TEdit;
    btnAnterior: TButton;
    btnProximo: TButton;
    Label6: TLabel;
    q_PlanilhaCliente: TStringField;
    q_Itens_PlanilhaSequencial: TAutoIncField;
    q_Itens_PlanilhaSequencial_Planilha: TIntegerField;
    q_Itens_PlanilhaProcesso: TStringField;
    q_Itens_PlanilhaRazao_Social: TStringField;
    q_Itens_PlanilhaDi_Pad_Ass_Dse: TStringField;
    q_Itens_PlanilhaTipo_Processo: TStringField;
    q_Itens_PlanilhaHonorario: TFloatField;
    q_Itens_PlanilhaIrrf: TFloatField;
    q_Itens_PlanilhaCsll: TFloatField;
    q_Itens_PlanilhaVlr_Liquido: TFloatField;
    q_Itens_PlanilhaRef_Cliente: TStringField;
    q_importadores: TQuery;
    q_importadoresCodigo: TStringField;
    q_importadoresRazao_Social: TStringField;
    ds_importadores: TDataSource;
    dblcbImportadores: TDBLookupComboBox;
    q_PlanilhaRazao_Social: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure q_PlanilhaAfterScroll(DataSet: TDataSet);
    procedure b_incluirClick(Sender: TObject);
    procedure b_alterarClick(Sender: TObject);
    procedure b_salvarClick(Sender: TObject);
    procedure edRefMSChange(Sender: TObject);
    procedure b_incluiritemClick(Sender: TObject);
    procedure edRefMSKeyPress(Sender: TObject; var Key: Char);
    procedure b_excelClick(Sender: TObject);
    procedure b_excluirClick(Sender: TObject);
    procedure b_cancelarClick(Sender: TObject);
    procedure DBG_itensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure edFiltroPlanilhaChange(Sender: TObject);
    procedure edFiltroProcessoChange(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
  private
    { Private declarations }
    Inclusao  : Boolean;
    Alteracao : Boolean;

    Planilha : array [1..5000] of string;
    QtdPlanilhas : Integer;
    Posicao : Integer;

    procedure LimpaCampos;

    procedure HabilitaCampos(Habilita : Boolean);
    procedure HabilitaBotoes(Habilita : Boolean);

    procedure AtualizaGrid;
    procedure AtualizaGridItens;

    procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);

    procedure BuscaCodigoPlanilha(Proc : String);
  public
    { Public declarations }
  end;

const
  Aleft   = -4131;
  Aright  = -4152;
  ACenter = -4108;

var
  f_pnlMedicaoHonorarios : Tf_pnlMedicaoHonorarios;
  excel : Variant;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_pnlMedicaoHonorarios.FormCreate(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_pnlMedicaoHonorarios.HabilitaCampos(Habilita: Boolean);
begin
  edPlanilha.Enabled        := Habilita;
  dblcbImportadores.Enabled := Habilita;
  edData.Enabled            := Habilita;

  if Habilita
   then edPlanilha.SetFocus;
end;

procedure Tf_pnlMedicaoHonorarios.q_PlanilhaAfterScroll(DataSet: TDataSet);
begin
  if q_Planilha.RecordCount > 0
   then begin
     edPlanilha.Text := q_PlanilhaPlanilha.AsString;

     dblcbImportadores.KeyValue := q_PlanilhaCliente.AsString;

     edData.Text := q_PlanilhaData.AsString;
   end
   else LimpaCampos;

  AtualizaGridItens;
end;

procedure Tf_pnlMedicaoHonorarios.b_incluirClick(Sender: TObject);
begin
  LimpaCampos;

  edData.Text := DateToStr(Date); 

  HabilitaCampos(True);

  Inclusao  := True;
  Alteracao := False;

  b_incluir.Enabled  := False;
  b_alterar.Enabled  := False;
  b_excluir.Enabled  := False;
  b_salvar.Enabled   := True;
  b_cancelar.Enabled := True;
end;

procedure Tf_pnlMedicaoHonorarios.b_alterarClick(Sender: TObject);
begin
  HabilitaCampos(True);

  Inclusao  := False;
  Alteracao := True;

  b_incluir.Enabled  := False;
  b_alterar.Enabled  := False;
  b_excluir.Enabled  := False;
  b_salvar.Enabled   := True;  
  b_cancelar.Enabled := True;
end;

procedure Tf_pnlMedicaoHonorarios.b_salvarClick(Sender: TObject);
begin
  HabilitaCampos(False);

  if Inclusao
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('INSERT INTO Planilha_Medicao_Honorarios (Planilha, Cliente, Data) VALUES (:p0,:p1,:p2) ');
     q_Aux.Params[0].Value := edPlanilha.Text;
     q_Aux.Params[1].Value := dblcbImportadores.KeyValue;
     q_Aux.Params[2].Value := edData.Text;
   end;

  if Alteracao
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('UPDATE Planilha_Medicao_Honorarios SET PLANILHA = :p0, CLIENTE = :p1, DATA = :p2 WHERE SEQUENCIAL = :p3');
     q_Aux.Params[0].Value := edPlanilha.Text;
     q_Aux.Params[1].Value := dblcbImportadores.KeyValue;
     q_Aux.Params[2].Value := edData.Text;
     q_Aux.Params[3].Value := q_PlanilhaSequencial.AsInteger;
   end;

  try
    q_Aux.ExecSQL;
  except
    Application.MessageBox('Erro na gravação dos Dados','Erro',MB_ICONERROR);
    Abort;
  end;

  AtualizaGrid;
  HabilitaBotoes(True);
end;

procedure Tf_pnlMedicaoHonorarios.AtualizaGrid;
begin
  q_importadores.Close;
  q_importadores.Open;

  q_Planilha.Close;
  q_Planilha.Open;
end;

procedure Tf_pnlMedicaoHonorarios.edRefMSChange(Sender: TObject);
begin
  if (Length(edRefMS.Text) = 8)
   then begin
     try
       q_Aux.SQL.Clear;
       q_Aux.SQL.Add(' SELECT I.Razao_Social                        ');
       q_Aux.SQL.Add('   FROM Processos P INNER JOIN Importadores I ');
       q_Aux.SQL.Add('     ON P.Empresa    = I.Empresa AND          ');
       q_Aux.SQL.Add('        P.Filial     = I.Filial  AND          ');
       q_Aux.SQL.Add('        P.Importador = I.Codigo               ');
       q_Aux.SQL.Add('  WHERE P.Codigo = :pRef_MS                   ');
       q_Aux.Params[0].Value := edRefMS.Text;
       q_Aux.Open;

       b_incluiritem.Enabled := q_Aux.RecordCount = 1;

       if q_Aux.RecordCount > 0
        then begin
          lblImportador.Caption := q_Aux.FieldByName('RAZAO_SOCIAL').AsString;
          b_incluiritem.SetFocus;
        end;
     finally
       q_Aux.Close;
     end;
   end
   else begin
     lblImportador.Caption := '';
     b_incluiritem.Enabled := False;
   end;
end;

procedure Tf_pnlMedicaoHonorarios.b_incluiritemClick(Sender: TObject);
begin
  if (q_PlanilhaSequencial.AsString <> '') and ((Length(edRefMS.Text) = 8))
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('INSERT INTO Planilha_Medicao_Honorarios_Itens     ');
     q_Aux.SQL.Add('      (Sequencial_Planilha                        ');
     q_Aux.SQL.Add('      ,Processo                                   ');
     q_Aux.SQL.Add('      ,Ref_Cliente                                ');
     q_Aux.SQL.Add('      ,Di_Pad_Ass_Dse                             ');
     q_Aux.SQL.Add('      ,Tipo_Processo                              ');
     q_Aux.SQL.Add('      ,Honorario                                  ');
     q_Aux.SQL.Add('      ,Irrf                                       ');
     q_Aux.SQL.Add('      ,Csll                                       ');
     q_Aux.SQL.Add('	  ,Vlr_Liquido)                               ');

     q_Aux.SQL.Add('SELECT '+QuotedStr(q_PlanilhaSequencial.AsString)+'       ');
     q_Aux.SQL.Add('       ,P.Codigo                                          ');
     q_Aux.SQL.Add('       ,P.Codigo_Cliente                                  ');
     q_Aux.SQL.Add('       ,P.NR_DECLARACAO_IMP                               ');
     q_Aux.SQL.Add('       ,TP.DESCRICAO                                      ');
     q_Aux.SQL.Add('       ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)   ');
     q_Aux.SQL.Add('       ,(SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''IRRF'' AND Processo = :pREFMS)                  ');
     q_Aux.SQL.Add('       ,(SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''CCP'' AND Processo = :pREFMS)                   ');
     q_Aux.SQL.Add('       ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS) - ');
     q_Aux.SQL.Add('          ((SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''IRRF'' AND Processo = :pREFMS) + ');
     q_Aux.SQL.Add('           (SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''CCP'' AND Processo = :pREFMS))   ');

     q_Aux.SQL.Add('  FROM Processos P INNER JOIN Importadores I ');
     q_Aux.SQL.Add('    ON P.Importador = I.Codigo INNER JOIN Tipos_de_Processos TP ');
     q_Aux.SQL.Add('    ON P.Tipo = TP.CODIGO ');

     q_Aux.SQL.Add(' WHERE P.Codigo = :pREFMS');

     q_Aux.ParamByName('pREFMS').Value := edRefMS.Text;

     try
       q_Aux.ExecSQL;
     except
       Application.MessageBox('Erro na gravação dos Dados','Erro',MB_ICONERROR);
       Abort;
     end;

     AtualizaGridItens;

     edRefMS.Clear;
     edRefMS.SetFocus;
   end;
end;

procedure Tf_pnlMedicaoHonorarios.edRefMSKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key In ['0'..'9','/',#8])
   then Key := #0;
end;

procedure Tf_pnlMedicaoHonorarios.AtualizaGridItens;
begin
  q_Itens_Planilha.Close;

  q_Itens_Planilha.ParamByName('pSeq_Pla').Value := q_PlanilhaSequencial.AsString;
  
  q_Itens_Planilha.Open;
end;

procedure Tf_pnlMedicaoHonorarios.b_excelClick(Sender: TObject);
var
  linha2, col2 : Integer;
  dir_cor, data, data_arq, vespacos : string;
  CorCelula, CorLetra : TColor;
begin
  if Application.MessageBox('Deseja gerar o relatório de Medição ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
   then begin
    if (q_PlanilhaSequencial.AsString <> '')
     then begin
       image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');

       data     := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
       data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);

       System.GetDir(0,dir_cor);
       dir_cor := dir_cor + '\Planilhas_Ms2000';

       if not DirectoryExists(dir_cor)
        then ForceDirectories(dir_cor);

       Excel := CreateOleObject('Excel.Application');
       Excel.Application.DisplayAlerts := False;
       Excel.Visible := false;
       Excel.Workbooks.add(1);

       vespacos := '                                                                                                                                          ';
       vespacos := copy(vespacos+vespacos,1,70);

       Excel.Worksheets[1].Name := 'PLANILHA';
       Excel.WorkSheets['PLANILHA'].Select;
       Excel.WorkSheets['PLANILHA'].Shapes.AddPicture('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);

       Excel.Cells[1,1]           := vespacos + 'FATURAMENTO ' + q_PlanilhaRazao_Social.AsString + ' - DATA: ' + q_PlanilhaData.AsString;
       Excel.Cells[1,1].Font.Size := 14;
       Excel.cells[1,1].Font.Bold := True;
       Excel.cells[1,1].Font.Name := 'Calibri';

       Excel.Cells[2,1]           := vespacos + vespacos + 'PLANILHA DE MEDIÇÃO DE HONORÁRIOS';
       Excel.Cells[2,1].Font.Size := 11;
       Excel.cells[2,1].Font.Bold := True;
       Excel.cells[2,1].Font.Name := 'Calibri';

       Excel.ActiveWindow.DisplayGridlines := True;

       CorCelula := clSilver;
       CorLetra  := clBlack;

       {
       PROCESSO
       REF/CLIENTE
       DI/PAD/ASS/DSE
       TIPO DO PROCESSO
       HONORÁRIOS
       IRRF
       CSLL
       VALOR LÍQUIDO
       }

       linha2 := 5;
       Celtitulo(linha2, 1,'PROCESSO', CorCelula , ACenter, CorLetra, 11, 12);
       Celtitulo(linha2, 2,'REF/CLIENTE', CorCelula , ACenter, CorLetra, 11, 35);
       Celtitulo(linha2, 3,'DI/DTA/PAD/DDE/DSE', CorCelula, ACenter, CorLetra, 11, 35);
       Celtitulo(linha2, 4,'TIPO DO PROCESSO', CorCelula, ACenter, CorLetra, 11, 35);
       Celtitulo(linha2, 5,'HONORÁRIOS(VALOR LÍQUIDO)', CorCelula, ACenter, CorLetra, 11, 35);
       Celtitulo(linha2, 6,'IRRF', CorCelula, ACenter, CorLetra, 11, 25);
       Celtitulo(linha2, 7,'CSLL', CorCelula, ACenter, CorLetra, 11, 25);
       Celtitulo(linha2, 8,'HONORÁRIOS(VALOR BRUTO)', CorCelula, ACenter, CorLetra, 11, 35);
       q_Itens_Planilha.First;

       while not q_Itens_Planilha.eof do
        begin
          linha2 := linha2 + 1;

          Excel.cells[linha2, 1] := '''' + q_Itens_PlanilhaProcesso.asstring;
          Excel.cells[linha2, 1].HorizontalAlignment := ACenter;
          Excel.cells[linha2, 1].Borders.Weight      := 2;
          Excel.cells[linha2, 1].Borders.LineStyle   := 1;

          Excel.cells[linha2, 2] := q_Itens_PlanilhaRef_Cliente.asstring;
          Excel.cells[linha2, 2].HorizontalAlignment := ACenter;
          Excel.cells[linha2, 2].Borders.Weight      := 2;
          Excel.cells[linha2, 2].Borders.LineStyle   := 1;

          Excel.cells[linha2, 3] := q_Itens_PlanilhaDi_Pad_Ass_Dse.AsString;
          Excel.cells[linha2, 3].HorizontalAlignment := ACenter;
          Excel.cells[linha2, 3].Borders.Weight      := 2;
          Excel.cells[linha2, 3].Borders.LineStyle   := 1;

          Excel.cells[linha2, 4] := q_Itens_PlanilhaTipo_Processo.AsString;
          Excel.cells[linha2, 4].HorizontalAlignment := ACenter;
          Excel.cells[linha2, 4].Borders.Weight    := 2;
          Excel.cells[linha2, 4].Borders.LineStyle := 1;

          Excel.cells[linha2, 5] := q_Itens_PlanilhaHonorario.AsFloat;
          Excel.Cells[linha2, 5].NumberFormatLocal := '#.##0,00';
          Excel.cells[linha2, 5].Borders.Weight    := 2;
          Excel.cells[linha2, 5].Borders.LineStyle := 1;

          Excel.cells[linha2, 6] := q_Itens_PlanilhaIrrf.AsFloat;
          Excel.Cells[linha2, 6].NumberFormatLocal := '#.##0,00';
          Excel.cells[linha2, 6].Borders.Weight    := 2;
          Excel.cells[linha2, 6].Borders.LineStyle := 1;

          Excel.cells[linha2, 7] := q_Itens_PlanilhaCsll.AsFloat;
          Excel.Cells[linha2, 7].NumberFormatLocal := '#.##0,00';
          Excel.cells[linha2, 7].Borders.Weight    := 2;
          Excel.cells[linha2, 7].Borders.LineStyle := 1;

          Excel.cells[linha2, 8] := q_Itens_PlanilhaVlr_Liquido.AsFloat;
          Excel.Cells[linha2, 8].NumberFormatLocal := '#.##0,00';
          Excel.cells[linha2, 8].Borders.Weight    := 2;
          Excel.cells[linha2, 8].Borders.LineStyle := 1;

          q_Itens_Planilha.Next;
        end;

       Excel.Range['A6', 'H'+IntToStr(linha2)].Font.Color := clBlack;

       {Totais}

       linha2 := linha2 + 1;

       Excel.cells[linha2, 4] := 'TOTAL';
       Excel.cells[linha2, 4].HorizontalAlignment := ARight;
       Excel.cells[linha2, 4].Font.Size           := 11;
       Excel.cells[linha2, 4].Borders.Weight      := 2;
       Excel.cells[linha2, 4].Borders.LineStyle   := 1;

       Excel.ActiveWindow.DisplayGridlines := True;

       {Valor Total}

       col2 := 5;
       Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
       Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
       Excel.cells[linha2, col2].Borders.Weight    := 2;
       Excel.cells[linha2, col2].Borders.LineStyle := 1;

       col2 := 6;
       Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
       Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
       Excel.cells[linha2, col2].Borders.Weight    := 2;
       Excel.cells[linha2, col2].Borders.LineStyle := 1;

       col2 := 7;
       Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
       Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
       Excel.cells[linha2, col2].Borders.Weight    := 2;
       Excel.cells[linha2, col2].Borders.LineStyle := 1;

       col2 := 8;
       Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
       Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
       Excel.cells[linha2, col2].Borders.Weight    := 2;
       Excel.cells[linha2, col2].Borders.LineStyle := 1;

       Excel.Range['D'+IntToStr(linha2), 'H'+IntToStr(linha2)].interior.Color := clSilver;
       Excel.Range['D'+IntToStr(linha2), 'H'+IntToStr(linha2)].Font.Color     := clBlack;
       Excel.Range['D'+IntToStr(linha2), 'H'+IntToStr(linha2)].Font.Bold      := True;

       Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(q_PlanilhaPlanilha.asstring,'/','_', [rfReplaceAll]) + '.xls');
       Application.ProcessMessages;

       Excel.Quit;
       Excel := unassigned;

       showmessage(v_usuario+', a planilha foi gerada no diretório C:\MS2000\PLANILHAS_MS2000');
     end;
   end;
end;

procedure Tf_pnlMedicaoHonorarios.CelTitulo(linha, Coluna: Integer; CTitulo: String;
  CColor, CAlign, FColor, FSize, COLSize: Integer);
begin
  Excel.cells[linha, coluna]                     := CTitulo;
  Excel.cells[linha, coluna].interior.Color      := CColor;
  Excel.cells[linha, coluna].Font.Name           := 'Calibri';
  Excel.cells[linha, coluna].Font.Color          := FColor;
  Excel.cells[linha, coluna].Font.Size           := FSize;
  Excel.cells[linha, coluna].Font.Bold           := True;
  Excel.cells[linha, coluna].HorizontalAlignment := CAlign;
  Excel.cells[linha, coluna].Borders.Weight      := 2;
  Excel.cells[linha, coluna].Borders.LineStyle   := 1;
  Excel.Columns[coluna].ColumnWidth              := COLSize;
  Excel.cells[linha, coluna].VerticalAlignment   := CAlign;
end;

procedure Tf_pnlMedicaoHonorarios.HabilitaBotoes(Habilita: Boolean);
begin
  b_incluir.Enabled  := Habilita;
  b_alterar.Enabled  := Habilita;
  b_excluir.Enabled  := Habilita;
  b_salvar.Enabled   := not Habilita;
  b_cancelar.Enabled := not Habilita;
end;

procedure Tf_pnlMedicaoHonorarios.b_excluirClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma a exclusão da Planilha ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES 
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('SELECT SEQUENCIAL_PLANILHA FROM Planilha_Medicao_Honorarios_Itens WHERE SEQUENCIAL_PLANILHA = :p0');
     q_Aux.Params[0].Value := q_PlanilhaSequencial.AsInteger;
     q_Aux.Open;

     if q_Aux.RecordCount >= 1
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('DELETE Planilha_Medicao_Honorarios_Itens WHERE SEQUENCIAL_PLANILHA = :p0');
        q_Aux.Params[0].Value := q_PlanilhaSequencial.AsInteger;

        try
         q_Aux.ExecSQL;
        except
         Application.MessageBox('Erro na exclusão dos Dados','Erro',MB_ICONERROR);
         AtualizaGrid;
         Abort;
        end;
      end;

     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('DELETE Planilha_Medicao_Honorarios WHERE SEQUENCIAL = :p0');
     q_Aux.Params[0].Value := q_PlanilhaSequencial.AsInteger;

     try
      q_Aux.ExecSQL;
     except
      Application.MessageBox('Erro na exclusão dos Dados','Erro',MB_ICONERROR);
      AtualizaGrid;
      Abort;
     end;

     LimpaCampos;

     AtualizaGrid;
     AtualizaGridItens;
   end;  
end;

procedure Tf_pnlMedicaoHonorarios.b_cancelarClick(Sender: TObject);
begin
  HabilitaBotoes(True);

  HabilitaCampos(False);
end;

procedure Tf_pnlMedicaoHonorarios.DBG_itensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_delete)
   then begin
     if q_Itens_PlanilhaProcesso.AsString <> ''
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('DELETE FROM Planilha_Medicao_Honorarios_Itens WHERE SEQUENCIAL_PLANILHA =:pSeq_Pla AND SEQUENCIAL =:pSeq AND PROCESSO =:pREFMS');
        q_Aux.ParamByName('pSeq_Pla').Value := q_PlanilhaSequencial.AsString;
        q_Aux.ParamByName('pSeq').Value     := q_Itens_PlanilhaSequencial.AsString;
        q_Aux.ParamByName('pREFMS').Value   := q_Itens_PlanilhaProcesso.AsString;

        try
          q_Aux.ExecSQL;
        except
          Application.MessageBox('Erro na gravação dos Dados','Erro',MB_ICONERROR);
          Abort;
        end;

        AtualizaGridItens;
      end;
   end;
end;

procedure Tf_pnlMedicaoHonorarios.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_pnlMedicaoHonorarios.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_pnlMedicaoHonorarios := nil;
  F_MSCOMEX.PlanilhaExcelPlanilhadeMediodeHonorrios1.Enabled := True;
end;

procedure Tf_pnlMedicaoHonorarios.DBGrid1TitleClick(Column: TColumn);
var
  Indice : Integer;
  Ordem : String;
begin
  if Indice <> Column.Index
   then Ordem := ''
   else begin
     if Length(Ordem) > 0
      then Ordem := ''
      else Ordem := 'ASC';
   end;

  with q_Planilha do
  begin
    close;
    SQL[SQL.Count - 1] := 'ORDER BY ' + Column.FieldName + ' ' + Ordem;
    Open;
  end;

  Indice := Column.Index;
end;

procedure Tf_pnlMedicaoHonorarios.LimpaCampos;
begin
  edPlanilha.Clear;
  dblcbImportadores.KeyValue := '';
  edData.Clear;
end;

procedure Tf_pnlMedicaoHonorarios.edFiltroPlanilhaChange(Sender: TObject);
begin
  q_Planilha.Close;
  q_Planilha.SQL.Clear;
  q_Planilha.SQL.Add('  SELECT PMH.Sequencial, PMH.Planilha, PMH.Cliente, PMH.Data, I.Razao_Social ');
  q_Planilha.SQL.Add('    FROM Planilha_Medicao_Honorarios PMH INNER JOIN Importadores I           ');
  q_Planilha.SQL.Add('      ON PMH.Cliente = I.Codigo                                              ');
  q_Planilha.SQL.Add('   WHERE PLANILHA LIKE ''%'+edFiltroPlanilha.Text +'%''                      ');
  q_Planilha.SQL.Add('  ORDER BY PMH.DATA DESC, PMH.PLANILHA DESC                                  ');
  q_Planilha.Open;
end;

procedure Tf_pnlMedicaoHonorarios.edFiltroProcessoChange(Sender: TObject);
begin
  if Length(edFiltroProcesso.Text) <> 8
   then begin
     btnAnterior.Enabled := False;
     btnProximo.Enabled  := False;
     Exit;
   end;

  BuscaCodigoPlanilha(edFiltroProcesso.Text);

  Posicao := 1;

  if Planilha[Posicao] <> ''
  then begin
    btnProximo.Enabled := QtdPlanilhas > 1;

    q_Planilha.locate('Sequencial',Planilha[Posicao],[]);
  end
  else begin
    MessageDlg('Não há Planilha com este código de Processo!', mtInformation,[mbOk], 0);
    edFiltroProcesso.Clear;
  end;
end;

procedure Tf_pnlMedicaoHonorarios.BuscaCodigoPlanilha(Proc: String);

  procedure LimpaArray;
  var
    i : Integer;
  begin
    for i := 1 to 3000 do
     begin
       Planilha[i] := '';
     end;
  end;

var
  q_Aux2 : TQuery;
  Planilhas : String;
  a : Integer;
begin
  q_Aux2 := TQuery.Create(nil);
  q_Aux2.DatabaseName := 'DBNMSCOMEX';

  try
    Planilhas := '';

    q_Aux2.SQL.Clear;

    if Proc <> ''
     then begin
       q_Aux2.SQL.Add(' SELECT Sequencial_Planilha FROM Planilha_Medicao_Honorarios_Itens WHERE Processo = :p0 ');
       q_Aux2.ParamByName('p0').Value := Proc;
     end;

    q_Aux2.Open;

    LimpaArray;

    QtdPlanilhas := q_Aux2.RecordCount;

    a := 1;

    if q_Aux2.RecordCount > 0
     then begin
       while not q_Aux2.Eof do
        begin
          Planilha[a] := q_Aux2.Fields[0].AsString;

          q_Aux2.Next;

          a := a + 1;
        end;
     end;
  finally
    FreeAndNil(q_Aux2);
  end;
end;

procedure Tf_pnlMedicaoHonorarios.btnProximoClick(Sender: TObject);
begin
  if Posicao <= QtdPlanilhas 
   then begin
     Posicao := Posicao + 1;

     btnAnterior.Enabled := Posicao > 1;
     btnProximo.Enabled  := not(Posicao = QtdPlanilhas);

     q_Planilha.locate('Sequencial',Planilha[Posicao],[]);
   end;
end;

procedure Tf_pnlMedicaoHonorarios.btnAnteriorClick(Sender: TObject);
begin
  if Posicao <= QtdPlanilhas 
   then begin
     Posicao := Posicao + 1;

     btnAnterior.Enabled := Posicao > 1;
     btnProximo.Enabled  := not(Posicao = QtdPlanilhas);

     q_Planilha.locate('Sequencial',Planilha[Posicao],[]);
   end;
end;

end.

