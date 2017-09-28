unit U_localizapro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, Grids, DBGrids, Buttons, ExtCtrls, DBCtrls;

type
  TF_localizapro = class(TForm)
    Q_localiza: TQuery;
    ds_qlocaliza: TDataSource;
    b_localiza: TBitBtn;
    rg_localiza: TRadioGroup;
    me_localiza: TMaskEdit;
    DBGrid1: TDBGrid;
    T_pastas: TTable;
    ds_pastas: TDataSource;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    T_pastasEmpresa: TStringField;
    T_pastasFilial: TStringField;
    T_pastasProcesso: TStringField;
    T_pastasUsuario: TStringField;
    rgOptOrdenar: TRadioGroup;
    procedure b_localizaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_localizapro: TF_localizapro;

implementation

//uses U_MSCOMEX;

{$R *.DFM}

procedure TF_localizapro.b_localizaClick(Sender: TObject);
var
 OrderBy : String;
begin
q_localiza.close;
q_localiza.SQL.Clear;


   if rgOptOrdenar.ItemIndex = 0 then  OrderBy :=' Order by Processos.Codigo '  else OrderBy :=' Order by Importadores.Razao_Social ';
//MessageDlg('itemindex: ' + inttostr(rg_localiza.itemindex), mtInformation,[mbOk], 0);
case rg_localiza.itemindex of
    0:  begin
          Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social');
          Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)');
          Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social');
          Q_localiza.SQL.Add('HAVING (((Processos.Codigo) Like :qvar))');
          //Q_localiza.SQL.Add(OrderBy);
        end;

    1 : begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social');
         Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Filial = Importadores.Filial) AND (Processos.Importador = Importadores.Codigo)');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Codigo_Cliente');
         Q_localiza.SQL.Add('HAVING (((Processos.Codigo_Cliente) Like :qvar))');
          //Q_localiza.SQL.Add(OrderBy);
        end;
    2 : begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.NR_DECLARACAO_IMP, Processos.NR_DECLARACAO_IMPC');
         Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.NR_DECLARACAO_IMP, Processos.NR_DECLARACAO_IMPC');
         Q_localiza.SQL.Add('HAVING (((Processos.NR_DECLARACAO_IMP) Like :qvar) or ((Processos.NR_DECLARACAO_IMPC) Like :qvar))');
         //Q_localiza.SQL.Add(OrderBy);
        end;
    3 : begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_RCR');
         Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Filial = Importadores.Filial) AND (Processos.Importador = Importadores.Codigo)');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_RCR');
         Q_localiza.SQL.Add('HAVING (((Processos.Numero_RCR) Like :qvar))');
         //Q_localiza.SQL.Add(OrderBy);
        end;
    4 : begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_TR');
         Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Filial = Importadores.Filial) AND (Processos.Importador = Importadores.Codigo)');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_TR');
         Q_localiza.SQL.Add('HAVING (((Processos.Numero_TR) Like :qvar))');
         //Q_localiza.SQL.Add(OrderBy);
        end;
    5 : begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numerodoccarga');
         Q_localiza.SQL.Add('FROM (Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)) INNER JOIN Conhecimento_Processo ON ');
         Q_localiza.SQL.Add('(Processos.Codigo = Conhecimento_Processo.Processo) AND (Processos.Filial = Conhecimento_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo.Empresa)');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numerodoccarga');
         Q_localiza.SQL.Add('HAVING (((Conhecimento_Processo.Numerodoccarga) Like :qvar))');
         //Q_localiza.SQL.Add(OrderBy);
        end;
    6 : begin;
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numeromaster');
         Q_localiza.SQL.Add('FROM (Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND');
         Q_localiza.SQL.Add('(Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)) INNER ');
         Q_localiza.SQL.Add('JOIN Conhecimento_Processo ON (Processos.Codigo = Conhecimento_Processo.Processo) AND (Processos.Filial = Conhecimento_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo.Empresa)');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numeromaster');
         Q_localiza.SQL.Add('HAVING (((Conhecimento_Processo.Numeromaster) Like :qvar))');
         //Q_localiza.SQL.Add(OrderBy);
        end;
    7 : begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numeromanifesto');
         Q_localiza.SQL.Add('FROM (Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND ');
         Q_localiza.SQL.Add('(Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)) INNER ');
         Q_localiza.SQL.Add('JOIN Conhecimento_Processo ON (Processos.Codigo = Conhecimento_Processo.Processo) AND (Processos.Filial = Conhecimento_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo.Empresa)');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numeromanifesto');
         Q_localiza.SQL.Add('HAVING (((Conhecimento_Processo.Numeromanifesto) Like :qvar))');
         //Q_localiza.SQL.Add(OrderBy);
        end;
    8 : begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.codigo_presenca_carga');
         Q_localiza.SQL.Add('FROM (Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND ');
         Q_localiza.SQL.Add('(Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)) INNER ');
         Q_localiza.SQL.Add('JOIN Conhecimento_Processo ON (Processos.Codigo = Conhecimento_Processo.Processo) AND (Processos.Filial = Conhecimento_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo.Empresa)');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.codigo_presenca_carga');
         Q_localiza.SQL.Add('HAVING (((Conhecimento_Processo.codigo_presenca_carga) Like :qvar))');
        end;
    9 : begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social');
         Q_localiza.SQL.Add('FROM (Processos INNER JOIN Importadores ON ');
         Q_localiza.SQL.Add('(Processos.Importador = Importadores.Codigo) AND ');
         Q_localiza.SQL.Add('(Processos.Filial = Importadores.Filial) AND ');
         Q_localiza.SQL.Add('(Processos.Empresa = Importadores.Empresa)) INNER JOIN Faturas ON (Processos.Empresa = Faturas.Empresa) AND (Processos.Filial = Faturas.Filial) AND (Processos.Codigo = Faturas.Processo)');
         Q_localiza.SQL.Add('WHERE (((Faturas.Codigo) Like :qvar))');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social');
        end;
    10: begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Data');
         Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Data');
         Q_localiza.SQL.Add('HAVING (((Processos.Data) >= :qvar))');
         //Q_localiza.Params[0].AsString := me_localiza.text
        end;
    11: begin
         Q_localiza.SQL.Add('SELECT ItensFaturas.PO, Importadores.Empresa, Importadores.Filial, Processos.Codigo, Importadores.Razao_Social');
         Q_localiza.SQL.Add('FROM (ItensFaturas INNER JOIN Processos ON (ItensFaturas.Processo = Processos.Codigo) AND (ItensFaturas.Filial = Processos.Filial) ');
         Q_localiza.SQL.Add('AND (ItensFaturas.Empresa = Processos.Empresa)) INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)');
         Q_localiza.SQL.Add('GROUP BY ItensFaturas.PO, Importadores.Empresa, Importadores.Filial, Processos.Codigo, Importadores.Razao_Social');
         Q_localiza.SQL.Add('HAVING (((ItensFaturas.PO) Like :qvar))');
        end;
    12: begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.DDE ');
         Q_localiza.SQL.Add('FROM Processos LEFT JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)');
         Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.DDE ');
         Q_localiza.SQL.Add('HAVING (((Processos.DDE) Like :qvar))');
        end;
     13:begin
         Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos_REs.RE ');
         Q_localiza.SQL.Add('FROM (Processos LEFT JOIN Importadores ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Filial = Importadores.Filial) ');
         Q_localiza.SQL.Add('AND (Processos.Importador = Importadores.Codigo)) LEFT JOIN Processos_REs ON (Processos.Codigo = Processos_REs.Processo) AND (Processos.Filial = Processos_REs.Filial) AND (Processos.Empresa = Processos_REs.Empresa) ');
         Q_localiza.SQL.Add(' GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos_REs.RE');
         Q_localiza.SQL.Add(' HAVING (((Processos_REs.RE) Like :qvar))');
       end;
    end;
{
if rg_localiza.itemindex = 0 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social');
   Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social');
   Q_localiza.SQL.Add(' Order by Processos.Codigo');
   //Q_localiza.SQL.Add(OrderBy);
 //  Q_localiza.SQL.Add('HAVING (((Processos.Codigo) Like :qvar))');

end;
if rg_localiza.itemindex = 1 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social');
   Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Filial = Importadores.Filial) AND (Processos.Importador = Importadores.Codigo)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Codigo_Cliente');
   Q_localiza.SQL.Add('HAVING (((Processos.Codigo_Cliente) Like :qvar))');
