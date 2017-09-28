unit u_controle_medicoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, Buttons, Grids, DBGrids, ExtCtrls, DBCtrls, Db, DBTables;

type
  Tf_controle_medicoes = class(TForm)
    pnlPreRPS: TPanel;
    Panel10: TPanel;
    dbgridItensMedicao: TDBGrid;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    dbgridMedicao: TDBGrid;
    dblcbImportadores: TDBLookupComboBox;
    Label7: TLabel;
    Label5: TLabel;
    Label8: TLabel;
    Label1: TLabel;
    btnAdicionaProcesso: TButton;
    lblImportador: TLabel;
    edEmbarcacao: TEdit;
    dsControle_Medicao: TDataSource;
    qrControle_Medicao: TQuery;
    ds_importadores: TDataSource;
    q_importadores: TQuery;
    qrControle_MedicaoCodigo: TIntegerField;
    qrControle_MedicaoLocal_Inventario: TStringField;
    dsControle_Medicao_Itens: TDataSource;
    qrControle_Medicao_Itens: TQuery;
    btnCancelar: TBitBtn;
    btnSalvar: TBitBtn;
    qrAux: TQuery;
    qrControle_MedicaoData_Medicao: TDateTimeField;
    edDataMedicao: TMaskEdit;
    qrControle_Medicao_ItensCodigo: TIntegerField;
    qrControle_Medicao_ItensCodigo_Controle: TIntegerField;
    qrControle_Medicao_ItensProcesso: TStringField;
    qrControle_Medicao_ItensRazao_Social: TStringField;
    edProcesso: TMaskEdit;
    qrControle_Medicao_ItensImportador: TStringField;
    qrControle_MedicaoStatus: TIntegerField;
    Panel1: TPanel;
    q_importadoresCodigo: TStringField;
    q_importadoresNome_Grupo: TStringField;
    q_importadoresCodigo_Agrupado: TStringField;
    q_importadoresRazao_Social: TStringField;
    qrControle_MedicaoImportador_Agrupado: TStringField;
    qrControle_MedicaoNome_Grupo: TStringField;
    qrControle_MedicaoNFiscal: TStringField;
    Label2: TLabel;
    qrControle_Medicao_ItensVal_Nota: TFloatField;
    lblValNota: TLabel;
    cbEmAguardo: TCheckBox;
    pnlFiltro: TPanel;
    GroupBox1: TGroupBox;
    Label3: TLabel;
    edFiltDataFin: TMaskEdit;
    edFiltDataIni: TMaskEdit;
    btnLocalizar: TBitBtn;
    RadioGroup1: TRadioGroup;
    rbEmAndamento: TRadioButton;
    rbEmAguardo: TRadioButton;
    rbFinalizado: TRadioButton;
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qrControle_MedicaoAfterScroll(DataSet: TDataSet);
    procedure btnAdicionaProcessoClick(Sender: TObject);
    procedure edDataMedicaoChange(Sender: TObject);
    procedure edDataMedicaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnExcluirClick(Sender: TObject);
    procedure edProcessoChange(Sender: TObject);
    procedure dbgridItensMedicaoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbEmAndamentoClick(Sender: TObject);
    procedure rbFinalizadoClick(Sender: TObject);
    procedure qrControle_MedicaoStatusGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure qrControle_Medicao_ItensAfterOpen(DataSet: TDataSet);
    procedure edFiltDataFinChange(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
  private
    { Private declarations }
    Inclusao, Alteracao : Boolean;

    Importador : String;

    Val_Nota : Double;

    procedure AtualizaGrid;

    procedure AtualizaGridItens;

    procedure LimpaCampos;

    procedure AtivaCampos(Ativa : Boolean);

    procedure AtivaBotoes(Ativa : Boolean);

    procedure DesativaBotoes;

    procedure ResetaParametros;

    function ProcessoIncluidoNaMedicao : Boolean;

    function ProcessoIncluidoEmOutraMedicao : Boolean;
  public
    { Public declarations }
  end;

var
  f_controle_medicoes: Tf_controle_medicoes;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_controle_medicoes.LimpaCampos;
begin
  dblcbImportadores.KeyValue := '';
  edDataMedicao.Clear;
  edEmbarcacao.Clear;
  edProcesso.Clear;
end;

procedure Tf_controle_medicoes.btnIncluirClick(Sender: TObject);
begin
  Inclusao  := True;
  Alteracao := False;

  LimpaCampos;

  AtualizaGridItens;

  AtivaCampos(True);

  AtivaBotoes(False);
end;

procedure Tf_controle_medicoes.AtivaCampos(Ativa: Boolean);
begin
  dblcbImportadores.Enabled  := Ativa;
  edDataMedicao.Enabled      := Ativa;
  edEmbarcacao.Enabled       := Ativa;

  edProcesso.Enabled         := ((Ativa) and (Alteracao));

  cbEmAguardo.Enabled := ((qrControle_MedicaoStatus.AsInteger = 0) and (Alteracao) and (Ativa));

  pnlFiltro.Enabled := (not Ativa);

  if Ativa
   then dblcbImportadores.SetFocus;
end;

procedure Tf_controle_medicoes.btnAlterarClick(Sender: TObject);
begin
  if qrControle_MedicaoCodigo.AsInteger <> 0
   then begin
     Inclusao  := False;
     Alteracao := True;

     AtivaCampos(True);

     AtivaBotoes(False);

     edProcesso.SetFocus;
   end;
end;

procedure Tf_controle_medicoes.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_controle_medicoes.FormCreate(Sender: TObject);
begin
  AtualizaGrid;

  q_importadores.Open;
end;

procedure Tf_controle_medicoes.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I : Integer;
begin
  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;

  Action := caFree;
  f_controle_medicoes := nil;
  F_MSCOMEX.ControledeMedies1.Enabled := True;  
end;

procedure Tf_controle_medicoes.AtivaBotoes(Ativa: Boolean);
begin
  btnIncluir.Enabled := Ativa;
  btnAlterar.Enabled := Ativa;
  btnExcluir.Enabled := Ativa;

  btnCancelar.Enabled := not Ativa;
  btnSalvar.Enabled   := not Ativa;
end;

procedure Tf_controle_medicoes.btnSalvarClick(Sender: TObject);
begin
  try
    if Inclusao
     then begin
       try
         QrAux.Close;
         QrAux.SQL.Clear;
         QrAux.SQL.Add(' INSERT INTO Controle_Medicao (Importador_Agrupado, Data_Medicao, Local_Inventario) ');
         QrAux.SQL.Add('             Values (:pImportador_Agrupado, :pData_Medicao, :pLocal_Inventario)     ');

         QrAux.ParamByName('pImportador_Agrupado').Value := dblcbImportadores.KeyValue;
         QrAux.ParamByName('pData_Medicao').Value        := edDataMedicao.Text;
         QrAux.ParamByName('pLocal_Inventario').Value    := edEmbarcacao.Text;
         QrAux.ExecSQL;
       except
         Application.MessageBox('Erro ao incluir informações da Medição.','Erro', MB_ICONERROR);
       end;
     end;

    if Alteracao
     then begin
       try
         QrAux.Close;
         QrAux.SQL.Clear;
         QrAux.SQL.Add(' UPDATE Controle_Medicao SET Importador_Agrupado = :pImportador_Agrupado, ');
         QrAux.SQL.Add('                             Data_Medicao        = :pData_Medicao,        ');
         QrAux.SQL.Add('                             Local_Inventario    = :pLocal_Inventario,    ');
         QrAux.SQL.Add('                             Status              = :pStatus               ');         
         QrAux.SQL.Add('  WHERE Codigo = :pCodigo                                                 ');

         QrAux.ParamByName('pImportador_Agrupado').Value := dblcbImportadores.KeyValue;
         QrAux.ParamByName('pData_Medicao').Value        := edDataMedicao.Text;
         QrAux.ParamByName('pLocal_Inventario').Value    := edEmbarcacao.Text;
         QrAux.ParamByName('pCodigo').Value              := qrControle_MedicaoCodigo.Value;

         if cbEmAguardo.Checked
          then QrAux.ParamByName('pStatus').Value        := 1
          else QrAux.ParamByName('pStatus').Value        := 0;


         QrAux.ExecSQL;
       except
         Application.MessageBox('Erro ao alterar informações da Medição.','Erro', MB_ICONERROR);
       end;
     end;
  finally
    QrAux.Close;

    ResetaParametros;

    AtualizaGrid;

    AtualizaGridItens;

    AtivaCampos(False);

    AtivaBotoes(True);
  end;
end;

procedure Tf_controle_medicoes.btnCancelarClick(Sender: TObject);
begin
  ResetaParametros;

  LimpaCampos;

  AtivaBotoes(True);

  AtivaCampos(False);

  AtualizaGrid;
end;

procedure Tf_controle_medicoes.AtualizaGrid;
begin
  qrControle_Medicao.Close;
  qrControle_Medicao.SQL.Clear;
  qrControle_Medicao.SQL.Add('SELECT CM.*, (SELECT TOP 1 NOME_GRUPO FROM Importadores_Agrupados WHERE Codigo_AGRUPADO = CM.Importador_Agrupado) AS Nome_Grupo ');
  qrControle_Medicao.SQL.Add('  FROM Controle_Medicao CM                                                                                                      ');
  qrControle_Medicao.SQL.Add(' WHERE CM.Status = :p0                                                                                                          ');

  if rbEmAndamento.Checked
   then qrControle_Medicao.Params[0].Value := 0;

  if rbEmAguardo.Checked
   then qrControle_Medicao.Params[0].Value := 1;

  if rbFinalizado.Checked
   then qrControle_Medicao.Params[0].Value := 2;

  if (edFiltDataIni.Text <> '  /  /    ')
   then begin
     qrControle_Medicao.SQL.Add(' AND CM.Data_Medicao >= :p1 ');
     qrControle_Medicao.Params[1].Value := StrToDate(edFiltDataIni.Text);
   end;

  if (edFiltDataFin.Text <> '  /  /    ')
   then begin
     qrControle_Medicao.SQL.Add(' AND CM.Data_Medicao <= :p2 ');
     qrControle_Medicao.Params[2].Value := StrToDate(edFiltDataFin.Text);
   end;  

  qrControle_Medicao.SQL.Add(' ORDER BY CM.Data_Medicao DESC, NOME_GRUPO, CM.NFISCAL ');

  //qrControle_Medicao.SQL.SaveToFile('C:\TESTE.TXT');  

  qrControle_Medicao.Open;
end;

procedure Tf_controle_medicoes.qrControle_MedicaoAfterScroll(
  DataSet: TDataSet);
begin
  dblcbImportadores.KeyValue := qrControle_MedicaoImportador_Agrupado.AsString;
  edDataMedicao.Text         := qrControle_MedicaoData_Medicao.AsString;
  edEmbarcacao.Text          := qrControle_MedicaoLocal_Inventario.AsString;

  cbEmAguardo.Checked        := (qrControle_MedicaoStatus.AsInteger = 2);

  Val_Nota := 0;

  AtualizaGridItens;
end;

procedure Tf_controle_medicoes.btnAdicionaProcessoClick(Sender: TObject);
begin
  try
    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' INSERT INTO Controle_Medicao_Itens (Codigo_Controle, Processo, Importador) ');
    QrAux.SQL.Add('      VALUES (:pCodigo_Controle, :pProcesso, :pImportador)                  ');

    QrAux.ParamByName('pCodigo_Controle').Value := qrControle_MedicaoCodigo.Value;
    QrAux.ParamByName('pProcesso').Value        := edProcesso.Text;
    QrAux.ParamByName('pImportador').Value      := Importador;
    QrAux.ExecSQL;

    AtualizaGridItens;

    edProcesso.Clear;
    lblImportador.Caption := '';

    edProcesso.SetFocus;
  except
    Application.MessageBox('Erro ao incluir Processo para a Medição.','Erro', MB_ICONERROR);
  end;
