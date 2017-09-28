unit u_pnlPrestContasFinanc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, DBCtrls, Buttons, Db, DBTables, ExtCtrls, Mask,
  ComObj, jpeg, FileCtrl;

type
  Tf_pnlPrestContasFinanc = class(TForm)
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
    q_Itens_PlanilhaRef_ms: TStringField;
    q_Itens_PlanilhaArmazenagem: TFloatField;
    q_Itens_PlanilhaImpostos: TFloatField;
    q_Itens_PlanilhaTaxas: TFloatField;
    q_Itens_PlanilhaDespesas: TFloatField;
    q_Itens_PlanilhaVlr_Bruto: TFloatField;
    q_Itens_PlanilhaIr: TFloatField;
    q_Itens_PlanilhaCofins: TFloatField;
    q_Itens_PlanilhaAdiantamento: TFloatField;
    q_Itens_PlanilhaEmbarcacao: TStringField;
    q_Itens_PlanilhaHonorarios: TFloatField;
    b_cancelar: TBitBtn;
    Label5: TLabel;
    q_Itens_PlanilhaPlanilha_Numerarios: TStringField;
    q_Itens_PlanilhaSequencial: TIntegerField;
    chbComplementar: TCheckBox;
    Label6: TLabel;
    cbClientes: TComboBox;
    q_PlanilhaCliente: TStringField;
    q_Itens_PlanilhaSequencial_Planilha: TIntegerField;
    q_Itens_PlanilhaConhecimento: TStringField;
    q_Itens_PlanilhaFatura: TStringField;
    q_Itens_PlanilhaTp_Processo: TStringField;
    q_Itens_PlanilhaRegime: TStringField;
    q_Itens_PlanilhaHonorarios_Especiais: TFloatField;
    q_Itens_PlanilhaArmazenagem_CF_CP: TFloatField;
    q_Itens_PlanilhaAfrmm: TFloatField;
    q_Itens_PlanilhaTransportadora_JJ: TFloatField;
    q_Itens_PlanilhaVlr_Liquido: TFloatField;
    gbFiltCliente: TGroupBox;
    rbBrasdril: TRadioButton;
    rbMareAlta: TRadioButton;
    rbPanMarine: TRadioButton;
    rbTodos: TRadioButton;
    q_Itens_PlanilhaPortolog: TFloatField;
    edFiltroPlanilha: TEdit;
    Label8: TLabel;
    Label7: TLabel;
    edFiltroProcesso: TEdit;
    btnAnterior: TButton;
    btnProximo: TButton;
    q_Itens_PlanilhaNfe: TStringField;
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
    procedure q_Itens_PlanilhaVlr_LiquidoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure rbTodosClick(Sender: TObject);
    procedure rbBrasdrilClick(Sender: TObject);
    procedure rbMareAltaClick(Sender: TObject);
    procedure rbPanMarineClick(Sender: TObject);
    procedure edFiltroPlanilhaChange(Sender: TObject);
    procedure edFiltroProcessoChange(Sender: TObject);
    procedure btnProximoClick(Sender: TObject);
    procedure btnAnteriorClick(Sender: TObject);
  private
    { Private declarations }
    Inclusao  : Boolean;
    Alteracao : Boolean;

    Planilha : array [1..3000] of string;
    QtdPlanilhas : Integer;
    Posicao : Integer;

    function GeraNovoSequencial : Integer;

    procedure LimpaCampos;

    procedure HabilitaCampos(Habilita : Boolean);
    procedure HabilitaBotoes(Habilita : Boolean);

    procedure AtualizaGrid;
    procedure AtualizaGridItens;

    procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);

    procedure ConfiguraGrid(Modelo : Integer);

    procedure BuscaCodigoPlanilha(Proc : String);
  public
    { Public declarations }
  end;

const
  Aleft   = -4131;
  Aright  = -4152;
  ACenter = -4108;

  //                    1          2        3         4         5         6         7         8         9         0         1          2        3         4         5         6         7         8         9         0         1         2         3         4         6
  //           123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/
  KeyCryptX = 'Þ‡†¥Šµ¿ý±¥Šýþ¬¥šµ††Š¤¯š¯±ý¬Ÿÿ„¬„†¥¨Ý†ýþßµÞŸßýø¨ÿ¶šß¯¿øø¨‡¶ÝŸ¶¯‡ø¯†Ð†¬ý¿Ÿ‡¶†µŸ†ŸÝþÿøþÐÐŠµ¨ß±±¨þÝÿß‡Ð†¥ÿøÞ¬†š†¤‡¯š¤ß†¿ÐŸÞ¬±¨Ý¬¨ßšŸ±µÝŸýøŸ¯ÿþÿýÐšÞ¤¯±¶ŠÐ†±¿¬¨†¨Ýš¯†¿±Þšþ¯Ð‡±±†„Ý±¶µßÐ†Š¶±¥ÐŠ¯ø¿¤¤þýø¥¤†š¬ÝÝß±„„þ„¿ÐŸšµ¶Ð¨±þ†µ¥„±‡ßþÐÝŠÐßÿÞ¨¬ýþý¯ø¶ý¨¬Þø¿ŸýšÝø‡¬Ý‡±';
  //  KeyCryptX = 'A1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5';
