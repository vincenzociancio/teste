unit U_TR;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, Quickrpt, QRCtrls, Db, DBTables, jpeg;

type
  TQR_TR = class(TQuickRep)
    PageFooterBand1: TQRBand;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel31: TQRLabel;
    QRShape5: TQRShape;
    QRShape12: TQRShape;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    Q_TR: TQuery;
    TitleBand1: TQRBand;
    QRImage1: TQRImage;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRImage3: TQRImage;
    QRLabel5: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape1: TQRShape;
    QRLabel9: TQRLabel;
    QRShape2: TQRShape;
    QRLabel10: TQRLabel;
    QRShape3: TQRShape;
    QRLabel11: TQRLabel;
    qrl_interessado: TQRLabel;
    qrl_cnpj: TQRLabel;
    qrl_endereco: TQRLabel;
    qrl_endereco1: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape4: TQRShape;
    shapeRCR: TQRShape;
    QRLabel6: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape28: TQRShape;
    QRShape10: TQRShape;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape29: TQRShape;
    qrl_cpf1: TQRLabel;
    QRLabel18: TQRLabel;
    qrl_end11: TQRLabel;
    qrl_end12: TQRLabel;
    QRShape30: TQRShape;
    qrl_nome1: TQRLabel;
    QRShape15: TQRShape;
    QRLabel21: TQRLabel;
    qrl_nome2: TQRLabel;
    QRLabel23: TQRLabel;
    QRShape19: TQRShape;
    qrl_end21: TQRLabel;
    qrl_end22: TQRLabel;
    QRLabel26: TQRLabel;
    qrl_cpf2: TQRLabel;
    QRShape20: TQRShape;
    QRLabel46: TQRLabel;
    QRShape21: TQRShape;
    shapedinheiro: TQRShape;
    QRLabel47: TQRLabel;
    shapecaucao: TQRShape;
    QRLabel48: TQRLabel;
    shapeseguro: TQRShape;
    QRLabel50: TQRLabel;
    shapefianca: TQRShape;
    QRLabel51: TQRLabel;
    QRLabel52: TQRLabel;
    QRLabel53: TQRLabel;
    QRLabel54: TQRLabel;
    QRLabel55: TQRLabel;
    QRLabel56: TQRLabel;
    QRLabel57: TQRLabel;
    QRLabel58: TQRLabel;
    QRLabel59: TQRLabel;
    QRLabel60: TQRLabel;
    QRLabel61: TQRLabel;
    QRLabel49: TQRLabel;
    QRShape23: TQRShape;
    QRShape25: TQRShape;
    QRLabel63: TQRLabel;
    QRLabel64: TQRLabel;
    QRShape24: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRLabel65: TQRLabel;
    QRLabel66: TQRLabel;
    QRLabel67: TQRLabel;
    QRLabel68: TQRLabel;
    QRLabel69: TQRLabel;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRMemo1: TQRMemo;
    QRMemo2: TQRMemo;
    QRLabel30: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    qrl_rcr: TQRLabel;
    qrl_banco: TQRLabel;
    qrl_agencia: TQRLabel;
    qrl_data: TQRLabel;
    qrl_titulo: TQRLabel;
    qrl_numeros: TQRLabel;
    qrl_seguradora: TQRLabel;
    qrl_apolice: TQRLabel;
    qrl_fiador: TQRLabel;
    qrl_cpffiador: TQRLabel;
    qrl_endfiador: TQRLabel;
    qrl_valorFOB: TQRLabel;
    qrl_valorCIF: TQRLabel;
    qrl_valorII: TQRLabel;
    qrl_valorIPI: TQRLabel;
    qrl_valortot: TQRLabel;
    ds_qtr: TDataSource;
    DetailBand1: TQRBand;
    qrl_periodo: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel17: TQRLabel;
    qrl_processo: TQRLabel;
    QRLabel19: TQRLabel;
    qrl_endfiador2: TQRLabel;
    qrImportador: TQuery;
    Q_TRCodigo: TStringField;
    Q_TRtdecla: TStringField;
    Q_TRNCM: TStringField;
    Q_TRProduto: TStringField;
    Q_TRFatura: TStringField;
    Q_TRPagina: TStringField;
    Q_TRSequencial: TStringField;
    Q_TRSomaDeQuantidade: TFloatField;
    Q_TRSomaDeValor_Aduaneiro: TFloatField;
    Q_TRSomaDeValor_mercadoria: TFloatField;
    Q_TRRegime_Tributacao_II: TStringField;
    Q_TRRegime_Tributacao_IPI: TStringField;
    Q_TRSomaDeBase_Calc_II: TFloatField;
    Q_TRSomaDeValor_II_Devido: TFloatField;
    Q_TRSomaDeValor_IPI_Devido: TFloatField;
    Q_TRPrazo_permanencia: TIntegerField;
    qrImportadorEmpresa: TStringField;
    qrImportadorFilial: TStringField;
    qrImportadorCodigo: TStringField;
    qrImportadorRazao_Social: TStringField;
    qrImportadorPais: TStringField;
    qrImportadorCNPJ_CPF_COMPLETO: TStringField;
    qrImportadorCGC_CPF: TStringField;
    qrImportadorTipo_Importador: TStringField;
    qrImportadorEndereco: TStringField;
    qrImportadorNumero: TStringField;
    qrImportadorComplemento: TStringField;
    qrImportadorBairro: TStringField;
    qrImportadorCidade: TStringField;
    qrImportadorCEP: TStringField;
    qrImportadorUF: TStringField;
    qrImportadorEstado: TStringField;
    qrImportadorInscricao_Estadual: TStringField;
    qrImportadorBanco: TStringField;
    qrImportadorAgencia: TStringField;
    qrImportadorConta_Corrente: TStringField;
    qrImportadorConta_Corrente_Registro: TIntegerField;
    qrImportadorConta_Corrente_Deposito: TIntegerField;
    qrImportadorlink: TStringField;
    qrImportadorCAE: TStringField;
    qrImportadorTelefone: TStringField;
    qrImportadorAtivo: TSmallintField;
    qrImportadorAcesso_WEB_MS: TSmallintField;
    qrImportadorAcesso_WEB_CLI: TSmallintField;
    qrImportadorAcesso_WEB_REC: TSmallintField;
    qrImportadorBASE_ICMS: TSmallintField;
    qrl_refcli: TQRLabel;
    qrl_local: TQRLabel;
    procedure QuickRepStartPage(Sender: TCustomQuickRep);
  private

  public

  end;

