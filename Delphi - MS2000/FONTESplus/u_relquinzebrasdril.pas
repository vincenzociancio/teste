unit u_relquinzebrasdril;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, DBCtrls, Buttons, Db, DBTables, ExtCtrls, Mask,
  ComObj, jpeg, FileCtrl;

type
  Tf_relquinzebrasdril = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    b_incluir: TBitBtn;
    b_alterar: TBitBtn;
    b_salvar: TBitBtn;
    b_excluir: TBitBtn;
    b_excel: TBitBtn;
    b_cancelar: TBitBtn;
    edPlanilha: TEdit;
    edData: TMaskEdit;
    p_itens: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    lblImportador: TLabel;
    Label5: TLabel;
    b_incluiritem: TBitBtn;
    DBG_itens: TDBGrid;
    edRefMS: TEdit;
    DataSource1: TDataSource;
    q_Planilha: TQuery;
    q_PlanilhaSequencial: TIntegerField;
    q_PlanilhaPlanilha: TStringField;
    q_PlanilhaData: TDateTimeField;
    q_Aux: TQuery;
    q_Itens_Planilha: TQuery;
    q_Itens_PlanilhaSequencial: TIntegerField;
    q_Itens_PlanilhaSequencial_Planilha: TIntegerField;
    q_Itens_PlanilhaProcesso: TStringField;
    q_Itens_PlanilhaHonorarios: TFloatField;
    q_Itens_PlanilhaIr: TFloatField;
    q_Itens_PlanilhaCofins: TFloatField;
    q_Itens_PlanilhaVlr_Liquido: TFloatField;
    q_Itens_PlanilhaEmbarcacao: TStringField;
    DataSource2: TDataSource;
    Image1: TImage;
    Label8: TLabel;
    edFiltroPlanilha: TEdit;
    edFiltroProcesso: TEdit;
    Label7: TLabel;
    btnAnterior: TButton;
    btnProximo: TButton;
    procedure FormActivate(Sender: TObject);
    procedure b_incluirClick(Sender: TObject);
    procedure b_alterarClick(Sender: TObject);
    procedure b_cancelarClick(Sender: TObject);
    procedure edRefMSChange(Sender: TObject);
    procedure b_incluiritemClick(Sender: TObject);
    procedure b_salvarClick(Sender: TObject);
    procedure b_excluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure q_PlanilhaAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_itensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure b_excelClick(Sender: TObject);
    procedure edFiltroPlanilhaChange(Sender: TObject);
    procedure edFiltroProcessoChange(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
  private
    { Private declarations }
    { Private declarations }
    Inclusao  : Boolean;
    Alteracao : Boolean;

    Planilha : array [1..3000] of string;
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
  f_relquinzebrasdril: Tf_relquinzebrasdril;
  excel : Variant;

implementation

uses u_pnlPrestContasFinanc, U_MSCOMEX;

{$R *.DFM}

procedure Tf_relquinzebrasdril.AtualizaGrid;
begin
  q_Planilha.Close;
  q_Planilha.Open;
end;

procedure Tf_relquinzebrasdril.AtualizaGridItens;
begin
  q_Itens_Planilha.Close;

  q_Itens_Planilha.ParamByName('pSeq_Pla').Value := q_PlanilhaSequencial.AsString;
  
  q_Itens_Planilha.Open;
end;

procedure Tf_relquinzebrasdril.CelTitulo(linha, Coluna: Integer;
  CTitulo: String; CColor, CAlign, FColor, FSize, COLSize: Integer);
begin
  Excel.cells[linha, coluna]                     := CTitulo;
  Excel.cells[linha, coluna].interior.Color      := CColor;
  Excel.cells[linha, coluna].Font.Name           := 'Comic Sans MS';
  Excel.cells[linha, coluna].Font.Color          := FColor;
  Excel.cells[linha, coluna].Font.Size           := FSize;
  Excel.cells[linha, coluna].Font.Bold           := True;
  Excel.cells[linha, coluna].HorizontalAlignment := CAlign;
  Excel.cells[linha, coluna].Borders.Weight      := 2;
  Excel.cells[linha, coluna].Borders.LineStyle   := 1;
  Excel.Columns[coluna].ColumnWidth              := COLSize;
  Excel.cells[linha, coluna].VerticalAlignment   := CAlign;
end;

procedure Tf_relquinzebrasdril.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_relquinzebrasdril.HabilitaBotoes(Habilita: Boolean);
begin
  b_incluir.Enabled  := Habilita;
  b_alterar.Enabled  := Habilita;
  b_excluir.Enabled  := Habilita;
  b_salvar.Enabled   := not Habilita;
  b_cancelar.Enabled := not Habilita;
end;

procedure Tf_relquinzebrasdril.HabilitaCampos(Habilita: Boolean);
begin
  edPlanilha.Enabled  := Habilita;
  edData.Enabled      := Habilita;

  if Habilita
   then edPlanilha.SetFocus;
end;

procedure Tf_relquinzebrasdril.LimpaCampos;
begin
  edPlanilha.Clear;
  edData.Clear;
end;

procedure Tf_relquinzebrasdril.b_incluirClick(Sender: TObject);
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

procedure Tf_relquinzebrasdril.b_alterarClick(Sender: TObject);
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

procedure Tf_relquinzebrasdril.b_cancelarClick(Sender: TObject);
begin
  HabilitaBotoes(True);

  HabilitaCampos(False);

  LimpaCampos;
end;

procedure Tf_relquinzebrasdril.edRefMSChange(Sender: TObject);
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
       q_Aux.SQL.Add('  WHERE P.Importador IN (''252'',''265'')     ');

       q_Aux.SQL.Add('    AND P.Codigo = :pRef_MS                   ');
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

procedure Tf_relquinzebrasdril.b_incluiritemClick(Sender: TObject);
begin
  if q_PlanilhaSequencial.AsString <> ''
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('INSERT INTO Planilha_Brasdril_Quinzenal_Financeiro_Itens ');
     q_Aux.SQL.Add('      (Sequencial_Planilha                               ');
     q_Aux.SQL.Add('      ,Processo                                          ');
     q_Aux.SQL.Add('      ,Honorarios                                        ');
     q_Aux.SQL.Add('      ,IR                                                ');
     q_Aux.SQL.Add('      ,COfins                                            ');
     q_Aux.SQL.Add('      ,Vlr_Liquido                                       ');
     q_Aux.SQL.Add('      ,Embarcacao)                                       ');

     q_Aux.SQL.Add('SELECT '+QuotedStr(q_PlanilhaSequencial.AsString)+' ');
     q_Aux.SQL.Add('       ,Processos.Codigo AS CODIGO ');
     q_Aux.SQL.Add('       ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''HONO'' OR Numerario = ''ISS'') AND Processo = :pREFMS) AS Honorarios ');
     q_Aux.SQL.Add('       ,(SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''IRRF'' AND Processo = :pREFMS) AS Ir                                                 ');
     q_Aux.SQL.Add('       ,(SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''CCP'' AND Processo = :pREFMS) AS Cofins                                              ');
     q_Aux.SQL.Add('       ,(SELECT ISNULL(SUM(Valor_Registrado),0) FROM Numerarios_Processos WHERE (Numerario = ''HONO'' OR Numerario = ''ISS'') AND Processo = :pREFMS) -   ');
     q_Aux.SQL.Add('        (SELECT ISNULL(SUM(Valor),0) FROM Creditos_Processos WHERE (Credito = ''IRRF'' OR Credito = ''CCP'') AND Processo = :pREFMS) AS Vlr_Liquido       ');
     q_Aux.SQL.Add('       ,Locais_Inventario.Descricao as Embarcacao                                                                                                         ');
     q_Aux.SQL.Add('  FROM Processos LEFT JOIN Locais_Inventario                                                                                                              ');
     q_Aux.SQL.Add('    ON Processos.Importador       = Locais_Inventario.Importador AND                                                                                      ');
     q_Aux.SQL.Add('       Processos.Local_Inventario = Locais_Inventario.Local                                                                                               ');
     q_Aux.SQL.Add('WHERE Processos.Codigo = :pREFMS                                                                                                                          ');

     q_Aux.ParamByName('pREFMS').Value := edRefMS.Text;

     //q_Aux.SQL.SaveToFile('c:\TESTE.TXT');

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

procedure Tf_relquinzebrasdril.b_salvarClick(Sender: TObject);
var
  SequenciaNova : Integer;
begin
  HabilitaCampos(False);

  if Inclusao
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('INSERT INTO Planilha_Brasdril_Quinzenal_Financeiro VALUES (:p0,:p1)');
     q_Aux.Params[0].Value := edPlanilha.Text;
     q_Aux.Params[1].Value := edData.Text;
   end;

  if Alteracao
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('UPDATE Planilha_Brasdril_Quinzenal_Financeiro SET PLANILHA = :p0, DATA = :p1 WHERE SEQUENCIAL = :p2');
     q_Aux.Params[0].Value := edPlanilha.Text;
     q_Aux.Params[1].Value := edData.Text;
     q_Aux.Params[2].Value := q_PlanilhaSequencial.AsInteger;
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

procedure Tf_relquinzebrasdril.b_excluirClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma a exclusão da Planilha ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES 
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('SELECT SEQUENCIAL_PLANILHA FROM Planilha_Brasdril_Quinzenal_Financeiro_Itens WHERE SEQUENCIAL_PLANILHA = :p0');
     q_Aux.Params[0].Value := q_PlanilhaSequencial.AsInteger;
     q_Aux.Open;

     if q_Aux.RecordCount >= 1
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('DELETE Planilha_Brasdril_Quinzenal_Financeiro_Itens WHERE SEQUENCIAL_PLANILHA = :p0');
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
     q_Aux.SQL.Add('DELETE Planilha_Brasdril_Quinzenal_Financeiro WHERE SEQUENCIAL = :p0');
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

procedure Tf_relquinzebrasdril.FormCreate(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_relquinzebrasdril.q_PlanilhaAfterScroll(DataSet: TDataSet);
begin
  if q_Planilha.RecordCount > 0
   then begin
     edPlanilha.Text := q_PlanilhaPlanilha.AsString;
     edData.Text     := q_PlanilhaData.AsString;
   end
   else LimpaCampos;

  AtualizaGridItens;
end;

procedure Tf_relquinzebrasdril.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_relquinzebrasdril := nil;
  F_MSCOMEX.PlanilhaExcelRelatrioQuinzenalBrasdril1.Enabled := True;
end;

procedure Tf_relquinzebrasdril.DBG_itensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_delete)
   then begin
     if q_Itens_PlanilhaProcesso.AsString <> ''
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('DELETE FROM Planilha_Brasdril_Quinzenal_Financeiro_Itens WHERE SEQUENCIAL_PLANILHA =:pSeq_Pla AND SEQUENCIAL =:pSeq AND PROCESSO =:pREFMS');
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

procedure Tf_relquinzebrasdril.b_excelClick(Sender: TObject);
var
  linha2, col2 : Integer;
  dir_cor, data, data_arq, vespacos : string;
  CorCelula, CorLetra : TColor;
begin
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

     Excel.Cells[1,1] := vespacos + 'BRASDRIL SOCIEDADE DE PERFURAÇÕES LTDA';

     Excel.Cells[1,1].Font.Size := 10;
     Excel.cells[1,1].Font.Bold := True;

     Excel.Cells[3,1]           := vespacos + 'RELATÓRIO QUINZENAL - ' + q_PlanilhaPlanilha.AsString + ' - DATA: ' + q_PlanilhaData.AsString;
     Excel.Cells[3,1].Font.Size := 16;
     Excel.cells[3,1].Font.Bold := True;

     Excel.ActiveWindow.DisplayGridlines := True;

     CorCelula := clTeal;
     CorLetra  := clWhite;

     linha2 := 5;
     Celtitulo(linha2, 1,'REF/MS', CorCelula , ACenter, CorLetra, 8, 9);
     Celtitulo(linha2, 2,'HONORÁRIOS', CorCelula, ACenter, CorLetra, 8, 14);
     Celtitulo(linha2, 3,'IR', CorCelula, ACenter, CorLetra, 8, 8);
     Celtitulo(linha2, 4,'COFINS', CorCelula, ACenter, CorLetra, 8, 8);
     Celtitulo(linha2, 5,'VALOR LÍQUIDO', CorCelula, ACenter, CorLetra, 8, 16);
     Celtitulo(linha2, 6,'EMBARCAÇÃO', CorCelula, ACenter, CorLetra, 8, 24);

     q_Itens_Planilha.First;

     while not q_Itens_Planilha.eof do
      begin
        linha2 := linha2 + 1;

        Excel.cells[linha2, 1] := '''' + q_Itens_PlanilhaProcesso.asstring;
        Excel.cells[linha2, 1].Borders.Weight    := 2;
        Excel.cells[linha2, 1].Borders.LineStyle := 1;

        Excel.cells[linha2, 2] := q_Itens_PlanilhaHonorarios.asfloat;
        Excel.Cells[linha2, 2].NumberFormatLocal := '#.##0,00';
        Excel.cells[linha2, 2].Borders.Weight    := 2;
        Excel.cells[linha2, 2].Borders.LineStyle := 1;

        Excel.cells[linha2, 3] := q_Itens_PlanilhaIr.AsFloat;
        Excel.Cells[linha2, 3].NumberFormatLocal := '#.##0,00';
        Excel.cells[linha2, 3].Borders.Weight    := 2;
        Excel.cells[linha2, 3].Borders.LineStyle := 1;

        Excel.cells[linha2, 4] := q_Itens_PlanilhaCofins.AsFloat;
        Excel.Cells[linha2, 4].NumberFormatLocal := '#.##0,00';
        Excel.cells[linha2, 4].Borders.Weight    := 2;
        Excel.cells[linha2, 4].Borders.LineStyle := 1;

        Excel.cells[linha2, 5] := q_Itens_PlanilhaVlr_Liquido.AsFloat;
        Excel.Cells[linha2, 5].NumberFormatLocal := '#.##0,00';
        Excel.cells[linha2, 5].Interior.Color    := clYellow;
        Excel.cells[linha2, 5].Borders.Weight    := 2;
        Excel.cells[linha2, 5].Borders.LineStyle := 1;

        Excel.cells[linha2, 6] := q_Itens_PlanilhaEmbarcacao.AsString;
        Excel.cells[linha2, 6].HorizontalAlignment := ACenter;
        Excel.cells[linha2, 6].Borders.Weight    := 2;
        Excel.cells[linha2, 6].Borders.LineStyle := 1;

        q_Itens_Planilha.Next;
      end;

    Excel.Range['A6', 'T'+IntToStr(linha2)].Font.Color := clBlack;

    {Totais}

    linha2 := linha2 + 1;

    Excel.cells[linha2, 1] := 'TOTAIS';
    Excel.cells[linha2, 1].HorizontalAlignment:= ARight;
    Excel.cells[linha2, 1].Font.Size  := 10;
    Excel.cells[linha2, 1].Font.Color := clWhite;
    Excel.cells[linha2, 1].Font.Bold  := True;
    Excel.cells[linha2, 1].Borders.Weight    := 2;
    Excel.cells[linha2, 1].Borders.LineStyle := 1;

    Excel.ActiveWindow.DisplayGridlines := True;

    {Valor Total}

    col2 := 2;
    Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
    Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
    Excel.cells[linha2, col2].Borders.Weight    := 2;
    Excel.cells[linha2, col2].Borders.LineStyle := 1;

    col2 := 3;
    Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
    Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
    Excel.cells[linha2, col2].Borders.Weight    := 2;
    Excel.cells[linha2, col2].Borders.LineStyle := 1;

    col2 := 4;
    Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
    Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
    Excel.cells[linha2, col2].Borders.Weight    := 2;
    Excel.cells[linha2, col2].Borders.LineStyle := 1;

    col2 := 5;
    Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
    Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
    Excel.cells[linha2, col2].Borders.Weight    := 2;
    Excel.cells[linha2, col2].Borders.LineStyle := 1;

    Excel.Range['A'+IntToStr(linha2), 'E'+IntToStr(linha2)].interior.Color := CorCelula;
    Excel.Range['B'+IntToStr(linha2), 'E'+IntToStr(linha2)].Font.Color     := CorLetra;
    Excel.Range['B'+IntToStr(linha2), 'E'+IntToStr(linha2)].Font.Bold      := True;

    Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(q_PlanilhaPlanilha.asstring,'/','_', [rfReplaceAll]) + '.xls');
    Application.ProcessMessages;

    Excel.Quit;
    Excel := unassigned;

    showmessage(v_usuario+', a planilha foi gerada no diretório C:\MS2000\PLANILHAS_MS2000');
  end;
end;

procedure Tf_relquinzebrasdril.edFiltroPlanilhaChange(Sender: TObject);
begin
  q_Planilha.Close;
  q_Planilha.SQL.Clear;
  q_Planilha.SQL.Add('  SELECT *                                              ');
  q_Planilha.SQL.Add('    FROM Planilha_Brasdril_Quinzenal_Financeiro         ');
  q_Planilha.SQL.Add('   WHERE PLANILHA LIKE ''%'+edFiltroPlanilha.Text +'%'' ');
  q_Planilha.SQL.Add('ORDER BY DATA DESC, PLANILHA DESC                       ');
  q_Planilha.Open;  
end;

procedure Tf_relquinzebrasdril.edFiltroProcessoChange(Sender: TObject);
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

procedure Tf_relquinzebrasdril.BuscaCodigoPlanilha(Proc: String);

  procedure LimpaArray;
  var
    i : Integer;
  begin
    for i := 1 to QtdPlanilhas do
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
       q_Aux2.SQL.Add(' SELECT Sequencial_Planilha FROM Planilha_Brasdril_Quinzenal_Financeiro_Itens WHERE Processo = :p0 ');
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

procedure Tf_relquinzebrasdril.btnAnteriorClick(Sender: TObject);
begin
  if Posicao <= QtdPlanilhas
   then begin
     Posicao := Posicao + 1;

     btnAnterior.Enabled := Posicao > 1;
     btnProximo.Enabled  := not(Posicao = QtdPlanilhas);

     q_Planilha.locate('Sequencial',Planilha[Posicao],[]);
   end;
end;

procedure Tf_relquinzebrasdril.btnProximoClick(Sender: TObject);
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
