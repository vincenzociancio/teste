unit u_associacao_numerarios_documentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls, Mask, Buttons;

type
  Tf_associacao_numerarios_documentos = class(TForm)
    dbgNum: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Bevel2: TBevel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    Bevel3: TBevel;
    Bevel1: TBevel;
    dblcbNumerarios: TDBLookupComboBox;
    dblcbTipoDocumento: TDBLookupComboBox;
    Label5: TLabel;
    dblcbSubTipoDocumento: TDBLookupComboBox;
    ds_tipos_numerarios: TDataSource;
    ds_tipos_documentos: TDataSource;
    ds_sub_tipos_documentos: TDataSource;
    q_Associacao: TQuery;
    q_AssociacaoCodigo: TIntegerField;
    q_AssociacaoCod_Tp_Numerarios: TStringField;
    q_AssociacaoCod_Tp_Documentos: TStringField;
    q_AssociacaoCod_Sub_Tp_Documentos: TStringField;
    q_AssociacaoDescricao1: TStringField;
    q_AssociacaoDescricao2: TStringField;
    q_AssociacaoDescricao3: TStringField;
    ds_qAssociacao: TDataSource;
    q_tipos_numerarios: TQuery;
    q_tipos_documentos: TQuery;
    q_sub_tipos_documentos: TQuery;
    q_tipos_numerariosCodigo: TStringField;
    q_tipos_numerariosDescricao: TStringField;
    q_tipos_documentosCodigo: TStringField;
    q_tipos_documentosDescricao: TStringField;
    q_sub_tipos_documentosCodigo: TStringField;
    q_sub_tipos_documentosDescricao: TStringField;
    q_sub_tipos_documentosTipo_Doc: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure q_AssociacaoAfterScroll(DataSet: TDataSet);
    procedure dblcbTipoDocumentoClick(Sender: TObject);
  private
    { Private declarations }
    Insere, Altera : Boolean;

    procedure HabilitaGravarCancelar(Ativa : Boolean);

    procedure HabilitaCombos(Ativa : Boolean);

    procedure AtualizaGrid;

    procedure AtualizaTiposNumerariosNovos;

    procedure AtualizaTiposNumerariosTotal;

    function ValidaCampos : Boolean;
  public
    { Public declarations }
  end;

var
  f_associacao_numerarios_documentos: Tf_associacao_numerarios_documentos;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_associacao_numerarios_documentos.AtualizaGrid;
begin
  q_Associacao.Close;
  q_Associacao.Open; 
end;

