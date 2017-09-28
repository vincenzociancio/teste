unit U_reexporta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Db, DBTables, Buttons, Mask;

type
  Tf_reexporta = class(TForm)
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
    Label8: TLabel;
    q_inventinicialFatura: TStringField;
    Label9: TLabel;
    me_dde: TMaskEdit;
    Label10: TLabel;
    me_re: TMaskEdit;
    q_inventinicialDDE: TStringField;
    q_inventinicialRE: TStringField;
    T_parametros: TTable;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    ds_parametros: TDataSource;
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
    ds_contratos: TDataSource;
    T_locais: TTable;
    T_locaisEmpresa: TStringField;
    T_locaisFilial: TStringField;
    T_locaisImportador: TStringField;
    T_locaisContrato: TStringField;
    T_locaisLocal: TStringField;
    T_locaisDescricao: TStringField;
    T_locaisTipo_local: TStringField;
    ds_locais: TDataSource;
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
    ds_inventario: TDataSource;
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
    ds_movinventario: TDataSource;
    Q_atumovinvent: TQuery;
    Q_atumovinventEmpresa: TStringField;
    Q_atumovinventFilial: TStringField;
    Q_atumovinventImportador: TStringField;
    Q_atumovinventContrato: TStringField;
    Q_atumovinventLocal_Inventario: TStringField;
    Q_atumovinventExpr1005: TStringField;
    Q_atumovinventCdigo: TStringField;
    Q_atumovinventNR_DECL_IMP_MICRO: TStringField;
    Q_atumovinventNR_DECLARACAO_IMP: TStringField;
    Q_atumovinventAdicao: TStringField;
    Q_atumovinventSeq_Adicao: TSmallintField;
    Q_atumovinventDT_REGISTRO_DI: TStringField;
    Q_atumovinventProduto: TStringField;
    Q_atumovinventNumero_serie: TStringField;
    Q_atumovinventSomaDeQuantidade: TFloatField;
    Q_atumovinventTipo_Declarao: TStringField;
    Q_atumovinventTipo: TStringField;
    Q_atumovinventRegime_Tributacao_II: TStringField;
    Q_atumovinventRegime_Tributacao_IPI: TStringField;
    Q_atumovinventqfatura: TStringField;
    ds_atumovinvent: TDataSource;
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
    ds_inv: TDataSource;
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
    ds_movinv: TDataSource;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    ds_importadores: TDataSource;
    me_fatura: TMaskEdit;
    Label4: TLabel;
    q_inventinicialseq_adicao: TStringField;
    Q_movporitem: TQuery;
    Q_movporitemEmpresa: TStringField;
    Q_movporitemFilial: TStringField;
    Q_movporitemImportador: TStringField;
    Q_movporitemContrato: TStringField;
    Q_movporitemLocal: TStringField;
    Q_movporitemProduto: TStringField;
    Q_movporitemNumero_serie: TStringField;
    Q_movporitemDI: TStringField;
    Q_movporitemAdicao: TStringField;
    Q_movporitemSeq_Adicao: TStringField;
    Q_movporitemData_movimentacao: TDateTimeField;
    Q_movporitemQuantidade: TFloatField;
    Q_movporitemSaldo: TFloatField;
    Q_movporitemForma_Admissao: TStringField;
    Q_movporitemProcesso: TStringField;
    Q_movporitemFatura: TStringField;
    ds_qmovporitem: TDataSource;
    Q_movporitemDescrio: TStringField;
    Q_movporitemDescricao: TStringField;
    Q_produtosEmpresa: TStringField;
    Q_produtosFilial: TStringField;
    Q_produtosImportador: TStringField;
    Q_produtosContrato: TStringField;
    Q_produtosLocal: TStringField;
    Q_produtosProduto: TStringField;
    Q_produtosDescrio: TStringField;
    Q_produtosNumero_serie: TStringField;
    Q_produtosSomaDeSaldo: TFloatField;
    SpeedButton1: TSpeedButton;
    me_localiza: TMaskEdit;
    Label11: TLabel;
    SpeedButton2: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_fechaiiClick(Sender: TObject);
    procedure B_okClick(Sender: TObject);
    procedure B_cancelaClick(Sender: TObject);
    procedure me_numeroserieKeyPress(Sender: TObject; var Key: Char);
    procedure me_quantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure b_incluiClick(Sender: TObject);
    procedure DBG_inventinicialCellClick(Column: TColumn);
    procedure b_excluiClick(Sender: TObject);
    procedure me_produtoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure me_dataKeyPress(Sender: TObject; var Key: Char);
    procedure me_ddeKeyPress(Sender: TObject; var Key: Char);
    procedure me_reKeyPress(Sender: TObject; var Key: Char);
    procedure T_locaisAfterScroll(DataSet: TDataSet);
    procedure me_faturaKeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_reexporta: Tf_reexporta;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_reexporta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_reexporta := nil;
