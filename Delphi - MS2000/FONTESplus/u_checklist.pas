unit u_checklist;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Mask, DBCtrls, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables;

type
  Tf_checklist = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    b_incluir: TBitBtn;
    b_alterar: TBitBtn;
    b_salvar: TBitBtn;
    b_excluir: TBitBtn;
    b_cancelar: TBitBtn;
    b_imprimir: TBitBtn;
    edProcesso: TEdit;
    edRazaoSocial: TEdit;
    p_itens: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    b_incluiritem: TBitBtn;
    edDocumentacao: TEdit;
    edTipoProcesso: TEdit;
    DataSource1: TDataSource;
    q_Processos: TQuery;
    q_Aux: TQuery;
    DataSource2: TDataSource;
    q_ProcessosProcesso: TStringField;
    q_ProcessosRazao_Social: TStringField;
    q_ProcessosDescricao: TStringField;
    q_ProcessosCodigo: TIntegerField;
    t_documentos_processos: TTable;
    t_documentos_processosCodigo: TIntegerField;
    t_documentos_processosFk_Codigo: TIntegerField;
    t_documentos_processosOriginal: TIntegerField;
    t_documentos_processosAssinado: TIntegerField;
    t_documentos_processosCarimbado: TIntegerField;
    t_documentos_processosImpresso: TIntegerField;
    t_documentos_processosCopia: TIntegerField;
    t_documentos_processosDocumentacao: TStringField;
    DBGrid2: TDBGrid;
    procedure b_incluirClick(Sender: TObject);
    procedure b_alterarClick(Sender: TObject);
    procedure b_cancelarClick(Sender: TObject);
    procedure b_imprimirClick(Sender: TObject);
    procedure b_salvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure edProcessoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure b_excluirClick(Sender: TObject);
    procedure q_ProcessosAfterScroll(DataSet: TDataSet);
    procedure b_incluiritemClick(Sender: TObject);
    procedure DBG_documentosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBG_documentosCellClick(Column: TColumn);
    procedure edDocumentacaoChange(Sender: TObject);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    Inclusao  : Boolean;
    Alteracao : Boolean;

    procedure LimpaCampos;
    procedure HabilitaCampos(Habilita: Boolean);
    procedure HabilitaBotoes(Habilita : Boolean);

    procedure AtualizaGrid;
    procedure AtualizaGridItens;

    function ValidaCampos : Boolean;

    procedure ZerarVariaveis;
    procedure MontaInfoPessoais;
  public
    { Public declarations }
  end;

var
  f_checklist: Tf_checklist;

implementation

uses U_MSCOMEX, u_relchecklist;

{$R *.DFM}

{ TForm1 }

procedure Tf_checklist.AtualizaGrid;
begin
  q_Processos.Close;
  q_Processos.Open;
end;

procedure Tf_checklist.AtualizaGridItens;
begin
  t_Documentos_Processos.Close;
  t_Documentos_Processos.Open;

  t_documentos_processos.RecordCount;
end;

procedure Tf_checklist.HabilitaBotoes(Habilita: Boolean);
begin
  b_incluir.Enabled  := Habilita;
  b_alterar.Enabled  := Habilita;
  b_excluir.Enabled  := Habilita;
  b_salvar.Enabled   := not Habilita;
  b_cancelar.Enabled := not Habilita;
end;

procedure Tf_checklist.HabilitaCampos(Habilita: Boolean);
begin
  edProcesso.Enabled     := Habilita;

  if Habilita
   then edProcesso.SetFocus;
end;

procedure Tf_checklist.LimpaCampos;
begin
  edProcesso.Clear;
  edRazaoSocial.Clear;
  edTipoProcesso.Clear;
end;

function Tf_checklist.ValidaCampos: Boolean;
begin
  Result := True;

  if (Length(edProcesso.Text) <> 8)
   then begin
     Application.MessageBox('Favor informar o Processo.','Alerta',MB_ICONWARNING);
     edProcesso.SetFocus;
     Result := False;
     Exit;
   end;
end;

