unit U_compraloc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Db, DBTables, Buttons, Mask;

type
  Tf_compraloc = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    p_inventinicial: TPanel;
    b_fechaii: TBitBtn;
    Panel4: TPanel;
    DBG_inventinicial: TDBGrid;
    me_produto: TMaskEdit;
    me_numeroserie: TMaskEdit;
    me_quantidade: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    me_descricao: TMaskEdit;
    b_inclui: TBitBtn;
    b_exclui: TBitBtn;
    P_qprodutos: TPanel;
    L_busca: TLabel;
    DBG_qprodutos: TDBGrid;
    B_cancela: TBitBtn;
    B_ok: TBitBtn;
    Q_produtos: TQuery;
    Q_produtosEmpresa: TStringField;
    Q_produtosFilial: TStringField;
    Q_produtosCdigo: TStringField;
    Q_produtosDescrio: TStringField;
    Q_produtosNCM: TStringField;
    Q_produtosImportador: TStringField;
    ds_qprodutos: TDataSource;
    DS_produtos: TDataSource;
    T_produtos: TTable;
    T_produtosEmpresa: TStringField;
    T_produtosFilial: TStringField;
    T_produtosCdigo: TStringField;
    T_produtosDescrio: TStringField;
    T_produtosNCM: TStringField;
    T_produtosImportador: TStringField;
    T_produtosFabricante: TStringField;
    T_produtosUnidade: TStringField;
    T_produtosPesoUnitrio: TFloatField;
    T_produtosValorUnitrio: TFloatField;
    T_produtosMoeda: TStringField;
    q_inventinicial: TQuery;
    ds_qinventinicial: TDataSource;
    q_inventinicialEmpresa: TStringField;
    q_inventinicialFilial: TStringField;
    q_inventinicialImportador: TStringField;
    q_inventinicialContrato: TStringField;
    q_inventinicialLocal: TStringField;
    q_inventinicialProduto: TStringField;
    q_inventinicialDescrio: TStringField;
    q_inventinicialNumero_serie: TStringField;
    q_inventinicialProcesso: TStringField;
    q_inventinicialDI: TStringField;
    q_inventinicialADICAO: TStringField;
    q_inventinicialQuantidade: TFloatField;
    me_data: TMaskEdit;
    Label7: TLabel;
    q_inventinicialData_movimentacao: TDateTimeField;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    T_parametros: TTable;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    T_importadores: TTable;
    T_importadoresEmpresa: TStringField;
    T_importadoresFilial: TStringField;
    T_importadoresCodigo: TStringField;
    T_importadoresRazoSocial: TStringField;
    T_importadoresPas: TStringField;
    T_importadoresCGCCPF: TStringField;
    T_importadoresTipoImportador: TStringField;
    T_importadoresEndereo: TStringField;
    T_importadoresNmero: TStringField;
    T_importadoresComplemento: TStringField;
    T_importadoresBairro: TStringField;
    T_importadoresCidade: TStringField;
    T_importadoresCEP: TStringField;
    T_importadoresUF: TStringField;
    T_importadoresEstado: TStringField;
    T_importadoresInscrioEstadual: TStringField;
    T_importadoresBanco: TStringField;
    T_importadoresAgencia: TStringField;
    T_importadoresConta_Corrente: TStringField;
    T_contratos: TTable;
    T_contratosEmpresa: TStringField;
    T_contratosFilial: TStringField;
    T_contratosImportador: TStringField;
    T_contratosContrato: TStringField;
    T_contratosDescricao: TStringField;
    T_contratosVigencia_inicial: TDateTimeField;
    T_contratosVigencia_final: TDateTimeField;
    T_locais: TTable;
    T_locaisEmpresa: TStringField;
    T_locaisFilial: TStringField;
    T_locaisImportador: TStringField;
    T_locaisContrato: TStringField;
    T_locaisLocal: TStringField;
    T_locaisDescricao: TStringField;
    T_locaisTipo_local: TStringField;
    T_inventario: TTable;
    T_inventarioEmpresa: TStringField;
    T_inventarioFilial: TStringField;
    T_inventarioImportador: TStringField;
    T_inventarioContrato: TStringField;
    T_inventarioLocal: TStringField;
    T_inventarioProduto: TStringField;
    T_inventarioNumero_serie: TStringField;
    T_inventarioSaldo: TFloatField;
    T_inventarioDescrio: TStringField;
    T_movinventario: TTable;
    T_movinventarioEmpresa: TStringField;
    T_movinventarioFilial: TStringField;
    T_movinventarioImportador: TStringField;
    T_movinventarioContrato: TStringField;
    T_movinventarioLocal: TStringField;
    T_movinventarioProduto: TStringField;
    T_movinventarioNumero_serie: TStringField;
    T_movinventarioDI: TStringField;
    T_movinventarioADICAO: TStringField;
    T_movinventarioSeq_Adicao: TStringField;
    T_movinventarioData_movimentacao: TDateTimeField;
    T_movinventarioDDE: TStringField;
    T_movinventarioRE: TStringField;
    T_movinventarioProcesso_ADM: TStringField;
    T_movinventarioImportador_Transf: TStringField;
    T_movinventarioContrato_Transf: TStringField;
    T_movinventarioLocal_Transf: TStringField;
    T_movinventarioTipo_Declarao: TStringField;
    T_movinventarioProcesso: TStringField;
    T_movinventarioTipo: TStringField;
    T_movinventarioQuantidade: TFloatField;
    T_movinventarioForma_Admissao: TStringField;
    T_movinventarioProtocolo_Processo_ADM: TStringField;
    T_movinventarioFatura: TStringField;
    T_movinventarioSaldo: TFloatField;
    T_inv: TTable;
    T_invEmpresa: TStringField;
    T_invFilial: TStringField;
    T_invImportador: TStringField;
    T_invContrato: TStringField;
    T_invLocal: TStringField;
    T_invProduto: TStringField;
    T_invNumero_serie: TStringField;
    T_invSaldo: TFloatField;
    T_invDescrio: TStringField;
    T_movinv: TTable;
    T_movinvMovimento: TAutoIncField;
    T_movinvEmpresa: TStringField;
    T_movinvFilial: TStringField;
    T_movinvImportador: TStringField;
    T_movinvContrato: TStringField;
    T_movinvLocal: TStringField;
    T_movinvProduto: TStringField;
    T_movinvNumero_serie: TStringField;
    T_movinvProcesso: TStringField;
    T_movinvDI: TStringField;
    T_movinvADICAO: TStringField;
    T_movinvSeq_Adicao: TStringField;
    T_movinvData_movimentacao: TDateTimeField;
    T_movinvDDE: TStringField;
    T_movinvRE: TStringField;
    T_movinvProcesso_ADM: TStringField;
    T_movinvProtocolo_Processo_ADM: TStringField;
    T_movinvFatura: TStringField;
    T_movinvImportador_Transf: TStringField;
    T_movinvContrato_Transf: TStringField;
    T_movinvLocal_Transf: TStringField;
    T_movinvTipo_Declarao: TStringField;
    T_movinvForma_Admissao: TStringField;
    T_movinvTipo: TStringField;
    T_movinvQuantidade: TFloatField;
    T_movinvSaldo: TFloatField;
    ds_parametros: TDataSource;
    ds_importadores: TDataSource;
    ds_contratos: TDataSource;
    ds_locais: TDataSource;
    ds_inventario: TDataSource;
    ds_movinventario: TDataSource;
    ds_inv: TDataSource;
    ds_movinv: TDataSource;
    me_fatura: TMaskEdit;
    Label8: TLabel;
    q_inventinicialFatura: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_fechaiiClick(Sender: TObject);
    procedure B_okClick(Sender: TObject);
    procedure B_cancelaClick(Sender: TObject);
    procedure me_numeroserieKeyPress(Sender: TObject; var Key: Char);
    procedure me_quantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure b_incluiClick(Sender: TObject);
    procedure DBG_inventinicialCellClick(Column: TColumn);
    procedure b_excluiClick(Sender: TObject);
    procedure me_produtoExit(Sender: TObject);
    procedure me_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure me_dataKeyPress(Sender: TObject; var Key: Char);
    procedure me_quantidadeChange(Sender: TObject);
    procedure T_locaisAfterScroll(DataSet: TDataSet);
    procedure me_descricaoKeyPress(Sender: TObject; var Key: Char);
    procedure me_faturaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_compraloc: Tf_compraloc;
  incluipro: boolean;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_compraloc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_compraloc := nil;
