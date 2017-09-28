unit U_RPR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables;

type
  TQR_RPR = class(TQuickRep)
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRImage3: TQRImage;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape10: TQRShape;
    QRShape15: TQRShape;
    shapecontrato1: TQRShape;
    QRLabel24: TQRLabel;
    shapecontrato2: TQRShape;
    QRLabel25: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel26: TQRLabel;
    qrl_interessado: TQRLabel;
    qrl_cnpj: TQRLabel;
    qrl_endereco: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel30: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRShape7: TQRShape;
    QRLabel34: TQRLabel;
    QRShape8: TQRShape;
    QRLabel35: TQRLabel;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRLabel36: TQRLabel;
    QRShape14: TQRShape;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    qrl_rcr: TQRLabel;
    qrl_data: TQRLabel;
    qrl_local: TQRLabel;
    QRLabel47: TQRLabel;
    qrl_endereco1: TQRLabel;
    T_filiais: TTable;
    ds_filiais: TDataSource;
    T_filiaisCodigo_Empresa: TStringField;
    T_filiaisCodigo_Filial: TStringField;
    T_filiaisDescricao: TStringField;
    Q_itensRCR: TQuery;
    ds_qitensrcr: TDataSource;
    QRShape19: TQRShape;
    QRLabel45: TQRLabel;
    QRShape20: TQRShape;
    QRLabel48: TQRLabel;
    QRShape21: TQRShape;
    QRLabel50: TQRLabel;
    QRLabel51: TQRLabel;
    QRShape22: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    SummaryBand1: TQRBand;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel49: TQRLabel;
    QRShape33: TQRShape;
    qvalortotal: TQRLabel;
    Q_itensRCREmpresa: TStringField;
    Q_itensRCRFilial: TStringField;
    Q_itensRCRCdigo: TStringField;
    Q_itensRCRtdecla: TStringField;
    Q_itensRCRNCM: TStringField;
    Q_itensRCRProduto: TStringField;
    Q_itensRCRDescricao_Produto: TStringField;
    Q_itensRCRFatura: TStringField;
    Q_itensRCRPagina: TStringField;
    Q_itensRCRSequencial: TStringField;
    Q_itensRCRSomaDeQuantidade: TFloatField;
    Q_itensRCRSomaDeValor_Aduaneiro: TFloatField;
    Q_itensRCRRegime_Tributacao_II: TStringField;
    Q_itensRCRRegime_Tributacao_IPI: TStringField;
    QRBand1: TQRBand;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape34: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    QRShape35: TQRShape;
    qvalor: TQRLabel;
    Q_rcrtemp: TQuery;
    ds_qrcrtemp: TDataSource;
    Q_rcrtempProcesso: TStringField;
    Q_rcrtempNCM: TStringField;
    Q_rcrtempDESCRICAO_PRODUTO: TStringField;
    Q_rcrtempFATURA: TStringField;
    Q_rcrtemppagina: TStringField;
    Q_rcrtempquantidade: TFloatField;
    Q_rcrtempvalor: TFloatField;
    qquant: TQRLabel;
    Q_itensRCRPO: TStringField;
    QRShape23: TQRShape;
    QRLabel19: TQRLabel;
    QRLabel6: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private

  public

  end;

var
  QR_RPR: TQR_RPR;

implementation

uses U_processos, U_MSCOMEX;

{$R *.DFM}

