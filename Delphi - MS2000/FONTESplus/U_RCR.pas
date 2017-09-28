unit U_RCR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls, 
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg, Math, Dialogs;

type
  TQR_RCR = class(TQuickRep)
    TitleBand1: TQRBand;
    PageFooterBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRImage2: TQRImage;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRImage3: TQRImage;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    Shapeterrestre: TQRShape;
    shapemaritima: TQRShape;
    shapeaerea: TQRShape;
    shapeoutras: TQRShape;
    QRShape9: TQRShape;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRShape10: TQRShape;
    QRLabel19: TQRLabel;
    shapefunda01: TQRShape;
    QRLabel20: TQRLabel;
    shapefunda02: TQRShape;
    QRLabel21: TQRLabel;
    shapefunda03: TQRShape;
    QRLabel22: TQRLabel;
    shapefunda04: TQRShape;
    QRLabel23: TQRLabel;
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
    qrl_meiotransp: TQRLabel;
    qrl_destinacao: TQRLabel;
    qrl_contrato: TQRLabel;
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
    QRShape16: TQRShape;
    QRLabel40: TQRLabel;
    QRShape17: TQRShape;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRShape18: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    qrl_rcr: TQRLabel;
    qrl_data: TQRLabel;
    qrl_local: TQRLabel;
    QRLabel47: TQRLabel;
    qrl_fundamento: TQRLabel;
    qrl_endereco1: TQRLabel;
    QRShape19: TQRShape;
    QRLabel45: TQRLabel;
    QRShape20: TQRShape;
    QRLabel48: TQRLabel;
    QRShape21: TQRShape;
    QRLabel50: TQRLabel;
    qrlblValor: TQRLabel;
    QRShape22: TQRShape;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    qrl_meiotransp1: TQRLabel;
    SummaryBand1: TQRBand;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRLabel49: TQRLabel;
    QRShape33: TQRShape;
    qvalortotal: TQRLabel;
    QRBand1: TQRBand;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape34: TQRShape;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    qvalor: TQRLabel;
    qrRCRTemp: TQuery;
    qquant: TQRLabel;
    qrl_itens: TQRLabel;
    qrl_item: TQRLabel;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
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
    qrCambio: TQuery;
    QRLabel46: TQRLabel;
    qrItensRCR: TQuery;
    qrImport: TQuery;
    qrDadosRCR: TQuery;
    qrl_processo: TQRLabel;
    qrRCRTempProcesso: TStringField;
    qrRCRTempSequencial: TIntegerField;
    qrRCRTempNCM: TStringField;
    qrRCRTempDescricao_Produto: TStringField;
    qrRCRTempFatura: TStringField;
    qrRCRTempPagina: TStringField;
    qrRCRTempQuantidade: TFloatField;
    qrRCRTempValor: TFloatField;
    qrDadosRCRCodigo: TStringField;
    qrDadosRCRLocal: TStringField;
    qrDadosRCRVia: TStringField;
    qrDadosRCRFundamento: TStringField;
    qrDadosRCRContrato: TStringField;
    qrDadosRCRVigencia_inicial: TDateTimeField;
    qrDadosRCRVigencia_final: TDateTimeField;
    qrDadosRCRTipo: TStringField;
    qrDadosRCRdata_prorrogacao: TDateTimeField;
    qrCambioProcesso: TStringField;
    qrCambioMoeda: TStringField;
    qrCambioTaxa_conversao: TFloatField;
    qrImportRazao_Social: TStringField;
    qrImportCNPJ_CPF_COMPLETO: TStringField;
    qrImportEndereco: TStringField;
    qrImportNumero: TStringField;
    qrImportComplemento: TStringField;
    qrImportBairro: TStringField;
    qrImportCidade: TStringField;
    qrImportCEP: TStringField;
    qrImportUF: TStringField;
    qrItensRCRCodigo: TStringField;
    qrItensRCRtdecla: TStringField;
    qrItensRCRNCM: TStringField;
    qrItensRCRProduto: TStringField;
    qrItensRCRNumero_serie: TStringField;
    qrItensRCRPO: TStringField;
    qrItensRCRPag_proporcional: TIntegerField;
    qrItensRCRdesc: TMemoField;
    qrItensRCRFatura: TStringField;
    qrItensRCRPagina: TStringField;
    qrItensRCRSequencial: TStringField;
    qrItensRCRSomaDeQuantidade: TFloatField;
    qrItensRCRSomaDeValor_Aduaneiro: TFloatField;
    qrItensRCRSomaDevalortotal: TFloatField;
    qrItensRCRRegime_Tributacao_II: TStringField;
    qrItensRCRRegime_Tributacao_IPI: TStringField;
    qrItensRCRPrazo_permanencia: TIntegerField;
    qrRCRTemp_Descricao_Produto: TStringField;
    qrl_refcli: TQRLabel;
    qrl_local_inv: TQRLabel;
    qMoeda: TQuery;
    qMoedaMoeda: TStringField;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRepBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure qrRCRTempCalcFields(DataSet: TDataSet);
  private
    fObsEspecifica: String;  
  public
    property ObsEspecifica : String read fObsEspecifica write fObsEspecifica;
  end;

