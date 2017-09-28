unit u_agrupaclientes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, Db, DBTables, Buttons, Mask, DBCtrls;

type
  Tf_agrupaclientes = class(TForm)
    p_itens: TPanel;
    lblImportador: TLabel;
    Label3: TLabel;
    edFiltroCliente: TEdit;
    cbClientesDesagrupados: TCheckBox;
    qrClientes: TQuery;
    DataSource1: TDataSource;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    b_desagrupar: TBitBtn;
    Panel3: TPanel;
    Label4: TLabel;
    Label2: TLabel;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    b_agrupar: TBitBtn;
    qrClientesStatus: TStringField;
    qrClientesCodigo: TStringField;
    qrClientesRazao_Social: TStringField;
    qrClientesNome_Grupo: TStringField;
    qrClientesNome_Grupo1: TStringField;
    qrClientesCodigo_Agrupado: TStringField;
    qrClientesCodigo_Agrupado1: TStringField;
    qrClientesReg: TIntegerField;
    lstClientesAgrupamento: TListBox;
    edNomeGrupo: TEdit;
    lblGrupoNovo: TLabel;
    lblGrupoExistente: TLabel;
    DataSource2: TDataSource;
    qrListaGrupos: TQuery;
    dblcbListaGrupos: TDBLookupComboBox;
    GroupBox1: TGroupBox;
    rbGrupoNovo: TRadioButton;
    rbGrupoExistente: TRadioButton;
    qrListaGruposCodigo_Agrupado1: TStringField;
    qrListaGruposNome_Grupo1: TStringField;
    Label1: TLabel;
    edFiltroGrupo: TEdit;
    procedure FormShow(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_desagruparClick(Sender: TObject);
    procedure qrClientesAfterScroll(DataSet: TDataSet);
    procedure b_agruparClick(Sender: TObject);
    procedure cbClientesDesagrupadosClick(Sender: TObject);
    procedure edFiltroClienteChange(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure rbGrupoNovoClick(Sender: TObject);
  private
    { Private declarations }
    CodigoAgrupadoNovo : LongInt;

    procedure AtualizaGRID;

    procedure DesagrupaCliente(Reg : Integer);
    procedure AgrupaClientes;

    procedure HabilitaDesabilitaBotoes;

    procedure DeterminaCodigoAgrupado;

    procedure HabilitaDesabilitaCampos;
  public
    { Public declarations }
  end;

var
  f_agrupaclientes: Tf_agrupaclientes;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_agrupaclientes.FormShow(Sender: TObject);
begin
  AtualizaGRID;

  qrListaGrupos.Open;
end;

procedure Tf_agrupaclientes.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_agrupaclientes.FormClose(Sender: TObject;
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
   
  action := cafree;
  f_agrupaclientes := nil;
  f_mscomex.AgrupamentodeClientes1.enabled := true;
end;

procedure Tf_agrupaclientes.DesagrupaCliente(Reg: Integer);
var
  QrAux : TQuery;
begin
  if Reg > 0
   then begin
     try
       QrAux := TQuery.Create(nil);
       QrAux.DatabaseName := 'DBNMSCOMEX';

       QrAux.SQL.Clear;
       QrAux.SQL.Add(' UPDATE IMPORTADORES_AGRUPADOS                      ');
       QrAux.SQL.Add('    SET CODIGO_AGRUPADO  = ''0000''                 ');
       QrAux.SQL.Add('       ,NOME_GRUPO       = ''*** DESAGRUPADOS ***'' ');
       QrAux.SQL.Add('       ,CODIGO_AGRUPADO1 = ''0000''                 ');
       QrAux.SQL.Add('       ,NOME_GRUPO1      = ''*** DESAGRUPADOS ***'' ');
       QrAux.SQL.Add('  WHERE REG = :REG                                  ');
       QrAux.ParamByName('REG').AsInteger := Reg;

       QrAux.ExecSQL;
     finally
       QrAux.Free;

       AtualizaGRID;
     end;
   end;
end;

procedure Tf_agrupaclientes.b_desagruparClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma o desagrupamento desse Cliente ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
   then DesagrupaCliente(qrClientesReg.AsInteger);
end;

procedure Tf_agrupaclientes.qrClientesAfterScroll(DataSet: TDataSet);
begin
  b_desagrupar.Enabled := qrClientesStatus.AsString = 'AGRUPADO';
  b_agrupar.Enabled    := qrClientesStatus.AsString = 'DESAGRUPADO';
end;

procedure Tf_agrupaclientes.AtualizaGRID;
begin
  if not cbClientesDesagrupados.Checked
   then begin
     qrClientes.SQL.Clear;
     qrClientes.SQL.Add('(SELECT ''AGRUPADO'' AS STATUS, I.Codigo, I.Razao_Social, IA.Nome_Grupo, IA.Nome_Grupo1 ,IA.Codigo_AGRUPADO, IA.Codigo_AGRUPADO1, IA.reg                                      ');
     qrClientes.SQL.Add('   FROM Importadores_Agrupados IA INNER JOIN Importadores I                                                                                                                   ');
     qrClientes.SQL.Add('     ON I.Codigo = IA.Codigo                                                                                                                                                  ');
     qrClientes.SQL.Add('  WHERE I.Codigo NOT LIKE ''X%'' AND I.Codigo NOT LIKE ''A%'' AND IA.Nome_Grupo <> ''*** DESAGRUPADOS ***'' AND IA.Codigo_AGRUPADO <> ''0000''                                ');

     if Trim(edFiltroCliente.Text) <> ''
      then qrClientes.SQL.Add(' AND I.RAZAO_SOCIAL LIKE '''+edFiltroCliente.Text+'%'' ');

     if (Trim(edFiltroGrupo.Text) <> '')
      then qrClientes.SQL.Add(' AND IA.NOME_GRUPO LIKE '''+edFiltroGrupo.Text+'%'' ');

     qrClientes.SQL.Add(' )');

     qrClientes.SQL.Add('  UNION                                                                                                                                                                       ');
     qrClientes.SQL.Add('(SELECT ''DESAGRUPADO'' AS STATUS, I.Codigo, I.Razao_Social, '''' AS Nome_Grupo, IA.Nome_Grupo1 ,''0000'' AS Codigo_AGRUPADO, IA.Codigo_AGRUPADO1, IA.reg ');
     qrClientes.SQL.Add('   FROM Importadores_Agrupados IA INNER JOIN Importadores I                                                                                                                   ');
     qrClientes.SQL.Add('     ON I.Codigo = IA.Codigo                                                                                                                                                  ');
     qrClientes.SQL.Add('  WHERE I.Codigo NOT LIKE ''X%'' AND I.Codigo NOT LIKE ''A%'' AND IA.Nome_Grupo = ''*** DESAGRUPADOS ***'' AND IA.Codigo_AGRUPADO = ''0000''                                  ');

     if (Trim(edFiltroCliente.Text) <> '')
      then qrClientes.SQL.Add(' AND I.RAZAO_SOCIAL LIKE '''+edFiltroCliente.Text+'%'' ');

     if (Trim(edFiltroGrupo.Text) <> '')
      then qrClientes.SQL.Add(' AND IA.NOME_GRUPO LIKE '''+edFiltroGrupo.Text+'%'' ');

     qrClientes.SQL.Add(' )');

     qrClientes.SQL.Add('ORDER BY STATUS, IA.Nome_Grupo, I.RAZAO_SOCIAL ');
   end
   else begin
     qrClientes.SQL.Clear;
     qrClientes.SQL.Add('  (SELECT ''DESAGRUPADO'' AS STATUS, I.Codigo, I.Razao_Social, '''' AS Nome_Grupo, IA.Nome_Grupo1 ,''0000'' AS Codigo_AGRUPADO, IA.Codigo_AGRUPADO1, IA.reg ');
     qrClientes.SQL.Add('     FROM Importadores_Agrupados IA INNER JOIN Importadores I                                                                                                                   ');
     qrClientes.SQL.Add('       ON I.Codigo = IA.Codigo                                                                                                                                                  ');
     qrClientes.SQL.Add('    WHERE I.Codigo NOT LIKE ''X%'' AND I.Codigo NOT LIKE ''A%'' AND IA.Nome_Grupo = ''*** DESAGRUPADOS ***'' AND IA.Codigo_AGRUPADO = ''0000''                                  ');

     if (Trim(edFiltroCliente.Text) <> '')
      then qrClientes.SQL.Add(' AND I.RAZAO_SOCIAL LIKE '''+edFiltroCliente.Text+'%'' ');

     if (Trim(edFiltroGrupo.Text) <> '')
      then qrClientes.SQL.Add(' AND IA.NOME_GRUPO LIKE '''+edFiltroGrupo.Text+'%'' ');

     qrClientes.SQL.Add(' )');

     qrClientes.SQL.Add('  ORDER BY STATUS, IA.Nome_Grupo, I.RAZAO_SOCIAL ');
   end;

  qrClientes.Close;
  qrClientes.Open;
end;

procedure Tf_agrupaclientes.b_agruparClick(Sender: TObject);
begin
  AgrupaClientes;
end;

procedure Tf_agrupaclientes.AgrupaClientes;
begin
  lstClientesAgrupamento.Items.Add(FormatMaskText('000',qrClientesReg.AsString) + ' Cód.: ' + qrClientesCodigo.AsString + ' - Cliente: ' + qrClientesRazao_Social.AsString);

  HabilitaDesabilitaBotoes;
end;

procedure Tf_agrupaclientes.cbClientesDesagrupadosClick(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_agrupaclientes.edFiltroClienteChange(Sender: TObject);
begin
  AtualizaGRID;
end;

procedure Tf_agrupaclientes.btnCancelarClick(Sender: TObject);
begin
  edNomeGrupo.Clear;
  dblcbListaGrupos.KeyValue := '';

  lstClientesAgrupamento.Clear;

  HabilitaDesabilitaBotoes;
end;

procedure Tf_agrupaclientes.HabilitaDesabilitaBotoes;
begin
  dblcbListaGrupos.Enabled := lstClientesAgrupamento.Items.Count >= 2;
  
  btnSalvar.Enabled   := lstClientesAgrupamento.Items.Count >= 1;
  btnCancelar.Enabled := lstClientesAgrupamento.Items.Count >= 1;

  GroupBox1.Enabled        := lstClientesAgrupamento.Items.Count >= 1;
  edNomeGrupo.Enabled      := lstClientesAgrupamento.Items.Count >= 1;
  dblcbListaGrupos.Enabled := lstClientesAgrupamento.Items.Count >= 1;
end;

procedure Tf_agrupaclientes.btnSalvarClick(Sender: TObject);
var
  QrAux : TQuery;
  i : Integer;
begin
  if ((rbGrupoNovo.Checked) and (Trim(edNomeGrupo.Text) <> '')) or
     ((rbGrupoExistente.Checked) and (Trim(dblcbListaGrupos.Text) <> ''))
   then begin
     QrAux := TQuery.Create(nil);
     QrAux.DatabaseName := 'DBNMSCOMEX';

     if rbGrupoNovo.Checked
      then DeterminaCodigoAgrupado;

     try
       try
         for i := 0 to lstClientesAgrupamento.Items.Count - 1 do
          begin
            QrAux.SQL.Clear;
            QrAux.SQL.Add('  UPDATE IMPORTADORES_AGRUPADOS  ');
            QrAux.SQL.Add('     SET CODIGO_AGRUPADO  = :p0, ');
            QrAux.SQL.Add('         CODIGO_AGRUPADO1 = :p1, ');
            QrAux.SQL.Add('         NOME_GRUPO       = :p2, ');
            QrAux.SQL.Add('         NOME_GRUPO1      = :p3  ');
            QrAux.SQL.Add('   WHERE REG = :p4               ');

            if rbGrupoNovo.Checked
             then begin
               QrAux.ParamByName('p0').Value := IntToStr(CodigoAgrupadoNovo);
               QrAux.ParamByName('p1').Value := IntToStr(CodigoAgrupadoNovo);
               QrAux.ParamByName('p2').Value := edNomeGrupo.Text;
               QrAux.ParamByName('p3').Value := edNomeGrupo.Text;
             end
             else begin
               QrAux.ParamByName('p0').Value := qrListaGruposCodigo_Agrupado1.AsString;
               QrAux.ParamByName('p1').Value := qrListaGruposCodigo_Agrupado1.AsString;
               QrAux.ParamByName('p2').Value := qrListaGruposNome_Grupo1.AsString;
               QrAux.ParamByName('p3').Value := qrListaGruposNome_Grupo1.AsString;
             end;

            QrAux.ParamByName('p4').Value := Copy(lstClientesAgrupamento.Items.Strings[i],1,3);
            QrAux.ExecSQL;
          end;
       finally
         QrAux.Free;
       end;
     except
       Application.MessageBox('Erro ao agrupar os clientes.','Erro',MB_ICONERROR);
     end;

     edNomeGrupo.Clear;
     dblcbListaGrupos.KeyValue := '';
     lstClientesAgrupamento.Clear;
     HabilitaDesabilitaBotoes;
     Application.MessageBox('Clientes Agrupados com sucesso','Informação',MB_ICONINFORMATION);

     AtualizaGRID;
   end;
end;

procedure Tf_agrupaclientes.DeterminaCodigoAgrupado;
var
  QrAux2 : TQuery;
begin
  try
    QrAux2 := TQuery.Create(nil);
    QrAux2.DatabaseName := 'DBNMSCOMEX';

    QrAux2.SQL.Clear;
    QrAux2.SQL.Add('SELECT MAX(CODIGO_AGRUPADO) FROM IMPORTADORES_AGRUPADOS WHERE CODIGO_AGRUPADO NOT LIKE ''X%'' AND Codigo_AGRUPADO NOT LIKE ''A%'' ');
    QrAux2.Open;

    CodigoAgrupadoNovo := QrAux2.Fields[0].AsInteger + 1;
  finally
    QrAux2.Free;
  end;
end;

procedure Tf_agrupaclientes.rbGrupoNovoClick(Sender: TObject);
begin
  HabilitaDesabilitaCampos;
end;

procedure Tf_agrupaclientes.HabilitaDesabilitaCampos;
begin
  lblGrupoNovo.Visible := rbGrupoNovo.Checked;
  edNomeGrupo.Visible  := rbGrupoNovo.Checked;

  lblGrupoExistente.Visible := rbGrupoExistente.Checked;
  dblcbListaGrupos.Visible  := rbGrupoExistente.Checked;

  if rbGrupoNovo.Checked
   then edNomeGrupo.SetFocus
   else dblcbListaGrupos.SetFocus;
end;

end.