procedure Tf_checklist.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_checklist.b_incluirClick(Sender: TObject);
begin
  LimpaCampos;

  HabilitaCampos(True);

  Inclusao  := True;
  Alteracao := False;

  b_incluir.Enabled  := False;
  b_alterar.Enabled  := False;
  b_excluir.Enabled  := False;
  b_salvar.Enabled   := True;
  b_cancelar.Enabled := True;

  edProcesso.SetFocus;
end;

procedure Tf_checklist.b_alterarClick(Sender: TObject);
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

procedure Tf_checklist.b_cancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  HabilitaBotoes(True);

  HabilitaCampos(False);

  AtualizaGrid;
end;

procedure Tf_checklist.b_imprimirClick(Sender: TObject);
begin
  if not assigned (qr_checklistdoc)
   then Application.CreateForm(Tqr_checklistdoc, qr_checklistdoc);

  MontaInfoPessoais; 

  qr_checklistdoc.q_Processos.Close;
  qr_checklistdoc.q_Processos.Params[0].asstring := q_ProcessosProcesso.AsString;
  qr_checklistdoc.q_Processos.Open;

  qr_checklistdoc.t_checklistdoc.Close;
  qr_checklistdoc.t_checklistdoc.Open;

  qr_checklistdoc.Preview;
end;

procedure Tf_checklist.b_salvarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     HabilitaCampos(False);

     if Inclusao
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('INSERT INTO Faturamento_Check_List VALUES (:p0)');
        q_Aux.Params[0].Value := edProcesso.Text;
      end;

     if Alteracao
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('UPDATE Faturamento_Check_List SET PROCESSO = :p0 WHERE CODIGO = :p1');
        q_Aux.Params[0].Value := edProcesso.Text;
        q_Aux.Params[1].Value := q_ProcessosCodigo.AsInteger;
      end;

     try
       q_Aux.ExecSQL;

       if Inclusao
        then logusu('P','Incluiu Processos/Documentação ' + q_ProcessosProcesso.AsString)
        else logusu('P','Alterou Processos/Documentação ' + q_ProcessosProcesso.AsString);
     except
       ZerarVariaveis;
       Application.MessageBox('Erro na gravação dos Dados','Erro',MB_ICONERROR);
       Abort;
     end;

     AtualizaGrid;
     ZerarVariaveis;
     HabilitaBotoes(True);
   end;
end;

procedure Tf_checklist.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_checklist.edProcessoChange(Sender: TObject);
begin
  if (Length(edProcesso.Text) = 8)
   then begin
     try
       q_Aux.SQL.Clear;
       q_Aux.SQL.Add(' SELECT I.Razao_Social, TP.DESCRICAO                             ');
       q_Aux.SQL.Add('   FROM Processos P INNER JOIN Importadores I                    ');
       q_Aux.SQL.Add('     ON P.Importador = I.Codigo INNER JOIN Tipos_de_Processos TP ');
       q_Aux.SQL.Add('     ON P.Tipo = TP.CODIGO                                       ');
       q_Aux.SQL.Add('  WHERE P.Codigo = :p0                                           ');
       q_Aux.Params[0].Value := edProcesso.Text;
       q_Aux.Open;

       if q_Aux.RecordCount > 0
        then begin
          edRazaoSocial.Text  := q_Aux.FieldByName('RAZAO_SOCIAL').AsString;
          edTipoProcesso.Text := q_Aux.FieldByName('DESCRICAO').AsString;
        end;
     finally
       q_Aux.Close;
     end;
   end;
end;