f_mscomex.compraslocais1.enabled := true;

end;

procedure Tf_compraloc.b_fechaiiClick(Sender: TObject);
begin
f_compraloc.close;
end;

procedure Tf_compraloc.B_okClick(Sender: TObject);
begin
     p_qprodutos.visible := false;
     me_produto.text   := q_produtoscdigo.asstring;
     if t_produtos.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_produto.text]) then begin
         me_produto.text   := t_produtoscdigo.asstring;
         me_descricao.text := t_produtosdescrio.asstring;
     end;
     me_numeroserie.setfocus;
end;

procedure Tf_compraloc.B_cancelaClick(Sender: TObject);
begin
     p_qprodutos.visible := false;
     me_produto.setfocus;
end;

procedure Tf_compraloc.me_numeroserieKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then me_quantidade.setfocus;
end;

procedure Tf_compraloc.me_quantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
b_inclui.enabled := true;
if key = chr(13) then b_inclui.setfocus;
end;

procedure Tf_compraloc.b_incluiClick(Sender: TObject);
begin
    if (me_produto.text = '')or(me_descricao.text='') or (me_numeroserie.text='') or (strtoint(me_quantidade.text)<=0) then begin
       MessageDlg('Dados Incompletos!', mtInformation,[mbOk], 0);
    end
    else begin
    if incluipro = true then begin
       t_produtos.Append;
       t_produtosempresa.asstring := t_locaisempresa.asstring;
       t_produtosfilial.asstring  := t_locaisfilial.asstring;
       t_produtoscdigo.asstring   := me_produto.text;
       t_produtosimportador.asstring := t_locaisimportador.asstring;
       t_produtosdescrio.asstring := me_descricao.text;
       t_produtos.post;
       incluipro := false;
    end;
    if t_movinv.FindKey([trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text,'COMPLOC',me_fatura.text,'.','.','.']) then begin
       MessageDlg('Compra Local já Cadastrada para este Produto!', mtInformation,[mbOk], 0);
       end
    else begin
       t_movinv.append;
       T_movinvEmpresa.asstring       := T_locaisempresa.asstring;
       T_movinvFilial.asstring        := T_locaisfilial.asstring;
       T_movinvImportador.asstring    := t_locaisimportador.asstring;
       T_movinvContrato.asstring      := t_locaiscontrato.asstring;
       T_movinvLocal.asstring         := t_locaislocal.asstring;
       T_movinvProduto.asstring       := me_produto.text;
       T_movinvNumero_serie.asstring  := me_numeroserie.text;
       T_movinvProcesso.asstring      := 'COMPLOC';
       T_movinvDI.asstring            := '.';
       T_movinvADICAO.asstring        := '.';
       T_movinvtipo_declarao.asstring := '.';
       T_movinvtipo.asstring          := '7';
       T_movinvQuantidade.asfloat     := strtoint(me_quantidade.text);
       T_movinvsaldo.asfloat     := strtoint(me_quantidade.text);
       T_movinvSeq_Adicao.asstring        := '.';
       T_movinvData_movimentacao.asstring := me_data.text;
       T_movinvDDE.asstring               :='.';
       T_movinvRE.asstring                :='.';
       T_movinvProcesso_ADM.asstring      :='.';
       T_movinvProtocolo_Processo_ADM.asstring      :='.';
       T_movinvFatura.asstring            := me_fatura.text;
       T_movinvImportador_Transf.asstring :='.';
       T_movinvContrato_Transf.asstring   :='.';
       T_movinvLocal_Transf.asstring      :='.';
       T_movinvForma_Admissao.asstring    :='40';
       t_movinv.post;

       {atualiza saldos no Inventario}
       {achou}
       if t_inv.FindKey([t_locaisempresa.asstring,t_locaisfilial.asstring,trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text]) then begin
          t_inv.edit;
          T_invsaldo.asfloat         := (T_invsaldo.asfloat+strtoint(me_quantidade.text));
          t_inv.post;
       end
       {nao achou}
       else begin
            t_produtos.findkey([t_locaisempresa.asstring,t_locaisfilial.asstring,me_produto.text]);
            t_inv.append;
            t_invEmpresa.asstring      := t_locaisempresa.asstring;
            t_invFilial.asstring       := t_locaisfilial.asstring;
            t_invImportador.asstring   := trim(t_locaisimportador.asstring);
            t_invContrato.asstring     := trim(t_locaiscontrato.asstring);
            t_invLocal.asstring        := trim(t_locaislocal.asstring);
            t_invProduto.asstring      := me_produto.text;
            t_invNumero_serie.asstring := me_numeroserie.text;
            t_invsaldo.asfloat         := strtofloat(me_quantidade.text);
            t_invDescrio.asstring      := T_produtosDescrio.asstring;
            t_inv.post;

       end;
       q_inventinicial.Close;
       q_inventinicial.open;

    end;
    end;
    b_inclui.enabled := false;
    me_produto.text := '';
    me_descricao.text := '';
    me_numeroserie.text := '.';
    me_quantidade.text  := '1';
    me_produto.setfocus;