var
  f_pnlPrestContasFinanc : Tf_pnlPrestContasFinanc;
  excel : Variant;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_pnlPrestContasFinanc.FormCreate(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_pnlPrestContasFinanc.HabilitaCampos(Habilita: Boolean);
begin
  edPlanilha.Enabled  := Habilita;
  cbClientes.Enabled  := Habilita;
  edData.Enabled      := Habilita;

  if Habilita
   then edPlanilha.SetFocus;
end;

procedure Tf_pnlPrestContasFinanc.q_PlanilhaAfterScroll(DataSet: TDataSet);
begin
  if q_Planilha.RecordCount > 0
   then begin
     edPlanilha.Text := q_PlanilhaPlanilha.AsString;

     if (q_PlanilhaCliente.AsString = 'BRASDRIL')
      then cbClientes.ItemIndex := 0;

     if (q_PlanilhaCliente.AsString = 'MARÉ ALTA')
      then cbClientes.ItemIndex := 1;

     if (q_PlanilhaCliente.AsString = 'PAN MARINE')
      then cbClientes.ItemIndex := 2;

     if (cbClientes.ItemIndex = 0) 
      then ConfiguraGrid(1)
      else ConfiguraGrid(2);

     edData.Text := q_PlanilhaData.AsString;
   end
   else LimpaCampos;

  AtualizaGridItens;
end;

procedure Tf_pnlPrestContasFinanc.b_incluirClick(Sender: TObject);
begin
  LimpaCampos;

  if rbTodos.Checked
   then cbClientes.ItemIndex := -1;

  if rbBrasdril.Checked
   then cbClientes.ItemIndex := 0;

  if rbMareAlta.Checked
   then cbClientes.ItemIndex := 1;

  if rbPanMarine.Checked
   then cbClientes.ItemIndex := 2;

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

procedure Tf_pnlPrestContasFinanc.b_alterarClick(Sender: TObject);
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

procedure Tf_pnlPrestContasFinanc.b_salvarClick(Sender: TObject);
var
  SequenciaNova : Integer;
begin
  HabilitaCampos(False);

  if Inclusao
   then begin
     try
       q_Aux.SQL.Clear;
       q_Aux.SQL.Add('SELECT MAX(SEQUENCIAL) FROM Planilha_PrestContas_Financeiro');
       q_Aux.Open;

       if q_Aux.RecordCount > 0
        then SequenciaNova := q_Aux.Fields[0].AsInteger + 1
        else SequenciaNova := 1;
     finally
       q_Aux.Close;
     end;  

     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('INSERT INTO Planilha_PrestContas_Financeiro VALUES (:p0,:p1,:p2,:p3)');
     q_Aux.Params[0].Value := SequenciaNova;
     q_Aux.Params[1].Value := cbClientes.Text;
     q_Aux.Params[2].Value := edPlanilha.Text;
     q_Aux.Params[3].Value := edData.Text;
   end;

  if Alteracao
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('UPDATE Planilha_PrestContas_Financeiro SET CLIENTE = :p0, PLANILHA = :p1, DATA = :p2 WHERE SEQUENCIAL = :p3');
     q_Aux.Params[0].Value := cbClientes.Text;
     q_Aux.Params[1].Value := edPlanilha.Text;
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

procedure Tf_pnlPrestContasFinanc.AtualizaGrid;
begin
  q_Planilha.Close;
  q_Planilha.Open;
end;

procedure Tf_pnlPrestContasFinanc.edRefMSChange(Sender: TObject);
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

       if (q_PlanilhaCliente.AsString = 'BRASDRIL')
        then q_Aux.SQL.Add('  WHERE P.Importador IN (''252'',''265'',''175'') ');

       if (q_PlanilhaCliente.AsString = 'MARÉ ALTA')
        then q_Aux.SQL.Add('  WHERE P.Importador IN (''100'') ');

       if (q_PlanilhaCliente.AsString = 'PAN MARINE')
        then q_Aux.SQL.Add('  WHERE P.Importador IN (''88'') ');

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

procedure Tf_pnlPrestContasFinanc.b_incluiritemClick(Sender: TObject);
var
  Sequencial : Integer;
begin
  if q_PlanilhaSequencial.AsString <> ''
   then begin
     Sequencial := GeraNovoSequencial;

     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('INSERT INTO Planilha_PrestContas_Financeiro_Itens ');
     q_Aux.SQL.Add('      (Sequencial                                 ');
     q_Aux.SQL.Add('      ,Sequencial_Planilha                        ');
     q_Aux.SQL.Add('      ,Ref_ms                                     ');
     q_Aux.SQL.Add('      ,Conhecimento                               ');
     q_Aux.SQL.Add('      ,Fatura                                     ');
     q_Aux.SQL.Add('      ,Tp_Processo                                ');
     q_Aux.SQL.Add('      ,Regime                                     ');
     q_Aux.SQL.Add('      ,Planilha_Numerarios                        ');
     q_Aux.SQL.Add('      ,Honorarios                                 ');
     q_Aux.SQL.Add('      ,Honorarios_Especiais                       ');
     q_Aux.SQL.Add('      ,Armazenagem                                ');
     q_Aux.SQL.Add('	  ,Armazenagem_CF_CP                          ');
     q_Aux.SQL.Add('      ,Impostos                                   ');
     q_Aux.SQL.Add('      ,Taxas                                      ');
     q_Aux.SQL.Add('	  ,Afrmm                                      ');
     q_Aux.SQL.Add('      ,Despesas                                   ');
     q_Aux.SQL.Add('	  ,Transportadora_JJ                          ');
     q_Aux.SQL.Add('	  ,Portolog                                   ');
     q_Aux.SQL.Add('      ,Vlr_Bruto                                  ');
     q_Aux.SQL.Add('      ,Ir                                         ');
     q_Aux.SQL.Add('      ,Cofins                                     ');
     q_Aux.SQL.Add('      ,Adiantamento                               ');
     q_Aux.SQL.Add('      ,Vlr_Liquido                                ');
     q_Aux.SQL.Add('      ,Embarcacao                                 ');
     q_Aux.SQL.Add('      ,Nfe)                                       ');

     if not chbComplementar.Checked
      then begin
        if (q_PlanilhaCliente.AsString = 'BRASDRIL') 
         then begin
           q_Aux.SQL.Add('SELECT TOP 1 '+QuotedStr(IntToStr(Sequencial))+'          ');
           q_Aux.SQL.Add('            ,'+QuotedStr(q_PlanilhaSequencial.AsString)+' ');
           q_Aux.SQL.Add('            ,Processos.Codigo AS CODIGO ');
           q_Aux.SQL.Add('            ,'''' AS CONHECIMENTO ');
           q_Aux.SQL.Add('            ,'''' AS FATURA ');
           q_Aux.SQL.Add('            ,'''' AS TP_PROCESSO ');
           q_Aux.SQL.Add('            ,'''' AS REGIME ');
           q_Aux.SQL.Add('            ,(SELECT MIN(OBS_ESPECIFICA) FROM Followup WHERE Codevento = ''1021'' AND Codobs = ''1140'' AND PROCESSO = :pREFMS) AS Planilha_Numerarios ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''HONO'' OR Numerario = ''ISS'') AND Processo = :pREFMS) AS HONORARIOS ');
           q_Aux.SQL.Add('            ,''0'' AS HONORARIOS_ESPECIAIS ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''ARM'' OR Numerario = ''ARMP'' OR Numerario = ''ARMA'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('              ) AS Armazenagem ');
           q_Aux.SQL.Add('            ,''0'' AS Armazenagem_CF_CP ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''II'' OR Numerario = ''MUL'' OR Numerario = ''IPI'' OR Numerario = ''PIS'' OR Numerario = ''CF'' OR Numerario = ''ICMS'' OR Numerario = ''PP'' OR Numerario = ''FECP'') ');
           q_Aux.SQL.Add('                 AND Processo = :pREFMS ) AS Impostos ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''TAXA'' OR Numerario = ''TXBC'' OR Numerario = ''TBB'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('             ) AS Taxas ');
           q_Aux.SQL.Add('            ,''0'' AS AFRMM ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos ');
           q_Aux.SQL.Add('               WHERE (Numerario = ''MAR'' OR Numerario = ''DEM'' OR Numerario = ''FM'' OR Numerario = ''LIBE'' OR Numerario = ''AWB'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('             ) AS Despesas ');
           q_Aux.SQL.Add('            ,''0'' AS Transportadora_JJ ');
           q_Aux.SQL.Add('            ,''0'' AS Portolog ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) AS Vlr_Bruto FROM Numerarios_Processos WHERE Processo = :pREFMS AND Data_Previsao <= (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Vlr_Bruto ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''IRRF'' AND Processo = :pREFMS) AS Ir ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''CCP'' AND Processo = :pREFMS) AS Cofins ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''ADIA'' AND Processo = :pREFMS) AS Adiantamento ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE Numerario <> ''HONO'' AND Numerario <> ''ISS'' AND Processo = :pREFMS) - ');
           //q_Aux.SQL.Add('               FROM Creditos_Processos WHERE Processo = :pREFMS) AS Vlr_Liquido ');
           q_Aux.SQL.Add('             (SELECT ISNULL(SUM(Valor),0) FROM Creditos_Processos WHERE Credito <> ''IRRF'' AND Credito <> ''CCP'' AND Processo = :pREFMS) AS Vlr_Liquido ');
           q_Aux.SQL.Add('           ,Locais_Inventario.Descricao as Embarcacao ');
           q_Aux.SQL.Add('           ,(SELECT TOP 1 NFS.NFiscal_e FROM NOTAS_FISCAIS_SERVICOS NFS LEFT JOIN Notas_Fiscais_SERVICOS_PROCESSOS NFSP ON NFS.NFISCAL = NFSP.NFISCAL WHERE NFS.Cancelada = 0 AND ((NFS.PROCESSO = :pREFMS) OR (NFSP.PROCESSO = :pREFMS))) ');
           q_Aux.SQL.Add('       FROM Processos LEFT JOIN Locais_Inventario ');
           q_Aux.SQL.Add('                   ON Processos.Importador       = Locais_Inventario.Importador AND ');
           q_Aux.SQL.Add('                      Processos.Local_Inventario = Locais_Inventario.Local ');
           q_Aux.SQL.Add('      WHERE Processos.Codigo = :pREFMS ');
         end
         else begin
           q_Aux.SQL.Add('SELECT TOP 1 '+QuotedStr(IntToStr(Sequencial))+'          ');
           q_Aux.SQL.Add('            ,'+QuotedStr(q_PlanilhaSequencial.AsString)+' ');
           q_Aux.SQL.Add('            ,Processos.Codigo AS CODIGO ');
           q_Aux.SQL.Add('            ,Conhecimento_Processo.Numerodoccarga AS CONHECIMENTO ');
           q_Aux.SQL.Add('            ,ISNULL(Faturas.Codigo,Processos.Numero_TR) AS FATURA ');
           q_Aux.SQL.Add('            ,Tipos_de_Processos.DESCRICAO AS TP_PROCESSO ');
           q_Aux.SQL.Add('            ,TAB_TIPO_DECLARACAO.Descricao AS REGIME ');
           q_Aux.SQL.Add('            ,'''' AS Planilha_Numerarios ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''HONO'' OR Numerario = ''ISS'') AND Processo = :pREFMS) AS HONORARIOS ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''HONE'' OR Numerario = ''ISSE'') AND Processo = :pREFMS) AS HONORARIOS_ESPECIAIS ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''ARM'' OR Numerario = ''ARMP'' OR Numerario = ''ARMA'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('                 AND Data_Registro <= (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Armazenagem ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''AA'' OR Numerario = ''AAC'' OR Numerario = ''AICF'' OR Numerario = ''AE'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('                 AND Data_Registro <= (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Armazenagem_CF_CP ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''ICMS'' OR Numerario = ''FECP'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('                AND Data_Registro <= (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Impostos ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''LIBE'' OR Numerario = ''AWB'' OR Numerario = ''B/L'' OR Numerario = ''DEM'' OR Numerario = ''FM'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('                 AND Data_Registro <= (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Taxas ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE Numerario = ''MAR'' AND Processo = :pREFMS ');
           q_Aux.SQL.Add('                 AND Data_Registro <= (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS AFRMM ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos ');
           q_Aux.SQL.Add('               WHERE (Numerario = ''DC'' OR Numerario = ''TBB'' OR Numerario = ''TXBC'' OR Numerario = ''DESV'' OR Numerario = ''2.25'' OR Numerario = ''SOS'') AND Processo = :pREFMS AND Data_Registro <= (SELECT Data_Registro FROM Numerarios_Processos ');
           q_Aux.SQL.Add('               WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Despesas ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''FRJJ'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('                 AND Data_Registro <= (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Transportadora_JJ ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''FRPO'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('                 AND Data_Registro <= (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Portolog ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) AS Vlr_Bruto FROM Numerarios_Processos WHERE Processo = :pREFMS AND Data_Registro <= (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Vlr_Bruto ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''IRRF'' AND Processo = :pREFMS) AS Ir ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''CCP'' AND Processo = :pREFMS) AS Cofins ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor) FROM Creditos_Processos WHERE Credito = ''ADIA'' AND Processo = :pREFMS) AS Adiantamento ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''HONO'' OR Numerario = ''ISS'' or Numerario = ''HONE'' OR Numerario = ''ISSE'') AND Processo = :pREFMS AND Data_Registro <= (SELECT Data_Registro FROM Numerarios_Processos ');
           q_Aux.SQL.Add('                WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) - (SELECT SUM(Valor) FROM Creditos_Processos WHERE (CREDITO = ''IRRF'' OR CREDITO = ''CCP'' OR CREDITO = ''ADIA'') AND Credito <> ''SB'' AND Processo = :pREFMS) AS Vlr_Liquido ');
           q_Aux.SQL.Add('           ,Locais_Inventario.Descricao as Embarcacao ');
           q_Aux.SQL.Add('           ,(SELECT TOP 1 NFS.NFiscal_e FROM NOTAS_FISCAIS_SERVICOS NFS LEFT JOIN Notas_Fiscais_SERVICOS_PROCESSOS NFSP ON NFS.NFISCAL = NFSP.NFISCAL WHERE NFS.Cancelada = 0 AND ((NFS.PROCESSO = :pREFMS) OR (NFSP.PROCESSO = :pREFMS))) ');           
           q_Aux.SQL.Add('       FROM Processos LEFT JOIN Locais_Inventario ');
           q_Aux.SQL.Add('                   ON Processos.Importador       = Locais_Inventario.Importador AND ');
           q_Aux.SQL.Add('                      Processos.Local_Inventario = Locais_Inventario.Local LEFT JOIN Conhecimento_Processo ');
           q_Aux.SQL.Add('                   ON Processos.Codigo = Conhecimento_Processo.Processo LEFT JOIN Faturas ');
           q_Aux.SQL.Add('                   ON Processos.Codigo = Faturas.Processo LEFT JOIN Tipos_de_Processos ');
           q_Aux.SQL.Add('                   ON Processos.Tipo   = Tipos_de_Processos.CODIGO LEFT JOIN TAB_TIPO_DECLARACAO ');
           q_Aux.SQL.Add('                   ON Processos.Tipo_Declaracao = TAB_TIPO_DECLARACAO.Codigo ');
           q_Aux.SQL.Add('      WHERE Processos.Codigo = :pREFMS ');
         end;
       end
       else begin
        if (q_PlanilhaCliente.AsString = 'BRASDRIL')
         then begin
           {Complementar, mostra somente Armazenagem, Despesas, Vlr. Bruto e Vlr. Líquido}

           q_Aux.SQL.Add('SELECT TOP 1 '+QuotedStr(IntToStr(Sequencial))+'          ');
           q_Aux.SQL.Add('            ,'+QuotedStr(q_PlanilhaSequencial.AsString)+' ');
           q_Aux.SQL.Add('            ,Processos.Codigo AS CODIGO ');
           q_Aux.SQL.Add('            ,'''' AS CONHECIMENTO ');
           q_Aux.SQL.Add('            ,'''' AS FATURA ');
           q_Aux.SQL.Add('            ,'''' AS TP_PROCESSO ');
           q_Aux.SQL.Add('            ,'''' AS REGIME ');
           q_Aux.SQL.Add('            ,(SELECT MIN(OBS_ESPECIFICA) FROM Followup WHERE Codevento = ''1021'' AND Codobs = ''1140'' AND PROCESSO = :pREFMS) AS Planilha_Numerarios ');
           q_Aux.SQL.Add('            ,''0'' AS HONORARIOS ');
           q_Aux.SQL.Add('            ,''0'' AS HONORARIOS_ESPECIAIS ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''ARM'' OR Numerario = ''ARMP'' OR Numerario = ''ARMA'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('                 AND Data_Registro > (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Armazenagem ');
           q_Aux.SQL.Add('            ,''0'' AS Armazenagem_CF_CP ');
           q_Aux.SQL.Add('            ,''0'' AS IMPOSTOS');
           q_Aux.SQL.Add('            ,''0'' AS TAXAS');
           q_Aux.SQL.Add('            ,''0'' AS AFRMM');
           q_Aux.SQL.Add('            ,((SELECT SUM(Valor_Registrado) FROM Numerarios_Processos ');
           q_Aux.SQL.Add('               WHERE (Numerario = ''MAR'' OR Numerario = ''DEM'' OR Numerario = ''FM'' OR Numerario = ''LIBE'' OR Numerario = ''AWB'') AND Processo = :pREFMS');
           q_Aux.SQL.Add('                 AND Processo = :pREFMS)) AS DESPESAS ');
           q_Aux.SQL.Add('            ,''0'' AS Transportadora_JJ ');
           q_Aux.SQL.Add('            ,''0'' AS Portolog ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) AS Vlr_Bruto FROM Numerarios_Processos WHERE Processo = :pREFMS AND Data_Registro > (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Vlr_Bruto ');
           q_Aux.SQL.Add('            ,''0'' ');
           q_Aux.SQL.Add('            ,''0'' ');
           q_Aux.SQL.Add('            ,''0'' ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) AS Vlr_Bruto FROM Numerarios_Processos WHERE Processo = :pREFMS AND Data_Registro > (SELECT Data_Registro FROM ');
           q_Aux.SQL.Add('                     Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Vlr_Liquido ');
           q_Aux.SQL.Add('           ,Locais_Inventario.Descricao as Embarcacao');
           q_Aux.SQL.Add('           ,(SELECT TOP 1 NFS.NFiscal_e FROM NOTAS_FISCAIS_SERVICOS NFS LEFT JOIN Notas_Fiscais_SERVICOS_PROCESSOS NFSP ON NFS.NFISCAL = NFSP.NFISCAL WHERE NFS.Cancelada = 0 AND ((NFS.PROCESSO = :pREFMS) OR (NFSP.PROCESSO = :pREFMS))) ');
           q_Aux.SQL.Add('       FROM Processos LEFT JOIN Locais_Inventario ');
           q_Aux.SQL.Add('                   ON Processos.Importador       = Locais_Inventario.Importador AND ');
           q_Aux.SQL.Add('                      Processos.Local_Inventario = Locais_Inventario.Local ');
           q_Aux.SQL.Add('      WHERE Processos.Codigo = :pREFMS ');
         end
         else begin
           q_Aux.SQL.Add('SELECT TOP 1 '+QuotedStr(IntToStr(Sequencial))+'          ');
           q_Aux.SQL.Add('            ,'+QuotedStr(q_PlanilhaSequencial.AsString)+' ');
           q_Aux.SQL.Add('            ,Processos.Codigo AS CODIGO ');
           q_Aux.SQL.Add('            ,Conhecimento_Processo.Numerodoccarga AS CONHECIMENTO ');
           q_Aux.SQL.Add('            ,ISNULL(Faturas.Codigo,Processos.Numero_TR) AS FATURA ');
           q_Aux.SQL.Add('            ,Tipos_de_Processos.DESCRICAO AS TP_PROCESSO ');
           q_Aux.SQL.Add('            ,TAB_TIPO_DECLARACAO.Descricao AS REGIME ');
           q_Aux.SQL.Add('            ,'''' AS Planilha_Numerarios ');
           q_Aux.SQL.Add('            ,''0'' AS HONORARIOS ');
           q_Aux.SQL.Add('            ,''0'' AS HONORARIOS_ESPECIAIS ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''ARM'' OR Numerario = ''ARMP'' OR Numerario = ''ARMA'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('                 AND Data_Registro > (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Armazenagem ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos WHERE (Numerario = ''AA'' OR Numerario = ''AAC'' OR Numerario = ''AICF'' OR Numerario = ''AE'') AND Processo = :pREFMS ');
           q_Aux.SQL.Add('                 AND Data_Registro > (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Armazenagem_CF_CP ');
           q_Aux.SQL.Add('            ,''0'' AS Impostos ');
           q_Aux.SQL.Add('            ,''0'' AS Taxas ');
           q_Aux.SQL.Add('            ,''0'' AS AFRMM');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) FROM Numerarios_Processos ');
           q_Aux.SQL.Add('               WHERE (Numerario = ''DC'' OR Numerario = ''TBB'' OR Numerario = ''TXBC'' OR Numerario = ''AWB'') AND Processo = :pREFMS AND Data_Registro > (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) ');
           q_Aux.SQL.Add('                     AS Despesas ');
           q_Aux.SQL.Add('            ,''0'' AS Transportadora_JJ ');
           q_Aux.SQL.Add('            ,''0'' AS Portolog ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) AS Vlr_Bruto FROM Numerarios_Processos WHERE Processo = :pREFMS AND Data_Registro > (SELECT Data_Registro FROM Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Vlr_Bruto ');
           q_Aux.SQL.Add('            ,''0'' AS Ir ');
           q_Aux.SQL.Add('            ,''0'' AS Cofins ');
           q_Aux.SQL.Add('            ,''0'' AS Adiantamento ');
           q_Aux.SQL.Add('            ,(SELECT SUM(Valor_Registrado) AS Vlr_Bruto FROM Numerarios_Processos WHERE Processo = :pREFMS AND Data_Registro > (SELECT Data_Registro FROM ');
           q_Aux.SQL.Add('                     Numerarios_Processos WHERE Numerario = ''HONO'' AND Processo = :pREFMS)) AS Vlr_Liquido ');
           q_Aux.SQL.Add('           ,Locais_Inventario.Descricao as Embarcacao ');
           q_Aux.SQL.Add('           ,(SELECT TOP 1 NFS.NFiscal_e FROM NOTAS_FISCAIS_SERVICOS NFS LEFT JOIN Notas_Fiscais_SERVICOS_PROCESSOS NFSP ON NFS.NFISCAL = NFSP.NFISCAL WHERE NFS.Cancelada = 0 AND ((NFS.PROCESSO = :pREFMS) OR (NFSP.PROCESSO = :pREFMS))) ');
           q_Aux.SQL.Add('       FROM Processos LEFT JOIN Locais_Inventario ');
           q_Aux.SQL.Add('                   ON Processos.Importador       = Locais_Inventario.Importador AND ');
           q_Aux.SQL.Add('                      Processos.Local_Inventario = Locais_Inventario.Local LEFT JOIN Conhecimento_Processo ');
           q_Aux.SQL.Add('                   ON Processos.Codigo = Conhecimento_Processo.Processo LEFT JOIN Faturas ');
           q_Aux.SQL.Add('                   ON Processos.Codigo = Faturas.Processo LEFT JOIN Tipos_de_Processos ');
           q_Aux.SQL.Add('                   ON Processos.Tipo   = Tipos_de_Processos.CODIGO LEFT JOIN TAB_TIPO_DECLARACAO ');
           q_Aux.SQL.Add('                   ON Processos.Tipo_Declaracao = TAB_TIPO_DECLARACAO.Codigo ');
           q_Aux.SQL.Add('      WHERE Processos.Codigo = :pREFMS ');
         end;
       end;

     q_Aux.ParamByName('pREFMS').Value := edRefMS.Text;

     try
       //q_Aux.SQL.SaveToFile('c:\TESTE.TXT');
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

procedure Tf_pnlPrestContasFinanc.edRefMSKeyPress(Sender: TObject; var Key: Char);
begin
  if not (Key In ['0'..'9','/',#8])
   then Key := #0;
end;

function Tf_pnlPrestContasFinanc.GeraNovoSequencial: Integer;
begin
  try
    q_Aux.SQL.Clear;
    q_Aux.SQL.Add('SELECT MAX(SEQUENCIAL) FROM Planilha_PrestContas_Financeiro_Itens');
    q_Aux.Open;

    if q_Aux.Fields[0].AsInteger = 0
     then Result := 1
     else Result := q_Aux.Fields[0].AsInteger + 1;
  finally
    q_Aux.Close;
  end;
end;

procedure Tf_pnlPrestContasFinanc.AtualizaGridItens;
begin
  q_Itens_Planilha.Close;

  q_Itens_Planilha.ParamByName('pSeq_Pla').Value := q_PlanilhaSequencial.AsString;

  q_Itens_Planilha.Open;
end;

procedure Tf_pnlPrestContasFinanc.b_excelClick(Sender: TObject);
var
  linha2, col2 : Integer;
  dir_cor, data, data_arq, vespacos : string;
  CorCelula, CorLetra : TColor;
  Vlr_Liquido : Double;
begin
  if (q_PlanilhaSequencial.AsString <> '')
   then begin
    if (q_PlanilhaCliente.AsString = 'BRASDRIL') 
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

      if (q_PlanilhaCliente.AsString = 'BRASDRIL')
       then Excel.Cells[1,1] := vespacos + 'BRASDRIL SOCIEDADE DE PERFURAÇÕES LTDA';

      Excel.Cells[1,1].Font.Size := 10;
      Excel.cells[1,1].Font.Bold := True;

      Excel.Cells[3,1]           := vespacos + 'RELATÓRIO DE PRESTAÇÃO DE CONTAS - ' + q_PlanilhaPlanilha.AsString + ' - DATA: ' + q_PlanilhaData.AsString;
      Excel.Cells[3,1].Font.Size := 16;
      Excel.cells[3,1].Font.Bold := True;

      Excel.ActiveWindow.DisplayGridlines := True;

      CorCelula := clTeal;
      CorLetra  := clWhite;

      linha2 := 5;
      Celtitulo(linha2, 1,'REF/MS', CorCelula , ACenter, CorLetra, 8, 9);

      Celtitulo(linha2, 2,'NFe', CorCelula , ACenter, CorLetra, 8, 14);

      Celtitulo(linha2, 3,'PLAN. NUMERÁRIOS', CorCelula , ACenter, CorLetra, 8, 14);
      Celtitulo(linha2, 4,'ARMAZENAGENS', CorCelula, ACenter, CorLetra, 8, 14);
      Celtitulo(linha2, 5,'IMPOSTOS', CorCelula, ACenter, CorLetra, 8, 10);
      Celtitulo(linha2, 6,'TAXAS', CorCelula, ACenter, CorLetra, 8, 10);
      Celtitulo(linha2, 7,'DESPESAS', CorCelula, ACenter, CorLetra, 8, 10);
      Celtitulo(linha2, 8,'VALOR BRUTO', CorCelula, ACenter, CorLetra, 8, 12);
      Celtitulo(linha2, 9,'ADIANTAMENTO', CorCelula, ACenter, CorLetra, 8, 12);
      Celtitulo(linha2, 10,'VALOR LÍQUIDO', CorCelula, ACenter, CorLetra, 8, 12);
      Celtitulo(linha2, 11,'EMBARCAÇÃO', CorCelula, ACenter, CorLetra, 8, 24);

      q_Itens_Planilha.First;

      while not q_Itens_Planilha.eof do
       begin
         linha2 := linha2 + 1;

         Excel.cells[linha2, 1] := '''' + q_Itens_PlanilhaRef_ms.asstring;
         Excel.cells[linha2, 1].Borders.Weight    := 2;
         Excel.cells[linha2, 1].Borders.LineStyle := 1;

         Excel.cells[linha2, 2] := '''' + q_Itens_PlanilhaPlanilha_Numerarios.asstring;
         Excel.cells[linha2, 2].Borders.Weight    := 2;
         Excel.cells[linha2, 2].Borders.LineStyle := 1;

         Excel.cells[linha2, 3] := '''' + q_Itens_PlanilhaPlanilha_Numerarios.asstring;
         Excel.cells[linha2, 3].Borders.Weight    := 2;
         Excel.cells[linha2, 3].Borders.LineStyle := 1;

         Excel.cells[linha2, 4] := q_Itens_PlanilhaArmazenagem.asfloat;
         Excel.Cells[linha2, 4].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2, 4].Borders.Weight    := 2;
         Excel.cells[linha2, 4].Borders.LineStyle := 1;

         Excel.cells[linha2, 5] := q_Itens_PlanilhaImpostos.AsFloat;
         Excel.Cells[linha2, 5].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2, 5].Borders.Weight    := 2;
         Excel.cells[linha2, 5].Borders.LineStyle := 1;

         Excel.cells[linha2, 6] := q_Itens_PlanilhaTaxas.AsFloat;
         Excel.Cells[linha2, 6].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2, 6].Borders.Weight    := 2;
         Excel.cells[linha2, 6].Borders.LineStyle := 1;

         Excel.cells[linha2, 7] := q_Itens_PlanilhaDespesas.AsFloat;
         Excel.Cells[linha2, 7].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2, 7].Borders.Weight    := 2;
         Excel.cells[linha2, 7].Borders.LineStyle := 1;

         Excel.cells[linha2, 8] := q_Itens_PlanilhaVlr_Bruto.AsFloat;
         Excel.Cells[linha2, 8].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2, 8].Interior.Color    := clYellow;
         Excel.cells[linha2, 8].Borders.Weight    := 2;
         Excel.cells[linha2, 8].Borders.LineStyle := 1;

         Excel.cells[linha2,9] := q_Itens_PlanilhaAdiantamento.AsFloat;
         Excel.Cells[linha2,9].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2,9].Borders.Weight    := 2;
         Excel.cells[linha2,9].Borders.LineStyle := 1;

         Excel.cells[linha2,10] := q_Itens_PlanilhaVlr_Liquido.AsFloat;
         Excel.Cells[linha2,10].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2,10].Interior.Color    := clYellow;
         Excel.cells[linha2,10].Borders.Weight    := 2;
         Excel.cells[linha2,10].Borders.LineStyle := 1;

         Excel.cells[linha2,11] := q_Itens_PlanilhaEmbarcacao.AsString;
         Excel.cells[linha2,11].HorizontalAlignment := ACenter;
         Excel.cells[linha2,11].Borders.Weight      := 2;
         Excel.cells[linha2,11].Borders.LineStyle   := 1;

         q_Itens_Planilha.Next;
       end;

      Excel.Range['A6', 'T'+IntToStr(linha2)].Font.Color := clBlack;

      {Totais}

      linha2 := linha2 + 1;

      Excel.cells[linha2, 3] := 'TOTAIS';
      Excel.cells[linha2, 3].HorizontalAlignment:= ARight;
      Excel.cells[linha2, 3].Font.Size := 10;
      Excel.cells[linha2, 3].Borders.Weight    := 2;
      Excel.cells[linha2, 3].Borders.LineStyle := 1;

      Excel.ActiveWindow.DisplayGridlines := True;

      {Valor Total}

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

      col2 := 9;
      Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
      Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
      Excel.cells[linha2, col2].Borders.Weight    := 2;
      Excel.cells[linha2, col2].Borders.LineStyle := 1;

      col2 := 10;
      Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
      Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
      Excel.cells[linha2, col2].Borders.Weight    := 2;
      Excel.cells[linha2, col2].Borders.LineStyle := 1;

      Excel.Range['C'+IntToStr(linha2), 'J'+IntToStr(linha2)].interior.Color := CorCelula;
      Excel.Range['C'+IntToStr(linha2), 'J'+IntToStr(linha2)].Font.Color     := CorLetra;
      Excel.Range['C'+IntToStr(linha2), 'J'+IntToStr(linha2)].Font.Bold      := True;

      Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(q_PlanilhaPlanilha.asstring,'/','_', [rfReplaceAll]) + '.xls');
      Application.ProcessMessages;

      Excel.Quit;
      Excel := unassigned;

      showmessage(v_usuario+', a planilha foi gerada no diretório C:\MS2000\PLANILHAS_MS2000');
     end
     else begin
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

      if (q_PlanilhaCliente.AsString = 'MARÉ ALTA')
       then Excel.Cells[1,1] := vespacos + 'MARÉ ALTA DO BRASIL NAVEGAÇÃO LTDA'
       else Excel.Cells[1,1] := vespacos + 'PAN MARINE DO BRASIL LTDA';

      Excel.Cells[1,1].Font.Color := clBlue;
      Excel.Cells[1,1].Font.Size  := 10;
      Excel.cells[1,1].Font.Bold  := True;

      Excel.Cells[3,1]           := vespacos + 'PRESTAÇÃO DE CONTAS - ' + q_PlanilhaPlanilha.AsString + ' - DATA: ' + q_PlanilhaData.AsString;
      Excel.Cells[3,1].Font.Size := 16;
      Excel.cells[3,1].Font.Bold := True;

      Excel.ActiveWindow.DisplayGridlines := True;

      CorCelula := clWhite;
      CorLetra  := clBlack;

      {
      FILE                        = FILE
      NFE                         = NFE      
      CONHECIMENTO                = AWB/BL/HAWB/PROC.TR.
      FATURA                      = FATURA INVOICE / TR
      TP. PROCESSO                = TIPO PROCESSO
      REGIME                      = REG - REGIME
      HONORÁRIOS                  = SERVIÇO DESPACHANTE ADUANEIRO
      HONORÁRIOS ESPECIAIS        = SERVIÇO DESPACHANTE ADUANEIRO ESPECIAL
      ARMAZENAGEM                 = ARMAZ.(AIRJ)/PORTO/NITSHORE
      ARMAZENAGEM CABO FRIO / C.T = ARMAZ.CABO FRIO / CAPE TOWN
      IMPOSTOS                    = ICMS & IMPOSTOS
      TAXAS                       = TX. LIB. AWB/BL/DMURR/FUMIG
      AFRMM                       = AFRMM
      DESPESAS                    = DESPES. CARTÓRIO/DESP. DIVERSAS/BANCO
      TRANSP.JJ                   = TRANSPORTADORA JJ/GALM ACCI
      PORTOLOG                    = TRANSP. PORTOLOG G /EADI
      VLR. BRUTO                  = VALOR BRUTO
      IR                          = IR
      COFINS                      = COFINS
      VLR. LÍQUIDO                = VALOR LÍQUIDO
      EMBARCAÇÃO                  = EMBARCAÇÃO
      }


      linha2 := 5;
      Celtitulo(linha2, 1,'FILE', CorCelula , ACenter, CorLetra, 8, 9);
      Celtitulo(linha2, 2,'NF-e', CorCelula , ACenter, CorLetra, 8, 9);
      Celtitulo(linha2, 3,'AWB/BL/HAWB/'+#13#10+'PROC.TR.', CorCelula , ACenter, CorLetra, 8, 14);
      Celtitulo(linha2, 4,'FATURA INVOICE/'+#13#10+'TR', CorCelula, ACenter, CorLetra, 8, 12);
      Celtitulo(linha2, 5,'TIPO'+#13#10+'PROCESSO', CorCelula, ACenter, CorLetra, 8, 12);
      Celtitulo(linha2, 6,'REG - REGIME', CorCelula, ACenter, CorLetra, 8, 12);
      Celtitulo(linha2, 7,'SERVIÇO DESPACHANTE'+#13#10+'ADUANEIRO', CorCelula, ACenter, CorLetra, 8, 12);
      Celtitulo(linha2, 8,'SERVIÇO DESPACHANTE'+#13#10+'ADUANEIRO ESPECIAL', CorCelula, ACenter, CorLetra, 8, 12);
      Celtitulo(linha2, 9,'IR', CorCelula, ACenter, CorLetra, 8, 6);
      Celtitulo(linha2, 10,'CSLL', CorCelula, ACenter, CorLetra, 8, 8);
      Celtitulo(linha2, 11,'VALOR'+#13#10+'LÍQUIDO', clYellow, ACenter, CorLetra, 8, 10);
      Celtitulo(linha2, 12,'EMBARCAÇÃO', clAqua, ACenter, CorLetra, 8, 20);

      q_Itens_Planilha.First;

      while not q_Itens_Planilha.eof do
       begin
         linha2 := linha2 + 1;

         Excel.cells[linha2, 1] := '''' + q_Itens_PlanilhaRef_ms.asstring;
         Excel.cells[linha2, 1].HorizontalAlignment := ACenter;
         Excel.cells[linha2, 1].Borders.Weight      := 2;
         Excel.cells[linha2, 1].Borders.LineStyle   := 1;

         Excel.cells[linha2, 2] := q_Itens_PlanilhaNfe.asstring;
         Excel.cells[linha2, 2].HorizontalAlignment := ACenter;
         Excel.cells[linha2, 2].Borders.Weight      := 2;
         Excel.cells[linha2, 2].Borders.LineStyle   := 1;

         Excel.cells[linha2, 3] := q_Itens_PlanilhaConhecimento.asstring;
         Excel.cells[linha2, 3].HorizontalAlignment := ACenter;
         Excel.cells[linha2, 3].Borders.Weight      := 2;
         Excel.cells[linha2, 3].Borders.LineStyle   := 1;

         Excel.cells[linha2, 4] := q_Itens_PlanilhaFatura.AsString;
         Excel.cells[linha2, 4].HorizontalAlignment := ACenter;
         Excel.cells[linha2, 4].Borders.Weight      := 2;
         Excel.cells[linha2, 4].Borders.LineStyle   := 1;

         Excel.cells[linha2, 5] := q_Itens_PlanilhaTp_Processo.AsString;
         Excel.cells[linha2, 5].HorizontalAlignment := ACenter;
         Excel.cells[linha2, 5].Borders.Weight    := 2;
         Excel.cells[linha2, 5].Borders.LineStyle := 1;

         Excel.cells[linha2, 6] := q_Itens_PlanilhaRegime.AsString;
         Excel.cells[linha2, 6].HorizontalAlignment := ACenter;
         Excel.cells[linha2, 6].Borders.Weight    := 2;
         Excel.cells[linha2, 6].Borders.LineStyle := 1;

         Excel.cells[linha2, 7] := q_Itens_PlanilhaHonorarios.AsFloat;
         Excel.Cells[linha2, 7].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2, 7].Borders.Weight    := 2;
         Excel.cells[linha2, 7].Borders.LineStyle := 1;

         Excel.cells[linha2, 8] := q_Itens_PlanilhaHonorarios_Especiais.AsFloat;
         Excel.Cells[linha2, 8].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2, 8].Borders.Weight    := 2;
         Excel.cells[linha2, 8].Borders.LineStyle := 1;

         Excel.cells[linha2, 9] := q_Itens_PlanilhaIr.AsFloat;
         Excel.Cells[linha2, 9].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2, 9].Borders.Weight    := 2;
         Excel.cells[linha2, 9].Borders.LineStyle := 1;

         Excel.cells[linha2,10] := q_Itens_PlanilhaCofins.AsFloat;
         Excel.Cells[linha2,10].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2,10].Borders.Weight    := 2;
         Excel.cells[linha2,10].Borders.LineStyle := 1;

         Vlr_Liquido := q_Itens_PlanilhaHonorarios.AsFloat - (q_Itens_PlanilhaIr.AsFloat + q_Itens_PlanilhaCofins.AsFloat);

         Excel.cells[linha2,11] := Vlr_Liquido;
         Excel.Cells[linha2,11].NumberFormatLocal := '#.##0,00';
         Excel.cells[linha2,11].Borders.Weight    := 2;
         Excel.cells[linha2,11].Borders.LineStyle := 1;

         Excel.cells[linha2,12] := q_Itens_PlanilhaEmbarcacao.AsString;
         Excel.cells[linha2,12].HorizontalAlignment := ACenter;
         Excel.cells[linha2,12].Borders.Weight      := 2;
         Excel.cells[linha2,12].Borders.LineStyle   := 1;

         q_Itens_Planilha.Next;
       end;

      Excel.Range['A6', 'J'+IntToStr(linha2)].Font.Color := clBlack;

      {Totais}

      linha2 := linha2 + 1;

      Excel.cells[linha2, 6] := 'TOTAIS';
      Excel.cells[linha2, 6].HorizontalAlignment := ARight;
      Excel.cells[linha2, 6].Font.Size           := 10;
      Excel.cells[linha2, 6].Borders.Weight      := 2;
      Excel.cells[linha2, 6].Borders.LineStyle   := 1;

      Excel.ActiveWindow.DisplayGridlines := True;

      {Valor Total}

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

      col2 := 9;
      Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
      Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
      Excel.cells[linha2, col2].Borders.Weight    := 2;
      Excel.cells[linha2, col2].Borders.LineStyle := 1;

      col2 := 10;
      Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
      Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
      Excel.cells[linha2, col2].Borders.Weight    := 2;
      Excel.cells[linha2, col2].Borders.LineStyle := 1;

      col2 := 11;
      Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L6C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
      Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
      Excel.cells[linha2, col2].Borders.Weight    := 2;
      Excel.cells[linha2, col2].Borders.LineStyle := 1;

      Excel.Range['F'+IntToStr(linha2), 'K'+IntToStr(linha2)].interior.Color := clAqua;
      Excel.Range['F'+IntToStr(linha2), 'K'+IntToStr(linha2)].Font.Color     := CorLetra;
      Excel.Range['F'+IntToStr(linha2), 'K'+IntToStr(linha2)].Font.Bold      := True;

      Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(q_PlanilhaPlanilha.asstring,'/','_', [rfReplaceAll]) + '.xls');
      Application.ProcessMessages;

      Excel.Quit;
      Excel := unassigned;

      showmessage(v_usuario+', a planilha foi gerada no diretório C:\MS2000\PLANILHAS_MS2000');
     end;
   end;
end;

procedure Tf_pnlPrestContasFinanc.CelTitulo(linha, Coluna: Integer; CTitulo: String;
  CColor, CAlign, FColor, FSize, COLSize: Integer);
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

procedure Tf_pnlPrestContasFinanc.HabilitaBotoes(Habilita: Boolean);
begin
  b_incluir.Enabled  := Habilita;
  b_alterar.Enabled  := Habilita;
  b_excluir.Enabled  := Habilita;
  b_salvar.Enabled   := not Habilita;
  b_cancelar.Enabled := not Habilita;
end;

procedure Tf_pnlPrestContasFinanc.b_excluirClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma a exclusão da Planilha ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES 
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('SELECT SEQUENCIAL_PLANILHA FROM Planilha_PrestContas_Financeiro_Itens WHERE SEQUENCIAL_PLANILHA = :p0');
     q_Aux.Params[0].Value := q_PlanilhaSequencial.AsInteger;
     q_Aux.Open;

     if q_Aux.RecordCount >= 1
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('DELETE Planilha_PrestContas_Financeiro_Itens WHERE SEQUENCIAL_PLANILHA = :p0');
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
     q_Aux.SQL.Add('DELETE Planilha_PrestContas_Financeiro WHERE SEQUENCIAL = :p0');
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

procedure Tf_pnlPrestContasFinanc.b_cancelarClick(Sender: TObject);
begin
  HabilitaBotoes(True);

  HabilitaCampos(False);
end;

procedure Tf_pnlPrestContasFinanc.DBG_itensKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_delete)
   then begin
     if q_Itens_PlanilhaRef_ms.AsString <> ''
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('DELETE FROM Planilha_PrestContas_Financeiro_Itens WHERE SEQUENCIAL_PLANILHA =:pSeq_Pla AND SEQUENCIAL =:pSeq AND REF_MS =:pREFMS');
        q_Aux.ParamByName('pSeq_Pla').Value := q_PlanilhaSequencial.AsString;
        q_Aux.ParamByName('pSeq').Value     := q_Itens_PlanilhaSequencial.AsString;
        q_Aux.ParamByName('pREFMS').Value   := q_Itens_PlanilhaRef_ms.AsString;

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

