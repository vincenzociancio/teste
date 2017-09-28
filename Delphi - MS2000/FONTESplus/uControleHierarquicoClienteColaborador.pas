unit uControleHierarquicoClienteColaborador;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, ComCtrls, Db, DBTables;

type
  TfrmControleHierarquicoClienteColaborador = class(TForm)
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    btn1: TSpeedButton;
    btn2: TSpeedButton;
    btn3: TSpeedButton;
    btn4: TSpeedButton;
    list1: TListBox;
    list2: TListBox;
    Panel2: TPanel;
    lb1: TLabel;
    Panel3: TPanel;
    btnGravar: TBitBtn;
    btnAlterar: TBitBtn;
    btnCancelar: TBitBtn;
    qryAux1: TQuery;
    qryAux: TQuery;
    qryAux2: TQuery;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure list1DblClick(Sender: TObject);
    procedure list2DblClick(Sender: TObject);
  private
    fTipo: integer;
    fCelula: integer;
    Procedure BuscarClientes;
    Procedure BuscarColaborador;
    Procedure BuscarClietesLB2;
    Procedure BuscarColaboradorLB2;
    { Private declarations }
  public
    { Public declarations }
    Function PadRight( St : String; Ch : Char; Len : Integer ) : String; overload;
    property Tipo : integer read fTipo write fTipo;
    property Celula : integer read fCelula write fCelula;

  end;

var
  frmControleHierarquicoClienteColaborador: TfrmControleHierarquicoClienteColaborador;

implementation

uses uControleHierarquico;

{$R *.DFM}

procedure TfrmControleHierarquicoClienteColaborador.btn1Click(
  Sender: TObject);
begin
 list2.Items.Add(list1.Items.Strings[list1.ItemIndex]);
 list1.Items.Delete(list1.ItemIndex);
end;

procedure TfrmControleHierarquicoClienteColaborador.btn2Click(
  Sender: TObject);
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

procedure TfrmControleHierarquicoClienteColaborador.btn3Click(
  Sender: TObject);
  var
    i,
    j:Integer;
begin
  for i := 0 to (list2.Items.Count - 1) do begin
    for j := 0 to (list2.Items.Count - 1) do
    begin
      if list2.Selected[j] then
      begin
        list1.Items.Add(list2.Items.Strings[list2.ItemIndex]);
        list2.Items.Delete(list2.ItemIndex);
        break;
      end;
    end;
  end;
end;

procedure TfrmControleHierarquicoClienteColaborador.btn4Click(
  Sender: TObject);
begin
  if ( frmControleHierarquico.TemSolicitacaoNumerario(Copy(list2.Items.Strings[list2.ItemIndex], 1, 10)) ) then begin
    MessageDlg('Usuário possui soicitação(ões) de autorização de numerários em aberto, não será possível movê-lo.', mtInformation, [mbOk], 0);
  end
  else begin
    list1.Items.Add(list2.Items.Strings[list2.ItemIndex]);
    list2.Items.Delete(list2.ItemIndex);
  end;
end;

procedure TfrmControleHierarquicoClienteColaborador.BuscarClientes;
  var
    Codigo,
    Nome : String;