var
   QR_RCR: TQR_RCR;
   qitem: Integer;
   ObsEspCont, ObsTam : Integer;


implementation

uses U_MSCOMEX, u_proRCR;

{$R *.DFM}

procedure TQR_RCR.QuickRepStartPage(Sender: TCustomQuickRep);
var cnpj: String;

begin
     qrl_processo.Caption := f_prorcr.qrProcessosProcesso.AsString;
     qrl_refcli.Caption   := F_proRCR.qrProcessosrefcli.AsString;
     qrl_local_inv.Caption:= F_proRCR.qrProcessosqlocal.AsString;
     With qrImport Do Begin
         Close;
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := F_proRCR.qrProcessosCodigo.AsString;
         Open;
     End;
     With qrDadosRCR Do Begin
         Close;
         Params[0].AsString := F_proRCR.qrProcessosProcesso.AsString;
         Params[1].AsString := vEmp;
         Params[2].AsString := vFil;
         Open;
     End;

     qrl_rcr.Caption := F_proRCR.tbProcessosNumero_RCR.AsString;

     If qrImportRazao_Social.IsNull Then  qrl_interessado.Caption := 'NÃO ENCONTRADO'
     Else  qrl_interessado.Caption := qrImportRazao_Social.AsString;

     If qrImportCNPJ_CPF_COMPLETO.IsNull Then  qrl_cnpj.Caption := 'NÃO ENCONTRADO'
     Else Begin
        cnpj := qrImportCNPJ_CPF_COMPLETO.AsString;
        qrl_cnpj.Caption := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);
     End;


     If qrImportEndereco.IsNull Then Begin
        qrl_endereco.Caption  := 'NÃO ENCONTRADO';
        qrl_endereco1.Caption := '';
     End
     Else Begin
        qrl_endereco.Caption  := qrImportEndereco.AsString+' - '+qrImportNumero.AsString+' - '+qrImportComplemento.AsString;
        qrl_endereco1.Caption := qrImportBairro.AsString+' - '+qrImportCidade.AsString+' - '+qrImportCEP.AsString+' - '+qrImportUF.AsString;
     End;

     If qrDadosRCRLocal.IsNull Then  qrl_destinacao.Caption := ''
     Else  qrl_destinacao.Caption := '( DESTINAÇÃO: '+qrDadosRCRLocal.AsString +' )';

     shapeTerrestre.Brush.Color := clWhite;
     shapeMaritima.Brush.Color := clWhite;
     shapeAerea.Brush.Color := clWhite;
     shapeOutras.Brush.Color := clWhite;
     Try
        Case StrToInt(qrDadosRCRVia.AsString) Of
            7: shapeTerrestre.Brush.Color := clBlack;
            1: shapeMaritima.Brush.Color := clBlack;
            4: shapeAerea.Brush.Color := clBlack;
            2,3,5,6,8: shapeOutras.Brush.Color := clBlack;
        End;
     Except End;

     qrl_meiotransp.Caption := F_proRCR.tbProcessosIdent_meio1.Text;
     qrl_meiotransp1.Caption := F_proRCR.tbProcessosIdent_meio2.Text;

     If qrDadosRCRFundamento.IsNull Then  qrl_fundamento.Caption := ''
     Else  qrl_fundamento.Caption := '( '+qrDadosRCRFundamento.AsString+' )';

     If Trim(qrl_fundamento.Caption) = qrlabel20.Caption Then Begin
        shapeFunda01.Brush.Color := clBlack;
        qrl_fundamento.Caption := '';
     End
     Else
        shapeFunda01.Brush.Color := clWhite;

     If Trim(qrl_fundamento.Caption) = qrlabel21.Caption Then Begin
        shapeFunda02.Brush.Color := clBlack;
        qrl_fundamento.Caption := '';
     End
     Else
        shapeFunda02.Brush.Color := clWhite;

     If Trim(qrl_fundamento.Caption) = qrlabel22.Caption Then Begin
        shapeFunda03.Brush.Color := clBlack;
        qrl_fundamento.Caption := '';
     End
     Else
        shapeFunda03.Brush.Color := clWhite;

     If Trim(qrl_fundamento.Caption) = qrlabel23.Caption Then Begin
        shapeFunda04.Brush.Color := clBlack;
        qrl_fundamento.Caption := '';
     End
     Else
        shapeFunda04.Brush.Color := clWhite;

     If qrDadosRCRContrato.IsNull Then  qrl_contrato.Caption := '( CONTRATO: NÃO ENCONTRADO )'
     Else  begin
      qrl_contrato.Caption := '( CONTRATO: '+qrDadosRCRContrato.AsString+' VIGÊNCIA: '+qrDadosRCRVigencia_Inicial.AsString+ ' à '+ qrDadosRCRVigencia_Final.AsString+ ' )';
      if not qrdadosrcrdata_prorrogacao.isnull then qrl_contrato.Caption := '(CONTR:'+qrDadosRCRContrato.AsString+' VIGÊNCIA: '+qrDadosRCRVigencia_Inicial.AsString+ ' à '+ qrDadosRCRVigencia_Final.AsString+' PRORROGADO: '+qrDadosRCRdata_prorrogacao.AsString  + ')';
     end;
     shapeContrato1.Brush.Color := clWhite;
     shapeContrato2.Brush.Color := clWhite;

     If qrDadosRCRTipo.AsString = '1' Then
     begin
             shapeContrato1.Brush.Color := clBlack;
             shapeContrato2.Brush.Color := clWhite;
     end
     Else
     begin
            shapeContrato2.Brush.Color := clBlack;
            shapeContrato1.Brush.Color := clWhite;
     end;       

     qrl_data.Caption := F_proRCR.me_data.text;
     qrl_local.Caption := F_proRCR.me_local.text;