end;

procedure Tf_compraloc.DBG_inventinicialCellClick(Column: TColumn);
begin
b_inclui.enabled := false;
b_exclui.enabled := true;
me_fatura.text  := q_inventinicialfatura.asstring;
me_produto.text := q_inventinicialproduto.asstring;
me_descricao.text := q_inventinicialdescrio.asstring;
me_numeroserie.text := q_inventinicialnumero_serie.asstring;
me_quantidade.text  := q_inventinicialquantidade.asstring;
b_exclui.setfocus;

end;

procedure Tf_compraloc.b_excluiClick(Sender: TObject);
begin
    if not (t_movinv.FindKey([trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text,'COMPLOC',me_fatura.text,'.','.','.'])) then begin
       MessageDlg('Compra Local não Cadastrada para este Produto!', mtInformation,[mbOk], 0);
       end
    else begin
       t_movinv.delete;

       {atualiza saldos no Inventario}
       {achou}
       if t_inv.FindKey([t_locaisempresa.asstring,t_locaisfilial.asstring,trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text]) then begin
          t_inv.edit;
          T_invsaldo.asfloat         := (T_invsaldo.asfloat-strtoint(me_quantidade.text));
          t_inv.post;
       end;
       q_inventinicial.Close;
       q_inventinicial.open;

    end;
    b_inclui.enabled := false;
    me_produto.text := '';
    me_descricao.text := '';
    me_numeroserie.text := '.';
    me_quantidade.text  := '1';
    me_produto.setfocus;