procedure Tf_pnlPrestContasFinanc.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_pnlPrestContasFinanc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_pnlPrestContasFinanc := nil;
  F_MSCOMEX.PlanilhaExcelRelatriodePrestaodeContas1.Enabled := True;
end;

procedure Tf_pnlPrestContasFinanc.ConfiguraGrid(Modelo: Integer);
begin
  case Modelo of
    1 : begin
          DBG_itens.Columns[0].Visible  := True;
          DBG_itens.Columns[1].Visible  := True;
          DBG_itens.Columns[2].Visible  := False;
          DBG_itens.Columns[3].Visible  := False;
          DBG_itens.Columns[4].Visible  := False;
          DBG_itens.Columns[5].Visible  := True;
          DBG_itens.Columns[6].Visible  := False;
          DBG_itens.Columns[7].Visible  := False;
          DBG_itens.Columns[8].Visible  := True;
          DBG_itens.Columns[9].Visible  := False;
          DBG_itens.Columns[10].Visible := True;
          DBG_itens.Columns[11].Visible := True;
          DBG_itens.Columns[12].Visible := False;
          DBG_itens.Columns[13].Visible := True;
          DBG_itens.Columns[14].Visible := False;
          DBG_itens.Columns[15].Visible := False;
          DBG_itens.Columns[16].Visible := False;
          DBG_itens.Columns[17].Visible := False;
          DBG_itens.Columns[18].Visible := True;
          DBG_itens.Columns[19].Visible := True;
          DBG_itens.Columns[20].Visible := True;
          DBG_itens.Columns[21].Visible := True;
        end;

    2 : begin
          DBG_itens.Columns[0].Visible  := True;
          DBG_itens.Columns[1].Visible  := True;
          DBG_itens.Columns[2].Visible  := True;
          DBG_itens.Columns[3].Visible  := True;
          DBG_itens.Columns[4].Visible  := True;
          DBG_itens.Columns[5].Visible  := False;
          DBG_itens.Columns[6].Visible  := True;
          DBG_itens.Columns[7].Visible  := True;
          DBG_itens.Columns[8].Visible  := False;
          DBG_itens.Columns[9].Visible  := False;
          DBG_itens.Columns[10].Visible := False;
          DBG_itens.Columns[11].Visible := False;
          DBG_itens.Columns[12].Visible := False;
          DBG_itens.Columns[13].Visible := False;
          DBG_itens.Columns[14].Visible := False;
          DBG_itens.Columns[15].Visible := False;
          DBG_itens.Columns[16].Visible := True;
          DBG_itens.Columns[17].Visible := True;
          DBG_itens.Columns[18].Visible := True;
          DBG_itens.Columns[19].Visible := False;
          DBG_itens.Columns[20].Visible := True;
          DBG_itens.Columns[21].Visible := True;
        end;
  end;