end;

procedure TQR_RCR.DetailBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var ovalor: Real;

begin
     ovalor := 0;
     qvalor.Caption := '';

     qrCambio.close;
     qrCambio.Params[0].AsString := F_proRCR.me_nossaref.text;
     qrCambio.Open;

     if trim(qrRCRTempFatura.AsString)<>'' then begin
       F_proRCR.qrFaturas.Locate('Codigo',qrRCRTempFatura.AsString,[]);
       if DaFatura = True then
       begin
         with qMoeda do
         begin
                Close;
                ParamByName('pProcesso').asString:=F_proRCR.me_nossaref.text;
                Open;
         end;
         if SiglaMoeda then   {Ticket 3614 - Leandro Serra 17/09/2012}
         begin
             case StrToInt(qMoedaMoeda.Value) of
               918 :   qrlblValor.caption :='VALOR €';
               978 :   qrlblValor.caption :='VALOR €';
               790 :   qrlblValor.caption :='VALOR R$';
               220 :   qrlblValor.caption :='VALOR US$';               
             end;
         end    
         else
             qrlblValor.caption :='VALOR';
         {Fim Ticket 3614 - Leandro Serra 17/09/2012}
         logusu('I', v_usuario + ' imprimiu o RCR com moeda igual a da fatura.');
         ovalor := qrRCRTempValor.AsFloat;
         qvalor.Caption := FloatToStrF(ovalor,fffixed,15,2);
       end
       else
       begin
          If F_proRCR.qrFaturasMoeda.AsString = '220' Then
          Begin
              ovalor := qrRCRTempValor.AsFloat;
              qvalor.Caption := FloatToStrF(ovalor,fffixed,15,2);
          End
          Else
          Begin
              //converti para real
              qrCambio.Locate('Moeda',F_proRCR.qrFaturasMoeda.AsString,[]);
              ovalor := (qrRCRTempValor.AsFloat*qrCambioTaxa_Conversao.AsFloat);
              //converti para dolar
              qrCambio.Locate('Moeda','220',[]);
              ovalor := (ovalor/qrCambioTaxa_Conversao.AsFloat);
              qvalor.Caption := FloatToStrF(ovalor,fffixed,15,2);
          End;
          {Ticket 3614 - Leandro Serra 17/09/2012}
          if SiglaMoeda then
             qrlblValor.Caption:= 'VALOR US$'
          else
             qrlblValor.Caption:= 'VALOR';
         {Fim Ticket 3614 - Leandro Serra 17/09/2012}             
       end;
  //     qrlblValor.Caption:= 'VALOR';

       qvalortotal.Caption := FloatToStrF(StrToFloat(qvalortotal.Caption)+StrToFloat(qvalor.Caption),fffixed,15,2);

       If ovalor = 0 Then Begin
           qvalor.Caption := '';
           qrl_item.Caption := '';
       End
       Else Begin
           Inc(qitem);
           qrl_item.Caption := '('+IntToStr(qitem)+')';
       End;

     end;

     If qrRCRTempQuantidade.AsFloat = 0 Then  qquant.Caption := ' '
     Else  qquant.Caption := qrRCRTempQuantidade.AsString;