procedure TQR_RPR.QuickRepStartPage(Sender: TCustomQuickRep);
begin
{
f_processos.t_processos.first;
f_processos.t_processos.findkey([f_processos.t_parametrosempresa.asstring,f_processos.t_parametrosfilial.asstring,f_processos.me_nossaref.text]);

qrl_rcr.caption := f_processos.t_processosnumero_rcr.asstring;
if f_processos.t_importadores.findkey([f_processos.t_parametrosempresa.asstring,f_processos.t_parametrosfilial.asstring,f_processos.t_processosimportador.asstring]) then begin
   qrl_interessado.caption := f_processos.t_importadoresrazosocial.asstring;
//   qrl_cnpj.caption        := f_processos.t_importadorescnpj_cpf_completo.asstring;
   qrl_cnpj.caption        := copy(f_processos.t_importadorescnpj_cpf_completo.asstring,1,2)+'.'+copy(f_processos.t_importadoresCNPJ_CPF_COMPLETO.asstring,3,3)+'.'+copy(f_processos.t_importadoresCNPJ_CPF_COMPLETO.asstring,6,3)+'/'+copy(f_processos.t_importadoresCNPJ_CPF_COMPLETO.asstring,9,4)+'-'+copy(f_processos.t_importadoresCNPJ_CPF_COMPLETO.asstring,13,2);
   qrl_endereco.caption    := f_processos.t_importadoresendereo.asstring+' - '+f_processos.t_importadoresnmero.asstring+' - '+f_processos.t_importadorescomplemento.asstring;
   qrl_endereco1.caption   := f_processos.t_importadoresbairro.asstring+' - '+f_processos.t_importadorescidade.asstring+' - '+f_processos.t_importadorescep.asstring+' - '+f_processos.t_importadoresuf.asstring;
end
else begin
   qrl_interessado.caption := 'NÃO ENCONTRADO';
   qrl_cnpj.caption        := 'NÃO ENCONTRADO';
   qrl_endereco.caption    := 'NÃO ENCONTRADO';
   qrl_endereco1.caption   := '';
end;

if f_processos.t_locais.findkey([f_processos.t_parametrosempresa.asstring,f_processos.t_parametrosfilial.asstring,f_processos.t_processosimportador.asstring,f_processos.t_processoscontrato.asstring,f_processos.t_processoslocal_inventario.asstring]) then begin
   qrl_destinacao.caption := '( DESTINAÇÃO: '+f_processos.T_locaisdescricao.asstring +' )';
end
else begin
   ////qrl_destinacao.caption := '( DESTINAÇÃO: NÃO ENCONTRADO )';
   qrl_destinacao.caption := '';
end;

shapeterrestre.brush.color := clwhite;
shapemaritima.brush.color := clwhite;
shapeaerea.brush.color := clwhite;
shapeoutras.brush.color := clwhite;

f_processos.t_transpprocesso.findkey([f_processos.t_parametrosempresa.asstring,f_processos.t_parametrosfilial.asstring,f_processos.t_processoscdigo.asstring]);
if (f_processos.t_transpprocessovia.asstring = '7') then shapeterrestre.brush.color := clblack;
if (f_processos.t_transpprocessovia.asstring = '1') then shapemaritima.brush.color := clblack;
if (f_processos.t_transpprocessovia.asstring = '4') then shapeaerea.brush.color := clblack;
if ((f_processos.t_transpprocessovia.asstring = '2') or
    (f_processos.t_transpprocessovia.asstring = '3') or
    (f_processos.t_transpprocessovia.asstring = '5') or
    (f_processos.t_transpprocessovia.asstring = '6') or
    (f_processos.t_transpprocessovia.asstring = '8')) then shapeoutras.brush.color := clblack;


qrl_meiotransp.caption := f_processos.me_transp1.text;
qrl_meiotransp1.caption := f_processos.me_transp2.text;

if f_processos.T_fundaRCR.findkey([f_processos.T_processosFundamentacao_RCR.asstring])then
   qrl_fundamento.caption := '( '+f_processos.T_fundaRCRdescricao.asstring+' )'
else qrl_fundamento.caption := '';///( NÃO ENCONTRADO ) ';

if trim(qrl_fundamento.caption) = qrlabel20.caption then begin
   shapefunda01.brush.color := clblack;
   qrl_fundamento.caption := '';
   end
   else shapefunda01.brush.color := clwhite;

if trim(qrl_fundamento.caption) = qrlabel21.caption then begin
   shapefunda02.brush.color := clblack;
   qrl_fundamento.caption := '';
   end
   else shapefunda02.brush.color := clwhite;

if trim(qrl_fundamento.caption) = qrlabel22.caption then begin
   shapefunda03.brush.color := clblack;
   qrl_fundamento.caption := '';
   end
   else shapefunda03.brush.color := clwhite;

if trim(qrl_fundamento.caption) = qrlabel23.caption then begin
   shapefunda04.brush.color := clblack;
   qrl_fundamento.caption := '';
   end
   else shapefunda04.brush.color := clwhite;

if f_processos.t_contratos.findkey([f_processos.t_parametrosempresa.asstring,f_processos.t_parametrosfilial.asstring,f_processos.t_processosimportador.asstring,f_processos.t_processoscontrato.asstring]) then begin
   qrl_contrato.caption   := '( CONTRATO: '+f_processos.t_contratosdescricao.asstring+' VIGÊNCIA: '+f_processos.t_contratosvigencia_inicial.asstring+ ' à '+ f_processos.t_contratosvigencia_final.asstring+ ' )';
end
else begin
   qrl_contrato.caption   := '( CONTRATO: NÃO ENCONTRADO )';
end;
shapecontrato1.brush.color := clwhite;
shapecontrato2.brush.color := clwhite;

if f_processos.t_contratostipo.asstring = '1' then shapecontrato1.brush.color := clblack
else shapecontrato2.brush.color := clblack;

qrl_data.caption := f_processos.T_processosData_Entrada_RCR.asstring;
t_filiais.findkey([f_processos.t_parametrosempresa.asstring,f_processos.t_parametrosfilial.asstring]);
qrl_local.caption := t_filiaisdescricao.asstring;
 }
end;

procedure TQR_RPR.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  ovalor:real;
begin
    ovalor := 0;
    f_processos.t_faturas.findkey([f_processos.t_parametrosempresa.asstring,f_processos.t_parametrosfilial.asstring,f_processos.me_nossaref.text,q_rcrtempFatura.asstring]);
    if (f_processos.T_faturasMoeda.asstring = '220') then begin
       ovalor := Q_RCRtempValor.asfloat;
       qvalor.caption := floattostrf(ovalor,fffixed,10,2);
    end
    else begin
       {converti para real}
       f_processos.t_cambio.findkey([f_processos.t_faturasmoeda.asstring]);
       ovalor := (Q_RCRtempvalor.asfloat*f_processos.t_cambiotaxa_conversao.asfloat);
       {converti para dolar}
       f_processos.t_cambio.findkey(['220']);
       ovalor := (ovalor/f_processos.t_cambiotaxa_conversao.asfloat);
       qvalor.caption := floattostrf(ovalor,fffixed,10,2);
    end;

    qvalortotal.caption := floattostrf(strtofloat(qvalortotal.caption)+ovalor,fffixed,10,2);

    if ovalor = 0 then qvalor.caption := ' ';

    if q_rcrtempquantidade.asfloat = 0 then qquant.caption := ' '
    else qquant.caption := q_rcrtempquantidade.asstring;

end;

procedure TQR_RPR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
qvalortotal.caption := '0';
end;

end.
