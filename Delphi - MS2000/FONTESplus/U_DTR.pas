unit U_DTR;

interface


uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, jpeg, Db, DBTables;

type
  TQR_DTR = class(TQuickRep)
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRLabel31: TQRLabel;
    QRLabel35: TQRLabel;
    qrs1: TQRShape;
    QRLabel43: TQRLabel;
    SummaryBand1: TQRBand;
    lblTotal: TQRLabel;
    qvalortotal: TQRLabel;
    QRBand1: TQRBand;
    qrs17: TQRShape;
    QRImage1: TQRImage;
    qrs18: TQRShape;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    qrl_DSI_Regime_Anterior: TQRLabel;
    QRLabel3: TQRLabel;
    qrs14: TQRShape;
    QRLabel6: TQRLabel;
    qrl_Beneficiario: TQRLabel;
    qrs13: TQRShape;
    QRLabel8: TQRLabel;
    qrl_End: TQRLabel;
    qrs11: TQRShape;
    QRLabel10: TQRLabel;
    qrl_cod_aduaneiro: TQRLabel;
    QRLabel12: TQRLabel;
    qrl_cod_recinto: TQRLabel;
    QRLabel14: TQRLabel;
    qrs16: TQRShape;
    QRLabel15: TQRLabel;
    qrs10: TQRShape;
    QRLabel16: TQRLabel;
    qrl_Regime: TQRLabel;
    qrl_Regime_new: TQRLabel;
    qrs8: TQRShape;
    QRLabel20: TQRLabel;
    qrl_Beneficiario_new: TQRLabel;
    qrs7: TQRShape;
    QRLabel22: TQRLabel;
    qrl_End_new: TQRLabel;
    qrs5: TQRShape;
    QRLabel24: TQRLabel;
    qrl_cod_aduaneiro_new: TQRLabel;
    QRLabel26: TQRLabel;
    qrl_cod_recinto_new: TQRLabel;
    QRLabel47: TQRLabel;
    QRLabel48: TQRLabel;
    qrl_cpf: TQRLabel;
    qrl_cpf_new: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel33: TQRLabel;
    qrl_data: TQRLabel;
    qrs3: TQRShape;
    qrs2: TQRShape;
    qrs4: TQRShape;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel54: TQRLabel;
    QRShape23: TQRShape;
    qrs6: TQRShape;
    qrs9: TQRShape;
    qrs12: TQRShape;
    qrs15: TQRShape;
    QRDBText3: TQRDBText;
    QRLabel4: TQRLabel;
    qrItensDTR: TQuery;
    qrItensDTRCodigo: TStringField;
    qrItensDTRtdecla: TStringField;
    qrItensDTRNCM: TStringField;
    qrItensDTRProduto: TStringField;
    qrItensDTRNumero_serie: TStringField;
    qrItensDTRPO: TStringField;
    qrItensDTRPag_proporcional: TSmallintField;
    qrItensDTRdesc: TMemoField;
    qrItensDTRFatura: TStringField;
    qrItensDTRPagina: TStringField;
    qrItensDTRSequencial: TStringField;
    qrItensDTRSomaDeQuantidade: TFloatField;
    qrItensDTRSomaDeValor_Aduaneiro: TFloatField;
    qrItensDTRSomaDevalortotal: TFloatField;
    qrItensDTRRegime_Tributacao_II: TStringField;
    qrItensDTRRegime_Tributacao_IPI: TStringField;
    qrItensDTRPrazo_permanencia: TIntegerField;
    qrDTRTemp: TQuery;
    qrDTRTempProcesso: TStringField;
    qrDTRTempSequencial: TIntegerField;
    qrDTRTempNCM: TStringField;
    qrDTRTempDescricao_Produto: TStringField;
    qrDTRTempFatura: TStringField;
    qrDTRTempPagina: TStringField;
    qrDTRTempQuantidade: TFloatField;
    qrDTRTempValor: TFloatField;
    qrDTRTempUnidade: TStringField;
    qrItensDTRUnidade: TStringField;
    QRShape9: TQRShape;
    QRShape31: TQRShape;
    QRShape35: TQRShape;
    QRShape36: TQRShape;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    QRShape39: TQRShape;
    QRShape40: TQRShape;
    QRShape41: TQRShape;
    QRShape42: TQRShape;
    QRShape43: TQRShape;
    QRShape44: TQRShape;
    QRShape45: TQRShape;
    QRShape48: TQRShape;
    QRShape49: TQRShape;
    qrl_Item: TQRLabel;
    qrCambio: TQuery;
    qrCambioProcesso: TStringField;
    qrCambioMoeda: TStringField;
    qrCambioTaxa_conversao: TFloatField;
    qvalor: TQRLabel;
    qrl_teste: TQRLabel;
    qrl_Itens: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    lblUnd: TQRLabel;
    lblNCM: TQRLabel;
    lblDesc: TQRLabel;
    lblValor: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel7: TQRLabel;
    qquant: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel17: TQRLabel;
    qUnid: TQRLabel;
    qMoeda: TQuery;
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    function MesExtenso(NumMes:byte):String;
    function DataPorExtenso(Data:TDate):String;
  public
  end;