end;

procedure Tf_compraloc.me_produtoExit(Sender: TObject);
begin
   if me_produto.text = '' then begin
      {MessageDlg('Informe o Produto!', mtInformation,[mbOk], 0);
      me_produto.setfocus;}
      end
   else begin
      if t_movinv.FindKey([trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text,'COMPLOC',me_fatura.text,'.','.','.']) then begin
         MessageDlg('Compra Local já Cadastrada para este Produto!', mtInformation,[mbOk], 0);
      end
      else begin
      if t_produtos.findkey([t_parametrosempresa.asstring,t_parametrosfilial,me_produto.text]) then begin
         me_produto.text   := t_produtoscdigo.asstring;
         me_descricao.text := t_produtosdescrio.asstring;
         end
      else begin
         if MessageDlg('Produto não encontrado no cadastro de produtos. Inclui Produto no Cadastro de Produtos?', mtConfirmation, [mbYes, mbNo], 0) = mrNo then begin
         {atualiza lista de produtos}
         Q_produtos.Close;
         Q_produtos.SQL.Clear;
         Q_produtos.SQL.Add('SELECT Produtos.Empresa, Produtos.Filial, Produtos.Código, Produtos.NCM, Produtos.Descrição, Produtos.Importador FROM Produtos');
         Q_produtos.SQL.Add('GROUP BY Produtos.Empresa, Produtos.Filial, Produtos.Código, Produtos.NCM, Produtos.Descrição, Produtos.Importador');
         Q_produtos.SQL.Add('HAVING (((Produtos.Empresa)=:empresa) AND ((Produtos.Filial)=:filial) AND ((Produtos.Importador)=:Importador) AND ((Produtos.Código) Like :codigo))');
         Q_produtos.Params[0].AsString := t_locaisempresa.asstring;
         Q_produtos.Params[1].AsString := t_locaisfilial.asstring;
         Q_produtos.Params[2].AsString := t_locaisimportador.AsString;
         Q_produtos.Params[3].AsString := '*'+me_produto.text+'*';
         Q_produtos.ExecSQL;
         Q_produtos.active := true;
         if q_produtos.Eof then begin
            Q_produtos.Close;
            Q_produtos.SQL.Clear;
            Q_produtos.SQL.Add('SELECT Produtos.Empresa, Produtos.Filial, Produtos.Código, Produtos.NCM, Produtos.Descrição, Produtos.Importador FROM Produtos');
            Q_produtos.SQL.Add('GROUP BY Produtos.Empresa, Produtos.Filial, Produtos.Código, Produtos.NCM, Produtos.Descrição, Produtos.Importador');
            Q_produtos.SQL.Add('HAVING (((Produtos.Empresa)=:empresa) AND ((Produtos.Filial)=:filial) AND ((Produtos.Importador)=:Importador) AND ((Produtos.Descrição) Like :codigo))');
            Q_produtos.Params[0].AsString := t_locaisempresa.asstring;
            Q_produtos.Params[1].AsString := t_locaisfilial.asstring;
            Q_produtos.Params[2].AsString := t_locaisimportador.AsString;
            Q_produtos.Params[3].AsString := '*'+me_produto.text+'*';
            Q_produtos.ExecSQL;
            Q_produtos.active := true;
         end;
         if not q_produtos.Eof then begin
            p_qprodutos.visible := true;
            dbg_qprodutos.setfocus;
            end
         else begin
              MessageDlg('Nenhuma Referência de Produto encontrada!', mtInformation,[mbOk], 0);
              me_produto.text := '';
              me_produto.setfocus;
         end;
         me_descricao.enabled := false;
         incluipro := false;
         me_numeroserie.setfocus;
         end
         else begin
              incluipro := true;
              me_descricao.enabled := true;
              me_descricao.setfocus;
              end;
      end;
      end;

   end