end;

procedure Tf_controle_medicoes.edDataMedicaoChange(Sender: TObject);
begin
  if (edDataMedicao.Text <> '  /  /    ')
   then begin
     if (Length(F_MSCOMEX.LRDataTrim(edDataMedicao.Text)) = 8)
      then begin
        try
          StrToDate(edDataMedicao.Text);
        except
          Application.MessageBox('Data da Medição incorreta','Aviso', MB_ICONWARNING);
          edDataMedicao.SetFocus;
        end;
      end;
   end;
end;

procedure Tf_controle_medicoes.edDataMedicaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',#8])
   then Key := #0;
end;

procedure Tf_controle_medicoes.AtualizaGridItens;
begin
  qrControle_Medicao_Itens.Close;
  qrControle_Medicao_Itens.ParamByName('pCodigo_Controle').Value := qrControle_MedicaoCodigo.Value;
  qrControle_Medicao_Itens.Open;
end;

procedure Tf_controle_medicoes.btnExcluirClick(Sender: TObject);
begin
  if qrControle_MedicaoCodigo.AsInteger <> 0
   then begin
     if Application.MessageBox('Deseja realmente excluir essa Medição ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
      then begin
        if (Trim(qrControle_MedicaoCodigo.AsString) <> '')
         then begin
           try
             QrAux.Close;
             QrAux.SQL.Clear;
             QrAux.SQL.Add(' DELETE Controle_Medicao WHERE Codigo = :p0 ');
             QrAux.Params[0].Value := qrControle_MedicaoCodigo.Value;
             QrAux.ExecSQL;

             QrAux.Close;
             QrAux.SQL.Clear;
             QrAux.SQL.Add(' DELETE Controle_Medicao_Itens WHERE Codigo_Controle = :p0 ');
             QrAux.Params[0].Value := qrControle_MedicaoCodigo.Value;
             QrAux.ExecSQL;
           except
             Application.MessageBox('Erro ao excluir Medição.','Erro', MB_ICONERROR);
           end;

           LimpaCampos;

           AtualizaGridItens;

           AtualizaGrid;
         end;
      end;
   end;
end;

procedure Tf_controle_medicoes.edProcessoChange(Sender: TObject);
begin
  Importador := '';
  lblImportador.Caption := '';

  if Length(F_MSCOMEX.LRTrim(edProcesso.Text)) = 8
   then begin
     QrAux.Close;
     QrAux.SQL.Clear;
     QrAux.SQL.Add(' SELECT NFS.NFiscal                                                                ');
     QrAux.SQL.Add('   FROM Notas_Fiscais_Servicos NFS LEFT JOIN Notas_Fiscais_Servicos_Processos NFSP ');
     QrAux.SQL.Add('     ON NFS.NFiscal = NFSP.NFISCAL                                                 ');
     QrAux.SQL.Add('  WHERE NFS.Cancelada = 0 AND ((NFS.Processo = :p0) OR (NFSP.Processo = :p0))      ');
     QrAux.Params[0].Value := edProcesso.Text;
     QrAux.Open;

     if qrAux.RecordCount > 0
      then begin
        Application.MessageBox(PChar('Processo já faturado na RPS: ' + qrAux.Fields[0].AsString + ', não será possível adicioná-lo.'),'Atenção', MB_ICONWARNING);
        Abort;
      end;

     QrAux.Close;
     QrAux.SQL.Clear;
     QrAux.SQL.Add(' SELECT P.IMPORTADOR, I.RAZAO_SOCIAL, IA.Codigo_AGRUPADO             ');
     QrAux.SQL.Add('   FROM PROCESSOS P INNER JOIN IMPORTADORES I                        ');
     QrAux.SQL.Add('     ON P.IMPORTADOR = I.CODIGO INNER JOIN Importadores_Agrupados IA ');
     QrAux.SQL.Add('     ON I.Codigo = IA.Codigo                                         ');
     QrAux.SQL.Add('  WHERE P.CODIGO = :p0                                               ');
     QrAux.Params[0].Value := edProcesso.Text;
     QrAux.Open;

     btnAdicionaProcesso.Enabled := False;

     if qrAux.RecordCount > 0
      then btnAdicionaProcesso.Enabled := (qrControle_MedicaoImportador_Agrupado.AsString = qrAux.Fields[2].AsString);

     if btnAdicionaProcesso.Enabled
      then begin
        Importador            := qrAux.FieldByName('Importador').asString;
        lblImportador.Caption := qrAux.FieldByName('Razao_Social').asString;

        if ProcessoIncluidoNaMedicao
         then begin
           Application.MessageBox('Processo já incluído na Medição, favor verificar.','Atenção', MB_ICONWARNING);
           Abort;
         end;

        if ProcessoIncluidoEmOutraMedicao
         then begin
           Application.MessageBox('Processo já incluído em outra Medição, favor verificar.','Atenção', MB_ICONWARNING);
           Abort;
         end;

        if btnAdicionaProcesso.Enabled
         then btnAdicionaProcesso.SetFocus;
      end
      else begin
        Application.MessageBox('Processo não existe ou não pertence ao importador informado na medição, favor verificar.','Atenção', MB_ICONWARNING);
        Importador := '';
      end;  
   end;
end;

procedure Tf_controle_medicoes.dbgridItensMedicaoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_delete) and Alteracao
   then begin
     if (Trim(qrControle_Medicao_ItensCodigo.AsString) <> '')
      then begin
        try
          QrAux.Close;
          QrAux.SQL.Clear;
          QrAux.SQL.Add(' DELETE Controle_Medicao_Itens WHERE Codigo = :p0 ');
          QrAux.Params[0].Value := qrControle_Medicao_ItensCodigo.Value;
          QrAux.ExecSQL;
        except
          Application.MessageBox('Erro ao excluir Medição.','Erro', MB_ICONERROR);
          Abort;
        end;

        AtualizaGridItens;

        dbgridItensMedicao.SetFocus;
      end;
   end;
