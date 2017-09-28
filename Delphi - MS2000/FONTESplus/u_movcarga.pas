unit u_movcarga;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, DBCtrls;

type
  Tf_movcarga = class(TForm)
    t_parametros: TTable;
    ds_parametros: TDataSource;
    t_parametrosEmpresa: TStringField;
    t_parametrosFilial: TStringField;
    t_parametrosNumerador_Processos: TStringField;
    t_parametrosNumerador_Documentos: TStringField;
    t_parametrosEndereco_ftp: TStringField;
    t_parametrosUsuario_ftp: TStringField;
    t_parametrosSenha_ftp: TStringField;
    t_parametrosHost: TStringField;
    t_parametrosVersao: TStringField;
    t_faturas: TTable;
    ds_faturas: TDataSource;
    t_faturasEmpresa: TStringField;
    t_faturasFilial: TStringField;
    t_faturasFornecedor: TStringField;
    t_faturasFatura: TStringField;
    t_faturasBoleto: TStringField;
    t_faturasVencimento: TDateTimeField;
    t_faturasPeso: TFloatField;
    t_faturasValor: TFloatField;
    t_faturasConta_Corrente: TIntegerField;
    t_faturasCodigo_mov: TIntegerField;
    t_faturasDoc_contabil: TStringField;
    t_itens: TTable;
    ds_itens: TDataSource;
    t_itensEmpresa: TStringField;
    t_itensFilial: TStringField;
    t_itensFornecedor: TStringField;
    t_itensFatura: TStringField;
    t_itensreg: TAutoIncField;
    t_itensProcesso: TStringField;
    t_itensDI: TStringField;
    t_itensDTA: TStringField;
    t_itensPeso: TFloatField;
    t_itensValor: TFloatField;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    p_itens: TPanel;
    Panel3: TPanel;
    DBGrid2: TDBGrid;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnLocalizar: TBitBtn;
    Panel4: TPanel;
    b_incluiitens: TBitBtn;
    BitBtn2: TBitBtn;
    p_incluir: TPanel;
    Label3: TLabel;
    l_titulo: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    b_gravainclui: TBitBtn;
    b_fechainclui: TBitBtn;
    DBEdit1: TDBEdit;
    dbl_fornecedores: TDBLookupComboBox;
    DBEdit4: TDBEdit;
    p_localizar: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    rg_localiza: TRadioGroup;
    e_chave: TEdit;
    b_okloc: TBitBtn;
    b_fechaloc: TBitBtn;
    e_fatura: TEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Label4: TLabel;
    Label10: TLabel;
    DBEdit7: TDBEdit;
    t_fornecedores: TTable;
    ds_fornecedores: TDataSource;
    t_fornecedoresEmpresa: TStringField;
    t_fornecedoresFilial: TStringField;
    t_fornecedoresCodigo: TStringField;
    t_fornecedoresRazoSocial: TStringField;
    t_fornecedoresPas: TStringField;
    t_fornecedoresCNPJ_CPF_COMPLETO: TStringField;
    t_fornecedoresCGCCPF: TStringField;
    t_fornecedoresTipoImportador: TStringField;
    t_fornecedoresEndereo: TStringField;
    t_fornecedoresNmero: TStringField;
    t_fornecedoresComplemento: TStringField;
    t_fornecedoresBairro: TStringField;
    t_fornecedoresCidade: TStringField;
    t_fornecedoresCEP: TStringField;
    t_fornecedoresUF: TStringField;
    t_fornecedoresEstado: TStringField;
    t_fornecedoresInscrioEstadual: TStringField;
    t_fornecedoresBanco: TStringField;
    t_fornecedoresAgencia: TStringField;
    t_fornecedoresConta_Corrente: TStringField;
    t_fornecedoresConta_Corrente_Registro: TIntegerField;
    t_fornecedoresConta_Corrente_Deposito: TIntegerField;
    t_faturas2: TTable;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    DateTimeField1: TDateTimeField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    StringField6: TStringField;
    p_incluiritens: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    rg_localiza2: TRadioGroup;
    e_chave2: TEdit;
    b_okitens: TBitBtn;
    b_cancelaitens: TBitBtn;
    q_processos: TQuery;
    q_processosqprocesso: TStringField;
    q_processosqcliente: TStringField;
    q_processosqdi: TStringField;
    q_processosqdta: TStringField;
    q_processosqpeso: TFloatField;
    q_processosqdic: TStringField;
    b_regrava: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure b_fechaincluiClick(Sender: TObject);
    procedure b_gravaincluiClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure e_faturaExit(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure b_fechalocClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure b_oklocClick(Sender: TObject);
    procedure t_faturasAfterScroll(DataSet: TDataSet);
    procedure b_cancelaitensClick(Sender: TObject);
    procedure b_incluiitensClick(Sender: TObject);
    procedure b_okitensClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure rateio(Sender: TObject);
    procedure b_regravaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_movcarga: Tf_movcarga;
  qtaxa     : real;

implementation

uses U_MSCOMEX;

{$R *.DFM}
procedure Tf_movcarga.rateio(Sender: TObject);
var qpesoitens:real;
    qtotalitens:real;
begin

if t_itens.recordcount > 0 then begin
qpesoitens := 0;
t_itens.first;
while not t_itens.eof do begin
      qpesoitens := qpesoitens+t_itenspeso.asfloat;
      t_itens.next;
end;

qtaxa := (t_faturasvalor.asfloat/qpesoitens);

qtotalitens:=0;
t_itens.first;
while not t_itens.eof do begin
      t_itens.edit;
      t_itensvalor.asfloat := strtofloat(floattostrf(t_itenspeso.asfloat*qtaxa,fffixed,15,2));
      t_itens.post;
      qtotalitens:=qtotalitens+t_itensvalor.asfloat;

      t_itens.next;
end;

if (qtotalitens <> t_faturasvalor.asfloat) then begin
   t_itens.last;
   t_itens.edit;
   t_itensvalor.asfloat := strtofloat(floattostrf(t_itensvalor.asfloat+(t_faturasvalor.asfloat-qtotalitens),fffixed,15,2));
   t_itens.post;
end ;
end;
end;

procedure Tf_movcarga.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
f_movcarga := nil;
f_mscomex.MovimentaoCargaDescarga1.enabled := true;

end;

procedure Tf_movcarga.FormActivate(Sender: TObject);
begin
f_movcarga.left := 0;
f_movcarga.top  := 0;
end;

procedure Tf_movcarga.btnNovoClick(Sender: TObject);
begin
   if MessageDlg('Deseja incluir uma nova fatura?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      if t_faturas.recordcount > 0 then t_faturas.append;
      l_titulo.caption := 'Inclusão de Fatura';
      p_incluir.left   :=  123;
      p_incluir.height :=  189;
      p_incluir.top    :=  72;
      p_incluir.width  :=  474;

      e_fatura.text    := '';      
      e_fatura.enabled := true;
      p_incluir.visible := true;
      dbl_fornecedores.setfocus;
   end;

end;

procedure Tf_movcarga.b_fechaincluiClick(Sender: TObject);
begin
      p_incluir.visible := false;
      //if t_faturas.state = dsedit then
      t_faturas.cancel; 
end;

procedure Tf_movcarga.b_gravaincluiClick(Sender: TObject);
begin
if MessageDlg('Confirma atualização?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
   t_faturas.post;
   rateio(f_movcarga);
   p_incluir.visible := false;
end;
end;

procedure Tf_movcarga.FormCreate(Sender: TObject);
begin
t_parametros.open;
t_fornecedores.open;
t_faturas.open;
t_faturas2.open;
t_itens.open;
end;

procedure Tf_movcarga.e_faturaExit(Sender: TObject);
begin
if t_faturas2.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,t_faturasfornecedor.asstring,e_fatura.text]) then begin
   showmessage('Fatura já cadastrada para este Fornecedor!');
   e_fatura.text := '';
   e_fatura.setfocus;
end
else begin
     t_faturas.edit;
     t_faturasfatura.asstring := e_fatura.text;
end;
end;

procedure Tf_movcarga.btnAlterarClick(Sender: TObject);
begin
if t_faturasdoc_contabil.asstring = '' then begin
      l_titulo.caption := 'Alteração de Fatura';
      p_incluir.left   :=  123;
      p_incluir.height :=  189;
      p_incluir.top    :=  72;
      p_incluir.width  :=  474;

      e_fatura.text    := t_faturasfatura.asstring;
      e_fatura.enabled := false;
      p_incluir.visible := true;
      dbl_fornecedores.setfocus;
end
else showmessage('Fatura vinculada ao Conta Corrente não pode ser alterada! DOC ='+t_faturasdoc_contabil.asstring);

end;

procedure Tf_movcarga.btnExcluirClick(Sender: TObject);
begin
if t_faturasdoc_contabil.asstring = '' then begin
   if MessageDlg('Confirma Exclusão desta Fatura?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      t_itens.first;
      t_itens.findkey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,t_faturasfornecedor.asstring,e_fatura.text]);
      while ((not t_itens.eof)and(t_itensempresa.asstring=t_parametrosempresa.asstring)
                              and(t_itensfilial.asstring=t_parametrosfilial.asstring)
                              and(t_itensfornecedor.asstring=t_faturasfornecedor.asstring)
                              and(t_itensfatura.asstring=t_faturasfatura.asstring)) do begin
            t_itens.delete;
      end;
      t_faturas.delete;
   end;