end;

procedure Tf_compraloc.me_produtoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then begin
   if incluipro = true then begin
      me_descricao.enabled := true;
      me_descricao.setfocus;
      end
   else begin
      me_descricao.enabled := false;
      me_numeroserie.setfocus;
   end;
end;   
end;

procedure Tf_compraloc.FormActivate(Sender: TObject);
begin
f_compraloc.left := 0;
f_compraloc.top  := 0;
me_data.text      := datetostr(date());
end;

procedure Tf_compraloc.me_dataKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_fatura.setfocus;
end;

procedure Tf_compraloc.me_quantidadeChange(Sender: TObject);
begin
b_inclui.enabled := true;
end;

procedure Tf_compraloc.T_locaisAfterScroll(DataSet: TDataSet);
begin

{verifica movimentacao de inventario inicial}
q_inventinicial.Close;
q_inventinicial.Params[0].AsString := t_locaisempresa.asstring;
q_inventinicial.Params[1].AsString := t_locaisfilial.asstring;
q_inventinicial.Params[2].AsString := t_locaisimportador.asstring;
q_inventinicial.Params[3].AsString := t_locaiscontrato.asstring;
q_inventinicial.Params[4].AsString := t_locaislocal.asstring;
q_inventinicial.ExecSQL;
q_inventinicial.active := true;
{me_data.setfocus;}

end;

procedure Tf_compraloc.me_descricaoKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then me_numeroserie.setfocus;
end;

procedure Tf_compraloc.me_faturaKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_produto.setfocus;
end;

end.