f_mscomex.Reexeportao1.enabled := true;

end;

procedure Tf_reexporta.b_fechaiiClick(Sender: TObject);
begin
f_reexporta.close;
end;

procedure Tf_reexporta.B_okClick(Sender: TObject);
begin
     p_qprodutos.visible := false;
     me_produto.text   := q_produtosproduto.asstring;
     me_descricao.text := q_produtosdescrio.asstring;
     me_numeroserie.text := q_produtosnumero_serie.asstring;
     me_data.setfocus;
end;

procedure Tf_reexporta.B_cancelaClick(Sender: TObject);
begin
     p_qprodutos.visible := false;
     me_data.setfocus;
end;

procedure Tf_reexporta.me_numeroserieKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = chr(13) then me_quantidade.setfocus;
end;

procedure Tf_reexporta.me_quantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
b_inclui.enabled := true;
if key = chr(13) then b_inclui.setfocus;
end;

procedure Tf_reexporta.b_incluiClick(Sender: TObject);
var v_saldo:real;
    v_qsaldo:real;
begin
    if (me_produto.text = '') or (me_numeroserie.text='') or (strtoint(me_quantidade.text)<=0) or (me_dde.text ='') or(me_re.text='') or (me_fatura.text='') then begin
       MessageDlg('Dados Incompletos!', mtInformation,[mbOk], 0);
    end
    else begin
       if t_inv.FindKey([t_locaisempresa.asstring,t_locaisfilial.asstring,trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text]) then begin
          if (t_invsaldo.asinteger < strtoint(me_quantidade.text)) then begin
               MessageDlg('Produto não possue saldo suficiente no inventário 1111!', mtInformation,[mbOk], 0)
             end
          else begin
              {verifica as movimentacoes de inventario inicial ou adm temporaria}
              q_movporitem.Close;
              q_movporitem.Params[0].AsString := t_locaisempresa.asstring;
              q_movporitem.Params[1].AsString := t_locaisfilial.asstring;
              q_movporitem.Params[2].AsString := t_locaisimportador.asstring;
              q_movporitem.Params[3].AsString := t_locaiscontrato.asstring;
              q_movporitem.Params[4].AsString := t_locaislocal.asstring;
              q_movporitem.Params[5].AsString := me_produto.text;
              q_movporitem.Params[6].asstring := me_numeroserie.text;
              q_movporitem.ExecSQL;
              q_movporitem.active := true;
              q_movporitem.first;
              v_saldo := 0;
              while not q_movporitem.eof do begin
                    v_saldo := v_saldo+q_movporitemsaldo.asfloat;
                    q_movporitem.next;
              end;
              if (v_saldo < strtoint(me_quantidade.text)) then
                 MessageDlg('Produto não possue saldo suficiente nas dis no inventário!', mtInformation,[mbOk], 0)
              else begin
                 v_qsaldo := strtoint(me_quantidade.text);
                 t_inv.FindKey([t_locaisempresa.asstring,t_locaisfilial.asstring,trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text]);
                 t_inv.edit;
                 T_invsaldo.asfloat         := (T_invsaldo.asfloat-v_qsaldo);
                 t_inv.post;
                 q_movporitem.first;
                 while ((v_qsaldo >0) and (not q_movporitem.eof)) do begin
                       t_movinv.FindKey([trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text,q_movporitemprocesso.asstring,q_movporitemfatura.asstring,q_movporitemdi.asstring,q_movporitemadicao.asstring,q_movporitemseq_adicao.asstring]);
                       if (v_qsaldo > q_movporitemsaldo.asfloat) then begin
                          t_movinv.edit;
                          t_movinvsaldo.asfloat := (t_movinvsaldo.asfloat - q_movporitemsaldo.asfloat);
                          t_movinv.post;

                          t_movinv.append;
                          T_movinvEmpresa.asstring       := T_locaisempresa.asstring;
                          T_movinvFilial.asstring        := T_locaisfilial.asstring;
                          T_movinvImportador.asstring    := t_locaisimportador.asstring;
                          T_movinvContrato.asstring      := t_locaiscontrato.asstring;
                          T_movinvLocal.asstring         := t_locaislocal.asstring;
                          T_movinvProduto.asstring       := me_produto.text;
                          T_movinvNumero_serie.asstring  := me_numeroserie.text;
                          T_movinvProcesso.asstring      := 'REEXPOR';
                          T_movinvDI.asstring            := q_movporitemdi.asstring;
                          T_movinvADICAO.asstring        := q_movporitemadicao.asstring;
                          T_movinvtipo_declarao.asstring := '.';
                          T_movinvtipo.asstring          := '22';
                          T_movinvQuantidade.asfloat     := q_movporitemsaldo.asfloat;
                          T_movinvsaldo.asfloat          := q_movporitemsaldo.asfloat;
                          T_movinvSeq_Adicao.asstring        := q_movporitemseq_adicao.asstring;
                          T_movinvData_movimentacao.asstring := me_data.text;
                          T_movinvDDE.asstring               := me_dde.text;
                          T_movinvRE.asstring                := me_re.text;
                          T_movinvProcesso_ADM.asstring      :='.';
                          T_movinvProtocolo_Processo_ADM.asstring      :='.';
                          T_movinvFatura.asstring            := me_fatura.text;
                          T_movinvImportador_Transf.asstring :='.';
                          T_movinvContrato_Transf.asstring   :='.';
                          T_movinvLocal_Transf.asstring      :='.';
                          T_movinvForma_Admissao.asstring    :='50';
                          t_movinv.post;
                       end
                       else begin
                          t_movinv.edit;
                          t_movinvsaldo.asfloat := (t_movinvsaldo.asfloat - v_qsaldo);
                          t_movinv.post;

                          t_movinv.append;
                          T_movinvEmpresa.asstring       := T_locaisempresa.asstring;
                          T_movinvFilial.asstring        := T_locaisfilial.asstring;
                          T_movinvImportador.asstring    := t_locaisimportador.asstring;
                          T_movinvContrato.asstring      := t_locaiscontrato.asstring;
                          T_movinvLocal.asstring         := t_locaislocal.asstring;
                          T_movinvProduto.asstring       := me_produto.text;
                          T_movinvNumero_serie.asstring  := me_numeroserie.text;
                          T_movinvProcesso.asstring      := 'REEXPOR';
                          T_movinvDI.asstring            := q_movporitemdi.asstring;
                          T_movinvADICAO.asstring        := q_movporitemadicao.asstring;
                          T_movinvtipo_declarao.asstring := '.';
                          T_movinvtipo.asstring          := '22';
                          T_movinvQuantidade.asfloat     := v_qsaldo;
                          T_movinvsaldo.asfloat     := v_qsaldo;
                          T_movinvSeq_Adicao.asstring        := q_movporitemseq_adicao.asstring;
                          T_movinvData_movimentacao.asstring := me_data.text;
                          T_movinvDDE.asstring               := me_dde.text;
                          T_movinvRE.asstring                := me_re.text;
                          T_movinvProcesso_ADM.asstring      :='.';
                          T_movinvProtocolo_Processo_ADM.asstring      :='.';
                          T_movinvFatura.asstring            := me_fatura.text;
                          T_movinvImportador_Transf.asstring :='.';
                          T_movinvContrato_Transf.asstring   :='.';
                          T_movinvLocal_Transf.asstring      :='.';
                          T_movinvForma_Admissao.asstring    :='50';
                          t_movinv.post;

                       end;
                       v_qsaldo := (v_qsaldo-q_movporitemsaldo.asfloat);

                       q_movporitem.next;
                 end;
              end;
          end;
       end
       else begin
          MessageDlg('Produto não possue saldo suficiente no inventário 22222!', mtInformation,[mbOk], 0)
       end;
    end;
    q_inventinicial.Close;
    q_inventinicial.open;
    b_inclui.enabled := false;
    me_produto.text := '';
    me_fatura.text := '';
    me_descricao.text := '';
    me_numeroserie.text := '.';
    me_quantidade.text  := '1';
    me_data.setfocus;
