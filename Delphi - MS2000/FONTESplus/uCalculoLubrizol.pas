unit uCalculoLubrizol;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, ComObj, Db, DBTables;

type
  TFrmCalculoLubrizol = class(TForm)
    btnCalcular: TBitBtn;
    Bevel1: TBevel;
    edtProcessoMS2000: TMaskEdit;
    Label1: TLabel;
    btnPlanilha: TBitBtn;
    btnFechar: TBitBtn;
    qryAdicao: TQuery;
    qryAdicaoadicao: TStringField;
    qryAdicaovl_ii: TFloatField;
    qryAdicaovl_ipi: TFloatField;
    qryAdicaovl_pis: TFloatField;
    qryAdicaovl_cofins: TFloatField;
    qryAdicaovl_icms: TFloatField;
    qryAdicaoaliq_ii: TStringField;
    qryAdicaoaliq_ipi: TStringField;
    qryAdicaoaliq_pis: TStringField;
    qryAdicaoaliq_cofins: TStringField;
    qryAdicaovl_fob: TFloatField;
    qryAdicaovl_tx: TFloatField;
    qryItens: TQuery;
    qryItensncm: TStringField;
    qryItenssequencial: TStringField;
    qryItensdescricao_produto: TMemoField;
    qryAdicaoncm: TStringField;
    qryAcrescimo: TQuery;
    qryAcrescimoVL_ACRESCIMO_MOEDA: TFloatField;
    qryAcrescimocd_met_acres_valor: TStringField;
    qryProcesso: TQuery;
    qryProcessotxConversaoDeAmanha: TSmallintField;
    qryTaxaDoDia: TQuery;
    qryTaxaAmanha: TQuery;
    qryTaxaDoDiaCodigo: TStringField;
    qryTaxaDoDiaTaxa_Conversao: TStringField;
    qryTaxaAmanhaCodigo: TStringField;
    qryTaxaAmanhaTaxa_Conversao: TStringField;
    qryItensPO: TStringField;
    qryTaxaDoDiaVigencia_Inicio_Taxa: TDateTimeField;
    qryProcessoValor_CIF: TFloatField;
    qryFOB: TQuery;
    qryFOBValor: TFloatField;
    procedure btnFecharClick(Sender: TObject);
    procedure btnPlanilhaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCalculoLubrizol: TFrmCalculoLubrizol;

implementation

{$R *.DFM}

procedure TFrmCalculoLubrizol.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TFrmCalculoLubrizol.btnPlanilhaClick(Sender: TObject);
  var
    objExcel,Sheet,Chart,s : Variant;
    cTitulo, dataTaxaConversao : string;
    ad, i, IsTaxaDeAmanha : integer;
    valorTotalAcrescimo,
    valorFrente,
    valorSeguro,
    valorCapatazia,
    valorFob,
    valorTaxaConversao,
    valorTotalII,
    valorTotalIPI,
    valorTotalPIS,
    valorTotalCOFINS,
    valorTotalSISCOMEX,
    valorTotalICMS : double;
    