procedure Tf_associacao_numerarios_documentos.FormActivate(
  Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_associacao_numerarios_documentos.FormShow(Sender: TObject);
begin
  AtualizaGrid;

  AtualizaTiposNumerariosTotal;

  q_tipos_documentos.Open;
  q_sub_tipos_documentos.Open;
end;

procedure Tf_associacao_numerarios_documentos.FormClose(Sender: TObject;
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
  f_associacao_numerarios_documentos := nil;
  f_mscomex.AssociaoNumerriosDocumentos1.Enabled := True;
end;

procedure Tf_associacao_numerarios_documentos.btnNovoClick(
  Sender: TObject);
begin
  Insere := True;
  Altera := False;

  dblcbNumerarios.KeyValue       := '';
  dblcbTipoDocumento.KeyValue    := '';
  dblcbSubTipoDocumento.KeyValue := '';

  AtualizaTiposNumerariosNovos;

  HabilitaGravarCancelar(True);

  HabilitaCombos(True);

  dblcbNumerarios.SetFocus;
end;

procedure Tf_associacao_numerarios_documentos.btnAlterarClick(
  Sender: TObject);
begin
  Insere := False;
  Altera := True;

  HabilitaGravarCancelar(True);

  HabilitaCombos(True);

  dblcbNumerarios.SetFocus;  
end;

procedure Tf_associacao_numerarios_documentos.btnExcluirClick(
  Sender: TObject);
var
  QryAux : TQuery;
begin
  if (q_AssociacaoCodigo.AsString <> '')
   then if Application.MessageBox('Deseja realmente excluir essa associação ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
         then begin
           QryAux := TQuery.Create(nil);
           QryAux.DatabaseName := 'DBNMSCOMEX';

           try
             QryAux.Close;
             QryAux.SQL.Clear;
             QryAux.SQL.Add(' DELETE FROM Associacao_Numerario_Documento WHERE CODIGO = :p0');
             QryAux.Params[0].Value := q_AssociacaoCodigo.AsString;
             QryAux.ExecSql;
           finally
             QryAux.Free;

             AtualizaGrid;
           end;
         end;
end;

procedure Tf_associacao_numerarios_documentos.HabilitaGravarCancelar(
  Ativa: Boolean);
begin
  btnNovo.Enabled    := not Ativa;
  btnAlterar.Enabled := not Ativa;
  btnExcluir.Enabled := not Ativa;

  btnGravar.Enabled   := Ativa;
  btnCancelar.Enabled := Ativa;
end;

procedure Tf_associacao_numerarios_documentos.HabilitaCombos(Ativa : Boolean);
begin
  dblcbNumerarios.Enabled       := Ativa;
  dblcbTipoDocumento.Enabled    := Ativa;
  dblcbSubTipoDocumento.Enabled := Ativa;
end;

procedure Tf_associacao_numerarios_documentos.btnCancelarClick(
  Sender: TObject);
begin
  Insere := False;
  Altera := False;

  HabilitaGravarCancelar(False);

  AtualizaTiposNumerariosTotal;

  AtualizaGrid;

  HabilitaCombos(False);  
end;

procedure Tf_associacao_numerarios_documentos.btnGravarClick(
  Sender: TObject);
var
  QryAux : TQuery;
begin
  if ValidaCampos
   then begin
     QryAux := TQuery.Create(nil);
     QryAux.DatabaseName := 'DBNMSCOMEX';

     if Insere
      then begin
        try
          QryAux.Close;
          QryAux.SQL.Clear;
          QryAux.SQL.Add(' INSERT INTO Associacao_Numerario_Documento (Cod_Tp_Numerarios,Cod_Tp_Documentos,Cod_Sub_Tp_Documentos,Usuario) ');
          QryAux.SQL.Add('                                     VALUES (:p0,:p1,:p3,:p4)                                                   ');
          QryAux.Params[0].Value := dblcbNumerarios.KeyValue;
          QryAux.Params[1].Value := dblcbTipoDocumento.KeyValue;
          QryAux.Params[2].Value := dblcbSubTipoDocumento.KeyValue;
          QryAux.Params[3].Value := v_usuario;

          QryAux.ExecSql;
        finally
          QryAux.Free;
        end;
      end;

     if Altera
      then begin
        try
          QryAux.Close;
          QryAux.SQL.Clear;
          QryAux.SQL.Add(' UPDATE Associacao_Numerario_Documento SET Cod_Tp_Numerarios     = :p0, ');
          QryAux.SQL.Add('                                           Cod_Tp_Documentos     = :p1, ');
          QryAux.SQL.Add('                                           Cod_Sub_Tp_Documentos = :p2, ');
          QryAux.SQL.Add('                                           Usuario               = :p3  ');
          QryAux.SQL.Add('  WHERE Codigo = :p4                                                    ');
          QryAux.Params[0].Value := dblcbNumerarios.KeyValue;
          QryAux.Params[1].Value := dblcbTipoDocumento.KeyValue;
          QryAux.Params[2].Value := dblcbSubTipoDocumento.KeyValue;
          QryAux.Params[3].Value := v_usuario;
          QryAux.Params[4].Value := q_AssociacaoCodigo.AsString;          

          QryAux.ExecSql;
        finally
          QryAux.Free;
        end;
      end;
   end;

  Insere := False;
  Altera := False;   

  HabilitaGravarCancelar(False);

  AtualizaTiposNumerariosTotal;

  AtualizaGrid;  

  HabilitaCombos(False);
end;

function Tf_associacao_numerarios_documentos.ValidaCampos: Boolean;
begin
  Result := True;

  if (Trim(dblcbNumerarios.KeyValue) = '')
   then begin
     Application.MessageBox('Favor informar Numerário.','Atenção', MB_ICONEXCLAMATION);
     dblcbNumerarios.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(dblcbTipoDocumento.KeyValue) = '')
   then begin
     Application.MessageBox('Favor informar Tipo de Documento.','Atenção', MB_ICONEXCLAMATION);
     dblcbTipoDocumento.SetFocus;
     Result := False;
     Exit;
   end;

  if (Trim(dblcbSubTipoDocumento.KeyValue) = '')
   then begin
     Application.MessageBox('Favor informar Sub Tipo de Documento.','Atenção', MB_ICONEXCLAMATION);
     dblcbSubTipoDocumento.SetFocus;
     Result := False;
     Exit;     
   end;
end;

procedure Tf_associacao_numerarios_documentos.q_AssociacaoAfterScroll(
  DataSet: TDataSet);
begin
  dblcbNumerarios.KeyValue       := q_AssociacaoCod_Tp_Numerarios.AsString;
  dblcbTipoDocumento.KeyValue    := q_AssociacaoCod_Tp_Documentos.AsString;

  if (q_AssociacaoCod_Sub_Tp_Documentos.AsString <> '')
   then begin
     q_sub_tipos_documentos.Close;
     q_sub_tipos_documentos.SQL.Clear;
     q_sub_tipos_documentos.SQL.Add(' SELECT Tipo_doc, Codigo, Descricao ');
     q_sub_tipos_documentos.SQL.Add('   FROM Sub_Tipo_Documentos         ');

     if (dblcbTipoDocumento.KeyValue <> '')
      then begin
        q_sub_tipos_documentos.SQL.Add('  WHERE Tipo_doc = :p0 ');
        q_sub_tipos_documentos.Params[0].Value := dblcbTipoDocumento.KeyValue;
      end;

     q_sub_tipos_documentos.SQL.Add(' ORDER BY Tipo_doc, Descricao       ');

     q_sub_tipos_documentos.Open;

     dblcbSubTipoDocumento.KeyValue := q_AssociacaoCod_Sub_Tp_Documentos.AsString;
   end;
end;

procedure Tf_associacao_numerarios_documentos.dblcbTipoDocumentoClick(
  Sender: TObject);
begin
  if (dblcbTipoDocumento.KeyValue <> '')
   then begin
     q_sub_tipos_documentos.Close;
     q_sub_tipos_documentos.SQL.Clear;
     q_sub_tipos_documentos.SQL.Add(' SELECT Tipo_doc, Codigo, Descricao ');
     q_sub_tipos_documentos.SQL.Add('   FROM Sub_Tipo_Documentos         ');

     if (dblcbTipoDocumento.KeyValue <> '')
      then begin
        q_sub_tipos_documentos.SQL.Add('  WHERE Tipo_doc = :p0           ');
        q_sub_tipos_documentos.Params[0].Value := dblcbTipoDocumento.KeyValue;
      end;

     q_sub_tipos_documentos.SQL.Add(' ORDER BY Tipo_doc, Descricao       ');

     q_sub_tipos_documentos.Open;

     dblcbSubTipoDocumento.KeyValue := '';

     dblcbSubTipoDocumento.SetFocus;
   end;
end;

procedure Tf_associacao_numerarios_documentos.AtualizaTiposNumerariosNovos;
begin
  q_tipos_numerarios.Close;
  q_tipos_numerarios.SQL.Clear;
  q_tipos_numerarios.SQL.Add(' SELECT Codigo, Descricao ');
  q_tipos_numerarios.SQL.Add('   FROM Tipos_Numerario   ');
  q_tipos_numerarios.SQL.Add('  WHERE Codigo NOT IN (SELECT Cod_Tp_Numerarios FROM Associacao_Numerario_Documento) ');
  q_tipos_numerarios.SQL.Add(' ORDER BY Descricao       ');
  q_tipos_numerarios.Open;
end;

procedure Tf_associacao_numerarios_documentos.AtualizaTiposNumerariosTotal;
begin
  q_tipos_numerarios.Close;
  q_tipos_numerarios.SQL.Clear;
  q_tipos_numerarios.SQL.Add(' SELECT Codigo, Descricao ');
  q_tipos_numerarios.SQL.Add('   FROM Tipos_Numerario   ');
  q_tipos_numerarios.SQL.Add(' ORDER BY Descricao       ');
  q_tipos_numerarios.Open;
end;

end.