end;

procedure Tf_reexporta.DBG_inventinicialCellClick(Column: TColumn);
begin
b_inclui.enabled    := false;
b_exclui.enabled    := true;
me_produto.text     := q_inventinicialproduto.asstring;
me_fatura.text      := q_inventinicialfatura.asstring;
me_descricao.text   := q_inventinicialdescrio.asstring;
me_numeroserie.text := q_inventinicialnumero_serie.asstring;
me_quantidade.text  := q_inventinicialquantidade.asstring;
me_dde.text         := q_inventinicialdde.asstring;
me_re.text          := q_inventinicialre.asstring;
b_exclui.setfocus;

end;

procedure Tf_reexporta.b_excluiClick(Sender: TObject);
var v_di:string;
    v_adicao:string;
    v_seq:string;
    v_quant:real;
begin

    if not (t_movinv.FindKey([trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text,'REEXPOR',me_fatura.text,q_inventinicialdi.asstring,q_inventinicialadicao.asstring,q_inventinicialseq_adicao.asstring])) then begin
       MessageDlg('Reexportação não Cadastrada para este Produto!', mtInformation,[mbOk], 0);
       end
    else begin
       v_di     := t_movinvdi.asstring;
       v_adicao := t_movinvadicao.asstring;
       v_seq    := t_movinvseq_adicao.asstring;
       v_quant  := t_movinvquantidade.asfloat;
       t_movinv.delete;

       {atualiza saldos no Inventario}
       {achou}
       if t_inv.FindKey([t_locaisempresa.asstring,t_locaisfilial.asstring,trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text]) then begin
          t_inv.edit;
          T_invsaldo.asfloat         := (T_invsaldo.asfloat+strtoint(me_quantidade.text));
          t_inv.post;
       end;
       
       {voltando saldos das di/adicao/seq_adicao}
       v_quant := strtoint(me_quantidade.text);
       t_movinv.First;
       t_movinv.FindKey([trim(t_locaisimportador.asstring),trim(t_locaiscontrato.asstring),trim(t_locaislocal.asstring),me_produto.text,me_numeroserie.text]);
       while ((v_quant>0)and(not t_movinv.eof) and
             (t_movinvimportador.asstring = t_locaisimportador.asstring) and
             (t_movinvcontrato.asstring = t_locaiscontrato.asstring)and
             (t_movinvlocal.asstring = t_locaislocal.asstring)and
             (t_movinvproduto.asstring = me_produto.text)and
             (t_movinvnumero_serie.asstring = me_numeroserie.text)) do begin

             if ((t_movinvprocesso.asstring <> 'REEXPOR') and
                 (t_movinvdi.asstring = v_di)and
                 (t_movinvadicao.asstring = v_adicao) and
                 (t_movinvseq_adicao.asstring = v_seq)) then begin
                 if (v_quant > t_movinvsaldo.asfloat) then begin
                    t_movinv.edit;
                    t_movinvsaldo.asfloat := t_movinvquantidade.asfloat;
                    t_movinv.post;
                 end
                 else begin
                    t_movinv.edit;
                    t_movinvsaldo.asfloat := (t_movinvsaldo.asfloat+v_quant);
                    t_movinv.post;
                 end;
                 v_quant := (v_quant-t_movinvsaldo.asfloat);
              end;
              t_movinv.next;
       end;

    end;
    q_inventinicial.Close;
    q_inventinicial.open;
    b_inclui.enabled := false;
    b_exclui.enabled := false;
    me_produto.text := '';
    me_fatura.text  := '';
    me_descricao.text := '';
    me_numeroserie.text := '.';
    me_quantidade.text  := '1';
    me_data.setfocus;