end;

function Tf_controle_medicoes.ProcessoIncluidoEmOutraMedicao: Boolean;
begin
  try
    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' SELECT Processo FROM Controle_Medicao_Itens WHERE Processo = :pProcesso ');
    QrAux.ParamByName('pProcesso').Value := edProcesso.Text;
    QrAux.Open;

    if (qrAux.RecordCount = 0)
     then Result := False
     else Result := True;
  finally
    edProcesso.SetFocus;
  end;
end;

function Tf_controle_medicoes.ProcessoIncluidoNaMedicao: Boolean;
begin
  try
    QrAux.Close;
    QrAux.SQL.Clear;
    QrAux.SQL.Add(' SELECT Processo FROM Controle_Medicao_Itens WHERE Codigo_Controle = :pCodigo_Controle AND Processo = :pProcesso ');
    QrAux.ParamByName('pCodigo_Controle').Value := qrControle_Medicao_ItensCodigo_Controle.Value;
    QrAux.ParamByName('pProcesso').Value        := edProcesso.Text;
    QrAux.Open;

    if (qrAux.RecordCount = 0)
     then Result := False
     else Result := True;
  finally
    edProcesso.SetFocus;
  end;
end;

procedure Tf_controle_medicoes.rbEmAndamentoClick(Sender: TObject);
begin
  LimpaCampos;

  AtualizaGrid;

  AtualizaGridItens;

  AtivaBotoes(True);