end
else showmessage('Fatura vinculada ao Conta Corrente não pode ser excluída! DOC ='+t_faturasdoc_contabil.asstring);

end;

procedure Tf_movcarga.b_fechalocClick(Sender: TObject);
begin
p_localizar.visible := false;
end;

procedure Tf_movcarga.btnLocalizarClick(Sender: TObject);
begin
p_localizar.left   :=  224;
p_localizar.height :=  271;
p_localizar.top    :=  46;
p_localizar.width  :=  233;

p_localizar.visible := true;

end;

procedure Tf_movcarga.b_oklocClick(Sender: TObject);
begin
if rg_localiza.itemindex = 0 then begin
   if t_faturas.locate('fatura',e_chave.text,[]) then
      p_localizar.visible := false
   else showmessage('Parâmetro solicitado não foi localizado.');
end;
if rg_localiza.itemindex = 1 then begin
   if t_faturas.locate('boleto',e_chave.text,[]) then
      p_localizar.visible := false
   else showmessage('Parâmetro solicitado não foi localizado.');
end;
if rg_localiza.itemindex = 2 then begin
   if t_faturas.locate('vencimento',strtodate(e_chave.text),[]) then
      p_localizar.visible := false
   else showmessage('Parâmetro solicitado não foi localizado.');