end;

procedure Tf_reexporta.me_produtoKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_numeroserie.setfocus;
end;

procedure Tf_reexporta.FormActivate(Sender: TObject);
begin
f_reexporta.left := 0;
f_reexporta.top  := 0;
me_data.text      := datetostr(date());
end;

procedure Tf_reexporta.me_dataKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_fatura.setfocus;
end;


procedure Tf_reexporta.me_ddeKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_re.setfocus;
end;

procedure Tf_reexporta.me_reKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_quantidade.setfocus;
end;

procedure Tf_reexporta.T_locaisAfterScroll(DataSet: TDataSet);
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

end;

procedure Tf_reexporta.me_faturaKeyPress(Sender: TObject; var Key: Char);
begin
if key = chr(13) then me_dde.setfocus;
end;

procedure Tf_reexporta.SpeedButton1Click(Sender: TObject);
begin

{verifica produtos com saldos para reexportacao}
me_localiza.text := '*';
q_produtos.Close;
q_produtos.Params[0].AsString := t_locaisempresa.asstring;
q_produtos.Params[1].AsString := t_locaisfilial.asstring;
q_produtos.Params[2].AsString := t_locaisimportador.asstring;
q_produtos.Params[3].AsString := t_locaiscontrato.asstring;
q_produtos.Params[4].AsString := t_locaislocal.asstring;
q_produtos.Params[5].AsString := me_localiza.text;
q_produtos.ExecSQL;
q_produtos.active := true;

p_qprodutos.visible := true;
dbg_qprodutos.setfocus;

end;

procedure Tf_reexporta.SpeedButton2Click(Sender: TObject);
begin

q_produtos.Close;
q_produtos.Params[0].AsString := t_locaisempresa.asstring;
q_produtos.Params[1].AsString := t_locaisfilial.asstring;
q_produtos.Params[2].AsString := t_locaisimportador.asstring;
q_produtos.Params[3].AsString := t_locaiscontrato.asstring;
q_produtos.Params[4].AsString := t_locaislocal.asstring;
q_produtos.Params[5].AsString := me_localiza.text;
q_produtos.ExecSQL;
q_produtos.active := true;

end;

end.