begin
  //OBS: Voce deve usar a Clausula ComObj no USES para usar o EXCEL
  // Utilize também a Clausula Clipbrd pois neste exemplo faremos uso da memória

  // Cria uma instancia para utilizar o Excel
  cTitulo := 'Planilha de Cálculo LUBRIZOL';
  objExcel := CreateOleObject('Excel.Application');
  objExcel.Visible := True;
  objExcel.Caption := cTitulo;

  // Caso queria abrir uma planilha ao invéz de gera-la use os comandos abaixo
  //objExcel.Workbooks.Open('c:teste.xls');
  //Sheet := objExcel.Workbooks[1].WorkSheets[cTitulo];
  // Daqui em diante os comandos na Planilha são os mesmos do resto do Exemplo
  //Sheet.Range['A1','Z70'].Replace('Nome','Alterado');

  // Adiciona planilha(sheet)
  objExcel.Workbooks.Add;
  objExcel.Workbooks[1].Sheets.Add;
  objExcel.Workbooks[1].WorkSheets[1].Name := cTitulo;
  Sheet := objExcel.Workbooks[1].WorkSheets[cTitulo];

  // É possivel copiar um valor da memória diretamente para a planilha
  // mas como não se tem controle de onde ele será colado, este processo pode
  // ser meio inconveniente
  //Clipboard.AsText := 'Linha Copiada para Memória';
  //Sheet.paste;

  // Nota:
  // Pode-se preencher as linhas usando o comando abaixo, desta forma vc usaria
  // a planilha como se ela fosse uma Array, em alguns casos pode ser interessante
  // mas no geral considero bem mais trabalhoso, abaixo demonstro outra forma de trabalho
  // usando o RANGE que torna o trabalho bem mais simples
  //Sheet.Cells[1,1] := 'Coluna[1,1]';

  // Preenchendo as Colunas
  // Usando o RANGE vc pode preencher várias colunas ao mesmo tempo usando ['A1','A10']
  // Ou preencher apenas uma usando ['A1'], isso torna o processo ágil e simples
  IsTaxaDeAmanha := 0;
  qryProcesso.ParamByName('Processo').Value := edtProcessoMS2000.Text;
  qryProcesso.Open;
  IsTaxaDeAmanha := qryProcessotxConversaoDeAmanha.AsInteger;
  qryProcesso.Close;

  qryAdicao.Close;
  qryAdicao.ParamByName('Processo').Value := edtProcessoMS2000.Text;
  qryAdicao.Open;

  qryAcrescimo.close;
  qryAcrescimo.ParamByName('Processo').Value := edtProcessoMS2000.Text;
  qryAcrescimo.Open;

  //inicializando
  valorFob := 0;
  valorTotalAcrescimo := 0;
  valorSeguro := 0;
  valorFrente := 0;
  valorCapatazia := 0;
  valorTaxaConversao := 0;

  //FOB
  qryFOB.ParamByName('Processo').Value := edtProcessoMS2000.Text;
  qryFOB.Open;
  valorFob := qryFOBValor.AsFloat;
  qryFOB.Close;

  if(IsTaxaDeAmanha = 1)then begin
    qryTaxaAmanha.Open;
    valorTaxaConversao := qryTaxaAmanhaTaxa_Conversao.AsFloat;
    dataTaxaConversao  := FormatDateTime('dd/mm/yyyy', qryTaxaDoDiaVigencia_Inicio_Taxa.AsDateTime + 1 );
    qryTaxaAmanha.Close;
  end
  else begin
    qryTaxaDoDia.Open;
    valorTaxaConversao := qryTaxaDoDiaTaxa_Conversao.AsFloat;
    dataTaxaConversao  := qryTaxaDoDiaVigencia_Inicio_Taxa.AsString;
    qryTaxaDoDia.Close;
  end;

  //Atribuindo
  while Not(qryAcrescimo.Eof) do begin
    valorTotalAcrescimo := valorTotalAcrescimo + qryAcrescimoVL_ACRESCIMO_MOEDA.AsFloat;
    case qryAcrescimocd_met_acres_valor.AsInteger of
      9:  valorSeguro := ValorSeguro + qryAcrescimoVL_ACRESCIMO_MOEDA.AsFloat;
      13: valorFrente := ValorFrente + qryAcrescimoVL_ACRESCIMO_MOEDA.AsFloat;
      16: valorCapatazia := ValorCapatazia + qryAcrescimoVL_ACRESCIMO_MOEDA.AsFloat;
    end;
    qryAcrescimo.Next;
  end;
  
  Sheet.Range['A1'] := 'TAXA DO DIA  ' + dataTaxaConversao;
  Sheet.Range['A2'] := 'USD:';
  Sheet.Range['A3'] := 'EUR';
  Sheet.Range['A4'] := 'NCM: '+ qryItensncm.AsString;
  Sheet.Range['A5'] := 'VALOR USD:';
  Sheet.Range['A6'] := 'VALOR REAL:';

  //COLUNA "B"
  Sheet.Range['B1'] := 'LUBRIZOL DO BRASIL ADITIVOS LTDA';
  Sheet.Range['B2'] := valorTaxaConversao;
  Sheet.Range['B4'] := 'VALOR FOB';
  Sheet.Range['B5'].NumberFormat := '$ #.##0,00_);($ #.##0,00)';
  Sheet.Range['B5'] := StringReplace(FloatToStr( valorFob - valorTotalAcrescimo ),',','.',[rfReplaceAll]);
  Sheet.Range['B6'].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  //Sheet.Range['B6'] := StringReplace(FloatToStr( valorFob * valorTaxaConversao ),',','.',[rfReplaceAll]);
  Sheet.Range['B6'].FormulaLocal := '=(B5*B2)';

  //COLUNA "C"
  Sheet.Range['C4'] := 'FRETE';
  Sheet.Range['C5'].NumberFormat := '$ #.##0,00_);($ #.##0,00)';
  Sheet.Range['C5'] := StringReplace(FloatToStr( ValorFrente ),',','.',[rfReplaceAll]);
  Sheet.Range['C6'].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['C6'].FormulaLocal := '=(C5*B2)';

  //COLUNA "D"
  Sheet.Range['D4'] := 'SEGURO';
  Sheet.Range['D5'].NumberFormat := '$ #.##0,00_);($ #.##0,00)';
  Sheet.Range['D5'] := StringReplace(FloatToStr( ValorSeguro ),',','.',[rfReplaceAll]);
  Sheet.Range['D6'].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['D6'].FormulaLocal := '=(D5*B2)';

  //COLUNA "E"
  Sheet.Range['E1'] := 'PO:'+ qryItensPO.AsString;
  Sheet.Range['E4'] := 'CAPATAZIA';
  Sheet.Range['E5'].NumberFormat := '$ #.##0,00_);($ #.##0,00)';
  Sheet.Range['E5'] := StringReplace(FloatToStr( ValorCapatazia ),',','.',[rfReplaceAll]);
  Sheet.Range['E6'].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['E6'].FormulaLocal := '=(E5*B2)';

  //COLUNA "F"
  Sheet.Range['F1'] := 'MS-'+ edtProcessoMS2000.Text;
  Sheet.Range['F4'] := 'VALOR CIF';
  Sheet.Range['F5'].NumberFormat := '$ #.##0,00_);($ #.##0,00)';
  Sheet.Range['F5'].Formula := '=SUM(B5:E5)';
  Sheet.Range['F5'].FormulaLocal := '=SOMA(B5:E5)';
  Sheet.Range['F6'].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['F6'].Formula := '=SUM(B6:E6)';
  Sheet.Range['F6'].FormulaLocal := '=SOMA(B6:E6)';

  // Formatado
  Sheet.Range['A1','G1' ].ColumnWidth := 16;
  Sheet.Range['A8','G8' ].font.bold := true;
  Sheet.Range['A8','G8' ].HorizontalAlignment := 3;

  // BORDAS
  for i := 1 to 8 do Begin
   Sheet.Range['A'+IntToStr(i),'G1'+IntToStr(i) ].Borders.LineStyle := 1;
  end;

  //ADIÇÕES
  ad := 9;
  qryAdicao.First;
  While Not(qryAdicao.Eof)Do Begin
    //CABECALHO
    Sheet.Range['B8'] := format('I.I(%s)',[qryAdicaoaliq_ii.AsString+'%']);
    Sheet.Range['C8'] := format('I.P.I(%s)',[qryAdicaoaliq_ipi.AsString+'%']);
    Sheet.Range['D8'] := format('PIS(%s)',[qryAdicaoaliq_pis.AsString+'%']);
    Sheet.Range['E8'] := format('COFINS(%s)',[qryAdicaoaliq_cofins.AsString+'%']);
    Sheet.Range['F8'] := 'TAXA SISCOMEX';
    Sheet.Range['G8'] := 'ICMS';
    //FORMATANDO
    Sheet.Range['A' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
    Sheet.Range['B' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
    Sheet.Range['C' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
    Sheet.Range['D' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
    Sheet.Range['E' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
    Sheet.Range['F' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
    Sheet.Range['G' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
    //BORDAS
    Sheet.Range['A' + IntToStr(ad)].Borders.LineStyle := 1;
    Sheet.Range['B' + IntToStr(ad)].Borders.LineStyle := 1;
    Sheet.Range['C' + IntToStr(ad)].Borders.LineStyle := 1;
    Sheet.Range['D' + IntToStr(ad)].Borders.LineStyle := 1;
    Sheet.Range['E' + IntToStr(ad)].Borders.LineStyle := 1;
    Sheet.Range['F' + IntToStr(ad)].Borders.LineStyle := 1;
    Sheet.Range['G' + IntToStr(ad)].Borders.LineStyle := 1;

    Sheet.Range['A' + IntToStr(ad)] := 'ADIÇÃO ' + qryAdicaoadicao.AsString;
    Sheet.Range['B' + IntToStr(ad)] := StringReplace(qryAdicaovl_ii.AsString,',','.',[rfReplaceAll]);
    Sheet.Range['C' + IntToStr(ad)] := StringReplace(qryAdicaovl_ipi.AsString,',','.',[rfReplaceAll]);
    Sheet.Range['D' + IntToStr(ad)] := StringReplace(qryAdicaovl_pis.AsString,',','.',[rfReplaceAll]);
    Sheet.Range['E' + IntToStr(ad)] := StringReplace(qryAdicaovl_cofins.AsString,',','.',[rfReplaceAll]);
    Sheet.Range['F' + IntToStr(ad)] := StringReplace(qryAdicaovl_tx.AsString,',','.',[rfReplaceAll]);
    Sheet.Range['G' + IntToStr(ad)] := StringReplace(qryAdicaovl_icms.AsString,',','.',[rfReplaceAll]);

    //ITENS
    qryItens.Close;
    qryItens.ParamByName('processo').Value := edtProcessoMS2000.Text;
    qryItens.ParamByName('ncm').Value := qryAdicaoncm.AsString;
    qryItens.Open;

    //TOTAIS
    valorTotalII := valorTotalII + qryAdicaovl_ii.AsFloat;
    valorTotalIPI := valorTotalIPI + qryAdicaovl_ipi.AsFloat;
    valorTotalPIS := valorTotalPIS + qryAdicaovl_pis.AsFloat;
    valorTotalCOFINS := valorTotalCOFINS + qryAdicaovl_cofins.AsFloat;
    valorTotalSISCOMEX := valorTotalSISCOMEX + qryAdicaovl_tx.AsFloat;
    valorTotalICMS := valorTotalICMS + qryAdicaovl_icms.AsFloat;

    While Not(qryItens.Eof) Do Begin
      Inc(ad, 1);
      Sheet.Range['A' + IntToStr(ad)].font.size := 7;
      Sheet.Range['A' + IntToStr(ad)] := qryItensdescricao_produto.AsString;
      qryItens.Next;
      //BORDAS
      Sheet.Range['A' + IntToStr(ad)].Borders.LineStyle := 1;
      Sheet.Range['B' + IntToStr(ad)].Borders.LineStyle := 1;
      Sheet.Range['C' + IntToStr(ad)].Borders.LineStyle := 1;
      Sheet.Range['D' + IntToStr(ad)].Borders.LineStyle := 1;
      Sheet.Range['E' + IntToStr(ad)].Borders.LineStyle := 1;
      Sheet.Range['F' + IntToStr(ad)].Borders.LineStyle := 1;
      Sheet.Range['G' + IntToStr(ad)].Borders.LineStyle := 1;
    End;
    qryAdicao.Next;
    Inc(ad, 1);
  End;
  qryAdicao.Close;

  //Inc(ad, 1);
  //FORMATANDO
  Sheet.Range['B' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['C' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['D' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['E' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['F' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['G' + IntToStr(ad)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';

  //VALORES
  Sheet.Range['A' + IntToStr(ad)] := 'TOTAL:';
  Sheet.Range['B' + IntToStr(ad)] := StringReplace(FloatToStr( valorTotalII ),',','.',[rfReplaceAll]);
  Sheet.Range['C' + IntToStr(ad)] := StringReplace(FloatToStr( valorTotalIPI ),',','.',[rfReplaceAll]);
  Sheet.Range['D' + IntToStr(ad)] := StringReplace(FloatToStr( valorTotalPIS ),',','.',[rfReplaceAll]);
  Sheet.Range['E' + IntToStr(ad)] := StringReplace(FloatToStr( valorTotalCOFINS ),',','.',[rfReplaceAll]);
  Sheet.Range['F' + IntToStr(ad)] := StringReplace(FloatToStr( valorTotalSISCOMEX ),',','.',[rfReplaceAll]);
  Sheet.Range['G' + IntToStr(ad)] := StringReplace(FloatToStr( valorTotalICMS ),',','.',[rfReplaceAll]);
  //BORDAS
  Sheet.Range['A' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['B' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['C' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['D' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['E' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['F' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['G' + IntToStr(ad)].Borders.LineStyle := 1;

  Inc(ad, 1);

  //VALORES TOTAL IMPOSTOS
  Sheet.Range['B'+ IntToStr(ad+1)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['B'+ IntToStr(ad+1)].Formula := '=SUM(B'+IntToStr(ad-1)+':F'+IntToStr(ad-1)+')';
  Sheet.Range['B'+ IntToStr(ad+1)].FormulaLocal := '=SOMA(B'+IntToStr(ad-1)+':F'+IntToStr(ad-1)+')';
  //ICMS
  Sheet.Range['B'+ IntToStr(ad+2)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['B'+ IntToStr(ad+2)].Formula := '=(G'+IntToStr(ad-1)+')';

  Sheet.Range['A' + IntToStr(ad)] := 'MULTA LI:';

  //VALORES TOTAL GERAL
  Sheet.Range['B'+ IntToStr(ad+3)].NumberFormat := 'R$ #.##0,00_);(R$ #.##0,00)';
  Sheet.Range['B'+ IntToStr(ad+3)].Formula := '=SUM(B'+IntToStr(ad)+':B'+IntToStr(ad+2)+')';
  Sheet.Range['B'+ IntToStr(ad+3)].FormulaLocal := '=SOMA(B'+IntToStr(ad)+':B'+IntToStr(ad+2)+')';

  //BORDAS
  Sheet.Range['A' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['B' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['C' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['D' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['E' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['F' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['G' + IntToStr(ad)].Borders.LineStyle := 1;

  Inc(ad, 1);
  Sheet.Range['A' + IntToStr(ad)] := 'TOTAL IMPOSTOS:';
  Sheet.Range['A' + IntToStr(ad + 1)] := 'TOTAL ICMS:';
  Sheet.Range['A' + IntToStr(ad + 2)] := 'TOTAL GERAL:';

  //BORDAS
  Sheet.Range['A' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['B' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['C' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['D' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['E' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['F' + IntToStr(ad)].Borders.LineStyle := 1;
  Sheet.Range['G' + IntToStr(ad)].Borders.LineStyle := 1;

  //BORDAS
  Sheet.Range['A' + IntToStr(ad + 1)].Borders.LineStyle := 1;
  Sheet.Range['B' + IntToStr(ad + 1)].Borders.LineStyle := 1;
  Sheet.Range['C' + IntToStr(ad + 1)].Borders.LineStyle := 1;
  Sheet.Range['D' + IntToStr(ad + 1)].Borders.LineStyle := 1;
  Sheet.Range['E' + IntToStr(ad + 1)].Borders.LineStyle := 1;
  Sheet.Range['F' + IntToStr(ad + 1)].Borders.LineStyle := 1;
  Sheet.Range['G' + IntToStr(ad + 1)].Borders.LineStyle := 1;

  //BORDAS
  Sheet.Range['A' + IntToStr(ad + 2)].Borders.LineStyle := 1;
  Sheet.Range['B' + IntToStr(ad + 2)].Borders.LineStyle := 1;
  Sheet.Range['C' + IntToStr(ad + 2)].Borders.LineStyle := 1;
  Sheet.Range['D' + IntToStr(ad + 2)].Borders.LineStyle := 1;
  Sheet.Range['E' + IntToStr(ad + 2)].Borders.LineStyle := 1;
  Sheet.Range['F' + IntToStr(ad + 2)].Borders.LineStyle := 1;
  Sheet.Range['G' + IntToStr(ad + 2)].Borders.LineStyle := 1;
end;

procedure TFrmCalculoLubrizol.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FrmCalculoLubrizol := nil;    
end;

end.