end;
if rg_localiza.itemindex = 2 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.NR_DECLARACAO_IMP, Processos.NR_DECLARACAO_IMPC');
   Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.NR_DECLARACAO_IMP, Processos.NR_DECLARACAO_IMPC');
   Q_localiza.SQL.Add('HAVING (((Processos.NR_DECLARACAO_IMP) Like :qvar) or ((Processos.NR_DECLARACAO_IMPC) Like :qvar))');
end;
if rg_localiza.itemindex = 3 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_RCR');
   Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Filial = Importadores.Filial) AND (Processos.Importador = Importadores.Codigo)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_RCR');
   Q_localiza.SQL.Add('HAVING (((Processos.Numero_RCR) Like :qvar))');
end;
if rg_localiza.itemindex = 4 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_TR');
   Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Filial = Importadores.Filial) AND (Processos.Importador = Importadores.Codigo)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Numero_TR');
   Q_localiza.SQL.Add('HAVING (((Processos.Numero_TR) Like :qvar))');

end;
if rg_localiza.itemindex = 5 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numerodoccarga');
   Q_localiza.SQL.Add('FROM (Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)) INNER JOIN Conhecimento_Processo ON ');
   Q_localiza.SQL.Add('(Processos.Codigo = Conhecimento_Processo.Processo) AND (Processos.Filial = Conhecimento_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo.Empresa)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numerodoccarga');
   Q_localiza.SQL.Add('HAVING (((Conhecimento_Processo.Numerodoccarga) Like :qvar))');