end;

procedure Tf_pnlPrestContasFinanc.q_Itens_PlanilhaVlr_LiquidoGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  Text := FormatFloat('0.00',q_Itens_PlanilhaVlr_Liquido.AsFloat);
end;

procedure Tf_pnlPrestContasFinanc.DBGrid1TitleClick(Column: TColumn);
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

procedure Tf_pnlPrestContasFinanc.rbTodosClick(Sender: TObject);
begin
  q_Planilha.Filtered := False;

  edFiltroPlanilha.SetFocus;
end;

procedure Tf_pnlPrestContasFinanc.rbBrasdrilClick(Sender: TObject);
begin
  q_Planilha.Filtered := True;
  q_Planilha.Filter   := 'CLIENTE = ''BRASDRIL'' ';

  edFiltroPlanilha.SetFocus;
end;

procedure Tf_pnlPrestContasFinanc.rbMareAltaClick(Sender: TObject);
begin
  q_Planilha.Filtered := True;
  q_Planilha.Filter   := 'CLIENTE = ''MARÉ ALTA'' ';

  edFiltroPlanilha.SetFocus;
end;

procedure Tf_pnlPrestContasFinanc.rbPanMarineClick(Sender: TObject);
begin
  q_Planilha.Filtered := True;
  q_Planilha.Filter   := 'CLIENTE = ''PAN MARINE''';

  edFiltroPlanilha.SetFocus;  