begin
  qryAux1.Close;
  qryAux1.SQL.Clear;
  qryAux1.sql.Text := 'select Codigo, Razao_Social from Importadores where not Exists '+
                      '( select * from Controle_Hierarquico_Clientes_Cel where FK_Cliente = Codigo and FK_Celula = '''+ IntToStr( Celula ) +''') and ativo = 1 Order by Razao_Social';
  qryAux1.Open;

  list1.Items.Clear;
  while ( not qryAux1.eof ) do begin
    Codigo := qryAux1.fieldByName('Codigo').AsString;
    Nome := qryAux1.fieldByName('Razao_Social').AsString;
    list1.Items.Add(''+Codigo+''^I''+Nome+'');
    qryAux1.Next;
    Application.ProcessMessages;
  end;
  qryAux1.close;
end;

procedure TfrmControleHierarquicoClienteColaborador.FormShow(
  Sender: TObject);
begin
  if ( tipo = 1 ) then Begin
    BuscarClientes;
    BuscarClietesLB2;
  end
  else begin
    BuscarColaborador;
    BuscarColaboradorLB2;
  end;
end;

procedure TfrmControleHierarquicoClienteColaborador.btnAlterarClick(
  Sender: TObject);
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

procedure TfrmControleHierarquicoClienteColaborador.btnCancelarClick(
  Sender: TObject);
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
  if ( tipo = 1 ) then
    BuscarClietesLB2
  else
    BuscarColaboradorLB2;
end;

procedure TfrmControleHierarquicoClienteColaborador.BuscarColaborador;
  var
    Usuario,
    Nome : String;
begin
  qryAux1.Close;
  qryAux1.SQL.Clear;
  qryAux1.sql.Text := 'select Usuario, Nome_Completo from Usuarios where not Exists '+
                      '( select * from Controle_Hierarquico_Colaborador_Cel where FK_Colaborador = Usuario and FK_Celula = '''+ IntToStr( Celula ) +''')and Exists(select * from Controle_Hierarquico_Colaborador where Usuario = Colaborador and Hierarquia = ''COLABORADOR'' ) and ativo = 1 Order by Nome_Completo';
  qryAux1.Open;
  list1.TabWidth := 1;
  list1.Items.Clear;
  while ( not qryAux1.eof ) do begin
    Usuario := Trim( qryAux1.fieldByName('Usuario').AsString );
    Nome := qryAux1.fieldByName('Nome_Completo').AsString;
    list1.Items.Add(''+PadRight( Usuario , ' ', 15 )+''^I''+Nome+'');
    qryAux1.Next;
    Application.ProcessMessages;
  end;
  qryAux1.close;
end;

function TfrmControleHierarquicoClienteColaborador.PadRight(St: String;
  Ch: Char; Len: Integer): String;
Var
  LenSt : Integer;
  Stv : string;
Begin
  LenSt := Length( St );
  If ( LenSt < Len ) Then
    Stv := StringOfChar( Ch, ( Len - LenSt  ) );
  Result := St + Stv;
End;

procedure TfrmControleHierarquicoClienteColaborador.btnGravarClick(
  Sender: TObject);
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

  if ( tipo = 1 ) then begin
    qryAux.SQL.Clear;
    qryAux.SQL.Text := format('delete from Controle_Hierarquico_Clientes_Cel where FK_Celula=%d', [ Celula ]);
    qryAux.ExecSQL;

    for i := 0 to (list2.Items.Count - 1) do begin
      qryAux.SQL.Clear;
      qryAux.SQL.Text :=
      format('insert into Controle_Hierarquico_Clientes_Cel (FK_Cliente, FK_Celula) values(%s,%d)',
             [ QuotedStr(Trim(Copy(list2.Items.Strings[list2.ItemIndex], 1, 4))), Celula ] );
      qryAux.ExecSQL;
      list2.Items.Delete(list2.ItemIndex);
    end;
    qryAux.Close;
    BuscarClietesLB2;
  end
  else begin
    qryAux.SQL.Clear;
    qryAux.SQL.Text := format('delete from Controle_Hierarquico_Colaborador_Cel where FK_Celula=%d', [ Celula ]);
    qryAux.ExecSQL;

    for i := 0 to (list2.Items.Count - 1) do begin
      qryAux.SQL.Clear;
      qryAux.SQL.Text :=
      format('insert into Controle_Hierarquico_Colaborador_Cel (FK_Colaborador, FK_Celula) values(%s,%d)',
             [ QuotedStr(Trim(Copy(list2.Items.Strings[list2.ItemIndex], 1, 10))), Celula ] );
      qryAux.ExecSQL;
      list2.Items.Delete(list2.ItemIndex);
    end;
    qryAux.Close;
    BuscarColaboradorLB2;
  end;

end;

procedure TfrmControleHierarquicoClienteColaborador.BuscarClietesLB2;
  var
  Codigo,
  Nome : String;
begin
  qryAux2.Close;
  qryAux2.SQL.Clear;
  qryAux2.sql.Text :=
  'select I.Codigo, I.Razao_Social from Controle_Hierarquico_Clientes_Cel H inner join Importadores I on H.FK_Cliente = I.Codigo where H.FK_Celula = '''+ IntToStr( Celula ) +''' Order by I.Razao_Social';
  qryAux2.Open;
  //
  list2.Items.Clear;
  while ( not qryAux2.eof ) do begin
    Codigo := qryAux2.fieldByName('Codigo').AsString;
    Nome := qryAux2.fieldByName('Razao_Social').AsString;
    list2.Items.Add(''+Codigo+''^I''+Nome+'');
    qryAux2.Next;
    Application.ProcessMessages;
  end;
  qryAux2.close;
end;

procedure TfrmControleHierarquicoClienteColaborador.BuscarColaboradorLB2;
  var
  Usuario,
  Nome : String;
begin
  qryAux2.Close;
  qryAux2.SQL.Clear;
  qryAux2.sql.Text :=
  'select U.Usuario, U.Nome_Completo from Controle_Hierarquico_Colaborador_Cel H inner join Usuarios U on H.FK_Colaborador = U.Usuario where H.FK_Celula = '''+ IntToStr( Celula ) +''' Order by U.Nome_Completo';
  qryAux2.Open;
  //
  list2.TabWidth := 1;
  list2.Items.Clear;
  while ( not qryAux2.eof ) do begin
    Usuario := Trim( qryAux2.fieldByName('Usuario').AsString );
    Nome := qryAux2.fieldByName('Nome_Completo').AsString;
    list2.Items.Add(''+PadRight( Usuario , ' ', 15 )+''^I''+Nome+'');
    qryAux2.Next;
    Application.ProcessMessages;
  end;
  qryAux2.close;

end;

procedure TfrmControleHierarquicoClienteColaborador.list1DblClick(
  Sender: TObject);
begin
 list2.Items.Add(list1.Items.Strings[list1.ItemIndex]);
 list1.Items.Delete(list1.ItemIndex);
end;

procedure TfrmControleHierarquicoClienteColaborador.list2DblClick(
  Sender: TObject);
begin
  if ( frmControleHierarquico.TemSolicitacaoNumerario(Copy(list2.Items.Strings[list2.ItemIndex], 1 , 10)) ) then begin
    MessageDlg('Usuário possui soicitação(ões) de autorização de numerários em aberto, não será possível movê-lo.', mtInformation, [mbOk], 0);
  end
  else begin
    list1.Items.Add(list2.Items.Strings[list2.ItemIndex]);
    list2.Items.Delete(list2.ItemIndex);
  end;
end;

end.
