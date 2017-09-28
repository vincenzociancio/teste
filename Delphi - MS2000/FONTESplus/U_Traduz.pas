unit U_Traduz;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Db, DBTables, Grids, DBGrids, Mask, DBCtrls;

type
  Tf_Traduz = class(TForm)
    pnlPrinc: TPanel;
    Q_Traduz: TQuery;
    dbGrPor: TDBGrid;
    dbGrIng: TDBGrid;
    dsPor: TDataSource;
    dsIng: TDataSource;
    Label2: TLabel;
    Label1: TLabel;
    lblTab: TLabel;
    Label3: TLabel;
    GroupBox1: TGroupBox;
    dbEdtCodPor: TDBEdit;
    dbEdtDescPor: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    GroupBox2: TGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    dbEdtCodIng: TDBEdit;
    btnTraduz: TBitBtn;
    btnNova: TBitBtn;
    btnSair: TBitBtn;
    pnlTab: TPanel;
    rgTab: TRadioGroup;
    btnOK: TBitBtn;
    Q_TraduzCodP: TStringField;
    Q_TraduzDescP: TStringField;
    Q_TraduzCodI: TStringField;
    Q_TraduzDescI: TStringField;
    dbEdtDescIng: TEdit;
    Q_Exec: TQuery;
    Q_TraduzAux: TStringField;
    Q_TraduzAux2: TStringField;
    btnLocalizar: TBitBtn;
    Q_TraduzBol: TIntegerField;
    Q_TraduzBol2: TIntegerField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure btnNovaClick(Sender: TObject);
    procedure btnTraduzClick(Sender: TObject);
    procedure Q_TraduzAfterScroll(DataSet: TDataSet);
    procedure btnLocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_Traduz: Tf_Traduz;
  tabPor, tabIng: String;
  item: integer;

implementation

uses U_MSCOMEX;
{$R *.DFM}

procedure Tf_Traduz.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


 {    h := Height;
     w := width ;

     Height := 0;
     width := 0;

     if h>w then m := h
     else m := w;

     p := 10;

     mc := floattostrf(abs(m/p),fffixed,5,0);
     m := strtoint(mc)-1;

     for s := 0 to m do begin

         if (s*p)<h then Height := s*p;
         if (s*p)<w then width := s*p;

     end;

     Height := h;
     width := w; }
end;

procedure Tf_Traduz.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
  f_Traduz := nil;
  f_mscomex.Tradues1.Enabled := true;
end;

procedure Tf_Traduz.FormCreate(Sender: TObject);
begin
  pnlTab.Left:=Trunc((f_Traduz.Width-pnlTab.Width)/2);
  pnlTab.Top :=Trunc((f_Traduz.Height-pnlTab.Height)/2);
end;

procedure Tf_Traduz.btnOKClick(Sender: TObject);
begin
  item := rgTab.ItemIndex;
  tabPor := rgTab.Items.Strings[item];
  lblTab.Caption := UpperCase(tabPor);
  Q_TraduzAux.FieldName := 'Codigo';
  Q_TraduzAux2.FieldName := 'Descricao';
  Q_TraduzBol.FieldKind := fkCalculated;
  Q_TraduzBol2.FieldKind := fkCalculated;
  Case item of
     0: tabPor := 'Canais';
     1: tabPor := 'TAB_TIPO_DECLARACAO';
     2: tabPor := 'TAB_VIA_TRANSPORTE';
     3: tabPor := 'Tipo_Doc_Chegada';
     4: tabPor := 'Tipo_Utilizacao';
     5: tabPor := 'Tipos_de_Cargas';
     6: tabPor := 'Tipos_de_Processos';
     7: tabPor := 'Tipos_Locais_Inventario';
     8: tabPor := 'Tipos_situacao_fiscal';
     9: tabPor := 'Tipos_status_processos';
    10: tabPor := 'Eventos';
    19: tabPor := 'Tipos_status_documentos';
    11: begin
       tabPor := 'Obs_Eventos';
       Q_TraduzAux.FieldName := 'Evento';
    end;
    12: begin
       tabPor := 'Sub_Tipo_Documentos';
       Q_TraduzAux.FieldName := 'Tipo_doc';
       Q_TraduzAux2.FieldName := 'Orgao';
       Q_TraduzBol.FieldName := 'Mostra_usuario_net';
       Q_TraduzBol.FieldKind := fkData;
    end;
    13: begin
       tabPor := 'TAB_UNID_MEDIDA';
       Q_TraduzAux.FieldName := 'ABREV';
    end;
    14: begin
       tabPor := 'Tipo_Doc_Carga';
       Q_TraduzAux.FieldName := 'Via';
    end;
    15: begin
       tabPor := 'Tipo_Documentos';
       Q_TraduzBol.FieldName := 'Tem_Vencimento';
       Q_TraduzBol2.FieldName := 'Mostra_usuario_net';
       Q_TraduzBol.FieldKind := fkData;
       Q_TraduzBol2.FieldKind := fkData;
    end;
    16: begin
       tabPor := 'Tipos_creditos';
       Q_TraduzAux.FieldName := 'Plano_contas';
    end;
    17: begin
       tabPor := 'Tipos_Movimentacao_Repetro';
       Q_TraduzAux.FieldName := 'Modo';
    end;
    18: begin
       tabPor := 'Tipos_Numerario';
       Q_TraduzAux.FieldName := 'Plano_contas';
    end;
  end;

  Q_Traduz.SQL.Clear;
  Q_Traduz.SQL.Add('SELECT P.codigo AS CodP, P.descricao AS DescP, I.codigo AS CodI, I.descricao AS DescI , P.* ');
  Q_Traduz.SQL.Add('FROM ['+tabPor+'] AS P LEFT JOIN ['+tabPor+'_Ing] AS I ON P.CODIGO = I.CODIGO ');
  Case item of
    11: Q_Traduz.SQL.Add('AND P.Evento = I.Evento ');
    12: Q_Traduz.SQL.Add('AND P.Tipo_doc = I.Tipo_doc ');
    14: Q_Traduz.SQL.Add('AND P.Via = I.Via ');
  end;