end;

procedure Tf_pnlPrestContasFinanc.LimpaCampos;
begin
  edPlanilha.Clear;
  cbClientes.ItemIndex := -1;
  edData.Clear;
end;

procedure Tf_pnlPrestContasFinanc.edFiltroPlanilhaChange(Sender: TObject);
begin
  q_Planilha.Close;
  q_Planilha.SQL.Clear;
  q_Planilha.SQL.Add('  SELECT *                                              ');
  q_Planilha.SQL.Add('    FROM Planilha_PrestContas_Financeiro                ');
  q_Planilha.SQL.Add('   WHERE PLANILHA LIKE ''%'+edFiltroPlanilha.Text +'%'' ');
  q_Planilha.SQL.Add('ORDER BY CLIENTE, DATA DESC, PLANILHA DESC              ');
  q_Planilha.Open;
end;

procedure Tf_pnlPrestContasFinanc.edFiltroProcessoChange(Sender: TObject);
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

procedure Tf_pnlPrestContasFinanc.BuscaCodigoPlanilha(Proc: String);

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
       q_Aux2.SQL.Add(' SELECT Sequencial_Planilha FROM Planilha_PrestContas_Financeiro_Itens WHERE Ref_Ms = :p0 ');
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

procedure Tf_pnlPrestContasFinanc.btnProximoClick(Sender: TObject);
begin
  if Posicao <= QtdPlanilhas 
   then begin
     Posicao := Posicao + 1;

     btnAnterior.Enabled := Posicao > 1;
     btnProximo.Enabled  := not(Posicao = QtdPlanilhas);

     q_Planilha.locate('Sequencial',Planilha[Posicao],[]);
   end;
end;

procedure Tf_pnlPrestContasFinanc.btnAnteriorClick(Sender: TObject);
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
