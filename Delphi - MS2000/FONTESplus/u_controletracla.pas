unit u_controletracla;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGrids, ExtCtrls, DBCtrls, Mask;

type
  Tf_controletracla = class(TForm)
    gb_filtro: TGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edt_fabricante: TEdit;
    edt_port: TEdit;
    edt_ing: TEdit;
    B_FILTRAR: TBitBtn;
    edt_part: TEdit;
    edt_ncm: TEdit;
    edt_importador: TEdit;
    q_itens: TQuery;
    ds_qitens: TDataSource;
    Panel1: TPanel;
    dbg_itens: TDBGrid;
    cb_naorevisados: TCheckBox;
    GroupBox1: TGroupBox;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBM_obs2: TDBMemo;
    bb2: TBitBtn;
    l_reg: TLabel;
    e_revisado: TEdit;
    Memo1: TMemo;
    Label1: TLabel;
    edt_cod: TEdit;
    q_itenscod_imp: TStringField;
    q_itenscod_fab: TStringField;
    q_itensREG: TAutoIncField;
    q_itensCODIGO: TStringField;
    q_itensPART_NUMBER: TStringField;
    q_itensdesc: TStringField;
    q_itensdesci: TStringField;
    q_itensNCM: TStringField;
    q_itensDestaque_NCM: TStringField;
    q_itensNALADI: TStringField;
    q_itensUnidade: TStringField;
    q_itensUnidade_Medida_Estat: TStringField;
    q_itensDATA_INCLUSAO: TDateTimeField;
    q_itensUsuario_INCLUSAO: TStringField;
    q_itensDATA_ULTIMA_ALTERACAO: TDateTimeField;
    q_itensUsuario_ALTERACAO: TStringField;
    q_itensRevisado: TIntegerField;
    q_itensRevisao_Data: TDateTimeField;
    q_itensRevisao_Usuario: TStringField;
    q_itensRevisao_OBS: TMemoField;
    q_itensImportador: TStringField;
    q_itensFabricante: TStringField;
    q_itensup: TQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    AutoIncField1: TAutoIncField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    DateTimeField1: TDateTimeField;
    StringField12: TStringField;
    DateTimeField2: TDateTimeField;
    StringField13: TStringField;
    IntegerField1: TIntegerField;
    DateTimeField3: TDateTimeField;
    StringField14: TStringField;
    MemoField1: TMemoField;
    StringField15: TStringField;
    StringField16: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure B_FILTRARClick(Sender: TObject);
    procedure dbg_itensDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure q_itensAfterScroll(DataSet: TDataSet);
    procedure bb2Click(Sender: TObject);
    procedure t_prodlogrevAfterScroll(DataSet: TDataSet);
    procedure dbg_itensDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
    
var
  f_controletracla: Tf_controletracla;

implementation

uses U_MSCOMEX, U_produtos;

{$R *.DFM}

procedure Tf_controletracla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     //f_mscomex.ControledeTraduoeClassificao2.Enabled := True;
     f_controletracla := nil;
     Action := caFree;
end;

procedure Tf_controletracla.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


  {   h := Height;
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
     width := w;    }
     If Not Assigned(F_Produtos) Then begin
        Application.CreateForm(TF_Produtos, F_Produtos);
        F_Produtos.Show;
     end;
     f_mscomex.produtos1.Enabled := False;
     edt_part.SetFocus;
end;

procedure Tf_controletracla.B_FILTRARClick(Sender: TObject);
VAR QSQL:STRING;
begin
    if (edt_cod.text = '') and (edt_part.text = '') and (edt_port.text = '') and (edt_ing.text = '') and (edt_ncm.text = '') and (edt_importador.text = '' ) and (edt_fabricante.text = '') then begin
      showmessage('Para efetuar a consulta, favor preencher algum campo.');
    end
    else begin
