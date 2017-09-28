unit uControleHierarquico;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, StdCtrls, Buttons, ImgList, ExtCtrls, Db, DBTables;

type
  TfrmControleHierarquico = class(TForm)
    StatusBar1: TStatusBar;
    TrV: TTreeView;
    ImageList1: TImageList;
    Panel1: TPanel;
    list1: TListBox;
    list2: TListBox;
    Panel2: TPanel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    lb1: TLabel;
    lb2: TLabel;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    qryColaboradores: TQuery;
    Panel3: TPanel;
    btnGravar: TBitBtn;
    btnAlterar: TBitBtn;
    qryAux: TQuery;
    btnCancelar: TBitBtn;
    qryAux2: TQuery;
    Bevel1: TBevel;
    btnCelula: TBitBtn;
    qryRelacao: TQuery;
    qryDeleteColabCel: TQuery;
    qryControleOperacao: TQuery;
    qrySolicitacaoNumerarios: TQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure TrVClick(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnCelulaClick(Sender: TObject);
    procedure list1DblClick(Sender: TObject);
    procedure list2DblClick(Sender: TObject);
  private
    { Private declarations }
    Hierarquia : String;
    Nivel : Integer;
    Procedure BuscarColaboradores( Hierarquia : string );
    Procedure BuscarHierarquia( Hierarquia : string );
    Function NotRelated ( Usuario : String ) : Boolean;
  public
    { Public declarations }
    procedure LogUser( Form: String; Op : String; PK_Registro : Integer; Usuario : String);
    function TemSolicitacaoNumerario( Usuario : String ) : Boolean;
  end;

var
  frmControleHierarquico: TfrmControleHierarquico;

implementation

uses U_MSCOMEX, uControleHierarquicoCelula;

{$R *.DFM}

procedure TfrmControleHierarquico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.ControleHierarquico1.Enabled := True;
  frmControleHierarquico := Nil;
  Action := caFree;
end;

procedure TfrmControleHierarquico.FormShow(Sender: TObject);
begin
  TrV.AutoExpand := true;
end;

procedure TfrmControleHierarquico.TrVClick(Sender: TObject);
begin
  Hierarquia := '';
  Nivel := 999;
  if ( TrV.Selected.Text = 'MS Logistica' ) then begin
    Panel1.Visible := false;
  end
  else
  if ( TrV.Selected.Index = 0 ) then begin
    lb2.Caption := 'Gerente(s)';
    Hierarquia := 'GERENTE';
    Panel1.Visible := true;
    Nivel := 0;
  end
  else
  if ( TrV.Selected.Index = 1 ) then begin
    lb2.Caption := 'Coordenador(es)';
    Hierarquia := 'COORDENADOR';
    Panel1.Visible := true;
    Nivel := 1;
  end
  else
  if ( TrV.Selected.Index = 2 ) then begin
    lb2.Caption := 'Supervisor(es)';
    Hierarquia := 'SUPERVISOR';
    Panel1.Visible := true;
    Nivel := 2;
  end
  else
  if ( TrV.Selected.Index = 3 ) then begin
    lb2.Caption := 'Colaborador(es)';
    Hierarquia := 'COLABORADOR';
    Panel1.Visible := true;
    Nivel := 3;
  end;
  list1.Items.Clear;
  list2.Items.Clear;
  BuscarColaboradores(Hierarquia);
  BuscarHierarquia(Hierarquia);
end;

procedure TfrmControleHierarquico.btn1Click(Sender: TObject);
begin
 list2.Items.Add(list1.Items.Strings[list1.ItemIndex]);
 list1.Items.Delete(list1.ItemIndex);
end;

procedure TfrmControleHierarquico.btn2Click(Sender: TObject);
  var
    i,
    j:Integer;
begin
  for i := 0 to (list1.Items.Count - 1) do begin
    for j := 0 to (list1.Items.Count - 1) do
    begin
      if list1.Selected[j] then
      begin
        list2.Items.Add(list1.Items.Strings[list1.ItemIndex]);
        list1.Items.Delete(list1.ItemIndex);
        break;
      end;
    end;
  end;
end;

procedure TfrmControleHierarquico.btn3Click(Sender: TObject);
  var
    i,
    j:Integer;
begin
  for i := 0 to (list2.Items.Count - 1) do begin
    for j := 0 to (list2.Items.Count - 1) do
    begin
      if list2.Selected[j] then
      begin
        if ( NotRelated(list2.Items.Strings[list2.ItemIndex]) ) then begin
          if ( TemSolicitacaoNumerario(list2.Items.Strings[list2.ItemIndex]) ) then begin
            MessageDlg('Usuário: '+ list2.Items.Strings[list2.ItemIndex] +' possui soicitação(ões) de autorização de numerários em aberto, não será possível movê-lo.', mtInformation, [mbOk], 0);
          end
          else begin
            list1.Items.Add(list2.Items.Strings[list2.ItemIndex]);
            list2.Items.Delete(list2.ItemIndex);
          end
        end
        else
          Application.MessageBox(Pchar('Não foi possível mover o registro: '+list2.Items.Strings[list2.ItemIndex]+', pois ele está relacionado com a tabela de células.'),'Informação', MB_OK + MB_ICONWARNING );
          break;
      end;
    end;
  end;
end;

procedure TfrmControleHierarquico.btn4Click(Sender: TObject);
begin
  if ( NotRelated(list2.Items.Strings[list2.ItemIndex]) ) then begin
    if ( TemSolicitacaoNumerario(list2.Items.Strings[list2.ItemIndex]) ) then begin
      MessageDlg('Usuário possui soicitação(ões) de autorização de numerários em aberto, não será possível movê-lo.', mtInformation, [mbOk], 0);
    end
    else begin
      list1.Items.Add(list2.Items.Strings[list2.ItemIndex]);
      list2.Items.Delete(list2.ItemIndex);
    end;
  end
  else
    Application.MessageBox('Não foi possível mover o registro, pois ele está relacionado com a tabela de células.','Informação', MB_OK + MB_ICONWARNING );
end;

procedure TfrmControleHierarquico.btnAlterarClick(Sender: TObject);
begin
  btnAlterar.Enabled := False;
  btnGravar.Enabled := true;
  btnCancelar.Enabled := true;
  btn1.Enabled := true;
  btn2.Enabled := true;
  //btn3.Enabled := true;
  btn4.Enabled := true;
  list1.Enabled:= true;
  list2.Enabled:= true;
end;

procedure TfrmControleHierarquico.btnGravarClick(Sender: TObject);
  var
    i,
    j:Integer;
begin
  btnAlterar.Enabled := true;
  btnGravar.Enabled := False;
  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  list1.Enabled:= False;
  list2.Enabled:= False;
  btnCancelar.Enabled := false;

  qryAux.SQL.Clear;
  qryAux.SQL.Text := format('delete from Controle_Hierarquico_Colaborador where Hierarquia=%s', [QuotedStr( Hierarquia)]);
  qryAux.ExecSQL;

  for i := 0 to (list2.Items.Count - 1) do begin
    qryAux.SQL.Clear;
    qryAux.SQL.Text :=
    format('insert into Controle_Hierarquico_Colaborador (Colaborador, Hierarquia, Nivel) values(%s,%s,%d)', [QuotedStr(list2.Items.Strings[list2.ItemIndex]), QuotedStr( Hierarquia), Nivel]);
    qryAux.ExecSQL;
    list2.Items.Delete(list2.ItemIndex);
  end;
  qryAux.Close;
  BuscarHierarquia(Hierarquia);
  qryDeleteColabCel.ExecSQL;
end;

procedure TfrmControleHierarquico.btnCancelarClick(Sender: TObject);
begin
  btnAlterar.Enabled := true;
  btnGravar.Enabled := False;
  btnCancelar.Enabled := false;
  btn1.Enabled := False;
  btn2.Enabled := False;
  btn3.Enabled := False;
  btn4.Enabled := False;
  list1.Enabled:= False;
  list2.Enabled:= False;
  BuscarHierarquia(Hierarquia);
  BuscarColaboradores(Hierarquia);
end;

procedure TfrmControleHierarquico.BuscarColaboradores(Hierarquia: string);
begin
  qryColaboradores.Close;
  qryColaboradores.SQL.Clear;
  qryColaboradores.sql.Text := 'select Usuario from Usuarios where '+
                               'not Exists ( select colaborador from Controle_Hierarquico_Colaborador where colaborador = Usuario and Hierarquia <> ''SUPERVISOR'' ) and ativo = 1 Order by Usuario';
  qryColaboradores.Open;
  //and rtrim( Hierarquia ) = '+ QuotedStr( Hierarquia ) +'
  //
  list1.Items.Clear;
  while ( not qryColaboradores.eof ) do begin
    list1.Items.Add( qryColaboradores.fieldByName('Usuario').AsString );
    qryColaboradores.Next;
    Application.ProcessMessages;
  end;
  qryColaboradores.close;
end;

procedure TfrmControleHierarquico.BuscarHierarquia(Hierarquia: string);
begin
  qryAux2.Close;
  qryAux2.SQL.Clear;
  qryAux2.sql.Text := 'select colaborador from Controle_Hierarquico_Colaborador where rtrim( Hierarquia ) = '+ QuotedStr( Hierarquia ) +' Order by colaborador';
  qryAux2.Open;
  //
  list2.Items.Clear;
  while ( not qryAux2.eof ) do begin
    list2.Items.Add( qryAux2.fieldByName('colaborador').AsString );
    qryAux2.Next;
    Application.ProcessMessages;
  end;
  qryAux2.close;
end;

procedure TfrmControleHierarquico.btnCelulaClick(Sender: TObject);
begin
  frmControleHierarquicoCelula := TfrmControleHierarquicoCelula.create(Self);
  frmControleHierarquicoCelula.showmodal;
  frmControleHierarquicoCelula.Free;
end;

function TfrmControleHierarquico.NotRelated(Usuario: String): Boolean;
  var
    GoOn : Boolean;
begin  
  try
    qryRelacao.SQL.Clear;
    if ( Hierarquia = 'GERENTE' ) then
      qryRelacao.SQL.Text := format('select fk_gerente from Controle_Hierarquico_Celulas where fk_gerente=%s and excluido = 0', [quotedstr(Usuario)])
    else
    if ( Hierarquia = 'COORDENADOR' ) then
      qryRelacao.SQL.Text := format('select fk_coordenador from Controle_Hierarquico_Celulas where fk_coordenador=%s and excluido = 0', [quotedstr(Usuario)])
    else
    if ( Hierarquia = 'SUPERVISOR' ) then
      qryRelacao.SQL.Text := format('select fk_supervisor from Controle_Hierarquico_Celulas where fk_supervisor=%s and excluido = 0', [quotedstr(Usuario)])
    else
    if ( Hierarquia = 'COLABORADOR' ) then
      qryRelacao.SQL.Text := format('select fk_supervisor from Controle_Hierarquico_Celulas where FK_Colaborador_Independente=%s and excluido = 0', [quotedstr(Usuario)]);

    qryRelacao.Close;
    qryRelacao.Open;
    If ( qryRelacao.IsEmpty ) then
      GoOn := True
    else
      GoOn := False;
  finally
    Result := GoOn;
  end;
end;

procedure TfrmControleHierarquico.list1DblClick(Sender: TObject);
begin
 list2.Items.Add(list1.Items.Strings[list1.ItemIndex]);
 list1.Items.Delete(list1.ItemIndex);
end;

procedure TfrmControleHierarquico.list2DblClick(Sender: TObject);
begin
  if ( NotRelated(list2.Items.Strings[list2.ItemIndex]) ) then begin
    if ( TemSolicitacaoNumerario(list2.Items.Strings[list2.ItemIndex]) ) then begin
      MessageDlg('Usuário possui soicitação(ões) de autorização de numerários em aberto, não será possível movê-lo.', mtInformation, [mbOk], 0);
    end
    else begin
      list1.Items.Add(list2.Items.Strings[list2.ItemIndex]);
      list2.Items.Delete(list2.ItemIndex);
    end;
  end
  else
    Application.MessageBox('Não foi possível mover o registro, pois ele está relacionado com a tabela de células.','Informação', MB_OK + MB_ICONWARNING );
end;

procedure TfrmControleHierarquico.LogUser(Form, Op: String;
  PK_Registro: Integer; Usuario: String);
begin
  qryControleOperacao.ParamByName('Formulario').Value := Self.Name;
  qryControleOperacao.ParamByName('PK_Registro').AsInteger := PK_Registro;
  qryControleOperacao.ParamByName('Operacao').Value := Op;
  qryControleOperacao.ParamByName('Usuario').Value := Usuario;
  qryControleOperacao.ExecSQL;
end;

function TfrmControleHierarquico.TemSolicitacaoNumerario(
  Usuario: String): Boolean;
begin
  try
    qrySolicitacaoNumerarios.ParamByName('Usuario').Value := Usuario;
    qrySolicitacaoNumerarios.close;
    qrySolicitacaoNumerarios.Open;
    if ( qrySolicitacaoNumerarios.IsEmpty ) then
      Result := False
    else
      Result := True;
  finally
    qrySolicitacaoNumerarios.Close;
  end;
end;

end.