//  Q_Traduz.SQL.Add('ORDER BY I.CODIGO, I.DESCRICAO ');
  try
     Q_Traduz.Active := True;
  except
     tabPor:=tabPor;
  end;

  pnlTab.Visible := False;
  pnlPrinc.Enabled := True;
  dbGrPor.SetFocus;
end;

procedure Tf_Traduz.btnNovaClick(Sender: TObject);
begin
  pnlTab.Visible := True;
  pnlPrinc.Enabled := False;
  rgTab.SetFocus;
  Q_Traduz.Active := False;
  lblTab.Caption := '<TABELA>';
end;

procedure Tf_Traduz.btnTraduzClick(Sender: TObject);
var
   empresa, filial, bol, bol2: String;

begin
  if MessageDlg('Confirma alteração na tradução?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
     Q_Exec.SQL.Clear;
     empresa := F_mscomex.T_ParametrosEmpresa.AsString;
     filial  := F_mscomex.T_ParametrosFilial.AsString;
     if dbEdtCodIng.Text = '' then begin
       Case Item of
         { TABELA EVENTOS }
         10: begin
           Q_Exec.SQL.Add('INSERT INTO ['+tabPor+'_Ing] (CODIGO, DESCRICAO, Empresa, Filial) ');
           Q_Exec.SQL.Add('SELECT "'+dbEdtCodPor.Text+'", "'+dbEdtDescIng.Text+'" ');
           Q_Exec.SQL.Add(', "'+empresa+'", "'+filial+'" ');
         end;
         { TABELA OBS-EVENTOS }
         11: begin
           Q_Exec.SQL.Add('INSERT INTO ['+tabPor+'_Ing] (CODIGO, DESCRICAO, Empresa, Filial, Evento) ');
           Q_Exec.SQL.Add('SELECT "'+dbEdtCodPor.Text+'", "'+dbEdtDescIng.Text+'" ');
           Q_Exec.SQL.Add(', "'+empresa+'", "'+filial+'", "'+Q_TraduzAux.AsString+'" ');
         end;
         { TABELA SUB_TIPO_DOCUMENTOS }
         12: begin
           if Q_TraduzBol.AsBoolean then Bol:='True' else Bol:='False';
           Q_Exec.SQL.Add('INSERT INTO ['+tabPor+'_Ing] (CODIGO, DESCRICAO, Tipo_doc, Orgao, Mostra_usuario_net) ');
           Q_Exec.SQL.Add('SELECT "'+dbEdtCodPor.Text+'", "'+dbEdtDescIng.Text+'" ');
           Q_Exec.SQL.Add(', "'+Q_TraduzAux.AsString+'" ');
           Q_Exec.SQL.Add(', "'+Q_TraduzAux2.AsString+'" ');
           Q_Exec.SQL.Add(', '+Bol+' ');
         end;
         { TABELA TAB_UNID_MEDIDA }
         13: begin
           Q_Exec.SQL.Add('INSERT INTO ['+tabPor+'_Ing] (CODIGO, DESCRICAO, ABREV) ');
           Q_Exec.SQL.Add('SELECT "'+dbEdtCodPor.Text+'", "'+dbEdtDescIng.Text+'" ');
           Q_Exec.SQL.Add(', "'+Q_TraduzAux.AsString+'" ');
         end;
         { TABELA TIPO_DOC_CARGA }
         14: begin
           Q_Exec.SQL.Add('INSERT INTO ['+tabPor+'_Ing] (CODIGO, DESCRICAO, Via) ');
           Q_Exec.SQL.Add('SELECT "'+dbEdtCodPor.Text+'", "'+dbEdtDescIng.Text+'" ');
           Q_Exec.SQL.Add(', "'+Q_TraduzAux.AsString+'" ');
         end;
         { TABELA TIPO_DOCUMENTOS }
         15: begin
           if Q_TraduzBol.AsBoolean then Bol:='True' else Bol:='False';
           if Q_TraduzBol2.AsBoolean then Bol2:='True' else Bol2:='False';
           Q_Exec.SQL.Add('INSERT INTO ['+tabPor+'_Ing] (CODIGO, DESCRICAO, Tem_Vencimento, Mostra_usuario_net) ');
           Q_Exec.SQL.Add('SELECT "'+dbEdtCodPor.Text+'", "'+dbEdtDescIng.Text+'" ');
           Q_Exec.SQL.Add(', '+Bol+' ');
           Q_Exec.SQL.Add(', '+Bol2+' ');
         end;
         { TABELA TIPOS_CREDITOS E TIPOS_NUMERARIOS }
         16, 18: begin
           Q_Exec.SQL.Add('INSERT INTO ['+tabPor+'_Ing] (CODIGO, DESCRICAO, Empresa, Filial, Plano_contas) ');
           Q_Exec.SQL.Add('SELECT "'+dbEdtCodPor.Text+'", "'+dbEdtDescIng.Text+'" ');
           Q_Exec.SQL.Add(', "'+empresa+'", "'+filial+'", "'+Q_TraduzAux.AsString+'" ');
         end;
         { TABELA TIPOS_MOVIMETACAO_REPETRO }
         17: begin
           Q_Exec.SQL.Add('INSERT INTO ['+tabPor+'_Ing] (CODIGO, DESCRICAO, Modo) ');
           Q_Exec.SQL.Add('SELECT "'+dbEdtCodPor.Text+'", "'+dbEdtDescIng.Text+'" ');
           Q_Exec.SQL.Add(', "'+Q_TraduzAux.AsString+'" ');
         end;
         { TABELAS QUE SÓ CONTEM CÓDIGO E DESCRIÇÃO }
         else begin
           Q_Exec.SQL.Add('INSERT INTO ['+tabPor+'_Ing] (CODIGO, DESCRICAO) ');
           Q_Exec.SQL.Add('SELECT "'+dbEdtCodPor.Text+'", "'+dbEdtDescIng.Text+'" ');
         end;
       end
     end
     else
       begin
         Q_Exec.SQL.Add('UPDATE ['+tabPor+'_Ing] SET ');
         Q_Exec.SQL.Add('DESCRICAO = "'+dbEdtDescIng.Text+'" ' );
         Q_Exec.SQL.Add('WHERE CODIGO = "'+dbEdtCodPor.Text+'" ' );
         Case Item of
           11: Q_Exec.SQL.Add('AND Evento = "'+Q_TraduzAux.AsString+'" ' );
           12: Q_Exec.SQL.Add('AND Tipo_doc = "'+Q_TraduzAux.AsString+'" ' );
           14: Q_Exec.SQL.Add('AND Via = "'+Q_TraduzAux.AsString+'" ' );
         end;
       end;
     Q_Exec.ExecSQL;

     { ATUALIZANDO A TABELA ATUALIZANET }
   

     ShowMessage('Tradução efetuada com sucesso.');
     Q_Traduz.Active := False;
     try
        Q_Traduz.Active := True;
     except
        tabPor:=tabPor;
     end;

     dbGrPor.SetFocus;
  end;
end;

procedure Tf_Traduz.Q_TraduzAfterScroll(DataSet: TDataSet);
begin
  dbEdtDescIng.Text := Q_TraduzDescI.AsString;
  dbEdtDescPor.Hint := dbEdtDescPor.Text;
{  if dbEdtDescIng.Text = '' then
    btnTraduz.Enabled := False
  else
    btnTraduz.Enabled := True;
}
end;

procedure Tf_Traduz.btnLocalizarClick(Sender: TObject);
var pos: integer;
begin
  pos:=0;
  Q_Traduz.Next;
  While (not Q_Traduz.Eof) AND (Q_TraduzDescP.AsString <> Q_TraduzDescI.AsString) AND (Q_TraduzCodI.AsString <> '') AND ((Q_TraduzDescP.AsString = '') XOR (Q_TraduzDescI.AsString <> '')) do begin
      Dec(pos);
      Q_Traduz.Next;
  end;
  if Q_Traduz.Eof then begin
     Q_Traduz.MoveBy(pos);
     MessageDlg('Não foi encontrado mais nenhum registro pendente.',mtInformation,[mbOK],0);
  end;
end;

end.
