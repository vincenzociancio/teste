unit u_fantigo;

interface

uses
  Windows, Messages, Classes, SysUtils, Graphics, Controls, StdCtrls, Forms,
  Dialogs, DBCtrls, DB, DBTables, Mask, ExtCtrls, Buttons, ComCtrls, Grids,
  DBGrids;

type
  Tf_fantigo = class(TForm)
    T_follownum: TAutoIncField;
    T_followProcesso: TStringField;
    T_followParcial: TStringField;
    T_followNosso_Nr: TStringField;
    T_followCliente: TStringField;
    T_followsenha: TStringField;
    T_followTxt_Cliente: TMemoField;
    T_followTxt_Nosso: TMemoField;
    T_followTxt_Ultimo: TMemoField;
    T_followMov_Cliente: TStringField;
    T_followMov_Nosso: TStringField;
    T_followTipo: TStringField;
    T_followMercadoria: TStringField;
    T_followFornecedor: TStringField;
    T_followUnidade: TStringField;
    T_followQuantidade: TStringField;
    T_followFob_Unitario: TFloatField;
    T_followFob_Total: TFloatField;
    T_followMoeda: TStringField;
    T_followForma_Paga: TStringField;
    T_followRec_Proforma: TDateTimeField;
    T_followLI_NR: TStringField;
    T_followConsigna: TStringField;
    T_followOrigem: TStringField;
    T_followPorto_Embarque: TStringField;
    T_followPorto_Descarga: TStringField;
    T_followPO_Fornecedor: TDateTimeField;
    T_followCarta_Credito: TStringField;
    T_followCarta_Emite: TDateTimeField;
    T_followCarta_Vence: TDateTimeField;
    T_followEmbarque_Previsto: TStringField;
    T_followEmbarque_Real: TDateTimeField;
    T_followAviao_Navio: TStringField;
    T_followTransportador: TStringField;
    T_followChegada_Previsao: TStringField;
    T_followChegada_Real: TDateTimeField;
    T_followBLAWB: TStringField;
    T_followDocumentos_Cambio: TDateTimeField;
    T_followDias_Cambio: TSmallintField;
    T_followFecha_Cambio: TDateTimeField;
    T_followDespachante: TStringField;
    T_followDoc_Despachante: TDateTimeField;
    T_followNumerario: TDateTimeField;
    T_followNumerario_Para: TDateTimeField;
    T_followPag_Tributos: TDateTimeField;
    T_followDI: TStringField;
    T_followDTA: TStringField;
    T_followInvoice: TStringField;
    T_followDesembaraco_Prev: TDateTimeField;
    T_followDesembaraco_Real: TDateTimeField;
    T_followTermo: TStringField;
    T_followVenc_Termo: TDateTimeField;
    T_followArmazenagem_1: TDateTimeField;
    T_followArmazenagem_2: TDateTimeField;
    T_followoutros_doc_1: TStringField;
    T_followtxt_doc_1: TStringField;
    T_followoutros_doc_2: TStringField;
    T_followtxt_doc_2: TStringField;
    T_followoutros_doc_3: TStringField;
    T_followtxt_doc_3: TStringField;
    T_followoutros_doc_4: TStringField;
    T_followtxt_doc_4: TStringField;
    T_followoutros_doc_5: TStringField;
    T_followtxt_doc_5: TStringField;
    T_followCanal: TStringField;
    T_followcontainer_1: TStringField;
    T_followcontainer_2: TStringField;
    T_followcontainer_3: TStringField;
    T_followcontainer_4: TStringField;
    T_followcontainer_5: TStringField;
    T_followcontainer_6: TStringField;
    T_followcontainer_7: TStringField;
    T_followcontainer_8: TStringField;
    T_followcontainer_9: TStringField;
    T_followcontainer_10: TStringField;
    T_followcontainer_11: TStringField;
    T_followcontainer_12: TStringField;
    T_followcontainer_13: TStringField;
    T_followcontainer_14: TStringField;
    T_followcontainer_15: TStringField;
    T_followcontainer_16: TStringField;
    T_followcontainer_17: TStringField;
    T_followcontainer_18: TStringField;
    T_followcontainer_19: TStringField;
    T_followcontainer_20: TStringField;
    T_followcontainer_21: TStringField;
    T_followcontainer_22: TStringField;
    T_followcontainer_23: TStringField;
    T_followcontainer_24: TStringField;
    T_followcontainer_25: TStringField;
    ds_follow: TDataSource;
    T_follow: TTable;
    rg_ind: TRadioGroup;
    me_localiza: TMaskEdit;
    b_procura: TBitBtn;
    DBGrid1: TDBGrid;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    procedure rg_indClick(Sender: TObject);
    procedure b_procuraClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  f_fantigo: Tf_fantigo;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_fantigo.rg_indClick(Sender: TObject);
begin
if rg_ind.itemindex = 0  then t_follow.indexname := 'ind1';
if rg_ind.itemindex = 1  then t_follow.indexname := 'ind2';
if rg_ind.itemindex = 2  then t_follow.indexname := 'ind3';
if rg_ind.itemindex = 3  then t_follow.indexname := 'ind4';
if rg_ind.itemindex = 4  then t_follow.indexname := 'ind5';
if rg_ind.itemindex = 5  then t_follow.indexname := 'ind6';


end;

procedure Tf_fantigo.b_procuraClick(Sender: TObject);
begin
if not t_follow.findkey([me_localiza.text]) then begin
   MessageDlg('Registro não Encontrado!', mtInformation,[mbOk], 0)
end;
end;

procedure Tf_fantigo.FormActivate(Sender: TObject);
begin
  f_fantigo.left := 0;
  f_fantigo.top  := 0;
end;

procedure Tf_fantigo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
f_fantigo := nil;
///f_mscomex.FolllowAntigo1.enabled :=  true;

end;

end.