end;
if rg_localiza.itemindex = 3 then begin
   if t_faturas.locate('valor',strtofloat(e_chave.text),[]) then
      p_localizar.visible := false
   else showmessage('Parâmetro solicitado não foi localizado.');
end;


end;

procedure Tf_movcarga.t_faturasAfterScroll(DataSet: TDataSet);
begin
qtaxa := (t_faturasvalor.asfloat/t_faturaspeso.asfloat);
if t_faturascodigo_mov.asinteger = 0 then begin
   btnalterar.enabled := true;
   btnexcluir.enabled := true;
   p_itens.enabled := true
end
else begin
   btnalterar.enabled := false;
   btnexcluir.enabled := false;
   p_itens.enabled := false;
end;
end;

procedure Tf_movcarga.b_cancelaitensClick(Sender: TObject);
begin
p_incluiritens.visible := false;
end;

procedure Tf_movcarga.b_incluiitensClick(Sender: TObject);
begin
p_incluiritens.left   := 228;
p_incluiritens.height := 267;
p_incluiritens.top    := 42;
p_incluiritens.width  := 233;

p_incluiritens.visible := true;
end;

procedure Tf_movcarga.b_okitensClick(Sender: TObject);
var achou:boolean;
    achou2:boolean;
begin
q_processos.close;
q_processos.open;
achou := false;
achou2 := false;
if rg_localiza2.itemindex = 0 then begin
   if q_processos.locate('qdta',e_chave2.text,[]) then achou := true;
end;
if rg_localiza2.itemindex = 1 then begin
   if q_processos.locate('qdi',e_chave2.text,[]) then achou := true
   else if q_processos.locate('qdic',e_chave2.text,[]) then begin
         achou := true;
         achou2 := true;
         end;
end;
if rg_localiza2.itemindex = 2 then begin
   if q_processos.locate('qprocesso',e_chave2.text,[]) then achou := true;
end;

if not achou then showmessage('Parâmetro solicitado não foi localizado.')
else begin
     if MessageDlg('Confirma inclusão deste item? '+chr(13)+chr(10)+chr(13)+chr(10)+
     'Processo_: '+q_processosqprocesso.asstring+chr(13)+chr(10)+
     'Cliente__: '+q_processosqcliente.asstring+chr(13)+chr(10)+
     'DI:______: '+q_processosqDI.asstring+' / '+q_processosqDIc.asstring+chr(13)+chr(10)+
     'DTA______: '+q_processosqDTA.asstring+chr(13)+chr(10)+chr(13)+chr(10), mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin

     if t_itens.recordcount > 0 then t_itens.append
     else t_itens.edit;
     t_itensEmpresa.asstring    := t_faturasEmpresa.asstring;
     t_itensFilial.asstring     := t_faturasFilial.asstring;
     t_itensFornecedor.asstring := t_faturasFornecedor.asstring;
     t_itensFatura.asstring     := t_faturasFatura.asstring;
     t_itensprocesso.asstring   := q_processosqprocesso.asstring;
     if not achou2 then  t_itensdi.asstring         := q_processosqdi.asstring
     else t_itensdi.asstring         := q_processosqdic.asstring;
     t_itensdta.asstring        := q_processosqdta.asstring;
     t_itenspeso.asstring       := q_processosqpeso.asstring;
     t_itens.post;
     rateio(f_movcarga);
     end;
     p_incluiritens.visible := false;

end;

end;

procedure Tf_movcarga.BitBtn2Click(Sender: TObject);
begin
   if MessageDlg('Confirma Exclusão deste Item?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      t_itens.delete;
      rateio(f_movcarga);
   end;
end;

procedure Tf_movcarga.b_regravaClick(Sender: TObject);
begin
rateio(f_movcarga);
end;

end.