var
   QR_DTR: TQR_DTR;
   qitem: Integer;

implementation

uses U_MSCOMEX, u_proDTR;

{$R *.DFM}

procedure TQR_DTR.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var ovalor: Real;
var cnpj, strTeste: String;


begin
      lblUnd.caption :='';
      lblNCM.caption :='';
      lblDesc.caption :='';
      lblValor.caption :='';
      lblTotal.Caption :='';

     ovalor := 0;
     qvalor.Caption := '';

     qrCambio.close;
     {
        Sandro Rassy - 14/09/2011
        Modificação conforme solicitação do Marcelo Santana, o valor do DTR não esta igual ao do RCR, foi identificado que o DTR
        estava utilizando a taxa de conversão do processo antigo.
     }
     //qrCambio.Params[0].AsString := F_proDTR.me_nossaref.text;
     qrCambio.Params[0].AsString := F_proDTR.ME_nossaref_2.text;
     qrCambio.Open;

     if trim(qrDTRTempFatura.AsString)<>'' then
     begin
         F_proDTR.qrFaturas.Locate('Codigo',qrDTRTempFatura.AsString,[]);
         if DaFatura = True then
         begin
             with qMoeda do
             begin
                    Close;
                    ParamByName('pProcesso').asString:=F_proDTR.me_nossaref.text;
                    Open;
             end;
             logusu('I', v_usuario + ' imprimiu o DTR com moeda igual a da fatura.');
             ovalor := qrDTRTempValor.AsFloat;
             qvalor.Caption := FloatToStrF(ovalor,fffixed,15,2);
         end
         Else
         Begin
            //converti para real
            qrCambio.Locate('Moeda',F_proDTR.qrFaturasMoeda.AsString,[]);
            ovalor := (qrDTRTempValor.AsFloat*qrCambioTaxa_Conversao.AsFloat);
            //converti para dolar
            qrCambio.Locate('Moeda','220',[]);
            ovalor := (ovalor/qrCambioTaxa_Conversao.AsFloat);
            qvalor.Caption := FloatToStrF(ovalor,fffixed,15,2);
         End;

         qvalortotal.Caption := FloatToStrF(StrToFloat(qvalortotal.Caption)+StrToFloat(qvalor.Caption),fffixed,15,2);

         If ovalor = 0 Then
         Begin
             qvalor.Caption := '';
             qrl_item.Caption := '';
         End
         Else
         Begin
             Inc(qitem);
             qrl_item.Caption := '('+IntToStr(qitem)+')';
         End;

     end;

     If qrDTRTempQuantidade.AsFloat = 0 Then
     begin
             qUnid.Caption := '';
             qquant.Caption := ' ';
     end        
     Else
     begin
        qquant.Caption := qrDTRTempQuantidade.AsString;
        qUnid.Caption := qrDTRTempUnidade.Text;
     end;