procedure Tf_checklist.FormClose(Sender: TObject;
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
  f_checklist := nil;
  F_MSCOMEX.CheckListDocumentao1.Enabled := True;
end;

procedure Tf_checklist.FormCreate(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_checklist.b_excluirClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma a exclusão da Documentação do Processo ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('SELECT CODIGO FROM Faturamento_Check_List WHERE CODIGO = :p0');
     q_Aux.Params[0].Value := q_ProcessosCodigo.AsInteger;
     q_Aux.Open;

     if q_Aux.RecordCount >= 1
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('DELETE Faturamento_Check_List_Itens WHERE CODIGO = :p0');
        q_Aux.Params[0].Value := q_ProcessosCodigo.AsInteger;

        try
         q_Aux.ExecSQL;
        except
         Application.MessageBox('Erro na exclusão dos Dados','Erro',MB_ICONERROR);
         AtualizaGrid;
         Abort;
        end;
      end;

     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('DELETE Faturamento_Check_List WHERE CODIGO = :p0');
     q_Aux.Params[0].Value := q_ProcessosCodigo.AsInteger;

     try
      q_Aux.ExecSQL;

      if Inclusao
       then logusu('P','Excluiu Processo/Documentação' + q_ProcessosCodigo.AsString);
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

procedure Tf_checklist.q_ProcessosAfterScroll(DataSet: TDataSet);
begin
  if q_Processos.RecordCount > 0
   then begin
     edProcesso.Text     := q_ProcessosProcesso.AsString;
     edRazaoSocial.Text  := q_ProcessosRazao_Social.AsString;
     edTipoProcesso.Text := q_ProcessosDescricao.AsString;
   end
   else LimpaCampos;

  AtualizaGridItens;
end;

procedure Tf_checklist.b_incluiritemClick(Sender: TObject);
begin
  if q_ProcessosCodigo.AsString <> ''
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('INSERT INTO Faturamento_Check_List_Itens ');
     q_Aux.SQL.Add('      (Fk_Codigo                         ');
     q_Aux.SQL.Add('      ,Documentacao)                     ');
     q_Aux.SQL.Add('      VALUES                             ');
     q_Aux.SQL.Add('      (:p0                               ');
     q_Aux.SQL.Add('      ,:p1)                              ');

     q_Aux.Params[0].Value := q_ProcessosCodigo.AsString;
     q_Aux.Params[1].Value := edDocumentacao.Text;

     try
       q_Aux.ExecSQL;

       logusu('P','Incluiu Documento ' + edDocumentacao.Text + ' ao Check List Documentação do Processo ' + q_ProcessosCodigo.AsString);
     except
       Application.MessageBox('Erro na gravação dos Dados','Erro',MB_ICONERROR);
       Abort;
     end;
   end;

  AtualizaGridItens;
  
  edDocumentacao.Clear;
  edDocumentacao.SetFocus;
end;

procedure Tf_checklist.DBG_documentosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Check : Integer;
  R     : TRect;
begin
  {Desenha um checkbox no dbgrid}
  if (Column.FieldName = 'Original')
   then begin
     DBGrid2.Canvas.FillRect(Rect);
     Check := 0;

     if (t_documentos_processosOriginal.AsInteger = 1)
      then Check := DFCS_CHECKED
      else Check := 0;

     R := Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(DBGrid2.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     Exit;
   end;

  if (Column.FieldName = 'Assinado')
   then begin
     DBGrid2.Canvas.FillRect(Rect);
     Check := 0;

     if (t_documentos_processosAssinado.AsInteger = 1)
      then Check := DFCS_CHECKED
      else Check := 0;

     R := Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(DBGrid2.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     Exit;
   end;

  if (Column.FieldName = 'Carimbado')
   then begin
     DBGrid2.Canvas.FillRect(Rect);
     Check := 0;

     if (t_documentos_processosCarimbado.AsInteger = 1)
      then Check := DFCS_CHECKED
      else Check := 0;

     R := Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(DBGrid2.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     Exit;
   end;

  if (Column.FieldName = 'Impresso')
   then begin
     DBGrid2.Canvas.FillRect(Rect);
     Check := 0;

     if (t_documentos_processosImpresso.AsInteger = 1)
      then Check := DFCS_CHECKED
      else Check := 0;

     R := Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(DBGrid2.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
     Exit;
   end;

  if (Column.FieldName = 'Copia')
   then begin
     DBGrid2.Canvas.FillRect(Rect);
     Check := 0;

     if (t_documentos_processosCopia.AsInteger = 1)
      then Check := DFCS_CHECKED
      else Check := 0;

     R := Rect;
     InflateRect(R,-2,-2); {Diminue o tamanho do CheckBox}
     DrawFrameControl(DBGrid2.Canvas.Handle,R,DFC_BUTTON, DFCS_BUTTONCHECK or Check);
   end;
end;

procedure Tf_checklist.DBG_documentosCellClick(Column: TColumn);
begin
  if Column.FieldName = 'Original'
   then begin
     t_documentos_processos.Edit;

     if t_documentos_processosOriginal.AsInteger = 1
      then t_documentos_processosOriginal.AsInteger := 0
      else t_documentos_processosOriginal.AsInteger := 1;

     t_documentos_processos.Post;
   end;

  if Column.FieldName = 'Assinado'
   then begin
     t_documentos_processos.Edit;

     if t_documentos_processosAssinado.AsInteger = 1
      then t_documentos_processosAssinado.AsInteger := 0
      else t_documentos_processosAssinado.AsInteger := 1;

     t_documentos_processos.Post;
   end;

  if Column.FieldName = 'Carimbado'
   then begin
     t_documentos_processos.Edit;

     if t_documentos_processosCarimbado.AsInteger = 1
      then t_documentos_processosCarimbado.AsInteger := 0
      else t_documentos_processosCarimbado.AsInteger := 1;

     t_documentos_processos.Post;
   end;

  if Column.FieldName = 'Impresso'
   then begin
     t_documentos_processos.Edit;

     if t_documentos_processosImpresso.AsInteger = 1
      then t_documentos_processosImpresso.AsInteger := 0
      else t_documentos_processosImpresso.AsInteger := 1;

     t_documentos_processos.Post;
   end;

  if Column.FieldName = 'Copia'
   then begin
     t_documentos_processos.Edit;

     if t_documentos_processosCopia.AsInteger = 1
      then t_documentos_processosCopia.AsInteger := 0
      else t_documentos_processosCopia.AsInteger := 1;

     t_documentos_processos.Post;
   end;
end;

procedure Tf_checklist.edDocumentacaoChange(Sender: TObject);
begin
  b_incluiritem.Enabled := length(edDocumentacao.Text) > 0;
end;

procedure Tf_checklist.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_delete)
   then begin
     if t_documentos_processosDocumentacao.AsString <> ''
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('DELETE FROM Faturamento_Check_List_Itens WHERE CODIGO = :p0');
        q_Aux.Params[0].Value := t_documentos_processosCodigo.AsInteger;

        try
          q_Aux.ExecSQL;

          logusu('P','Excluiu Documento do Processo ' + q_ProcessosCodigo.AsString);
        except
          Application.MessageBox('Erro na gravação dos Dados','Erro',MB_ICONERROR);
          Abort;
        end;

        AtualizaGridItens;

        edDocumentacao.Clear;
        edDocumentacao.SetFocus;
      end;
   end;
end;

procedure Tf_checklist.MontaInfoPessoais;
var
  QryAux : TQuery;
begin
  if Length(F_MSCOMEX.LRTrim(edProcesso.Text)) <> 8
   then Exit;

  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT Nome_Completo, Ramal, Email FROM Usuarios where Usuario = :p0 ');
    QryAux.Params[0].Value := v_usuario;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then begin
       qr_checklistdoc.qrlUsuario.Caption := QryAux.Fields[0].AsString + ' - Financial Dept.';
       qr_checklistdoc.qrlDirect.Caption  := 'Direct: + 5521 3095 ' + QryAux.Fields[1].AsString;
       qr_checklistdoc.qrlEmail.Caption   := QryAux.Fields[2].AsString;
     end
     else begin
       qr_checklistdoc.qrlUsuario.Caption := QryAux.Fields[0].AsString + ' - Financial Dept.';
       qr_checklistdoc.qrlDirect.Caption  := 'Direct: + 5521 3095 ' + QryAux.Fields[1].AsString;
       qr_checklistdoc.qrlEmail.Caption   := QryAux.Fields[2].AsString;
     end;
  finally
    QryAux.Free;
  end;
end;

end.