//     qquant.Caption := qrRCRTempsequencial.AsString;

    {eduardo.souza 01/06/2011}
    if ( ObsEspCont >= qrRCRTemp.RecordCount-ObsTam ) then begin
      QRDBText7.Font.Style:=[fsItalic];
      QRDBText7.Font.Size := 8;
    end;
    {------------}

end;

procedure TQR_RCR.QuickRepBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
     qvalortotal.Caption := '0';
     qitem := 0;
     ObsEspCont := 0;
     //Solicitado pela Sra. Odilma o cancelamento desta mensagem.
     {Leandro Serra - 03/10/2011
     ObsTam := Ceil(Length( ObsEspecifica )/70);     }
      ObsTam :=0;
end;

procedure TQR_RCR.qrRCRTempCalcFields(DataSet: TDataSet);
begin
  {eduardo.souza 01/06/2011}
  {
  inc(ObsEspCont, 1);
  if ( Trim( qrRCRTempDescricao_Produto.Value ) <> '' ) then
    qrRCRTemp_Descricao_Produto.Value := qrRCRTempDescricao_Produto.Value
  else begin
    if ( ObsEspCont >= qrRCRTemp.RecordCount-3 ) then begin
      if ( ObsEspCont = qrRCRTemp.RecordCount-3 )then
        qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 1, 75))
      else
      if ( ObsEspCont = qrRCRTemp.RecordCount-2 )then
        qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 75, 75))
      else
      if ( ObsEspCont = qrRCRTemp.RecordCount-1 )then
        qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 150, 75))
      else
      if ( ObsEspCont = qrRCRTemp.RecordCount )then
        qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 215, 75));
    end
    else
      qrRCRTemp_Descricao_Produto.Value := qrRCRTempDescricao_Produto.Value
  end;
  }
  {eduardo.souza 01/06/2011}

  inc(ObsEspCont, 1);
  if ( Trim( qrRCRTempDescricao_Produto.Value ) <> '' ) then
    qrRCRTemp_Descricao_Produto.Value := qrRCRTempDescricao_Produto.Value
  else begin
    if ( ObsEspCont >= qrRCRTemp.RecordCount - 3 ) then begin  
      case ObsTam of
        0:begin
                exit;
        end;
        1: begin
          qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 1, 70))
        end; 
        2:begin
          if ( ObsEspCont = qrRCRTemp.RecordCount - 1 ) then
            qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 1, 70))
          else
          if ( ObsEspCont = qrRCRTemp.RecordCount ) then
            qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 71, 70));
        end;
        3:begin
          if ( ObsEspCont = qrRCRTemp.RecordCount - 2 ) then
            qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 1, 70))
          else
          if ( ObsEspCont = qrRCRTemp.RecordCount - 1 ) then
            qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 71, 70))
          else
          if ( ObsEspCont = qrRCRTemp.RecordCount ) then
            qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 141, 70));
        end;
        4:begin
          if ( ObsEspCont = qrRCRTemp.RecordCount - 3 ) then
            qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 1, 70))
          else
          if ( ObsEspCont = qrRCRTemp.RecordCount - 2 ) then
            qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 71, 70))
          else
          if ( ObsEspCont = qrRCRTemp.RecordCount - 1 ) then
            qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 141, 70))
          else
          if ( ObsEspCont = qrRCRTemp.RecordCount )then
            qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 211, 70));
        end;
      else ;
      end;

      {
      if ( ObsEspCont = qrRCRTemp.RecordCount - ObsTam ) then
        qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 1, 75))
      else
      if ( ObsEspCont = qrRCRTemp.RecordCount - (ObsTam-1) )then
        qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 75, 75));
      else
      if ( ObsEspCont = ( qrRCRTemp.RecordCount)- (ObsTam))then
        qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 150, 75))
      else
      if ( ObsEspCont = qrRCRTemp.RecordCount )then
        qrRCRTemp_Descricao_Produto.Value := Trim( Copy( ObsEspecifica, 215, 75));
       }
    end
    else
      qrRCRTemp_Descricao_Produto.Value := qrRCRTempDescricao_Produto.Value
  end;

  {----------}
end;

end.