var
  QR_TR: TQR_TR;

implementation

uses U_protr, U_MSCOMEX;

{$R *.DFM}

procedure TQR_TR.QuickRepStartPage(Sender: TCustomQuickRep);
var cnpj: String;

begin
     qrl_processo.Caption := f_protr.qrProcessosProcesso.AsString;
     qrl_rcr.Caption      := f_protr.tbProcessosNumero_rcr.AsString;
     qrl_refcli.caption   := F_proTR.qrProcessosrefcli.AsString;
     qrl_local.Caption    := F_proTR.qrProcessosqlocal.AsString;
     shapercr.Brush.Color := clBlack;

     With qrImportador Do Begin
         Close;
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := f_protr.tbProcessosImportador.AsString;
         Open;
     End;

     If qrImportador.RecordCount <> 0 Then Begin
        qrl_interessado.Caption := qrImportadorRazao_Social.AsString;
        cnpj := qrImportadorCNPJ_CPF_COMPLETO.AsString;
        qrl_cnpj.Caption      := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);
        qrl_endereco.Caption  := qrImportadorEndereco.asstring+' - '+qrImportadorNumero.AsString+' - '+qrImportadorComplemento.AsString;
        qrl_endereco1.Caption := qrImportadorBairro.asstring+' - '+qrImportadorCidade.AsString+' - '+qrImportadorCep.AsString+' - '+qrImportadorUf.AsString;
     End
     Else Begin
        qrl_interessado.Caption := 'NÃO ENCONTRADO';
        qrl_cnpj.Caption        := 'NÃO ENCONTRADO';
        qrl_endereco.Caption    := 'NÃO ENCONTRADO';
        qrl_endereco1.Caption   := '';
     End;

     If f_protr.qrProcurador.RecordCount <> 0 Then Begin
        qrl_nome1.Caption := f_protr.qrProcuradorRazao_Social.AsString;
        qrl_cpf1.Caption  := f_protr.qrProcuradorCgc_Cpf.AsString;
        qrl_end11.Caption := f_protr.qrProcuradorEndereco.AsString+' - '+f_protr.qrProcuradorNumero.AsString+' - '+f_protr.qrProcuradorComplemento.AsString;
        qrl_end12.Caption := f_protr.qrProcuradorBairro.AsString+' - '+f_protr.qrProcuradorCidade.AsString+' - '+f_protr.qrProcuradorCep.AsString+' - '+f_protr.qrProcuradorUf.AsString;
     End;
     If f_protr.qrProcurador2.RecordCount <> 0 Then Begin
        qrl_nome2.Caption := f_protr.qrProcurador2Razao_Social.AsString;
        qrl_cpf2.Caption  := f_protr.qrProcurador2Cgc_Cpf.AsString;
        qrl_end21.Caption := f_protr.qrProcurador2Endereco.AsString+' - '+f_protr.qrProcurador2Numero.AsString+' - '+f_protr.qrProcurador2Complemento.AsString;
        qrl_end22.Caption := f_protr.qrProcurador2Bairro.AsString+' - '+f_protr.qrProcurador2Cidade.AsString+' - '+f_protr.qrProcurador2Cep.AsString+' - '+f_protr.qrProcurador2Uf.AsString;
     End;
     If ((f_protr.tbProcessosprocurador.asstring='') or (f_protr.tbProcessosprocurador.IsNull))  Then Begin
        qrl_nome1.Caption := '';
        qrl_cpf1.Caption  := '';
        qrl_end11.Caption := '';
        qrl_end12.Caption := '';
     End;
     If ((f_protr.tbProcessosprocurador2.asstring='') or (f_protr.tbProcessosprocurador2.IsNull))  Then Begin
        qrl_nome2.Caption := '';
        qrl_cpf2.Caption  := '';
        qrl_end21.Caption := '';
        qrl_end22.Caption := '';
     End;

     shapedinheiro.Brush.Color := clWhite;
     shapecaucao.Brush.Color := clWhite;
     shapeseguro.Brush.Color := clWhite;
     shapefianca.Brush.Color := clWhite;

     Case f_protr.rgGarantia.ItemIndex Of
         1: shapedinheiro.Brush.Color := clBlack;
         2: shapecaucao.Brush.Color := clBlack;
         3: shapeseguro.Brush.Color := clBlack;
         4: shapefianca.Brush.Color := clBlack;
     End;

     qrl_banco.Caption      := f_protr.tbProcessosNome_banco_gar.AsString;
     qrl_agencia.Caption    := f_protr.tbProcessosAgencia_gar.AsString;
     qrl_data.Caption       := f_protr.tbProcessosData_deposito_gar.AsString;
     qrl_titulo.Caption     := f_protr.tbProcessosNome_titulo_gar.AsString;
     qrl_numeros.Caption    := f_protr.tbProcessosNumeros_titulos_gar.AsString;
     qrl_seguradora.Caption := f_protr.tbProcessosNome_seguradora_gar.AsString;
     qrl_apolice.Caption    := f_protr.tbProcessosApolice_gar.AsString;
     qrl_fiador.Caption     := f_protr.tbProcessosNome_fiador_gar.AsString;
     qrl_cpffiador.Caption  := f_protr.tbProcessosCnpj_fiador_gar.AsString;

     if length(trim(qrl_cpffiador.Caption)) = 14 then
         qrl_cpffiador.Caption  := copy(qrl_cpffiador.Caption,1,2)+'.'+
                                   copy(qrl_cpffiador.Caption,3,3)+'.'+
                                   copy(qrl_cpffiador.Caption,6,3)+'/'+
                                   copy(qrl_cpffiador.Caption,9,4)+'-'+
                                   copy(qrl_cpffiador.Caption,13,2);

     if length(trim(qrl_cpffiador.Caption)) = 11 then
         qrl_cpffiador.Caption  := copy(qrl_cpffiador.Caption,1,3)+'.'+
                                   copy(qrl_cpffiador.Caption,4,3)+'.'+
                                   copy(qrl_cpffiador.Caption,7,3)+'-'+
                                   copy(qrl_cpffiador.Caption,10,2);

     qrl_endfiador.Caption  := trim(copy(f_protr.tbProcessosEndereco_fiador_gar.AsString,1,85));
     qrl_endfiador2.Caption  := trim(copy(f_protr.tbProcessosEndereco_fiador_gar.AsString,86,85));

end;

end.
