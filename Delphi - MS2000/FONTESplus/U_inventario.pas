unit U_inventario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, ExtCtrls, StdCtrls, Db, DBTables, Buttons, Mask, DBCtrls;

type
  Tf_inventario = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    DBG_inventario: TDBGrid;
    Panel3: TPanel;
    DBG_movporitem: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    T_parametros: TTable;
    ds_parametros: TDataSource;
    T_importadores: TTable;
    ds_importadores: TDataSource;
    T_contratos: TTable;
    ds_contratos: TDataSource;
    T_locais: TTable;
    ds_locais: TDataSource;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
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
    T_contratosEmpresa: TStringField;
    T_contratosFilial: TStringField;
    T_contratosImportador: TStringField;
    T_contratosContrato: TStringField;
    T_contratosDescricao: TStringField;
    T_contratosVigencia_inicial: TDateTimeField;
    T_contratosVigencia_final: TDateTimeField;
    T_locaisEmpresa: TStringField;
    T_locaisFilial: TStringField;
    T_locaisImportador: TStringField;
    T_locaisContrato: TStringField;
    T_locaisLocal: TStringField;
    T_locaisDescricao: TStringField;
    T_locaisTipo_local: TStringField;
    T_inventario: TTable;
    ds_inventario: TDataSource;
    T_inventarioEmpresa: TStringField;
    T_inventarioFilial: TStringField;
    T_inventarioImportador: TStringField;
    T_inventarioContrato: TStringField;
    T_inventarioLocal: TStringField;
    T_inventarioProduto: TStringField;
    T_inventarioNumero_serie: TStringField;
    T_inventarioSaldo: TFloatField;
    b_fecha: TBitBtn;
    Q_atumovinvent: TQuery;
    ds_atumovinvent: TDataSource;
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
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    T_inventarioDescrio: TStringField;
    b_atualiza: TBitBtn;
    T_inv: TTable;
    ds_inv: TDataSource;
    T_movinv: TTable;
    ds_movinv: TDataSource;
    T_invEmpresa: TStringField;
    T_invFilial: TStringField;
    T_invImportador: TStringField;
    T_invContrato: TStringField;
    T_invLocal: TStringField;
    T_invProduto: TStringField;
    T_invNumero_serie: TStringField;
    T_invSaldo: TFloatField;
    T_invDescrio: TStringField;
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
    Q_atumovinventqfatura: TStringField;
    l_atualiza: TLabel;
    q_movporitem: TQuery;
    ds_qmovporitem: TDataSource;
    q_movporitemData_movimentacao: TDateTimeField;
    q_movporitemDI: TStringField;
    q_movporitemADICAO: TStringField;
    q_movporitemSeq_Adicao: TStringField;
    q_movporitemDDE: TStringField;
    q_movporitemRE: TStringField;
    q_movporitemProcesso_ADM: TStringField;
    q_movporitemProtocolo_Processo_ADM: TStringField;
    q_movporitemFatura: TStringField;
    q_movporitemQuantidade: TFloatField;
    q_movporitemForma: TStringField;
    q_movporitemTipodecl: TStringField;
    q_movporitemProcesso: TStringField;
    q_movporitemtipopro: TStringField;
    q_movporitemImportador_Transf: TStringField;
    q_movporitemContrato_Transf: TStringField;
    q_movporitemLocal_Transf: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_fechaClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure b_atualizaClick(Sender: TObject);
    procedure T_inventarioAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_inventario: Tf_inventario;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_inventario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_inventario := nil;
f_mscomex.Inventrio1.enabled := true;

end;

procedure Tf_inventario.b_fechaClick(Sender: TObject);
begin
   f_inventario.close;
end;

procedure Tf_inventario.FormActivate(Sender: TObject);
begin
f_inventario.left := 0;
f_inventario.top  := 0;


end;