end;
if rg_localiza.itemindex = 6 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numeromaster');
   Q_localiza.SQL.Add('FROM (Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND');
   Q_localiza.SQL.Add('(Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)) INNER ');
   Q_localiza.SQL.Add('JOIN Conhecimento_Processo ON (Processos.Codigo = Conhecimento_Processo.Processo) AND (Processos.Filial = Conhecimento_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo.Empresa)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numeromaster');
   Q_localiza.SQL.Add('HAVING (((Conhecimento_Processo.Numeromaster) Like :qvar))');

end;
if rg_localiza.itemindex = 7 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numeromanifesto');
   Q_localiza.SQL.Add('FROM (Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND ');
   Q_localiza.SQL.Add('(Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)) INNER ');
   Q_localiza.SQL.Add('JOIN Conhecimento_Processo ON (Processos.Codigo = Conhecimento_Processo.Processo) AND (Processos.Filial = Conhecimento_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo.Empresa)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.Numeromanifesto');
   Q_localiza.SQL.Add('HAVING (((Conhecimento_Processo.Numeromanifesto) Like :qvar))');

end;
if rg_localiza.itemindex = 8 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.codigo_presenca_carga');
   Q_localiza.SQL.Add('FROM (Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND ');
   Q_localiza.SQL.Add('(Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)) INNER ');
   Q_localiza.SQL.Add('JOIN Conhecimento_Processo ON (Processos.Codigo = Conhecimento_Processo.Processo) AND (Processos.Filial = Conhecimento_Processo.Filial) AND (Processos.Empresa = Conhecimento_Processo.Empresa)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Conhecimento_Processo.codigo_presenca_carga');
   Q_localiza.SQL.Add('HAVING (((Conhecimento_Processo.codigo_presenca_carga) Like :qvar))');