//      t_prodlogrev.Close;
//      t_prodlogrev.open;

      q_itens.close;
      q_itens.SQL.Clear;

  {    q_itens.params[0].asstring := '%'+edt_cod.text+'%';
      q_itens.params[1].asstring := '%'+edt_part.text+'%';
      q_itens.params[2].asstring := '%'+edt_port.text+'%';
      q_itens.params[3].asstring := '%'+edt_ing.text+'%';
      q_itens.params[4].asstring := '%'+edt_ncm.text+'%';

      q_itens.params[6].asstring := '%'+edt_importador.text+'%';
      q_itens.params[7].asstring := '%'+edt_fabricante.text+'%';

      {
      SELECT Produtosnew.Importador as cod_imp, Produtosnew.Fabricante as cod_fab, Produtosnew.REG, Produtosnew.CODIGO, Produtosnew.PART_NUMBER, cast([Descricao] as varchar) AS [desc], cast([Descricao_ing] as varchar) AS desci,
Produtosnew.NCM, Produtosnew.Destaque_NCM, Produtosnew.NALADI, Produtosnew.Unidade, Produtosnew.Unidade_Medida_Estat, Produtosnew.DATA_INCLUSAO, Produtosnew.Usuario_INCLUSAO, Produtosnew.DATA_ULTIMA_ALTERACAO,
Produtosnew.Usuario_ALTERACAO, Produtosnew.Revisado, Produtosnew.Revisao_Data, Produtosnew.Revisao_Usuario, Produtosnew.Revisao_OBS, Importadores.Razao_Social AS Importador, Fabricantes_Produtores.Razao_Social AS Fabricante
FROM (Produtosnew LEFT JOIN Importadores ON Produtosnew.Importador = Importadores.Codigo) LEFT JOIN Fabricantes_Produtores ON Produtosnew.Fabricante = Fabricantes_Produtores.Codigo
WHERE (((Produtosnew.CODIGO) Like :cod) AND ((Produtosnew.PART_NUMBER) Like :par) AND ((cast([Descricao] as varchar)) Like :desc) AND ((cast([Descricao_ing] as varchar)) Like :desci) AND ((Produtosnew.NCM) Like :ncm)
AND ((Produtosnew.Revisado) Like :rev) AND ((Importadores.Razao_Social) Like :imp) AND ((Fabricantes_Produtores.Razao_Social) Like :fab));
      }


      QSQL := ' SELECT Produtosnew.Importador as cod_imp, Produtosnew.Fabricante as cod_fab, Produtosnew.REG, Produtosnew.CODIGO, Produtosnew.PART_NUMBER, cast([Descricao] as varchar) AS [desc], cast([Descricao_ing] as varchar) AS desci, ';
      QSQL := QSQL+' Produtosnew.NCM, Produtosnew.Destaque_NCM, Produtosnew.NALADI, Produtosnew.Unidade, Produtosnew.Unidade_Medida_Estat, Produtosnew.DATA_INCLUSAO, Produtosnew.Usuario_INCLUSAO, Produtosnew.DATA_ULTIMA_ALTERACAO, ';
      QSQL := QSQL+' Produtosnew.Usuario_ALTERACAO, Produtosnew.Revisado, Produtosnew.Revisao_Data, Produtosnew.Revisao_Usuario, Produtosnew.Revisao_OBS, Importadores.Razao_Social AS Importador, Fabricantes_Produtores.Razao_Social AS Fabricante ';
      QSQL := QSQL+' FROM (Produtosnew LEFT JOIN Importadores ON Produtosnew.Importador = Importadores.Codigo) LEFT JOIN Fabricantes_Produtores ON Produtosnew.Fabricante = Fabricantes_Produtores.Codigo ';
      QSQL := QSQL+' WHERE ';

      if cb_naorevisados.Checked then QSQL := QSQL+' ( Produtosnew.Revisado=0 ) '
      else QSQL := QSQL+' ( Produtosnew.Revisado<>2 ) ';

      if (edt_cod.text<>'') THEN QSQL := QSQL+' AND ((Produtosnew.CODIGO) Like ''%'+edt_cod.text+'%'') ';
      if (edt_part.text<>'') THEN QSQL := QSQL+' AND ((Produtosnew.PART_NUMBER) Like ''%'+edt_part.text+'%'') ';
      if (edt_port.text<>'') THEN QSQL := QSQL+' AND ((cast([Descricao] as varchar)) Like ''%'+edt_port.text+'%'') ';
      if (edt_ing.text<>'') THEN QSQL := QSQL+' AND ((cast([Descricao_ing] as varchar)) Like ''%'+edt_ing.text+'%'') ';
      if (edt_ncm.text<>'') THEN QSQL := QSQL+' AND ((Produtosnew.NCM) Like ''%'+edt_ncm.text+'%'') ';

      if (edt_importador.text<>'') THEN QSQL := QSQL+' AND ((Importadores.Razao_Social) Like ''%'+edt_importador.text+'%'') ';
      if (edt_fabricante.text<>'') THEN QSQL := QSQL+' AND ((Fabricantes_Produtores.Razao_Social) Like ''%'+edt_fabricante.text+'%'') ';

      q_itens.SQL.Add(qsql);


{      if cb_naorevisados.Checked then
        q_itens.params[5].asinteger := 0
      else
       q_itens.params[5].asstring := '%';
 }
      q_itens.open;
 //     SHOWMESSAGE(QSQL);      
      l_reg.Caption := inttostr(q_itens.recordcount)+ ' - Produtos encontrado(s) ';
    end;
end;

procedure Tf_controletracla.dbg_itensDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{
  if q_itensrevisado.asinteger = 0 then begin
          dbg_itens.canvas.brush.color := clMaroon;
          dbg_itens.canvas.font.Color := clWhite;
  end
  else begin
          dbg_itens.canvas.brush.color := clNavy;
          dbg_itens.canvas.font.Color := clWhite;
  end;

  if gdSelected in state then dbg_itens.Canvas.font.color := clwhite;

  dbg_itens.defaultDrawColumnCell(Rect, DataCol, Column, State);
 }
end;

procedure Tf_controletracla.q_itensAfterScroll(DataSet: TDataSet);
begin

//t_prodlogrev.findkey([q_itensreg.asinteger]);
//F_Produtos.tbProdutos.FindKey([q_itensreg.asinteger]);

//F_Produtos.qrprodutos.close;
//F_Produtos.qrprodutos.Params[0].Asinteger := q_itensreg.asinteger;
//F_Produtos.qrprodutos.open;

end;

procedure Tf_controletracla.bb2Click(Sender: TObject);
VAR QSQL:STRING;
QREG:INTEGER;
begin
        memo1.Clear;
       // memo1.Text := t_prodlogrevrevisao_obs.asstring;
        memo1.lines.Add(datetostr(date())+' - '+v_usuario+' -> '+e_revisado.text);
        memo1.lines.Add(q_itensrevisao_obs.asstring);

{    t_prodlogrev.edit;
    t_prodlogrevrevisao_obs.asstring := memo1.Text;
    t_prodlogrevrevisao_data.asdatetime := date();
    t_prodlogrev.post;
    if t_prodlogrevrevisao_data.asstring<>'' then begin
       t_prodlogrev.edit;
       t_prodlogrevrevisado.asinteger := 1;
       t_prodlogrev.post;
    end;
    if t_prodlogrevrevisao_usuario.asstring='' then begin
       t_prodlogrev.edit;
       t_prodlogrevrevisao_usuario.asstring := v_usuario;
       t_prodlogrev.post;
    end;
}

    QSQL := 'UPDATE PRODUTOSNEW SET ';
    QSQL := QSQL+' REVISAO_OBS="'+ memo1.Text+'"';
    QSQL := QSQL+',REVISAO_USUARIO="'+V_USUARIO+'"';
    QSQL := QSQL+',REVISAO_DATA="'+FormatDateTime('dd"/"mm"/"yyyy',Date())+'"';
    QSQL := QSQL+',REVISADO=1';
    QSQL := QSQL+' WHERE REG='+q_itensreg.asstring;

   // showmessage(qsql);

    q_itensUP.SQL.Clear;
    q_itensUP.SQL.Add(qsql);
    q_itensUP.ExecSQL;

    QREG := q_itensreg.asinteger;
    q_itens.CLOSE;
    Q_ITENS.OPEN;
    q_itens.locate('REG',QREG,[]);
    
    e_revisado.Clear;
end;

procedure Tf_controletracla.t_prodlogrevAfterScroll(DataSet: TDataSet);
begin


 if q_itensrevisado.asinteger = 1 then begin
       bb2.Enabled := false;
       if (q_itensrevisao_usuario.asstring=v_usuario) then begin
           bb2.Enabled := true;
       end
    end
    else begin
       bb2.Enabled := true;
    end;

end;

procedure Tf_controletracla.dbg_itensDblClick(Sender: TObject);
begin
F_Produtos.qrprodutos.close;
F_Produtos.qrprodutos.Params[0].Asinteger := q_itensreg.asinteger;
F_Produtos.qrprodutos.open;
end;

end.