//     qquant.Caption := qrRCRTempsequencial.AsString;

     qrl_DSI_Regime_Anterior.caption := F_proDTR.txtDSI.text;
     qrl_Regime.Caption := F_proDTR.txtRegime2.Text;
     qrl_Beneficiario.Caption:=F_proDTR.txtBene2.text;
     qrl_cpf.Caption:=F_proDTR.txtCPFCNPJ2.text;
     qrl_End.Caption:=F_proDTR.txtEnd2.Text;
     qrl_cod_aduaneiro.caption:=F_proDTR.txtUnidRF2.text;
     qrl_cod_recinto.Caption:=F_proDTR.txtRecinto2.text;

     qrl_Regime_new.Caption := F_proDTR.txtRegime1.Text;//F_proDTR.txtRegime2.Text;
     qrl_Beneficiario_new.Caption:=F_proDTR.txtBene1.text;
     qrl_cpf_new.Caption:=F_proDTR.txtCPFCNPJ1.text;
     qrl_End_new.Caption:=F_proDTR.txtEnd1.Text;
     qrl_cod_aduaneiro_new.caption:=F_proDTR.txtUnidRF1.text;
     qrl_cod_recinto_new.Caption:=F_proDTR.txtRecinto1.text;

     If qrl_cpf.Caption='' Then  qrl_cpf.Caption:= 'NÃO INFORMADO';

     {Else
     Begin
        cnpj := F_proDTR.txtCPFCNPJ1.text;
        qrl_cpf.Caption:=Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);
     End;}

     If qrl_End.Caption = '' Then
     Begin
        qrl_End.Caption := 'NÃO INFORMADO';
        qrl_End_new.Caption := '';
     End;
     strTeste:= qrDTRTempDescricao_Produto.AsString;
     QRLabel17.Caption:=strTeste;

     EXIT;
end;

procedure TQR_DTR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

     qvalortotal.Caption := '0';
     qitem := 0;
     qrl_Data.Caption := '';
     if F_proDTR.txtData.Text = '' then F_proDTR.txtData.Text:= DataPorExtenso(Now);
     //qrl_Data.Caption := 'Rio de Janeiro, ' + DataPorExtenso(Now);
     qrl_Data.Caption := F_proDTR.txtLocal.Text +', ' + F_proDTR.txtData.Text;

     With qrdtrTemp Do
     Begin
      Close;
      sql.clear;
      sql.add('SELECT Unidade,Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
      sql.add('FROM RCRtemp WHERE Processo = :qproc ');
      sql.add('ORDER BY Sequencial '); 
      Params[0].AsString := F_proDTR.qrProcessosProcesso.AsString;
      Open;
     End;
end;
//função que crie o mês por extenso
function TQR_DTR.MesExtenso(NumMes:byte):String;
var Meses: array[1..12] of String[15];
begin
Result:='';
  Meses [1] := 'Janeiro';
  Meses [2] := 'Fevereiro';
  Meses [3] := 'Março';
  Meses [4] := 'Abril';
  Meses [5] := 'Maio';
  Meses [6] := 'Junho';
  Meses [7] := 'Julho';
  Meses [8] := 'Agosto';
  Meses [9] := 'Setembro';
  Meses [10]:= 'Outubro';
  Meses [11]:= 'Novembro';
  Meses [12]:= 'Dezembro';
Result:= Meses[NumMes];
end;


//função que cria a data por extenso, chamando a MesExtenso
function TQR_DTR.DataPorExtenso(Data:TDate):String;
var Ano,Mes,Dia:word;
begin
   DecodeDate(Data,Ano,Mes,Dia);
   Result:= IntToStr(Dia)+' de '+MesExtenso(Mes)+' de '+IntToStr(Ano);
end;



end.