end;
if rg_localiza.itemindex = 9 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social');
   Q_localiza.SQL.Add('FROM (Processos INNER JOIN Importadores ON ');
   Q_localiza.SQL.Add('(Processos.Importador = Importadores.Codigo) AND ');
   Q_localiza.SQL.Add('(Processos.Filial = Importadores.Filial) AND ');
   Q_localiza.SQL.Add('(Processos.Empresa = Importadores.Empresa)) INNER JOIN Faturas ON (Processos.Empresa = Faturas.Empresa) AND (Processos.Filial = Faturas.Filial) AND (Processos.Codigo = Faturas.Processo)');
   Q_localiza.SQL.Add('WHERE (((Faturas.Codigo) Like :qvar))');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social');

end;
if rg_localiza.itemindex = 10 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Data');
   Q_localiza.SQL.Add('FROM Processos INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.Data');
   Q_localiza.SQL.Add('HAVING (((Processos.Data) >= :qvar))');
end;

if rg_localiza.itemindex = 11 then begin
   Q_localiza.SQL.Add('SELECT ItensFaturas.PO, Importadores.Empresa, Importadores.Filial, Processos.Codigo, Importadores.Razao_Social');
   Q_localiza.SQL.Add('FROM (ItensFaturas INNER JOIN Processos ON (ItensFaturas.Processo = Processos.Codigo) AND (ItensFaturas.Filial = Processos.Filial) ');
   Q_localiza.SQL.Add('AND (ItensFaturas.Empresa = Processos.Empresa)) INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)');
   Q_localiza.SQL.Add('GROUP BY ItensFaturas.PO, Importadores.Empresa, Importadores.Filial, Processos.Codigo, Importadores.Razao_Social');
   Q_localiza.SQL.Add('HAVING (((ItensFaturas.PO) Like :qvar))');
end;

if rg_localiza.itemindex = 12 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.DDE ');
   Q_localiza.SQL.Add('FROM Processos LEFT JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)');
   Q_localiza.SQL.Add('GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos.DDE ');
   Q_localiza.SQL.Add('HAVING (((Processos.DDE) Like :qvar))');
end;

if rg_localiza.itemindex = 13 then begin
   Q_localiza.SQL.Add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos_REs.RE ');
   Q_localiza.SQL.Add('FROM (Processos LEFT JOIN Importadores ON (Processos.Empresa = Importadores.Empresa) AND (Processos.Filial = Importadores.Filial) ');
   Q_localiza.SQL.Add('AND (Processos.Importador = Importadores.Codigo)) LEFT JOIN Processos_REs ON (Processos.Codigo = Processos_REs.Processo) AND (Processos.Filial = Processos_REs.Filial) AND (Processos.Empresa = Processos_REs.Empresa) ');
   Q_localiza.SQL.Add(' GROUP BY Processos.Empresa, Processos.Filial, Processos.Codigo, Importadores.Razao_Social, Processos_REs.RE');
   Q_localiza.SQL.Add(' HAVING (((Processos_REs.RE) Like :qvar))');
end;
}
Q_localiza.SQL.Add(OrderBy);
if rg_localiza.itemindex = 10 then
  Q_localiza.Params[0].AsString := me_localiza.text
else
   Q_localiza.Params[0].AsString := '%'+me_localiza.text+'%';
        //if me_localiza.text <> '' then Q_localiza.Params[0].AsString := '%'+me_localiza.text+'%';



Q_localiza.ExecSQL;
//showmessage(Q_localiza.SQL.Text);
Q_localiza.active := true;
if q_localiza.eof then MessageDlg('Não foi encontrado nenhum registro com estes parâmetros!', mtInformation,[mbOk], 0)

end;

procedure TF_localizapro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_localizapro := nil;

end;

procedure TF_localizapro.FormActivate(Sender: TObject);
begin
f_localizapro.left := 10;
f_localizapro.top  := 10;
end;

procedure TF_localizapro.FormCreate(Sender: TObject);
begin
t_pastas.open;
end;

end.