procedure Tf_inventario.b_atualizaClick(Sender: TObject);
var qreg:integer;
begin
l_atualiza.caption := 'Aguarde...';
l_atualiza.refresh;
{verifica movimentacao de inventario}
q_atumovinvent.Close;
q_atumovinvent.Params[0].AsString := t_locaisempresa.asstring;
q_atumovinvent.Params[1].AsString := t_locaisfilial.asstring;
q_atumovinvent.Params[2].AsString := t_locaisimportador.asstring;
q_atumovinvent.Params[3].AsString := t_locaiscontrato.asstring;
q_atumovinvent.Params[4].AsString := t_locaislocal.asstring;
q_atumovinvent.ExecSQL;
q_atumovinvent.active := true;
qreg := 0;
q_atumovinvent.first;
while not q_atumovinvent.eof do begin
      qreg := qreg+1;
      l_atualiza.caption := 'Aguarde... '+inttostr(qreg)+' registros pesquisados';
      l_atualiza.refresh;

    {nao achou movimentacao do item}
    if t_movinv.FindKey([trim(q_atumovinventimportador.asstring),trim(q_atumovinventcontrato.asstring),trim(q_atumovinventlocal_inventario.asstring),q_atumovinventproduto.asstring,q_atumovinventnumero_serie.asstring,q_atumovinventcdigo.asstring,q_atumovinventqfatura.asstring,q_atumovinventNR_DECLARACAO_IMP.asstring,q_atumovinventadicao.asstring,Q_atumovinventSeq_Adicao.asstring]) then
       q_atumovinvent.next
    else begin
         if t_movinv.state <> dsinsert then t_movinv.append
            else t_movinv.edit;

       t_movinvEmpresa.asstring      := q_atumovinventempresa.asstring;
       t_movinvFilial.asstring       := q_atumovinventfilial.asstring;
       t_movinvImportador.asstring   := trim(q_atumovinventimportador.asstring);
       t_movinvContrato.asstring     := trim(q_atumovinventcontrato.asstring);
       t_movinvLocal.asstring        := trim(q_atumovinventlocal_inventario.asstring);
       t_movinvProduto.asstring      := q_atumovinventproduto.asstring;
       t_movinvNumero_serie.asstring := q_atumovinventnumero_serie.asstring;
       t_movinvProcesso.asstring     := q_atumovinventcdigo.asstring;
       t_movinvDI.asstring           := q_atumovinventNR_DECLARACAO_IMP.asstring;
       t_movinvADICAO.asstring       := q_atumovinventadicao.asstring;
       t_movinvtipo_declarao.asstring       := q_atumovinventtipo_declarao.asstring;
       t_movinvtipo.asstring       := q_atumovinventtipo.asstring;
       t_movinvQuantidade.asfloat    := q_atumovinventsomadequantidade.asfloat;
       t_movinvsaldo.asfloat    := q_atumovinventsomadequantidade.asfloat;
       t_movinvSeq_Adicao.asstring      := Q_atumovinventSeq_Adicao.asstring;
       t_movinvData_movimentacao.asstring  := (copy(Q_atumovinventDT_REGISTRO_DI.asstring,1,2)+'/'+copy(Q_atumovinventDT_REGISTRO_DI.asstring,3,2)+'/'+copy(Q_atumovinventDT_REGISTRO_DI.asstring,5,4));
       t_movinvDDE.asstring               :='.';
       t_movinvRE.asstring                :='.';
       t_movinvProcesso_ADM.asstring      :='.';
       t_movinvProtocolo_Processo_ADM.asstring      :='.';
       t_movinvFatura.asstring            := q_atumovinventqfatura.asstring;
       t_movinvImportador_Transf.asstring :='.';
       t_movinvContrato_Transf.asstring   :='.';
       t_movinvLocal_Transf.asstring      :='.';
       if Q_atumovinventExpr1005.asstring = '05' then t_movinvforma_admissao.asstring := '05'
       else begin
          if ((Q_atumovinventRegime_Tributacao_II.asstring = '5') and
              (Q_atumovinventRegime_Tributacao_IPI.asstring = '5')) then
               t_movinvforma_admissao.asstring := '05'
          else t_movinvforma_admissao.asstring := '01';
       end;
       t_movinv.post;

       {atualiza saldos no Inventario}
       {achou}
       if t_inv.FindKey([q_atumovinventempresa.asstring,q_atumovinventfilial.asstring,trim(q_atumovinventimportador.asstring),trim(q_atumovinventcontrato.asstring),trim(q_atumovinventlocal_inventario.asstring),q_atumovinventproduto.asstring,q_atumovinventnumero_serie.asstring]) then begin
           t_inv.edit;
           t_invsaldo.asfloat         := (t_invsaldo.asfloat+q_atumovinventsomadequantidade.asfloat);
           t_inv.post;
       end
       {nao achou}
       else begin
            t_produtos.findkey([q_atumovinventempresa.asstring,q_atumovinventfilial.asstring,q_atumovinventproduto.asstring]);
            if t_inv.state <> dsinsert then t_inv.append
            else t_inv.edit;
            t_invEmpresa.asstring      := q_atumovinventempresa.asstring;
            t_invFilial.asstring       := q_atumovinventfilial.asstring;
            t_invImportador.asstring   := trim(q_atumovinventimportador.asstring);
            t_invContrato.asstring     := trim(q_atumovinventcontrato.asstring);
            t_invLocal.asstring        := trim(q_atumovinventlocal_inventario.asstring);
            t_invProduto.asstring      := q_atumovinventproduto.asstring;
            t_invNumero_serie.asstring := q_atumovinventnumero_serie.asstring;
            t_invsaldo.asfloat         := q_atumovinventsomadequantidade.asfloat;
            t_invDescrio.asstring      := T_produtosDescrio.asstring;
            t_inv.post;

       end;

       q_atumovinvent.next;
    end;
end;
l_atualiza.caption := '';
l_atualiza.refresh;

if qreg > 0 then
   MessageDlg('Atualização Concluída! Pesquisados '+inttostr(qreg)+' registros. ', mtInformation,[mbOk], 0)
else
   MessageDlg('Não foram encontrados registros para Atualização.', mtInformation,[mbOk], 0);

t_inventario.refresh;


end;

procedure Tf_inventario.T_inventarioAfterScroll(DataSet: TDataSet);
begin
{verifica movimentacao de inventario}
q_movporitem.Close;
q_movporitem.Params[0].AsString := t_inventarioempresa.asstring;
q_movporitem.Params[1].AsString := t_inventariofilial.asstring;
q_movporitem.Params[2].AsString := t_inventarioimportador.asstring;
q_movporitem.Params[3].AsString := t_inventariocontrato.asstring;
q_movporitem.Params[4].AsString := t_inventariolocal.asstring;
q_movporitem.Params[5].AsString := t_inventarioproduto.asstring;
q_movporitem.Params[6].AsString := t_inventarionumero_serie.asstring;
q_movporitem.ExecSQL;
q_movporitem.active := true;


end;

end.