end;

procedure Tf_controle_medicoes.rbFinalizadoClick(Sender: TObject);
begin
  LimpaCampos;

  AtualizaGrid;

  AtualizaGridItens;

  DesativaBotoes;
end;

procedure Tf_controle_medicoes.qrControle_MedicaoStatusGetText(
  Sender: TField; var Text: String; DisplayText: Boolean);
begin
  if qrControle_Medicao.RecordCount > 0
   then begin
     if (qrControle_MedicaoStatus.Value = 0)
      then Text := 'Em andamento';

     if (qrControle_MedicaoStatus.Value = 1)
      then Text := 'Em aguardo';

     if (qrControle_MedicaoStatus.Value = 2)
      then Text := 'Finalizado';
   end;
end;

procedure Tf_controle_medicoes.qrControle_Medicao_ItensAfterOpen(
  DataSet: TDataSet);
begin
  qrControle_Medicao_Itens.First;

  while not qrControle_Medicao_Itens.Eof do
   begin
     Val_Nota := Val_Nota + qrControle_Medicao_ItensVal_Nota.AsFloat;

     lblValNota.Caption := FormatFloat('0.00',Val_Nota);

     qrControle_Medicao_Itens.Next;
   end;
end;

procedure Tf_controle_medicoes.DesativaBotoes;
begin
  btnIncluir.Enabled := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;

  btnCancelar.Enabled := False;
  btnSalvar.Enabled   := False;
end;

procedure Tf_controle_medicoes.edFiltDataFinChange(Sender: TObject);
begin
  if (TMaskEdit(Sender).Text <> '  /  /    ')
   then begin
     btnLocalizar.Enabled := (Length(F_MSCOMEX.LRDataTrim(edFiltDataIni.Text)) = 8) and (Length(F_MSCOMEX.LRDataTrim(edFiltDataFin.Text)) = 8);

     if (Length(F_MSCOMEX.LRDataTrim(TMaskEdit(Sender).Text)) = 8)
      then begin
        try
          StrToDate(TMaskEdit(Sender).Text);
        except
          Application.MessageBox('Data incorreta','Aviso', MB_ICONWARNING);
          TMaskEdit(Sender).SetFocus;
        end;
      end;
   end;
end;

procedure Tf_controle_medicoes.btnLocalizarClick(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_controle_medicoes.ResetaParametros;
begin
  Alteracao := False;
  Inclusao  := False;
end;

end.
