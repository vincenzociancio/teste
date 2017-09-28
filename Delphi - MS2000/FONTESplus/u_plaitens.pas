unit u_plaitens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, jpeg, Buttons, ComObj, FileCtrl,
  DBCtrls, Grids, DBGrids;

type
  Tf_plaitens = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    Image1: TImage;
    sb_planilhaitens: TSpeedButton;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosImportador: TStringField;
    qrProcessosqresp: TStringField;
    qrProcessosCGC_CPF: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosqdi: TStringField;
    qrProcessosFechado: TSmallintField;
    qrProcessosATIVO: TSmallintField;
    q_total_produtos: TQuery;
    q_total_taxa_siscomex: TQuery;
    q_total_produtosValor_Total: TFloatField;
    q_total_taxa_siscomextotal_taxa: TFloatField;
    RB_Padrao: TRadioButton;
    RB_Seadrill: TRadioButton;
    qrFatura: TQuery;
    qrFaturaProcesso: TStringField;
    qrFaturaCodigo: TStringField;
    qrFaturaPeso_Total_Acertado: TFloatField;
    qrAcrescimo: TQuery;
    qrAcrescimoTotal: TFloatField;
    qrHeader: TQuery;
    qrTotalDoFrete: TQuery;
    qrTotalDoFreteTotal_Frete: TFloatField;
    q_plafat: TQuery;
    qFat: TQuery;
    qFatCodigo: TStringField;
    qrHeaderCodigo: TStringField;
    qrHeaderdctoImportacao: TStringField;
    qrHeaderdataDctoImportacao: TStringField;
    qrHeaderdata_desembaraco: TStringField;
    qrHeaderValor_FOB: TFloatField;
    qrHeaderValor_CIF: TFloatField;
    qrHeadernfatura: TStringField;
    qrHeaderMoeda: TStringField;
    qrHeaderPeso_Liquido: TFloatField;
    qrHeaderpeso_bruto: TFloatField;
    qrHeaderCOBERTURA_CAMBIAL: TStringField;
    qrHeaderCod_Moeda: TStringField;
    qrHeaderUFDesembaraco: TStringField;
    qrHeaderValor_Seguro: TFloatField;
    qrHeaderNATUREZA_OPERACAO: TStringField;
    qrHeaderCNPJ_DEST: TStringField;
    qrHeaderCNPJ_CPF_COMPLETO: TStringField;
    GroupBox1: TGroupBox;
    btnPadrao: TButton;
    btnSeadril: TButton;
    GroupBox2: TGroupBox;
    btnTxt: TButton;
    qTemAcresICMS: TQuery;
    qTemAcresICMSPROCESSO: TStringField;
    qTemAcresICMSFATURA: TStringField;
    qTemAcresICMSCD_ACRESC_ICMS: TIntegerField;
    qTemAcresICMSVL_ACRESCIMO: TFloatField;
    qSomaVA: TQuery;
    qSomaVAVA_TOTAL: TFloatField;
    qUpRateioAcrescimoICMS: TQuery;
    qUpRateio_Acresc_ICMS: TQuery;
    qAcresATAereo: TQuery;
    qAcresATAereoprocesso: TStringField;
    qAcresATAereovalor: TFloatField;
    qProcAereo: TQuery;
    qProcAereotipo: TStringField;
    Panel1: TPanel;
    Label1: TLabel;
    GroupBox3: TGroupBox;
    cbMes: TComboBox;
    GroupBox4: TGroupBox;
    qLocal: TQuery;
    dsLocal: TDataSource;
    qLocalLocal: TStringField;
    qLocalDescricao: TStringField;
    Button1: TButton;
    DBGrid1: TDBGrid;
    q_plafat2: TQuery;
    q_plafat2Processo: TStringField;
    q_plafat2Fatura: TStringField;
    q_plafat2Pag: TFloatField;
    q_plafat2Seq: TFloatField;
    q_plafat2Produto: TStringField;
    q_plafat2desc: TStringField;
    q_plafat2Fabricante: TStringField;
    q_plafat2NCM: TStringField;
    q_plafat2Unidade: TStringField;
    q_plafat2Unidade_Medida_Estat: TStringField;
    q_plafat2Destaque_NCM: TStringField;
    q_plafat2NALADI: TStringField;
    q_plafat2Referencia: TStringField;
    q_plafat2Numero_serie: TStringField;
    q_plafat2Referencia_projeto: TStringField;
    q_plafat2PO: TStringField;
    q_plafat2Seqpo: TStringField;
    q_plafat2Quantidade: TFloatField;
    q_plafat2Valor_Unitario: TFloatField;
    q_plafat2Valor_Total: TFloatField;
    q_plafat2Peso_Unitario: TFloatField;
    q_plafat2Peso_Unitario_Acertado: TFloatField;
    q_plafat2Peso_Total: TFloatField;
    q_plafat2Peso_Total_Acertado: TFloatField;
    q_plafat2desci: TStringField;
    q_plafat2Rateio_Acrescimos: TFloatField;
    q_plafat2Rateio_Deducoes: TFloatField;
    q_plafat2Rateio_Embalagem: TFloatField;
    q_plafat2Rateio_Frete_Interno_imp: TFloatField;
    q_plafat2Rateio_Seguro_Interno: TFloatField;
    q_plafat2Rateio_outras_import: TFloatField;
    q_plafat2Rateio_startup: TFloatField;
    q_plafat2Rateio_jurosfin: TFloatField;
    q_plafat2Rateio_montagem: TFloatField;
    q_plafat2Rateio_Frete_Interno_exp: TFloatField;
    q_plafat2Rateio_carga_exp: TFloatField;
    q_plafat2Rateio_outras_export: TFloatField;
    q_plafat2Rateio_frete_fatura: TFloatField;
    q_plafat2Rateio_seguro_fatura: TFloatField;
    q_plafat2Rateio_carga_imp: TFloatField;
    q_plafat2Rateio_Despesas_ate_FOB: TFloatField;
    q_plafat2Rateio_Frete_prepaid: TFloatField;
    q_plafat2Rateio_Frete_collect: TFloatField;
    q_plafat2Rateio_Frete_ternac: TFloatField;
    q_plafat2Rateio_Seguro: TFloatField;
    q_plafat2Valor_Aduaneiro: TFloatField;
    q_plafat2Valor_mercadoria: TFloatField;
    q_plafat2VMLE: TFloatField;
    q_plafat2Taxa_conversao: TFloatField;
    q_plafat2VA: TFloatField;
    q_plafat2OT: TFloatField;
    q_plafat2DA: TFloatField;
    q_plafat2Aliq_NCM_II: TFloatField;
    q_plafat2Aliq_NCM_IPI: TFloatField;
    q_plafat2Aliq_PIS_PASEP: TFloatField;
    q_plafat2Aliq_COFINS: TFloatField;
    q_plafat2Aliq_ICMS: TFloatField;
    q_plafat2Aliq_ICMS_EXTRA: TFloatField;
    q_plafat2BASEC_PISCOFINS: TFloatField;
    q_plafat2BASEC_ICMS: TFloatField;
    q_plafat2VALOR_II: TFloatField;
    q_plafat2VALOR_IPI: TFloatField;
    q_plafat2VALOR_ICMS: TFloatField;
    q_plafat2VALOR_ICMS_EXTRA: TFloatField;
    q_plafat2VALOR_PIS_PASEP: TFloatField;
    q_plafat2VALOR_COFINS: TFloatField;
    q_plafat2Prazo_permanencia: TIntegerField;
    q_plafat2VA_proporcional: TFloatField;
    q_plafat2Aliq_NCM_II_proporcional: TFloatField;
    q_plafat2Aliq_NCM_IPI_proporcional: TFloatField;
    q_plafat2FOB: TFloatField;
    q_plafat2Adicao: TStringField;
    q_plafat2VA_NEW: TFloatField;
    q_plafat2Local_Inventario: TStringField;
    q_plafat2Razao_Social: TStringField;
    q_plafat2nova_data: TStringField;
    q_plafat2Rateio_Acresc_ICMS: TFloatField;
    q_plafatAdicao: TStringField;
    q_plafatProcesso: TStringField;
    q_plafatFatura: TStringField;
    q_plafatPag: TFloatField;
    q_plafatSeq: TFloatField;
    q_plafatCodigo_Produto: TStringField;
    q_plafatProduto: TStringField;
    q_plafatdesc: TMemoField;
    q_plafatFabricante: TStringField;
    q_plafatNCM: TStringField;
    q_plafatUnidade: TStringField;
    q_plafatUnidade_Medida_Estat: TStringField;
    q_plafatDestaque_NCM: TStringField;
    q_plafatNALADI: TStringField;
    q_plafatReferencia: TStringField;
    q_plafatNumero_serie: TStringField;
    q_plafatReferencia_projeto: TStringField;
    q_plafatPO: TStringField;
    q_plafatSeqpo: TStringField;
    q_plafatQuantidade: TFloatField;
    q_plafatValor_Unitario: TFloatField;
    q_plafatValor_Total: TFloatField;
    q_plafatPeso_Unitario: TFloatField;
    q_plafatPeso_Unitario_Acertado: TFloatField;
    q_plafatPeso_Total: TFloatField;
    q_plafatPeso_Total_Acertado: TFloatField;
    q_plafatdesci: TStringField;
    q_plafatRateio_Acrescimos: TFloatField;
    q_plafatRateio_Deducoes: TFloatField;
    q_plafatRateio_Embalagem: TFloatField;
    q_plafatRateio_Frete_Interno_imp: TFloatField;
    q_plafatRateio_Seguro_Interno: TFloatField;
    q_plafatRateio_outras_import: TFloatField;
    q_plafatRateio_startup: TFloatField;
    q_plafatRateio_jurosfin: TFloatField;
    q_plafatRateio_montagem: TFloatField;
    q_plafatRateio_Frete_Interno_exp: TFloatField;
    q_plafatRateio_carga_exp: TFloatField;
    q_plafatRateio_outras_export: TFloatField;
    q_plafatRateio_frete_fatura: TFloatField;
    q_plafatRateio_seguro_fatura: TFloatField;
    q_plafatRateio_carga_imp: TFloatField;
    q_plafatRateio_Despesas_ate_FOB: TFloatField;
    q_plafatRateio_Frete_prepaid: TFloatField;
    q_plafatRateio_Frete_collect: TFloatField;
    q_plafatRateio_Frete_ternac: TFloatField;
    q_plafatRateio_Seguro: TFloatField;
    q_plafatValor_Aduaneiro: TFloatField;
    q_plafatValor_mercadoria: TFloatField;
    q_plafatVMLE: TFloatField;
    q_plafatTaxa_conversao: TFloatField;
    q_plafatVA: TFloatField;
    q_plafatOT: TFloatField;
    q_plafatDA: TFloatField;
    q_plafatAliq_NCM_II: TFloatField;
    q_plafatAliq_NCM_IPI: TFloatField;
    q_plafatAliq_PIS_PASEP: TFloatField;
    q_plafatAliq_COFINS: TFloatField;
    q_plafatAliq_ICMS: TFloatField;
    q_plafatAliq_ICMS_EXTRA: TFloatField;
    q_plafatBASEC_PISCOFINS: TFloatField;
    q_plafatBASEC_ICMS: TFloatField;
    q_plafatVALOR_II: TFloatField;
    q_plafatVALOR_IPI: TFloatField;
    q_plafatVALOR_ICMS: TFloatField;
    q_plafatVALOR_ICMS_EXTRA: TFloatField;
    q_plafatVALOR_PIS_PASEP: TFloatField;
    q_plafatVALOR_COFINS: TFloatField;
    q_plafatPrazo_permanencia: TIntegerField;
    q_plafatVA_proporcional: TFloatField;
    q_plafatAliq_NCM_II_proporcional: TFloatField;
    q_plafatAliq_NCM_IPI_proporcional: TFloatField;
    q_plafatFOB: TFloatField;
    q_plafatVA_NEW: TFloatField;
    q_plafatAcresc_reduc_Valaduan: TFloatField;
    q_plafatRateio_Acresc_ICMS: TFloatField;
    q_plafatRegime_Tributacao_II: TStringField;
    q_Acresc_ATAereo: TQuery;
    q_Acresc_ATAereoprocesso: TStringField;
    q_Acresc_ATAereovalor: TFloatField;
    q_Acresc_ATAereoAliq: TSmallintField;
    q_VA_sum: TQuery;
    q_VA_sumCOLUMN1: TFloatField;

    procedure ME_nossarefChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure sb_planilhaitens_SeadrillClick(Sender: TObject);
    Procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);
    Procedure CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
    Procedure CelDetalheVALOR(linha : Integer; Coluna : Integer; CTitulo : real; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
    Procedure Fatura_Acrescimo(processo : String; fatura : String);
    procedure btnTxtClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure RB_PadraoClick(Sender: TObject);
    procedure RB_SeadrillClick(Sender: TObject);
    procedure btnPadraoClick(Sender: TObject);
    procedure btnSeadrilClick(Sender: TObject);
    procedure IncluirAcrescimoICMS(Sender : TObject);
    procedure Button1Click(Sender: TObject);
    procedure sb_planilhaitensClick(Sender: TObject);
    procedure sb_planilhaitensBrasdrilClick(Sender: TObject);     

  private

    { Private declarations }
  public
    { Public declarations }
  end;

Const
  Aleft = -4131;
  Aright = -4152;
  ACenter = -4108;
  v_empresanome = 'MS LOGÍSTICA ADUANEIRA LTDA.';
  AL_DIREITA = -4152;
  AL_ESQUERDA = -4131;
  AL_CENTRO = -4108;

var
  f_plaitens: Tf_plaitens;
  excel : Variant;
  planilha_0,planilha,arqdir,arqnome,linha,expor:string;
  ColunaP:integer;
  valor_total_produtos, valor_total_taxa_siscomex, valor_total_prod_taxsis : real;
  const_pis1, const_pis2, const_pis3, base_calculo_icms : real;
  aliq_ICMS, aliq_IPI, aliq_II, aliq_PIS, aliq_CONFINS, dif_icms : real;
  constante : real;
  temp_va, tempii, temp_ipi, temp_tx, temp_pis, temp_confis : real;
  valor_icms, aliq_ICMS_valor : real;
  const_Acrescimo : real;
  Fatura_Corrente : string;
  Tem_Acrescimo : boolean;
  dirApl: String;
  arqDirTxt: String;
  arqTexto: TextFile;
  operTXT, comAcrescICMS : Boolean;

  ADICAO,  NUM_SEQ_ADICAO, QTD :INTEGER;
  CODIGO_ITEM_SEADRIL,  CODIGO_ITEM_FORNECEDOR  :STRING; //(50)
  NCM :STRING; //(8)
  VAL_UND,  VAL_TOTAL,  PESO_UND, PESO_TOTAL, RATEIO_FRETE_PREPAID, TXCONVERSAO,
  ALIQII,  BASEII,  VALORII,  ALIQIPI,  BASEIPI,  VALORIPI,  ALIQPIS,
  ALIQCOFINS,  BASEPIS,  BASECOFINS,  VALORPIS, VALORCOFINS,
  ALIQICMS,  ALIQFECP,  TXSISCOMEX,  BASEICMS,  VLRICMS,  VLRFECP : REAL;
  OPER_LAYOUT : INTEGER;
  CIF : REAL;
  nMes : String;  


implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_plaitens.ME_nossarefChange(Sender: TObject);
var cnpj:string;
begin
     If Length(me_nossaref.Text) <> 8 Then
        Exit;

     qrProcessos.Close;
     qrProcessos.Open;
     Tem_Acrescimo := false;

     If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin

//        F_MSCOMEX.atualizacpastas(ME_nossaref.text);
        cnpj := qrprocessosqcnpj.asstring;
        cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

        //l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;

 {    If MessageDlg(v_usuario+', Confirma geração da planilha de itens de processo?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then exit;
        if RB_Padrao.Checked = true then
                sb_planilhaitensClick(f_plaitens);
        if RB_Seadrill.checked = true then
                sb_planilhaitens_SeadrillClick(f_plaitens);
  }
        btnSeadril.SetFocus
     End
     Else Begin
        MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
        l_cliente.Caption := '';
        me_nossaref.Clear;
        me_nossaref.SetFocus;
     End;


end;

procedure Tf_plaitens.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;
     me_nossaref.SetFocus;

end;

procedure Tf_plaitens.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     f_mscomex.ValoresporItem1.Enabled := True;
     F_plaitens := Nil;
     Action := caFree;
end;

procedure Tf_plaitens.sb_planilhaitensClick(Sender: TObject);
var
   sheet : Variant;
   v_cred_i, v_deb_i, coluna, aux,auy, aue, teste , linha2, col2, qlinhaINISOMA: Integer;
   h_est, h_tot, dir_cor, v_form_aux, astring, astring2, vpro, qpro, osprocessos,osprocessos2,data,data_arq,nome_arq,vespacos,vfat: string;
   t_emp,t_emp2, pos_form_cred, pos_form_deb : integer;
   i,j,colunas : integer;
   FIni,FFim, FFim0 : TDateTime;
   qvalor,icms_tres_porcento:real;
   entra,imprimiusubtot:boolean;
   vtotal17,vtotal19,vtotal21,vtotal22,vtotal23,vtotal24,vtotal25:string;
   vtotal26,vtotal27,vtotal28:string;
   vtotal32,vtotal33,vtotal34,vtotal35,vtotal36,vtotal37,vtotal38,vtotal39,vtotal40,vtotal46:string;
begin
     {$I-}
     icms_tres_porcento := 0.97;
     image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
     data := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
     data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);
///     nome_arq := q_ImportCNPJ_CPF_COMPLETO.AsString;
     System.GetDir(0,dir_cor);
     dir_cor := dir_cor + '\Planilhas_Ms2000';
     MkDir(dir_cor);

     Excel:=CreateOleObject('Excel.Application');
     Excel.Application.DisplayAlerts := False;
     Excel.Visible := True;
     excel.Workbooks.add(1);

     vespacos := '                                                                                                                                          ';
     vespacos := copy(vespacos,1,55);

     Excel.Worksheets[1].Name := 'Itens de Processo';
     Excel.WorkSheets['Itens de Processo'].Select;
     Excel.WorkSheets['Itens de Processo'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);
     Excel.Cells[1,1] := vespacos+v_empresanome;
     Excel.Cells[1,1].Font.Size := 12;
     Excel.cells[1,1].Font.Bold := True;
     Excel.Cells[2,1] := vespacos+'                   Planilha Itens de Processo - V 1.0 - '+ FormatDateTime('dd/mm/yyyy "às" hh:nn', Now());
     Excel.cells[2,1].Font.Bold := True;
     Excel.Cells[3,1] := vespacos+'Empresa: ' + l_cliente.caption;/// + q_ImportRazoSocial.AsString;
     Excel.Cells[3,1].Font.Size := 12;
     Excel.cells[3,1].Font.Bold := True;

     Excel.Cells[4,1] := vespacos+'Ref.MS: ' + qrprocessosprocesso.asstring +' - Ref.Empresa: '+ qrprocessosrefcli.asstring;
     Excel.Cells[4,1].Font.Size := 12;
     Excel.cells[4,1].Font.Bold := True;

     Excel.Cells[5,1] := vespacos+'                   Data da Consulta: ' + data;
     Excel.ActiveWindow.DisplayGridlines := TRUE;

     linha2:=6;
     ColunaP:=1;
     qlinhaINISOMA := 7;

     Celtitulo(linha2, ColunaP,'Fatura', clWhite, ACenter, clBlack, 8, 20);
     Celtitulo(linha2, ColunaP,'Pág/Seq', clWhite, ACenter, clBlack, 8, 6);
     Celtitulo(linha2, ColunaP,'Part.Number', clWhite, ACenter, clBlack, 8, 20);
     Celtitulo(linha2, ColunaP,'Adição', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Descrição Produto', clWhite, ACenter, clBlack, 8, 30);
     Celtitulo(linha2, ColunaP,'Descrição Produto Inglês', clWhite, ACenter, clBlack, 8, 30);
     Celtitulo(linha2, ColunaP,'Fabricante', clWhite, ACenter, clBlack, 8, 20);
     Celtitulo(linha2, ColunaP,'NCM', clWhite, ACenter, clBlack, 8, 7);
     Celtitulo(linha2, ColunaP,'Destaq', clWhite, ACenter, clBlack, 8, 5);
     Celtitulo(linha2, ColunaP,'NALADI', clWhite, ACenter, clBlack, 8, 7);
     Celtitulo(linha2, ColunaP,'Referência', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Nº Série', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Ref.Proj.', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'PO', clWhite, ACenter, clBlack, 8, 7);
     Celtitulo(linha2, ColunaP,'Seq.PO', clWhite, ACenter, clBlack, 8, 6);
     Celtitulo(linha2, ColunaP,'Quant.', clWhite, ACenter, clBlack, 8, 5);
     Celtitulo(linha2, ColunaP,'Val.Unitário', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Val.Total', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Peso Unitário', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Peso Total', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Peso Unit. Acertado', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Peso Tot. Acertado', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Rateio Frete Prepaid R$', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Rateio Frete Collect R$', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Rateio Frete Ter.Nac. R$', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Rateio Seguro R$', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Taxa Conversão', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'FOB TOTAL(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'CIF TOTAL(R$)', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Alíq.II', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.IPI', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.PIS', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.COFINS', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.ICMS', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.FECP', clWhite, ACenter, clBlack, 8, 10);

     Celtitulo(linha2, ColunaP,'Valor II(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor IPI(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor PIS(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor COFINS(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor ICMS(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor FECP(R$)', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Base II', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Base IPI', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Base PIS/COFINS', clWhite, ACenter, clBlack, 8, 17);
     Celtitulo(linha2, ColunaP,'Base ICMS', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Acrésc. ICMS', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Taxa Siscomex', clWhite, ACenter, clBlack, 8, 15);

     q_total_produtos.Params[0].asstring   := me_nossaref.text;
     q_total_produtos.open;
     valor_total_produtos := q_total_produtosValor_Total.AsFloat;
     q_total_produtos.close;

     q_total_taxa_siscomex.Params[0].asstring   := me_nossaref.text;
     q_total_taxa_siscomex.open;
     valor_total_taxa_siscomex := q_total_taxa_siscomextotal_taxa.AsFloat;
     q_total_taxa_siscomex.close;

     valor_total_prod_taxsis := valor_total_produtos + valor_total_taxa_siscomex;
     constante :=  valor_total_prod_taxsis / valor_total_produtos;

     osprocessos2 := '';
     q_plafat.close;

     q_plafat.sql.clear;
     q_plafat.sql.add('SELECT itf.Processo, itf.Fatura, cast([Pagina] as real) AS Pag, cast([itf].[Sequencial] as real) AS Seq, itf.Codigo_Produto, itf.Produto,Descricao_Produto AS "desc", Fabricantes_Produtores.Razao_Social AS Fabricante, itf.NCM, itf.Unidade, ');
     q_plafat.sql.add('itf.Unidade_Medida_Estat, itf.Destaque_NCM, itf.NALADI, itf.Referencia, itf.Numero_serie, itf.Referencia_projeto, itf.PO, itf.Seqpo, itf.Quantidade, itf.Valor_Unitario, itf.Valor_Total, itf.Peso_Unitario, itf.Peso_Unitario_Acertado, itf.Peso_Total, ');
     q_plafat.sql.add('itf.Peso_Total_Acertado, cast([Descricao_Produto_ing] as varchar(5000)) AS desci, itf.Rateio_Acrescimos, itf.Rateio_Deducoes, itf.Rateio_Embalagem, itf.Rateio_Frete_Interno_imp, itf.Rateio_Seguro_Interno, itf.Rateio_outras_import, itf.Rateio_startup, ');
     q_plafat.sql.add('itf.Rateio_jurosfin, itf.Rateio_montagem, itf.Rateio_Frete_Interno_exp, itf.Rateio_carga_exp, itf.Rateio_outras_export, itf.Rateio_frete_fatura, itf.Rateio_seguro_fatura, itf.Rateio_carga_imp, itf.Rateio_Despesas_ate_FOB, itf.Rateio_Frete_prepaid, ');
     q_plafat.sql.add('itf.Rateio_Frete_collect, itf.Rateio_Frete_ternac, itf.Rateio_Seguro, itf.Valor_Aduaneiro, itf.Valor_mercadoria, (itf.VMLE-itf.Acresc_reduc_Valaduan) as VMLE, ptc.Taxa_conversao, Processos_ADICOES_ICMS_PIS_COFINS.VA, Processos_ADICOES_ICMS_PIS_COFINS.OT, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.DA, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_COFINS, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.VALOR_IPI, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia, Processos_ADICOES_ICMS_PIS_COFINS.VA_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_proporcional, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.FOB, Tributacao_Item_Fatura.Adicao,  ');
     q_plafat.sql.add('([ITF].[Base_Calc_II]*[PTC].[taxa_conversao]) AS VA_NEW, itf.Acresc_reduc_Valaduan, itf.Rateio_Acresc_ICMS, Tributacao_Item_Fatura.Regime_Tributacao_II   ');
     q_plafat.sql.add('FROM ((((((ItensFaturas AS itf LEFT JOIN Fabricantes_Produtores ON itf.Fabricante = Fabricantes_Produtores.Codigo) INNER JOIN Tributacao_Item_Fatura ON (itf.Sequencial = Tributacao_Item_Fatura.Sequencial_Item) ');
     q_plafat.sql.add('AND (itf.Fatura = Tributacao_Item_Fatura.Fatura) AND (itf.Processo = Tributacao_Item_Fatura.Processo)) INNER JOIN Processos_ADICOES_ICMS_PIS_COFINS ON (Tributacao_Item_Fatura.Adicao = Processos_ADICOES_ICMS_PIS_COFINS.Adicao) ');
     q_plafat.sql.add('AND (Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_PIS_COFINS.Processo)) INNER JOIN Processos ON itf.Processo = Processos.Codigo) INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo) AND (itf.Processo = Faturas.Processo)) ');
     q_plafat.sql.add('INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda = ptc.Moeda) AND (Faturas.Processo = ptc.Processo)) INNER JOIN Conhecimento_Processo ON Processos.Codigo = Conhecimento_Processo.Processo ');
     q_plafat.sql.add('WHERE [Pagina] <> "XXX"  AND [itf].[Sequencial] <> "XXX" AND (Itf.Processo=:qpro)' );
     //q_plafat.sql.add('ORDER BY itf.Fatura, [Pagina], [itf].[Sequencial]; ');
     q_plafat.sql.add('ORDER BY Tributacao_Item_Fatura.Adicao ');

     q_plafat.Params[0].asstring   := me_nossaref.text;
     q_plafat.open;
     vfat:=q_plafatfatura.asstring;

     vtotal17 := '';
     vtotal19 := '';
     vtotal21 := '';
     vtotal22 := '';
     vtotal23 := '';
     vtotal24 := '';
     vtotal25 := '';
     vtotal26 := '';

     vtotal32 := '';
     vtotal33 := '';
     vtotal34 := '';
     vtotal35 := '';
     vtotal36 := '';
     vtotal37 := '';
     vtotal38 := '';
     vtotal39 := '';
     vtotal40 := '';

   {      ADICAO :=q_plafatAdicao.AsInteger;
         NCM:= q_plafatncm.asstring;
         QTD:=q_plafatquantidade.asInteger;

         VAL_UND:=(q_plafatvalor_unitario.asfloat*q_plafattaxa_conversao.asfloat);
         VAL_TOTAL:=(q_plafatvalor_total.asfloat*q_plafattaxa_conversao.asfloat);

         PESO_UND:=q_plafatpeso_unitario_acertado.asfloat;
         PESO_TOTAL:=q_plafatpeso_total_acertado.asfloat;
         RATEIO_FRETE_PREPAID:=(q_plafatrateio_frete_prepaid.asfloat*q_plafatquantidade.asfloat)*q_plafattaxa_conversao.asfloat;  
         TXCONVERSAO:=q_plafattaxa_conversao.asfloat;   
         
         ALIQII:=q_plafataliq_ncm_ii.asfloat;
         BASEII:=q_plafatVA_NEW.AsFloat;
         VALORII:=(q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         
         ALIQIPI:=q_plafataliq_ncm_ipi.asfloat;
         BASEIPI:=q_plafatVA_NEW.AsFloat + ((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat));
         VALORIPI:=(q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         
         ALIQPIS    :=q_plafataliq_pis_pasep.asfloat;
         ALIQCOFINS :=q_plafataliq_cofins.asfloat;
         BASEPIS    :=q_plafatVA_NEW.AsFloat * const_pis3;
         VALORPIS   :=(q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         VALORCOFINS:=(q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         
         ALIQICMS  :=q_plafataliq_icms.asfloat;
         ALIQFECP  :=q_plafataliq_icms_extra.asfloat;
         TXSISCOMEX:=(q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat;
         BASEICMS  :=base_calculo_icms;
         VLRICMS   :=valor_icms;
         VLRFECP   :=((q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat);
    }

     {MONTAGEM DO HEADER PARA O ARQUIVO TXT}
  {   qrHeader.Close;
     qrHeader.ParamByName('pProcesso').asString := ME_nossaref.text;
     qrHeader.Open;

     qrTotalDoFrete.Close;
     qrTotalDoFrete.ParamByName('pProcesso').AsString :=ME_nossaref.text;
     qrTotalDoFrete.Open;



     dirApl := ExtractFilePath(Application.ExeName);
     arqDirTxt := dirApl+'ArquivoTXT\';
     arqNome := 'MS2000_'+ StringReplace(ME_nossaref.text, '/', '_', [rfReplaceAll]) +'_'+FormatDateTime('yyyymmdd',Now)+'.txt';
     AssignFile(arqTexto,arqDirTxt+arqNome);   }
{

     If Not DirectoryExists(arqDirTxt) Then
        CreateDir(arqDirTxt);
{     If FileExists(arqDirTxt+arqNome) Then
        AppEnd(arqTexto)
     Else
     Begin}
{        ReWrite(arqTexto);
        Linha := 'H '+ ' | '+ qrHeaderCOBERTURA_CAMBIAL.Value +' | '+qrHeaderNATUREZA_OPERACAO.AsString + ' | ' + qrHeaderMoeda.AsString + ' | ' +
        'CNPJdEST' + ' | ' + 'CNPJIMPO' + ' | ' + 'CNPJADQIMPO' + ' | '+
        qrHeaderdctoImportacao.AsString + ' | ' +  qrHeaderdataDctoImportacao.AsString + ' | ' +
        qrHeadernfatura.ASSTRING + ' | ' + qrHeaderUFDesembaraco.AsString + ' | '+
        qrHeaderCod_Moeda.asString + ' | ' + FloatToStr(TXCONVERSAO) + ' | ' +
        qrHeaderdata_desembaraco.AsString + ' | ' + qrHeaderpeso_bruto.asString + ' | ' +
        qrHeaderPeso_Liquido.AsString + ' | ' + qrHeaderValor_FOB.AsString + ' | '+
        FloatTostr(qrTotalDoFreteTotal_Frete.Value) + ' | ' + FloatToStr(qrHeaderValor_Seguro.value) + ' | '+qrHeaderValor_CIF.AsString ;
        Write(arqTexto, Linha);
        Writeln(arqTexto);
  //   end;
     {Fim do Header}
     {Montagem das Linhas}

       while not q_plafat.eof do begin

         linha2 := linha2+1;
         ColunaP:=1;
         {imprimiusubtot := false;
         if q_plafatfatura.asstring<>vfat then begin
//            linha2 := linha2+1;

            //Excel.cells[linha2, 1] := 'Sub Total - Fatura: '+vfat;
            vfat:=q_plafatfatura.asstring;

///            Excel.Cells.Range['A'+inttostr(linha2),'P'+inttostr(linha2)].Merge;
            {for colunas := 1 to 46 do begin
                Excel.cells[linha2, colunas].interior.Color := clSilver;
                Excel.Cells[linha2, colunas].Font.Bold := True;
                Excel.Cells[linha2, colunas].Font.Color := clNavy;
            end;

            //sub total  valor total
            col2 := 18;
            //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            //Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal17='' then vtotal17 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal17 := vtotal17+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub total  peso total
            col2 := 20;
            //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            //Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal19='' then vtotal19 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal19 := vtotal19+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub total  peso total acertado
            col2 := 22;
            //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            //Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal21='' then vtotal21 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal21 := vtotal21+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub FRETE PREPAID
            col2 := 23;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal22='' then vtotal22 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal22 := vtotal22+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub FRETE COLLECT
            col2 := 24;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal23='' then vtotal23 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal23 := vtotal23+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub FRETE TERNAC
            col2 := 25;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal24='' then vtotal24 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal24 := vtotal24+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub SEGURO
            col2 := 26;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal25='' then vtotal25 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal25 := vtotal25+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub FOB
            col2 := 28;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal27='' then vtotal27 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal27 := vtotal27+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub CIF
            col2 := 29;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal28='' then vtotal28 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal28 := vtotal28+';L'+IntToStr(linha2)+'C'+IntToStr(col2);


            //sub II
            col2 := 36;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal35='' then vtotal35 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal35 := vtotal35+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub IPI
            col2 := 37;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal36='' then vtotal36 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal36 := vtotal36+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub PIS
            col2 := 38;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal37='' then vtotal37 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal37 := vtotal37+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub COFINS
            col2 := 39;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal38='' then vtotal38 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal38 := vtotal38+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub ICMS
            col2 := 40;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal39='' then vtotal39 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal39 := vtotal39+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub FECP
            col2 := 41;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal40='' then vtotal40 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal40 := vtotal40+';L'+IntToStr(linha2)+'C'+IntToStr(col2);






            linha2 := linha2+1;
            qlinhaINISOMA := linha2;
            imprimiusubtot := true;
         end;}

         CelDetalhe(linha2, ColunaP,q_plafatfatura.asstring, clWhite, ALEFT, clNavy, 8, 20);
         CelDetalhe(linha2, ColunaP,''''+q_plafatpag.asstring+'/'+q_plafatseq.asstring, clWhite, ACENTER, clNavy, 8, 6);
         CelDetalhe(linha2, ColunaP,''''+q_plafatproduto.asstring, clWhite, ALEFT, clNavy, 8, 20);
         CelDetalhe(linha2, ColunaP,q_plafatAdicao.asstring, clWhite, ALEFT, clNavy, 8, 6);
         CelDetalhe(linha2, ColunaP,q_plafatdesc.Value, clWhite, ALEFT, clNavy, 8, 30);
         CelDetalhe(linha2, ColunaP,q_plafatdesci.asstring, clWhite, ALEFT, clNavy, 8, 30);
         CelDetalhe(linha2, ColunaP,q_plafatfabricante.asstring, clWhite, ALEFT, clNavy, 8, 20);
         CelDetalhe(linha2, ColunaP,q_plafatncm.asstring, clWhite, ALEFT, clNavy, 8, 7);
         CelDetalhe(linha2, ColunaP,q_plafatdestaque_ncm.asstring, clWhite, ACENTER, clNavy, 8, 5);
         CelDetalhe(linha2, ColunaP,q_plafatnaladi.asstring, clWhite, ALEFT, clNavy, 8, 7);
         CelDetalhe(linha2, ColunaP,q_plafatreferencia.asstring, clWhite, ALEFT, clNavy, 8, 10);
         CelDetalhe(linha2, ColunaP,q_plafatnumero_serie.asstring, clWhite, ALEFT, clNavy, 8, 10);
         CelDetalhe(linha2, ColunaP,q_plafatreferencia_projeto.asstring, clWhite, ALEFT, clNavy, 8, 10);
         CelDetalhe(linha2, ColunaP,q_plafatpo.asstring, clWhite, ALEFT, clNavy, 8, 7);
         CelDetalhe(linha2, ColunaP,q_plafatseqpo.asstring, clWhite, ALEFT, clNavy, 8, 6);

         CelDetalheVALOR(linha2, ColunaP,q_plafatquantidade.asfloat, clWhite, ARIGHT, clNavy, 8, 5);
         CelDetalheVALOR(linha2, ColunaP,q_plafatvalor_unitario.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafatvalor_total.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafatpeso_unitario.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafatpeso_total.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafatpeso_unitario_acertado.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafatpeso_total_acertado.asfloat, clWhite, ARIGHT, clNavy, 8, 15);

         CelDetalheVALOR(linha2, ColunaP,(q_plafatrateio_frete_prepaid.asfloat*q_plafattaxa_conversao.asfloat)*q_plafatquantidade.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafatrateio_frete_collect.asfloat*q_plafattaxa_conversao.asfloat)*q_plafatquantidade.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafatrateio_frete_ternac.asfloat*q_plafattaxa_conversao.asfloat)*q_plafatquantidade.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafatrateio_seguro.asfloat*q_plafattaxa_conversao.asfloat)*q_plafatquantidade.asfloat, clWhite, ARIGHT, clNavy, 8, 15);

         CelDetalheVALOR(linha2, ColunaP,q_plafattaxa_conversao.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         Excel.Cells[linha2,colunap-1].NumberFormatLocal := '#.##0,00000';
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         {A linha abaixo estava gerando o valor aduaneiro errado sem o rateio do seguro - Leandro Serra 06/06/2013}
         //         CelDetalheVALOR(linha2, ColunaP,((q_plafatvmle.asfloat+ q_plafatAcresc_reduc_Valaduan.asfloat +((q_plafatrateio_frete_prepaid.asfloat+q_plafatrateio_frete_collect.asfloat)-q_plafatrateio_frete_ternac.asfloat)*q_plafatquantidade.asfloat))*q_plafattaxa_conversao.asfloat, clWhite, ARIGHT, clNavy, 8, 15);

         CelDetalheVALOR(linha2, ColunaP,((q_plafatvmle.asfloat+ q_plafatAcresc_reduc_Valaduan.asfloat +((q_plafatrateio_seguro.asfloat+q_plafatrateio_frete_prepaid.asfloat+q_plafatrateio_frete_collect.asfloat)-q_plafatrateio_frete_ternac.asfloat)*q_plafatquantidade.asfloat))*q_plafattaxa_conversao.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_ncm_ii.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_ncm_ipi.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_pis_pasep.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_cofins.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_icms.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_icms_extra.asfloat, clWhite, ACENTER, clNavy, 8, 10);

         aliq_ICMS := (q_plafatAliq_ICMS.AsFloat+q_plafatAliq_ICMS_EXTRA.AsFloat)/100;
         aliq_IPI := (q_plafatAliq_NCM_IPI.AsFloat)/100;
         aliq_II := (q_plafatAliq_NCM_II.AsFloat)/100;
         aliq_PIS := (q_plafatAliq_PIS_PASEP.AsFloat)/100;
         aliq_CONFINS := (q_plafatAliq_COFINS.AsFloat)/100;
         //Acréscimo iCMS incluído no Valoe Aduaneiro - Leandro Serra 14/06/2013
//         temp_va := q_plafatVA_NEW.AsFloat;
         temp_va := (q_plafatVA_NEW.AsFloat + q_plafatRateio_Acresc_ICMS.AsFloat);
         tempii := (q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         temp_ipi := (q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         temp_tx := (q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat;
         temp_confis := (q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         temp_pis := (q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         dif_icms := ((100-(q_plafatAliq_ICMS.AsFloat+q_plafatAliq_ICMS_EXTRA.AsFloat))/100);

         if  dif_icms = icms_tres_porcento then begin
                base_calculo_icms := (temp_va + temp_tx) / dif_icms;
         end else begin
                base_calculo_icms := (temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms;
         end;

         aliq_ICMS_valor := (q_plafatAliq_ICMS.AsFloat)/100;
         valor_icms := base_calculo_icms *  aliq_ICMS_valor;



         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         //CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_icms.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP, valor_icms, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_icms_extra.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);

         CelDetalheVALOR(linha2, ColunaP, q_plafatVA_NEW.AsFloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP, q_plafatVA_NEW.AsFloat + ((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat)), clWhite, ACENTER, clNavy, 8, 10);

         const_pis1 := (1+(aliq_ICMS)*(aliq_II+aliq_IPI*(1+aliq_II)));
         const_pis2 := (1-aliq_PIS-aliq_CONFINS)*(1-(aliq_ICMS));
         const_pis3 :=  const_pis1 / const_pis2;
         CelDetalheVALOR(linha2, ColunaP, q_plafatVA_NEW.AsFloat * const_pis3, clWhite, ACENTER, clNavy, 8, 10);

         CelDetalheVALOR(linha2, ColunaP, base_calculo_icms, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP, q_plafatRateio_Acresc_ICMS.AsFloat, clWhite, ACENTER, clNavy, 8, 10);

         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat, clWhite, ARIGHT, clNavy, 8, 15);

         
{         Linha:='';
         Linha :='L | '+ inttostr(ADICAO) + ' | '+ q_plafatSeq.asString + ' | '+'CODIGO_ITEM_SEADRIL'+' | '+
          q_plafatCodigo_Produto.Value + ' | '+ NCM + ' | '+ IntToStr(QTD) + ' | '+ FloatToStr(VAL_UND) +' | '+
          FloatToStr(VAL_TOTAL)+ ' | '+FloatToStr(PESO_UND)+' | '+FloatToStr(PESO_TOTAL)+' | '+
          FloatToStr(RATEIO_FRETE_PREPAID) + ' | '+ FloatToStr(TXCONVERSAO) + ' | '+FloatToStr(ALIQII) + ' | '+
          FloatToStr(BASEII)+ ' | '+FloatToStr(VALORII)+ ' | '+FloatToStr(ALIQIPI)+ ' | '+FloatToStr(BASEIPI)+ ' | '+
          FloatToStr(VALORIPI)+ ' | '+ FloatToStr(ALIQPIS) + ' | '+FloatToStr(ALIQCOFINS) + ' | '+
          FloatToStr(BASEPIS)+ ' | '+FloatToStr(BASECOFINS)+ ' | '+FloatToStr(VALORPIS) + ' | '+
          FloatToStr(VALORCOFINS) + ' | ' + FloatToStr(ALIQICMS) + ' | ' +
          FloatToStr(ALIQFECP)+ ' | '+FloatToStr(TXSISCOMEX)+ ' | '+FloatToStr(BASEICMS) + ' | '+FloatToStr(VLRICMS) + ' | '+
          FloatToStr(VLRFECP);
         Write(arqTexto, Linha);
         Writeln(arqTexto);
 }
         q_plafat.Next;

     end;
{     closefile(arqTexto);
     showmessage(v_usuario+', o arquivo TXT foi  gerado no diretório C:\MS2000\Arquivo TXT !');}
     {if not imprimiusubtot then begin

        linha2 := linha2+1;
        ColunaP:=1;
        Excel.cells[linha2, 1] := 'Sub Total - Fatura: '+vfat;
        for colunas := 1 to 46 do begin
            Excel.cells[linha2, colunas].interior.Color := clSilver;
            Excel.Cells[linha2, colunas].Font.Bold := True;
            Excel.Cells[linha2, colunas].Font.Color := clNavy;
        end;

            //sub total  valor total
            col2 := 18;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal17='' then vtotal17 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal17 := vtotal17+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub total  peso total
            col2 := 20;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal19='' then vtotal19 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal19 := vtotal19+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub total  peso total acertado
            col2 := 22;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal21='' then vtotal21 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal21 := vtotal21+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub FRETE PREPAID
            col2 := 23;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal22='' then vtotal22 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal22 := vtotal22+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub FRETE COLLECT
            col2 := 24;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal23='' then vtotal23 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal23 := vtotal23+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub FRETE TERNAC
            col2 := 25;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal24='' then vtotal24 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal24 := vtotal24+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub SEGURO
            col2 := 26;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal25='' then vtotal25 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal25 := vtotal25+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub FOB
            col2 := 28;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal27='' then vtotal27 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal27 := vtotal27+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub CIF
            col2 := 29;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal28='' then vtotal28 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal28 := vtotal28+';L'+IntToStr(linha2)+'C'+IntToStr(col2);


            //sub II
            col2 := 36;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal35='' then vtotal35 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal35 := vtotal35+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub IPI
            col2 := 37;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal36='' then vtotal36 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal36 := vtotal36+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub PIS
            col2 := 38;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal37='' then vtotal37 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal37 := vtotal37+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub COFINS
            col2 := 39;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal38='' then vtotal38 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal38 := vtotal38+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub ICMS
            col2 := 40;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal39='' then vtotal39 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal39 := vtotal39+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub FECP
            col2 := 41;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal40='' then vtotal40 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal40 := vtotal40+';L'+IntToStr(linha2)+'C'+IntToStr(col2);

            //sub taxa siscomex
            col2 := 46;
            Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
            Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
            if vtotal46='' then vtotal46 := 'L'+IntToStr(linha2)+'C'+IntToStr(col2)
            else vtotal46 := vtotal46+';L'+IntToStr(linha2)+'C'+IntToStr(col2);



//            linha2 := linha2+1;
            qlinhaINISOMA := linha2;
            imprimiusubtot := true;
       end;   }


     ////totais

     linha2 := linha2+1;
     Excel.cells[linha2, 1] := 'Total Geral';
     for colunas := 1 to 47 do begin
         Excel.cells[linha2, colunas].interior.Color := clnavy;;
         Excel.Cells[linha2, colunas].Font.Bold := True;
         Excel.Cells[linha2, colunas].Font.Color := clwhite;

     end;

     //total  valor total
     col2 := 18;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal17+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //peso total
     col2 := 20;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal19+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //peso total acertado
     col2 := 22;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal21+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';


     //TOTAL FRETE PREPAID
     col2 := 23;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal22+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL FRETE COLLECT
     col2 := 24;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal23+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL FRETE TERNAC
     col2 := 25;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal24+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL SEGURO
     col2 := 26;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal25+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';


     //TOTAL FOB R$
     col2 := 28;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal27+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL CIF R$
     col2 := 29;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal28+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL II R$
     col2 := 36;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal35+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL IPI R$
     col2 := 37;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal36+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL PIS R$
     col2 := 38;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal37+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL COFINS R$
     col2 := 39;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal38+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL ICMS R$
     col2 := 40;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal39+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL FECP R$
     col2 := 41;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal40+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL ACRÉSCIMO BASE ICMS R$
     col2 := 46;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal46+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TOTAL Taxa siscomex R$
     col2 := 47;
     //Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA('+vtotal46+')';
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //Excel.WorkBooks[1].Save;

     Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(me_nossaref.text,'/','_', [rfReplaceAll]) + ' - Itens de Processo.xlsx' );
     Application.ProcessMessages;

     Excel.Quit;
     Excel := unassigned;

     showmessage(v_usuario+', a planilha foi gerada no diretório C:\MS2000\PLANILHAS_MS2000!');

end;


Procedure Tf_plaitens.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
           Excel.cells[linha, coluna] := CTitulo;
           Excel.cells[linha, coluna].interior.Color := clnavy;///CColor;
           Excel.cells[linha, coluna].Font.Color := clwhite;//FColor;
           Excel.cells[linha, coluna].Font.Size := FSize;
           Excel.cells[linha, coluna].Font.Bold := True;
           Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
  //         Excel.cells[linha, coluna].Borders.Weight := 2;
//           Excel.cells[linha, coluna].Borders.LineStyle := 1;
//           Excel.rows[linha].RowHeight := 100;
           Excel.Columns[coluna].ColumnWidth := COLSize;
  //         Excel.cells[linha, coluna].VerticalAlignment := CAlign;

          inc(colunap);

End;

Procedure Tf_plaitens.CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
           Excel.cells[linha, coluna] := CTitulo;
           Excel.cells[linha, coluna].interior.Color := CColor;
           Excel.cells[linha, coluna].Font.Color := FColor;
           Excel.cells[linha, coluna].Font.Size := FSize;

           Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
           Excel.cells[linha, coluna].Borders.Weight := 2;
           Excel.cells[linha, coluna].Borders.LineStyle := 1;
//           Excel.rows[linha].RowHeight := 100;
           Excel.Columns[coluna].ColumnWidth := COLSize;
    //       Excel.cells[linha, coluna].VerticalAlignment := CAlign;

           inc(colunap);

End;

Procedure Tf_plaitens.CelDetalheVALOR(linha : Integer; Coluna : Integer; CTitulo : real; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
           Excel.cells[linha, coluna] := CTitulo;
           Excel.cells[linha, coluna].interior.Color := CColor;
           Excel.cells[linha, coluna].Font.Color := FColor;
           Excel.cells[linha, coluna].Font.Size := FSize;

           Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
           Excel.cells[linha, coluna].Borders.Weight := 2;
           Excel.cells[linha, coluna].Borders.LineStyle := 1;
//           Excel.rows[linha].RowHeight := 100;
           Excel.Columns[coluna].ColumnWidth := COLSize;
    //       Excel.cells[linha, coluna].VerticalAlignment := CAlign;

           Excel.Cells[linha,coluna].NumberFormatLocal := '#.##0,00';

            inc(colunap);
End;

procedure Tf_plaitens.sb_planilhaitens_SeadrillClick(Sender: TObject);
var
   sheet : Variant;
   v_cred_i, v_deb_i, coluna, aux,auy, aue, teste , linha2, col2, qlinhaINISOMA: Integer;
   h_est, h_tot, dir_cor, v_form_aux, astring, astring2, vpro, qpro, osprocessos,osprocessos2,data,data_arq,nome_arq,vespacos,vfat: string;
   t_emp,t_emp2, pos_form_cred, pos_form_deb : integer;
   i,j,colunas : integer;
   FIni,FFim, FFim0 : TDateTime;
   qvalor,icms_tres_porcento:real;
   entra,imprimiusubtot:boolean;
   vtotal17,vtotal19,vtotal21,vtotal22,vtotal23,vtotal24,vtotal25:string;
   vtotal26,vtotal27,vtotal28:string;
   vtotal32,vtotal33,vtotal34,vtotal35,vtotal36,vtotal37,vtotal38,vtotal39,vtotal40,vtotal46:string;
   temp_acrescimo : real;

begin
        {$I-}
     icms_tres_porcento := 0.97;
     image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
     data := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
     data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);
///     nome_arq := q_ImportCNPJ_CPF_COMPLETO.AsString;
     System.GetDir(0,dir_cor);
     dir_cor := dir_cor + '\Planilhas_Ms2000';
     MkDir(dir_cor);

     Excel:=CreateOleObject('Excel.Application');
     Excel.Application.DisplayAlerts := False;
     Excel.Visible := false;
     excel.Workbooks.add(1);

     vespacos := '                                                                                                                                          ';
     vespacos := copy(vespacos,1,55);

     Excel.Worksheets[1].Name := 'Itens de Processo';
     Excel.WorkSheets['Itens de Processo'].Select;
     Excel.WorkSheets['Itens de Processo'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);
     Excel.Cells[1,1] := vespacos+v_empresanome;
     Excel.Cells[1,1].Font.Size := 12;
     Excel.cells[1,1].Font.Bold := True;
     Excel.Cells[2,1] := vespacos+'                   Planilha Itens de Processo - V 1.0 - '+ FormatDateTime('dd/mm/yyyy "às" hh:nn', Now());
     Excel.cells[2,1].Font.Bold := True;
     Excel.Cells[3,1] := vespacos+'Empresa: ' + l_cliente.caption;/// + q_ImportRazoSocial.AsString;
     Excel.Cells[3,1].Font.Size := 12;
     Excel.cells[3,1].Font.Bold := True;

     Excel.Cells[4,1] := vespacos+'Ref.MS: ' + qrprocessosprocesso.asstring +' - Ref.Empresa: '+ qrprocessosrefcli.asstring;
     Excel.Cells[4,1].Font.Size := 12;
     Excel.cells[4,1].Font.Bold := True;

     Excel.Cells[5,1] := vespacos+'                   Data da Consulta: ' + data;
     Excel.ActiveWindow.DisplayGridlines := TRUE;

     linha2:=6;
     ColunaP:=1;
     qlinhaINISOMA := 7;

     Celtitulo(linha2, ColunaP,'Adição', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Descrição Produto', clWhite, ACenter, clBlack, 8, 30);

     Celtitulo(linha2, ColunaP,'NCM', clWhite, ACenter, clBlack, 8, 7);

     Celtitulo(linha2, ColunaP,'Quant.', clWhite, ACenter, clBlack, 8, 5);
     Celtitulo(linha2, ColunaP,'Val.Unitário(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Val.Total(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Peso Unitário', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Peso Total', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Rateio Frete Prepaid(R$)', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Taxa Conversão', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Alíq.II', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Base II', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor II(R$)', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Alíq.IPI', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Base IPI', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor IPI(R$)', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Alíq.PIS', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.COFINS', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Base PIS/COFINS', clWhite, ACenter, clBlack, 8, 17);
     Celtitulo(linha2, ColunaP,'Valor PIS(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor COFINS(R$)', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Alíq.ICMS', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.FECP', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Taxa Siscomex', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Base ICMS', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Acresc. Base ICMS', clWhite, ACenter, clBlack, 8, 15);     
     Celtitulo(linha2, ColunaP,'Valor ICMS(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor FECP(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Despesas Acessórias', clWhite, ACenter, clBlack, 8, 30);


     q_total_produtos.Params[0].asstring   := me_nossaref.text;
     q_total_produtos.open;
     valor_total_produtos := q_total_produtosValor_Total.AsFloat;
     q_total_produtos.close;

     q_total_taxa_siscomex.Params[0].asstring   := me_nossaref.text;
     q_total_taxa_siscomex.open;
     valor_total_taxa_siscomex := q_total_taxa_siscomextotal_taxa.AsFloat;
     q_total_taxa_siscomex.close;

     valor_total_prod_taxsis := valor_total_produtos + valor_total_taxa_siscomex;
     constante :=  valor_total_prod_taxsis / valor_total_produtos;

     osprocessos2 := '';
     q_plafat.close;

     q_plafat.sql.clear;
     q_plafat.sql.add('SELECT itf.Processo, itf.Fatura, cast([Pagina] as real) AS Pag, cast([itf].[Sequencial] as real) AS Seq, itf.Codigo_Produto,itf.Produto,Descricao_Produto AS "desc", Fabricantes_Produtores.Razao_Social AS Fabricante, itf.NCM, itf.Unidade, ');
     q_plafat.sql.add('itf.Unidade_Medida_Estat, itf.Destaque_NCM, itf.NALADI, itf.Referencia, itf.Numero_serie, itf.Referencia_projeto, itf.PO, itf.Seqpo, itf.Quantidade, itf.Valor_Unitario, itf.Valor_Total, itf.Peso_Unitario, itf.Peso_Unitario_Acertado, itf.Peso_Total, ');
     q_plafat.sql.add('itf.Peso_Total_Acertado, cast([Descricao_Produto_ing] as varchar(5000)) AS desci, itf.Rateio_Acrescimos, itf.Rateio_Deducoes, itf.Rateio_Embalagem, itf.Rateio_Frete_Interno_imp, itf.Rateio_Seguro_Interno, itf.Rateio_outras_import, itf.Rateio_startup, ');
     q_plafat.sql.add('itf.Rateio_jurosfin, itf.Rateio_montagem, itf.Rateio_Frete_Interno_exp, itf.Rateio_carga_exp, itf.Rateio_outras_export, itf.Rateio_frete_fatura, itf.Rateio_seguro_fatura, itf.Rateio_carga_imp, itf.Rateio_Despesas_ate_FOB, itf.Rateio_Frete_prepaid, ');
     q_plafat.sql.add('itf.Rateio_Frete_collect, itf.Rateio_Frete_ternac, itf.Rateio_Seguro, itf.Valor_Aduaneiro, itf.Valor_mercadoria, (itf.VMLE-itf.Acresc_reduc_Valaduan) as VMLE, ptc.Taxa_conversao, Processos_ADICOES_ICMS_PIS_COFINS.VA, Processos_ADICOES_ICMS_PIS_COFINS.OT, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.DA, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_COFINS, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.VALOR_IPI, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia, Processos_ADICOES_ICMS_PIS_COFINS.VA_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_proporcional, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.FOB, Tributacao_Item_Fatura.Adicao,  ');
     q_plafat.sql.add('([ITF].[Base_Calc_II]*[PTC].[taxa_conversao]) AS VA_NEW, itf.Acresc_reduc_Valaduan, itf.Rateio_Acresc_ICMS, Tributacao_Item_Fatura.Regime_Tributacao_II  ');
     q_plafat.sql.add('FROM ((((((ItensFaturas AS itf LEFT JOIN Fabricantes_Produtores ON itf.Fabricante = Fabricantes_Produtores.Codigo) INNER JOIN Tributacao_Item_Fatura ON (itf.Sequencial = Tributacao_Item_Fatura.Sequencial_Item) ');
     q_plafat.sql.add('AND (itf.Fatura = Tributacao_Item_Fatura.Fatura) AND (itf.Processo = Tributacao_Item_Fatura.Processo)) INNER JOIN Processos_ADICOES_ICMS_PIS_COFINS ON (Tributacao_Item_Fatura.Adicao = Processos_ADICOES_ICMS_PIS_COFINS.Adicao) ');
     q_plafat.sql.add('AND (Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_PIS_COFINS.Processo)) INNER JOIN Processos ON itf.Processo = Processos.Codigo) INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo) AND (itf.Processo = Faturas.Processo)) ');
     q_plafat.sql.add('INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda = ptc.Moeda) AND (Faturas.Processo = ptc.Processo)) INNER JOIN Conhecimento_Processo ON Processos.Codigo = Conhecimento_Processo.Processo ');
     q_plafat.sql.add('WHERE [Pagina] <> "XXX"  AND [itf].[Sequencial] <> "XXX" AND (Itf.Processo=:qpro)');
     //q_plafat.sql.add('ORDER BY itf.Fatura, [Pagina], [itf].[Sequencial]; ');
     q_plafat.sql.add('ORDER BY Tributacao_Item_Fatura.Adicao ');

     q_plafat.Params[0].asstring   := me_nossaref.text;
     q_plafat.open;
     vfat:=q_plafatfatura.asstring;

     vtotal17 := '';
     vtotal19 := '';
     vtotal21 := '';
     vtotal22 := '';
     vtotal23 := '';
     vtotal24 := '';
     vtotal25 := '';
     vtotal26 := '';

     vtotal32 := '';
     vtotal33 := '';
     vtotal34 := '';
     vtotal35 := '';
     vtotal36 := '';
     vtotal37 := '';
     vtotal38 := '';
     vtotal39 := '';
     vtotal40 := '';

{****}


     while not q_plafat.eof do begin

         linha2 := linha2+1;
         ColunaP:=1;

         //Verifica se a fatura tem acrescimo
         if (Fatura_Corrente = '') or (Fatura_Corrente <> q_plafatFatura.AsString) then begin
                Fatura_Acrescimo(me_nossaref.text,q_plafatFatura.AsString);
         end;
//         ADICAO :=q_plafatAdicao.AsInteger;
         CelDetalhe(linha2, ColunaP,q_plafatAdicao.asstring, clWhite, ALEFT, clNavy, 8, 6);
         CelDetalhe(linha2, ColunaP,q_plafatdesc.Value, clWhite, ALEFT, clNavy, 8, 30);
         CelDetalhe(linha2, ColunaP,q_plafatncm.asstring, clWhite, ALEFT, clNavy, 8, 7);
//         NCM:= q_plafatncm.asstring;
         CelDetalheVALOR(linha2, ColunaP,q_plafatquantidade.asfloat, clWhite, ARIGHT, clNavy, 8, 5);
//         QTD:=q_plafatquantidade.asInteger;
         if Tem_Acrescimo = true then begin
                temp_acrescimo := const_Acrescimo * q_plafatpeso_unitario_acertado.asfloat;
                CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_unitario.asfloat+temp_acrescimo)*q_plafattaxa_conversao.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
//                VAL_UND:= (q_plafatvalor_unitario.asfloat+temp_acrescimo)*q_plafattaxa_conversao.asfloat;
         end else
         begin
                CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_unitario.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
//                VAL_UND:=(q_plafatvalor_unitario.asfloat*q_plafattaxa_conversao.asfloat);
         end;
         if Tem_Acrescimo = true then begin
                temp_acrescimo := const_Acrescimo * q_plafatpeso_total_acertado.asfloat;
                CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_total.asfloat+temp_acrescimo)*q_plafattaxa_conversao.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
//                VAL_TOTAL:=(q_plafatvalor_total.asfloat+temp_acrescimo)*q_plafattaxa_conversao.asfloat;
         end else
         begin
                CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_total.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
//                VAL_TOTAL:=(q_plafatvalor_total.asfloat*q_plafattaxa_conversao.asfloat);
         end;
//         PESO_UND:=q_plafatpeso_unitario_acertado.asfloat;
         CelDetalheVALOR(linha2, ColunaP,q_plafatpeso_unitario_acertado.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
//         PESO_TOTAL:=q_plafatpeso_total_acertado.asfloat;
         CelDetalheVALOR(linha2, ColunaP,q_plafatpeso_total_acertado.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
//         RATEIO_FRETE_PREPAID:=(q_plafatrateio_frete_prepaid.asfloat*q_plafatquantidade.asfloat)*q_plafattaxa_conversao.asfloat;
         CelDetalheVALOR(linha2, ColunaP,((q_plafatrateio_frete_prepaid.asfloat*q_plafatquantidade.asfloat)*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
//         TXCONVERSAO:=q_plafattaxa_conversao.asfloat;
         CelDetalheVALOR(linha2, ColunaP,q_plafattaxa_conversao.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         Excel.Cells[linha2,colunap-1].NumberFormatLocal := '#.##0,00000';

         temp_va := q_plafatVA_NEW.AsFloat;
         tempii := (q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         temp_ipi := (q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         temp_tx := (q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat;
         temp_confis := (q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         temp_pis := (q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         dif_icms := ((100-(q_plafatAliq_ICMS.AsFloat+q_plafatAliq_ICMS_EXTRA.AsFloat))/100);

         if  dif_icms = icms_tres_porcento then begin
                base_calculo_icms := (temp_va + temp_tx) / dif_icms;
         end else begin
                base_calculo_icms := (temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms;
         end;

         if q_plafatRegime_Tributacao_II.AsString = '5' then begin
                base_calculo_icms := (temp_va + temp_tx) / dif_icms;
         end;

         aliq_ICMS_valor := (q_plafatAliq_ICMS.AsFloat)/100;
         valor_icms := base_calculo_icms *  aliq_ICMS_valor;

         //---------------------- Alicota
         aliq_ICMS := (q_plafatAliq_ICMS.AsFloat+q_plafatAliq_ICMS_EXTRA.AsFloat)/100;
         aliq_IPI := (q_plafatAliq_NCM_IPI.AsFloat)/100;
         aliq_II := (q_plafatAliq_NCM_II.AsFloat)/100;
         aliq_PIS := (q_plafatAliq_PIS_PASEP.AsFloat)/100;
         aliq_CONFINS := (q_plafatAliq_COFINS.AsFloat)/100;

         const_pis1 := (1+(aliq_ICMS)*(aliq_II+aliq_IPI*(1+aliq_II)));
         const_pis2 := (1-aliq_PIS-aliq_CONFINS)*(1-(aliq_ICMS));
         const_pis3 :=  const_pis1 / const_pis2;


         //-------------------- II
//         ALIQII:=q_plafataliq_ncm_ii.asfloat;
//         BASEII:=q_plafatVA_NEW.AsFloat;
//         VALORII:=(q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_ncm_ii.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP, q_plafatVA_NEW.AsFloat, clWhite, ACENTER, clNavy, 8, 10); // Base do II
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);

         //-------------------- IPI
 //        ALIQIPI:=q_plafataliq_ncm_ipi.asfloat;
//         BASEIPI:=q_plafatVA_NEW.AsFloat + ((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat));
//         VALORIPI:=(q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_ncm_ipi.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP, q_plafatVA_NEW.AsFloat + ((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat)), clWhite, ACENTER, clNavy, 8, 10); // Base do IPI
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);//Valor IPI

         //-------------------- PIS
//         ALIQPIS    :=q_plafataliq_pis_pasep.asfloat;
//         ALIQCOFINS :=q_plafataliq_cofins.asfloat;
//         BASEPIS    :=q_plafatVA_NEW.AsFloat * const_pis3;
//         VALORPIS   :=(q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
//         VALORCOFINS:=(q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_pis_pasep.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_cofins.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP, q_plafatVA_NEW.AsFloat * const_pis3, clWhite, ACENTER, clNavy, 8, 10); //Base PIS/CONFINS
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);//Valor PIS
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);//Valor Confins

         //-------------------- ICMS
//         ALIQICMS  :=q_plafataliq_icms.asfloat;
//         ALIQFECP  :=q_plafataliq_icms_extra.asfloat;
//         TXSISCOMEX:=(q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat;
//         BASEICMS  :=base_calculo_icms;
//         VLRICMS   :=valor_icms;
//         VLRFECP   :=((q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat);

         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_icms.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafataliq_icms_extra.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat, clWhite, ARIGHT, clNavy, 8, 15); //Taxa do siscomex
         CelDetalheVALOR(linha2, ColunaP, base_calculo_icms, clWhite, ACENTER, clNavy, 8, 10);  //Base ICMS
         CelDetalheVALOR(linha2, ColunaP, q_plafatRateio_Acresc_ICMS.AsFloat, clWhite, ACENTER, clNavy, 8, 10);  //ACRESC.Base ICMS
         CelDetalheVALOR(linha2, ColunaP, valor_icms, clWhite, ARIGHT, clNavy, 8, 15);//Valor ICMS
         CelDetalheVALOR(linha2, ColunaP,(q_plafatvalor_icms_extra.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);//Valor FECP

         CelDetalheVALOR(linha2, ColunaP,((q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat), clWhite, ARIGHT, clNavy, 8, 15);//Valor FECP
         {Montagem da Line}

   {      Linha:='';
         Linha :='L | '+ inttostr(ADICAO) + ' | '+ q_plafatSeq.asString + ' | '+'CODIGO_ITEM_SEADRIL'+' | '+
          q_plafatCodigo_Produto.Value + ' | '+ NCM + ' | '+ IntToStr(QTD) + ' | '+ FloatToStr(VAL_UND) +' | '+
          FloatToStr(VAL_TOTAL)+ ' | '+FloatToStr(PESO_UND)+' | '+FloatToStr(PESO_TOTAL)+' | '+
          FloatToStr(RATEIO_FRETE_PREPAID) + ' | '+ FloatToStr(TXCONVERSAO) + ' | '+FloatToStr(ALIQII) + ' | '+
          FloatToStr(BASEII)+ ' | '+FloatToStr(VALORII)+ ' | '+FloatToStr(ALIQIPI)+ ' | '+FloatToStr(BASEIPI)+ ' | '+
          FloatToStr(VALORIPI)+ ' | '+ FloatToStr(ALIQPIS) + ' | '+FloatToStr(ALIQCOFINS) + ' | '+
          FloatToStr(BASEPIS)+ ' | '+FloatToStr(BASECOFINS)+ ' | '+FloatToStr(VALORPIS) + ' | '+
          FloatToStr(VALORCOFINS) + ' | ' + FloatToStr(ALIQICMS) + ' | ' +
          FloatToStr(ALIQFECP)+ ' | '+FloatToStr(TXSISCOMEX)+ ' | '+FloatToStr(BASEICMS) + ' | '+FloatToStr(VLRICMS) + ' | '+
          FloatToStr(VLRFECP);
         Write(arqTexto, Linha);
         Writeln(arqTexto);  }

         q_plafat.Next;

     end;
//     closefile(arqTexto);

     linha2 := linha2+1;
     Excel.cells[linha2, 1] := 'Total Geral';
     for colunas := 1 to 29 do begin
         Excel.cells[linha2, colunas].interior.Color := clnavy;;
         Excel.Cells[linha2, colunas].Font.Bold := True;
         Excel.Cells[linha2, colunas].Font.Color := clwhite;

     end;

     //total valor total
     col2 := 5;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //total valor unitario
     col2 := 6;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //total Frete
     col2 := 9;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //Valor II
     col2 := 13;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //IPI
     col2 := 16;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';


     //PIS
     col2 := 20;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //Confins
     col2 := 21;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //TX Siscomex
     col2 := 24;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //Base ICMS
     col2 := 25;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //Acresc. Base ICMS
     col2 := 26;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //ICMS
     col2 := 27;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';


     //FECP
     col2 := 28;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //Despezas
     col2 := 29;
     Excel.Cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+inttostr(qlinhaINISOMA)+'C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
     Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

     //Excel.WorkBooks[1].Save;

     Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(me_nossaref.text,'/','_', [rfReplaceAll]) + ' - Itens de Processo.xlsx' );
     Application.ProcessMessages;

     Excel.Quit;
     Excel := unassigned;

     showmessage(v_usuario+', a planilha foi gerada no diretório C:\MS2000\PLANILHAS_MS2000!');

end;

Procedure Tf_plaitens.Fatura_Acrescimo(processo : String; fatura : String);
Begin
    //Utiliza a variável global const_Acrescimo para armazenar o valor do acrescimo divido pelo peso liq total  Tem_Acrescimo

    qrFatura.Params[0].asstring   := processo;
    qrFatura.open;

    qrAcrescimo.Params[0].asstring   := processo;
    qrAcrescimo.Params[1].asstring   := fatura;
    qrAcrescimo.open;

    if qrAcrescimoTotal.AsFloat > 0 then begin
        const_Acrescimo := qrAcrescimoTotal.AsFloat / qrFaturaPeso_Total_Acertado.AsFloat;
        Fatura_Corrente := fatura;
        Tem_Acrescimo := true;
    end else
        Tem_Acrescimo := false;

    qrFatura.close;
    qrAcrescimo.Close;

end;

procedure Tf_plaitens.btnTxtClick(Sender: TObject);
var
        temp_acrescimo : real; 
begin
if  OPER_LAYOUT = 1 then
begin
      showmessage('Para o layout padrão esta operação não é permitida.');
      exit;
end;
     if me_nossaref.text = '' then
     begin
       showmessage('Informe o número do processo,por favor.');
       me_nossaref.setfocus;
       exit;
     end;  
     with qFat do
     begin
         Close;
         ParamByName('pProcesso').asString:=me_nossaref.text;
         Open;
     end;


     dirApl := ExtractFilePath(Application.ExeName);
     arqDirTxt := dirApl+'ArquivoTXT\';
     arqNome := 'MS2000_'+ StringReplace(ME_nossaref.text, '/', '_', [rfReplaceAll]) +'_'+FormatDateTime('yyyymmdd',Now)+'.txt';
     AssignFile(arqTexto,arqDirTxt+arqNome);

     ReWrite(arqTexto);

     If Not DirectoryExists(arqDirTxt) Then CreateDir(arqDirTxt);

     while not qFat.eof do
     begin
              {MONTAGEM DO HEADER PARA O ARQUIVO TXT}
         qrHeader.Close;
         qrHeader.ParamByName('pProcesso').asString := ME_nossaref.text;
         qrHeader.ParamByName('pFatura').asString := qFatCodigo.Value;
         qrHeader.Open;

         qrTotalDoFrete.Close;
         qrTotalDoFrete.ParamByName('pProcesso').AsString :=ME_nossaref.text;
         qrTotalDoFrete.ParamByName('pFatura').asString := qFatCodigo.Value;
         qrTotalDoFrete.Open;

         Linha := 'H '+ ' | '+ qrHeaderCOBERTURA_CAMBIAL.Value +' | '+qrHeaderNATUREZA_OPERACAO.AsString + ' | ' + qrHeaderMoeda.AsString + ' | ' +
         qrHeaderCNPJ_DEST.AsString + ' | ' + qrHeaderCNPJ_CPF_COMPLETO.asstring + ' | ' + qrHeaderCNPJ_CPF_COMPLETO.asstring  + ' | '+
         qrHeaderdctoImportacao.AsString + ' | ' +  qrHeaderdataDctoImportacao.AsString + ' | ' +
         qrHeadernfatura.ASSTRING + ' | ' + qrHeaderUFDesembaraco.AsString + ' | '+
         qrHeaderCod_Moeda.asString + ' | ' + stringreplace(FloatToStr(TXCONVERSAO), ',', '.', [rfReplaceAll]) + ' | ' +
         qrHeaderdata_desembaraco.AsString + ' | ' + qrHeaderpeso_bruto.asString + ' | ' +
         qrHeaderPeso_Liquido.AsString + ' | ' + qrHeaderValor_FOB.AsString + ' | '+
         stringreplace(FloatTostr(qrTotalDoFreteTotal_Frete.Value), ',', '.', [rfReplaceAll]) + ' | ' + stringreplace(FloatToStr(qrHeaderValor_Seguro.value), ',', '.', [rfReplaceAll]) + ' | '+qrHeaderValor_CIF.AsString ;
         Write(arqTexto, Linha);
         Writeln(arqTexto);

         {Fim do Header}

         q_total_produtos.Params[0].asstring   := me_nossaref.text;
         q_total_produtos.open;
         valor_total_produtos := q_total_produtosValor_Total.AsFloat;
         q_total_produtos.close;

         q_total_taxa_siscomex.Params[0].asstring   := me_nossaref.text;
         q_total_taxa_siscomex.open;
         valor_total_taxa_siscomex := q_total_taxa_siscomextotal_taxa.AsFloat;
         q_total_taxa_siscomex.close;

         valor_total_prod_taxsis := valor_total_produtos + valor_total_taxa_siscomex;
         constante :=  valor_total_prod_taxsis / valor_total_produtos;

         q_plafat.close;
         q_plafat.sql.clear;
         q_plafat.sql.add('SELECT itf.Processo, itf.Fatura, cast([Pagina] as real) AS Pag, cast([itf].[Sequencial] as real) AS Seq, itf.Codigo_Produto,itf.Produto,Descricao_Produto AS "desc", Fabricantes_Produtores.Razao_Social AS Fabricante, itf.NCM, itf.Unidade, ');
         q_plafat.sql.add('itf.Unidade_Medida_Estat, itf.Destaque_NCM, itf.NALADI, itf.Referencia, itf.Numero_serie, itf.Referencia_projeto, itf.PO, itf.Seqpo, itf.Quantidade, itf.Valor_Unitario, itf.Valor_Total, itf.Peso_Unitario, itf.Peso_Unitario_Acertado, itf.Peso_Total, ');
         q_plafat.sql.add('itf.Peso_Total_Acertado, cast([Descricao_Produto_ing] as varchar(5000)) AS desci, itf.Rateio_Acrescimos, itf.Rateio_Deducoes, itf.Rateio_Embalagem, itf.Rateio_Frete_Interno_imp, itf.Rateio_Seguro_Interno, itf.Rateio_outras_import, itf.Rateio_startup, ');
         q_plafat.sql.add('itf.Rateio_jurosfin, itf.Rateio_montagem, itf.Rateio_Frete_Interno_exp, itf.Rateio_carga_exp, itf.Rateio_outras_export, itf.Rateio_frete_fatura, itf.Rateio_seguro_fatura, itf.Rateio_carga_imp, itf.Rateio_Despesas_ate_FOB, itf.Rateio_Frete_prepaid, ');
         q_plafat.sql.add('itf.Rateio_Frete_collect, itf.Rateio_Frete_ternac, itf.Rateio_Seguro, itf.Valor_Aduaneiro, itf.Valor_mercadoria, (itf.VMLE-itf.Acresc_reduc_Valaduan) as VMLE, ptc.Taxa_conversao, Processos_ADICOES_ICMS_PIS_COFINS.VA, Processos_ADICOES_ICMS_PIS_COFINS.OT, ');
         q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.DA, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_COFINS, ');
         q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II, ');
         q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.VALOR_IPI, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS, ');
         q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia, Processos_ADICOES_ICMS_PIS_COFINS.VA_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_proporcional, ');
         q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.FOB, Tributacao_Item_Fatura.Adicao,  ');
         q_plafat.sql.add('([ITF].[Base_Calc_II]*[PTC].[taxa_conversao]) AS VA_NEW, itf.Acresc_reduc_Valaduan, itf.Rateio_Acresc_ICMS ');
         q_plafat.sql.add('FROM ((((((ItensFaturas AS itf LEFT JOIN Fabricantes_Produtores ON itf.Fabricante = Fabricantes_Produtores.Codigo) INNER JOIN Tributacao_Item_Fatura ON (itf.Sequencial = Tributacao_Item_Fatura.Sequencial_Item) ');
         q_plafat.sql.add('AND (itf.Fatura = Tributacao_Item_Fatura.Fatura) AND (itf.Processo = Tributacao_Item_Fatura.Processo)) INNER JOIN Processos_ADICOES_ICMS_PIS_COFINS ON (Tributacao_Item_Fatura.Adicao = Processos_ADICOES_ICMS_PIS_COFINS.Adicao) ');
         q_plafat.sql.add('AND (Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_PIS_COFINS.Processo)) INNER JOIN Processos ON itf.Processo = Processos.Codigo) INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo) AND (itf.Processo = Faturas.Processo)) ');
         q_plafat.sql.add('INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda = ptc.Moeda) AND (Faturas.Processo = ptc.Processo)) INNER JOIN Conhecimento_Processo ON Processos.Codigo = Conhecimento_Processo.Processo ');
         q_plafat.sql.add('WHERE [Pagina] <> "XXX"  AND [itf].[Sequencial] <> "XXX" AND (Itf.Processo=:qpro) AND (itf.Fatura =:pFat)');
         //q_plafat.sql.add('ORDER BY itf.Fatura, [Pagina], [itf].[Sequencial]; ');
         q_plafat.sql.add('ORDER BY Tributacao_Item_Fatura.Adicao ');
         q_plafat.Params[0].asstring   := me_nossaref.text;
         q_plafat.Params[1].asstring   := qFatCodigo.Value;
         q_plafat.open;

         while not q_plafat.eof do
         begin
             ADICAO :=q_plafatAdicao.AsInteger;
             NCM:= q_plafatncm.asstring;
             QTD:=q_plafatquantidade.asInteger;
             if Tem_Acrescimo = true then begin
                    temp_acrescimo := const_Acrescimo * q_plafatpeso_unitario_acertado.asfloat;
                    VAL_UND:= (q_plafatvalor_unitario.asfloat+temp_acrescimo)*q_plafattaxa_conversao.asfloat;
             end
             else
             begin
                    VAL_UND:=(q_plafatvalor_unitario.asfloat*q_plafattaxa_conversao.asfloat);
             end;
             if Tem_Acrescimo = true then begin
                    temp_acrescimo := const_Acrescimo * q_plafatpeso_total_acertado.asfloat;
                    VAL_TOTAL:=(q_plafatvalor_total.asfloat+temp_acrescimo)*q_plafattaxa_conversao.asfloat;
             end else
             begin
                    VAL_TOTAL:=(q_plafatvalor_total.asfloat*q_plafattaxa_conversao.asfloat);
             end;

             PESO_UND:=q_plafatpeso_unitario_acertado.asfloat;
             PESO_TOTAL:=q_plafatpeso_total_acertado.asfloat;
             RATEIO_FRETE_PREPAID:=(q_plafatrateio_frete_prepaid.asfloat*q_plafatquantidade.asfloat)*q_plafattaxa_conversao.asfloat;

             TXCONVERSAO:=q_plafattaxa_conversao.asfloat;
             temp_va := q_plafatVA_NEW.AsFloat;
             tempii := (q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
             temp_ipi := (q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
             temp_tx := (q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat;
             temp_confis := (q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
             temp_pis := (q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
             dif_icms := ((100-(q_plafatAliq_ICMS.AsFloat+q_plafatAliq_ICMS_EXTRA.AsFloat))/100);

             base_calculo_icms := (temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms;

             aliq_ICMS_valor := (q_plafatAliq_ICMS.AsFloat)/100;
             valor_icms := base_calculo_icms *  aliq_ICMS_valor;
             //---------------------- Alicota
             aliq_ICMS := (q_plafatAliq_ICMS.AsFloat+q_plafatAliq_ICMS_EXTRA.AsFloat)/100;
             aliq_IPI := (q_plafatAliq_NCM_IPI.AsFloat)/100;
             aliq_II := (q_plafatAliq_NCM_II.AsFloat)/100;
             aliq_PIS := (q_plafatAliq_PIS_PASEP.AsFloat)/100;
             aliq_CONFINS := (q_plafatAliq_COFINS.AsFloat)/100;

             const_pis1 := (1+(aliq_ICMS)*(aliq_II+aliq_IPI*(1+aliq_II)));
             const_pis2 := (1-aliq_PIS-aliq_CONFINS)*(1-(aliq_ICMS));
             const_pis3 :=  const_pis1 / const_pis2;


             //-------------------- II
             ALIQII:=q_plafataliq_ncm_ii.asfloat;
             BASEII:=q_plafatVA_NEW.AsFloat;
             VALORII:=(q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);

             //-------------------- IPI
             ALIQIPI:=q_plafataliq_ncm_ipi.asfloat;
             BASEIPI:=q_plafatVA_NEW.AsFloat + ((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat));
             VALORIPI:=(q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);

             //-------------------- PIS
             ALIQPIS    :=q_plafataliq_pis_pasep.asfloat;
             ALIQCOFINS :=q_plafataliq_cofins.asfloat;
             BASEPIS    :=q_plafatVA_NEW.AsFloat * const_pis3;
             VALORPIS   :=(q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
             VALORCOFINS:=(q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);

             ALIQICMS  :=q_plafataliq_icms.asfloat;
             ALIQFECP  :=q_plafataliq_icms_extra.asfloat;
             TXSISCOMEX:=(q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat;
             BASEICMS  :=base_calculo_icms;
             VLRICMS   :=valor_icms;
             VLRFECP   :=((q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+((q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat);

             {Montagem da Line}

             Linha:='';
             Linha :='L | '+ inttostr(ADICAO) + ' | '+ q_plafatSeq.asString + ' | '+'CODIGO_ITEM_SEADRIL'+' | '+
              q_plafatCodigo_Produto.Value + ' | '+ NCM + ' | '+ IntToStr(QTD) + ' | '+ stringReplace(FloatToStr(VAL_UND), ',', '.', [rfReplaceAll]) +' | '+
              stringReplace(FloatToStr(VAL_TOTAL), ',', '.', [rfReplaceAll])+ ' | '+ stringreplace(FloatToStr(PESO_UND), ',', '.',[rfReplaceAll])+' | '+ stringreplace(FloatToStr(PESO_TOTAL), ',', '.',[rfReplaceAll])+' | '+
              stringreplace(FloatToStr(RATEIO_FRETE_PREPAID), ',', '.',[rfReplaceAll]) + ' | '+ stringreplace(FloatToStr(TXCONVERSAO), ',', '.',[rfReplaceAll]) + ' | '+ stringReplace(FloatToStr(ALIQII), ',', '.',[rfReplaceAll]) + ' | '+
              stringreplace(FloatToStr(BASEII), ',', '.',[rfReplaceAll])+ ' | '+ stringreplace(FloatToStr(VALORII), ',', '.',[rfReplaceAll])+ ' | '+ stringreplace(FloatToStr(ALIQIPI), ',', '.',[rfReplaceAll])+ ' | '+ stringreplace(FloatToStr(BASEIPI), ',', '.',[rfReplaceAll])+ ' | '+
              stringreplace(FloatToStr(VALORIPI), ',', '.',[rfReplaceAll])+ ' | '+ stringreplace(FloatToStr(ALIQPIS), ',', '.',[rfReplaceAll]) + ' | '+stringreplace(FloatToStr(ALIQCOFINS), ',', '.',[rfReplaceAll]) + ' | '+
              stringreplace(FloatToStr(BASEPIS), ',', '.',[rfReplaceAll])+ ' | '+ stringreplace(FloatToStr(BASEPIS), ',', '.',[rfReplaceAll])+ ' | '+stringreplace(FloatToStr(VALORPIS), ',', '.',[rfReplaceAll]) + ' | '+
              stringreplace(FloatToStr(VALORCOFINS), ',', '.',[rfReplaceAll]) + ' | ' + stringreplace(FloatToStr(ALIQICMS), ',', '.',[rfReplaceAll]) + ' | ' +
              stringreplace(FloatToStr(ALIQFECP), ',', '.',[rfReplaceAll])+ ' | '+stringreplace(FloatToStr(TXSISCOMEX), ',', '.',[rfReplaceAll])+ ' | '+stringreplace(FloatToStr(BASEICMS), ',', '.',[rfReplaceAll]) + ' | '+stringreplace(FloatToStr(VLRICMS), ',', '.',[rfReplaceAll]) + ' | '+
              stringreplace(FloatToStr(VLRFECP), ',', '.',[rfReplaceAll]);
             Write(arqTexto, Linha);
             Writeln(arqTexto);
             q_plafat.next;
         end;
         qFat.Next;
     end;
     showmessage(v_usuario+', o arquivo TXT foi gerado no diretório C:\MS2000\Arquivo TXT !');
     closefile(arqTexto);
end;

procedure Tf_plaitens.FormShow(Sender: TObject);
begin
    if RB_Padrao.Checked then  btnTxt.enabled :=false;
    qLocal.Close;
    qLocal.Open;
end;

procedure Tf_plaitens.RB_PadraoClick(Sender: TObject);
begin
    btnTxt.enabled :=false;
end;

procedure Tf_plaitens.RB_SeadrillClick(Sender: TObject);
begin
    btnTxt.enabled := True;
end;

procedure Tf_plaitens.btnPadraoClick(Sender: TObject);
begin
 OPER_LAYOUT := 1;
 if me_nossaref.text = '' then
 begin
   showmessage('Informe o número do processo,por favor.');
   me_nossaref.setfocus;
   exit;
 end;
 qProcAereo.close;
 qProcAereo.ParamByName('pProcesso').asString := ME_nossaref.text;
 qProcAereo.Open;
 if qProcAereotipo.asString <> '11' then
 begin
       qTemAcresICMS.Close;
       qTemAcresICMS.ParamByName('pProcesso').asString := ME_nossaref.text;
       qTemAcresICMS.Open;
       {Leandro Serra - 03/06/2013
       Esta solução resolve o problema que quando excluía-se o acréscimo o rateio continuava trazendo valores.}
       if qTemAcresICMS.RecordCount = 0 then
       begin
           qUpRateioAcrescimoICMS.close;
           qUpRateioAcrescimoICMS.ParamByName('pProcesso').asString :=ME_nossaref.text;
           qUpRateioAcrescimoICMS.ExecSQL;
       end;
 end
 else
 begin
     {Processos Aéreos}
     IncluirAcrescimoICMS(f_plaitens);

 end;
 If MessageDlg(v_usuario+', Confirma geração da planilha de itens de processo?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then exit;
 RB_Padrao.Checked:=True;
 RB_Seadrill.Checked:=False;
 sb_planilhaitensClick(f_plaitens);
end;

procedure Tf_plaitens.btnSeadrilClick(Sender: TObject);
begin
  OPER_LAYOUT := 2;
  if me_nossaref.text = '' then
  begin
   showmessage('Informe o número do processo,por favor.');
   me_nossaref.setfocus;
   exit;
  end;
  If MessageDlg(v_usuario+', Confirma geração da planilha de itens de processo?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then exit;
  RB_Seadrill.Checked:=True;
  RB_Padrao.Checked:=False;
  sb_planilhaitens_SeadrillClick(f_plaitens);
end;


procedure Tf_plaitens.IncluirAcrescimoICMS(Sender: TObject);//(Adicao : String; seq : Real; va : Real);
var
ConstRateioDoAcrescimo : Real;
begin
    {ATA AÉREO
    ACRÉSCIMO ATA AÉREO / VA = CONSTANTE
    CONSTANTE X VA POR ADIÇÃO}
//         cif := ((q_plafatvmle.asfloat+ q_plafatAcresc_reduc_Valaduan.asfloat +((q_plafatrateio_seguro.asfloat+q_plafatrateio_frete_prepaid.asfloat+q_plafatrateio_frete_collect.asfloat)-q_plafatrateio_frete_ternac.asfloat)*q_plafatquantidade.asfloat))*q_plafattaxa_conversao.asfloat;

     with qAcresATAereo do
     begin
          Close;
          ParamByName('pProcesso').asString := ME_nossaref.text;;
          Open;
     end;

     q_plafat.close;

     q_plafat.sql.clear;
     q_plafat.sql.add('SELECT itf.Processo, itf.Fatura, cast([Pagina] as real) AS Pag, cast([itf].[Sequencial] as real) AS Seq, itf.Codigo_Produto,itf.Produto,Descricao_Produto AS "desc", Fabricantes_Produtores.Razao_Social AS Fabricante, itf.NCM, itf.Unidade, ');
     q_plafat.sql.add('itf.Unidade_Medida_Estat, itf.Destaque_NCM, itf.NALADI, itf.Referencia, itf.Numero_serie, itf.Referencia_projeto, itf.PO, itf.Seqpo, itf.Quantidade, itf.Valor_Unitario, itf.Valor_Total, itf.Peso_Unitario, itf.Peso_Unitario_Acertado, itf.Peso_Total, ');
     q_plafat.sql.add('itf.Peso_Total_Acertado, cast([Descricao_Produto_ing] as varchar(5000)) AS desci, itf.Rateio_Acrescimos, itf.Rateio_Deducoes, itf.Rateio_Embalagem, itf.Rateio_Frete_Interno_imp, itf.Rateio_Seguro_Interno, itf.Rateio_outras_import, itf.Rateio_startup, ');
     q_plafat.sql.add('itf.Rateio_jurosfin, itf.Rateio_montagem, itf.Rateio_Frete_Interno_exp, itf.Rateio_carga_exp, itf.Rateio_outras_export, itf.Rateio_frete_fatura, itf.Rateio_seguro_fatura, itf.Rateio_carga_imp, itf.Rateio_Despesas_ate_FOB, itf.Rateio_Frete_prepaid, ');
     q_plafat.sql.add('itf.Rateio_Frete_collect, itf.Rateio_Frete_ternac, itf.Rateio_Seguro, itf.Valor_Aduaneiro, itf.Valor_mercadoria, (itf.VMLE-itf.Acresc_reduc_Valaduan) as VMLE, ptc.Taxa_conversao, Processos_ADICOES_ICMS_PIS_COFINS.VA, Processos_ADICOES_ICMS_PIS_COFINS.OT, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.DA, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_COFINS, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.VALOR_IPI, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia, Processos_ADICOES_ICMS_PIS_COFINS.VA_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_proporcional, ');
     q_plafat.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.FOB, Tributacao_Item_Fatura.Adicao,  ');
     q_plafat.sql.add('([ITF].[Base_Calc_II]*[PTC].[taxa_conversao]) AS VA_NEW, itf.Acresc_reduc_Valaduan, itf.Rateio_Acresc_ICMS, Tributacao_Item_Fatura.Regime_Tributacao_II   ');
     q_plafat.sql.add('FROM ((((((ItensFaturas AS itf LEFT JOIN Fabricantes_Produtores ON itf.Fabricante = Fabricantes_Produtores.Codigo) INNER JOIN Tributacao_Item_Fatura ON (itf.Sequencial = Tributacao_Item_Fatura.Sequencial_Item) ');
     q_plafat.sql.add('AND (itf.Fatura = Tributacao_Item_Fatura.Fatura) AND (itf.Processo = Tributacao_Item_Fatura.Processo)) INNER JOIN Processos_ADICOES_ICMS_PIS_COFINS ON (Tributacao_Item_Fatura.Adicao = Processos_ADICOES_ICMS_PIS_COFINS.Adicao) ');
     q_plafat.sql.add('AND (Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_PIS_COFINS.Processo)) INNER JOIN Processos ON itf.Processo = Processos.Codigo) INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo) AND (itf.Processo = Faturas.Processo)) ');
     q_plafat.sql.add('INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda = ptc.Moeda) AND (Faturas.Processo = ptc.Processo)) INNER JOIN Conhecimento_Processo ON Processos.Codigo = Conhecimento_Processo.Processo ');
     q_plafat.sql.add('WHERE [Pagina] <> "XXX"  AND [itf].[Sequencial] <> "XXX" AND (Itf.Processo=:qpro)');
     q_plafat.sql.add('ORDER BY Tributacao_Item_Fatura.Adicao ');
     q_plafat.Params[0].asstring   := me_nossaref.text;
     q_plafat.open;

    CIF := 0;
    with qSomaVA do
    begin
        Close;
        ParamByName('pProcesso').asString := ME_nossaref.text;;
        Open;
    end;

    ConstRateioDoAcrescimo :=  qAcresATAereovalor.asFloat / qSomaVAVA_TOTAL.Value;

    while not q_plafat.Eof do
    begin
      CIF := ((q_plafatvmle.asfloat+ q_plafatAcresc_reduc_Valaduan.asfloat +((q_plafatrateio_seguro.asfloat+q_plafatrateio_frete_prepaid.asfloat+q_plafatrateio_frete_collect.asfloat)-q_plafatrateio_frete_ternac.asfloat)*q_plafatquantidade.asfloat))*q_plafattaxa_conversao.asfloat;
      qUpRateio_Acresc_ICMS.Close;
      qUpRateio_Acresc_ICMS.ParamByName('pRateio_Acresc_ICMS').asFloat := CIF * ConstRateioDoAcrescimo;
      qUpRateio_Acresc_ICMS.ParamByName('pProc').asString := ME_nossaref.text;
      qUpRateio_Acresc_ICMS.ParamByName('pAdicao').asString := q_plafatAdicao.Value;
      qUpRateio_Acresc_ICMS.ParamByName('pSeq').asFloat :=q_plafatseq.Value;
      qUpRateio_Acresc_ICMS.ExecSQL;
      q_plafat.Next;
    end;
end;

procedure Tf_plaitens.Button1Click(Sender: TObject);
var
 Mes : String;
begin
  if cbMes.ItemIndex = -1 then
  begin
      ShowMessage('Informe o mês para continuar, por favor.');
      cbMes.SetFocus;
      Exit;
  end;
  case cbMes.ItemIndex of
        0  : begin
                nMes := '01';
                 Mes := 'Janeiro';
             end;
        1  : begin
                nMes := '02';
                 Mes := 'Fevereiro';
             end;
        2  : begin
                nMes := '03';
                 Mes := 'Março';
             end;
        3  : begin
                nMes := '04';
                 Mes := 'Abril';
             end;
        4  : begin
                nMes := '05';
                 Mes := 'Maio';
             end;
        5  : begin
                nMes := '06';
                 Mes := 'Junho';
             end;
        6  : begin
                nMes := '07';
                 Mes := 'Julho';
             end;
        7  : begin
                nMes := '08';
                 Mes := 'Agosto';
             end;
        8  : begin
                nMes := '09';
                 Mes := 'Setembro';
             end;
        9  : begin
                nMes := '10';
                 Mes := 'Outubro';
             end;
        10  : begin
                nMes := '11';
                 Mes := 'Novembro';
             end;
        11 : begin
                nMes := '12';
                 Mes := 'Dezembro';
             end;
  end;
  if MessageDlg('Confirma a geração da planilha no mês de '+Mes+' para o local de inventário '+ qLocalDescricao.asString + ' ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo
   then Exit;
   sb_planilhaitensBrasdrilClick(f_plaitens);

end;

procedure Tf_plaitens.sb_planilhaitensBrasdrilClick(Sender: TObject);
var
   sheet : Variant;
   v_cred_i, v_deb_i, coluna, aux,auy, aue, teste , linha2, col2, qlinhaINISOMA: Integer;
   h_est, h_tot, dir_cor, v_form_aux, astring, astring2, vpro, qpro, osprocessos,osprocessos2,data,data_arq,nome_arq,vespacos,vfat: string;
   t_emp,t_emp2, pos_form_cred, pos_form_deb : integer;
   i,j,colunas : integer;
   FIni,FFim, FFim0 : TDateTime;
   qvalor,sub_total_icms,total_acres_ataereo,const_acres_ataereo:real;
   entra,imprimiusubtot:boolean;
   vtotal17,vtotal19,vtotal21,vtotal22,vtotal23,vtotal24,vtotal25:string;
   vtotal26,vtotal27,vtotal28,numero_processo,processo_acres_ataereo:string;
   vtotal32,vtotal33,vtotal34,vtotal35,vtotal36,vtotal37,vtotal38,vtotal39,vtotal40,vtotal46:string;


begin
     {$I-}
     image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
     data := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
     data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);

     System.GetDir(0,dir_cor);
     dir_cor := dir_cor + '\Planilhas_Ms2000';
     MkDir(dir_cor);

     Excel:=CreateOleObject('Excel.Application');
     Excel.Application.DisplayAlerts := False;
     Excel.Visible := true;
     excel.Workbooks.add(1);

     vespacos := '                                                                                                                                          ';
     vespacos := copy(vespacos,1,55);

     Excel.Worksheets[1].Name := 'Itens de Processo';
     Excel.WorkSheets['Itens de Processo'].Select;
     Excel.WorkSheets['Itens de Processo'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);
     Excel.Cells[1,1] := vespacos+v_empresanome;
     Excel.Cells[1,1].Font.Size := 12;
     Excel.cells[1,1].Font.Bold := True;
     Excel.Cells[2,1] := vespacos+'                   Planilha Itens de Processo - V 1.0 - '+ FormatDateTime('dd/mm/yyyy "às" hh:nn', Now());
     Excel.cells[2,1].Font.Bold := True;
     Excel.Cells[3,1] := vespacos+'Empresa: ' + l_cliente.caption;/// + q_ImportRazoSocial.AsString;
     Excel.Cells[3,1].Font.Size := 12;
     Excel.cells[3,1].Font.Bold := True;

     Excel.Cells[4,1] := vespacos+'Ref.MS: ' + qrprocessosprocesso.asstring +' - Ref.Empresa: '+ qrprocessosrefcli.asstring;
     Excel.Cells[4,1].Font.Size := 12;
     Excel.cells[4,1].Font.Bold := True;

     Excel.Cells[5,1] := vespacos+'                   Data da Consulta: ' + data;
     Excel.ActiveWindow.DisplayGridlines := TRUE;

     linha2:=6;
     ColunaP:=1;
     qlinhaINISOMA := 7;

     Celtitulo(linha2, ColunaP,'MS', clWhite, ACenter, clBlack, 8, 20);
     Celtitulo(linha2, ColunaP,'Importador', clWhite, ACenter, clBlack, 8, 20);
     Celtitulo(linha2, ColunaP,'Fatura', clWhite, ACenter, clBlack, 8, 20);
     Celtitulo(linha2, ColunaP,'Pág/Seq', clWhite, ACenter, clBlack, 8, 6);
     Celtitulo(linha2, ColunaP,'Part.Number', clWhite, ACenter, clBlack, 8, 20);
     Celtitulo(linha2, ColunaP,'Adição', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Descrição Produto', clWhite, ACenter, clBlack, 8, 30);
     Celtitulo(linha2, ColunaP,'Descrição Produto Inglês', clWhite, ACenter, clBlack, 8, 30);
     Celtitulo(linha2, ColunaP,'Fabricante', clWhite, ACenter, clBlack, 8, 20);
     Celtitulo(linha2, ColunaP,'NCM', clWhite, ACenter, clBlack, 8, 7);
     Celtitulo(linha2, ColunaP,'Destaq', clWhite, ACenter, clBlack, 8, 5);
     Celtitulo(linha2, ColunaP,'PO', clWhite, ACenter, clBlack, 8, 7);

     Celtitulo(linha2, ColunaP,'Quant.', clWhite, ACenter, clBlack, 8, 5);
     Celtitulo(linha2, ColunaP,'Val.Unitário', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Val.Total', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Peso Unitário', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Peso Total', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Peso Unit. Acertado', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Peso Tot. Acertado', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Rateio Frete Prepaid', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Taxa Siscomex', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Taxa Conversão', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'FOB TOTAL(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'CIF TOTAL(R$)', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Alíq.II', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.IPI', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.PIS', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.COFINS', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.ICMS', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, ColunaP,'Alíq.FECP', clWhite, ACenter, clBlack, 8, 10);

     Celtitulo(linha2, ColunaP,'Valor II(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor IPI(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor PIS(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor COFINS(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor ICMS(R$)', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Valor FECP(R$)', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Valor Total', clWhite, ACenter, clBlack, 8, 15);

     Celtitulo(linha2, ColunaP,'Base ICMS', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Acrésc. ICMS', clWhite, ACenter, clBlack, 8, 15);
     Celtitulo(linha2, ColunaP,'Data Registro', clWhite, ACenter, clBlack, 8, 15);




     osprocessos2 := '';
     q_plafat2.close;

     q_plafat2.sql.clear;
     q_plafat2.sql.add('SELECT Importadores.Razao_Social, Processos.Local_Inventario,itf.Processo,itf.Fatura,cast([Pagina] as real) AS Pag, cast([itf].[Sequencial] as real) AS Seq, itf.Produto,cast([Descricao_Produto] as varchar(5000)) AS [desc], ');
     q_plafat2.sql.add('Fabricantes_Produtores.Razao_Social AS Fabricante, itf.NCM,itf.Unidade,itf.Unidade_Medida_Estat, ');
     q_plafat2.sql.add('itf.Destaque_NCM,itf.NALADI,itf.Referencia,itf.Numero_serie,itf.Referencia_projeto,itf.PO,itf.Seqpo,itf.Quantidade,itf.Valor_Unitario,itf.Valor_Total,itf.Peso_Unitario,itf.Peso_Unitario_Acertado,itf.Peso_Total,');
     q_plafat2.sql.add('itf.Peso_Total_Acertado, cast([Descricao_Produto_ing] as varchar(5000)) AS desci, itf.Rateio_Acrescimos, itf.Rateio_Deducoes, itf.Rateio_Embalagem, itf.Rateio_Frete_Interno_imp, itf.Rateio_Seguro_Interno, itf.Rateio_outras_import, itf.Rateio_startup, ');
     q_plafat2.sql.add('itf.Rateio_jurosfin, itf.Rateio_montagem, itf.Rateio_Frete_Interno_exp, itf.Rateio_carga_exp, itf.Rateio_outras_export, itf.Rateio_frete_fatura, itf.Rateio_seguro_fatura, itf.Rateio_carga_imp, itf.Rateio_Despesas_ate_FOB, itf.Rateio_Frete_prepaid, ');
     q_plafat2.sql.add('itf.Rateio_Frete_collect, itf.Rateio_Frete_ternac, itf.Rateio_Seguro, itf.Valor_Aduaneiro, itf.Valor_mercadoria, (itf.VMLE-itf.Acresc_reduc_Valaduan) as VMLE, ptc.Taxa_conversao, Processos_ADICOES_ICMS_PIS_COFINS.VA, Processos_ADICOES_ICMS_PIS_COFINS.OT, ');
     q_plafat2.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.DA, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_COFINS, ');
     q_plafat2.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_ICMS_EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_PISCOFINS, Processos_ADICOES_ICMS_PIS_COFINS.BASEC_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_II, ');
     q_plafat2.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.VALOR_IPI, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_ICMS_EXTRA, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_PIS_PASEP, Processos_ADICOES_ICMS_PIS_COFINS.VALOR_COFINS, ');
     q_plafat2.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.Prazo_permanencia, Processos_ADICOES_ICMS_PIS_COFINS.VA_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_II_proporcional, Processos_ADICOES_ICMS_PIS_COFINS.Aliq_NCM_IPI_proporcional, ');
     q_plafat2.sql.add('Processos_ADICOES_ICMS_PIS_COFINS.FOB, Tributacao_Item_Fatura.Adicao,  ');
     q_plafat2.sql.add('([ITF].[Base_Calc_II]*[PTC].[taxa_conversao]) AS VA_NEW, SUBSTRING(DT_REGISTRO_DI,1,2)+"/"+SUBSTRING(DT_REGISTRO_DI,3,2)+"/"+SUBSTRING(DT_REGISTRO_DI,5,4) as nova_data, itf.Rateio_Acresc_ICMS ');
     q_plafat2.sql.add('FROM ((((((ItensFaturas AS itf LEFT JOIN Fabricantes_Produtores ON itf.Fabricante = Fabricantes_Produtores.Codigo) INNER JOIN Tributacao_Item_Fatura ON (itf.Sequencial = Tributacao_Item_Fatura.Sequencial_Item) ');
     q_plafat2.sql.add('AND (itf.Fatura = Tributacao_Item_Fatura.Fatura) AND (itf.Processo = Tributacao_Item_Fatura.Processo)) INNER JOIN Processos_ADICOES_ICMS_PIS_COFINS ON (Tributacao_Item_Fatura.Adicao = Processos_ADICOES_ICMS_PIS_COFINS.Adicao) ');
     q_plafat2.sql.add('AND (Tributacao_Item_Fatura.Processo = Processos_ADICOES_ICMS_PIS_COFINS.Processo)) INNER JOIN Processos ON itf.Processo = Processos.Codigo) INNER JOIN Faturas ON (itf.Fatura = Faturas.Codigo) AND (itf.Processo = Faturas.Processo)) ');
     q_plafat2.sql.add('INNER JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Moeda = ptc.Moeda) AND (Faturas.Processo = ptc.Processo)) INNER JOIN Conhecimento_Processo ON Processos.Codigo = Conhecimento_Processo.Processo ');
     q_plafat2.sql.add(' INNER JOIN Importadores ON Importadores.Codigo = Processos.Importador ' );
     q_plafat2.sql.add('WHERE [Pagina] <> "XXX"  AND [itf].[Sequencial] <> "XXX" AND Processos.Importador in ("252","265") ' );
     q_plafat2.sql.add('and processos.DT_DESEMBARACO BETWEEN cast("01/'+nMes+'/2013" as datetime) AND cast("31/'+nMes+'/2013" as datetime) ' );
     q_plafat2.sql.add('and Processos.Local_Inventario = "'+qLocalLocal.AsString+'" ' );
     q_plafat2.sql.add('and Processos.Tipo_Declaracao = "01" ' );
     //q_plafat2.sql.add('and Processos.codigo = "09080/13" ' );
     q_plafat2.sql.add('ORDER BY Processos.codigo, Tributacao_Item_Fatura.Adicao ');


     q_plafat2.open;

     if  q_plafat2.RecordCount = 0 then begin
        showmessage('Não existe processos!');
        Excel.Quit;
        Excel := unassigned;
        exit;
     end;



     vfat:=q_plafat2fatura.asstring;


     vtotal17 := '';
     vtotal19 := '';
     vtotal21 := '';
     vtotal22 := '';
     vtotal23 := '';
     vtotal24 := '';
     vtotal25 := '';
     vtotal26 := '';

     vtotal32 := '';
     vtotal33 := '';
     vtotal34 := '';
     vtotal35 := '';
     vtotal36 := '';
     vtotal37 := '';
     vtotal38 := '';
     vtotal39 := '';
     vtotal40 := '';

     numero_processo := q_plafat2Processo.AsString;


     while not q_plafat2.eof do begin

        q_total_produtos.Params[0].asstring   := q_plafat2Processo.AsString ;
        q_total_produtos.open;
        valor_total_produtos := q_total_produtosValor_Total.AsFloat;
        q_total_produtos.close;

        q_total_taxa_siscomex.Params[0].asstring   := q_plafat2Processo.AsString ;
        q_total_taxa_siscomex.open;
        valor_total_taxa_siscomex := q_total_taxa_siscomextotal_taxa.AsFloat;
        q_total_taxa_siscomex.close;

        valor_total_prod_taxsis := valor_total_produtos + valor_total_taxa_siscomex;
        constante :=  valor_total_prod_taxsis / valor_total_produtos;

        if processo_acres_ataereo <>  q_plafat2Processo.AsString then begin


                q_Acresc_ATAereo.Params[0].asstring   := q_plafat2Processo.AsString ;
                q_Acresc_ATAereo.open;
                if q_Acresc_ATAereo.RecordCount > 0 then begin
                        total_acres_ataereo := q_Acresc_ATAereovalor.AsFloat;

                        q_VA_sum.Params[0].asstring   := q_plafat2Processo.AsString ;
                        q_VA_sum.open;

                        const_acres_ataereo := total_acres_ataereo / q_VA_sumCOLUMN1.AsFloat;
                        q_VA_sum.close;
                end else begin
                        total_acres_ataereo := 0;
                        const_acres_ataereo := 0;
                end;
                q_Acresc_ATAereo.close;
                processo_acres_ataereo := q_plafat2Processo.AsString
        end;

        linha2 := linha2+1;
        ColunaP:=1;

        if numero_processo <> q_plafat2Processo.AsString then begin
                CelDetalhe(linha2, 35,'Subtotal ICMS', clyellow, ALEFT, clNavy, 8, 20);
                CelDetalheVALOR(linha2, 36,sub_total_icms, clWhite, ARIGHT, clNavy, 8, 20);
                sub_total_icms:=0;
                Excel.Cells.Range['A'+inttostr(linha2),'AH'+inttostr(linha2)].Merge;
                for colunas := 1 to 40 do begin
                        Excel.cells[linha2, colunas].interior.Color := clyellow;
                        Excel.Cells[linha2, colunas].Font.Bold := True;
                        Excel.Cells[linha2, colunas].Font.Color := clNavy;
                end;
                linha2 := linha2+1;
                ColunaP:=1;
                numero_processo := q_plafat2Processo.AsString;
        end;

         CelDetalhe(linha2, ColunaP,q_plafat2Processo.asstring, clWhite, ALEFT, clNavy, 8, 20);

         CelDetalhe(linha2, ColunaP,q_plafat2Razao_Social.asstring, clWhite, ALEFT, clNavy, 8, 20);

         CelDetalhe(linha2, ColunaP,q_plafat2fatura.asstring, clWhite, ALEFT, clNavy, 8, 20);
         CelDetalhe(linha2, ColunaP,''''+q_plafat2pag.asstring+'/'+q_plafat2seq.asstring, clWhite, ACENTER, clNavy, 8, 6);
         CelDetalhe(linha2, ColunaP,''''+q_plafat2produto.asstring, clWhite, ALEFT, clNavy, 8, 20);
         CelDetalhe(linha2, ColunaP,q_plafat2Adicao.asstring, clWhite, ALEFT, clNavy, 8, 6);
         CelDetalhe(linha2, ColunaP,q_plafat2desc.asstring, clWhite, ALEFT, clNavy, 8, 30);
         CelDetalhe(linha2, ColunaP,q_plafat2desci.asstring, clWhite, ALEFT, clNavy, 8, 30);
         CelDetalhe(linha2, ColunaP,q_plafat2fabricante.asstring, clWhite, ALEFT, clNavy, 8, 20);
         CelDetalhe(linha2, ColunaP,q_plafat2ncm.asstring, clWhite, ALEFT, clNavy, 8, 7);
         CelDetalhe(linha2, ColunaP,q_plafat2destaque_ncm.asstring, clWhite, ACENTER, clNavy, 8, 5);
         CelDetalhe(linha2, ColunaP,q_plafat2po.asstring, clWhite, ALEFT, clNavy, 8, 7);


         CelDetalheVALOR(linha2, ColunaP,q_plafat2quantidade.asfloat, clWhite, ARIGHT, clNavy, 8, 5);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2valor_unitario.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2valor_total.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2peso_unitario.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2peso_total.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2peso_unitario_acertado.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2peso_total_acertado.asfloat, clWhite, ARIGHT, clNavy, 8, 15);

         CelDetalheVALOR(linha2, ColunaP,q_plafat2rateio_frete_prepaid.asfloat*q_plafat2quantidade.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafat2valor_total.asfloat*constante)-q_plafat2valor_total.asfloat, clWhite, ARIGHT, clNavy, 8, 15);

         CelDetalheVALOR(linha2, ColunaP,q_plafat2taxa_conversao.asfloat, clWhite, ARIGHT, clNavy, 8, 15);
         Excel.Cells[linha2,colunap-1].NumberFormatLocal := '#.##0,00000';
         CelDetalheVALOR(linha2, ColunaP,(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,((q_plafat2vmle.asfloat+((q_plafat2rateio_frete_prepaid.asfloat+q_plafat2rateio_frete_collect.asfloat)-q_plafat2rateio_frete_ternac.asfloat)*q_plafat2quantidade.asfloat))*q_plafat2taxa_conversao.asfloat, clWhite, ARIGHT, clNavy, 8, 15);

         CelDetalheVALOR(linha2, ColunaP,q_plafat2aliq_ncm_ii.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2aliq_ncm_ipi.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2aliq_pis_pasep.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2aliq_cofins.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2aliq_icms.asfloat, clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP,q_plafat2aliq_icms_extra.asfloat, clWhite, ACENTER, clNavy, 8, 10);

         aliq_ICMS := 0;
         aliq_IPI := 0;
         aliq_II := 0;
         aliq_PIS := 0;
         aliq_CONFINS := 0;
         temp_va := 0;
         tempii := 0;
         temp_ipi := 0;
         temp_tx := 0;
         temp_confis := 0;
         temp_pis := 0;
         dif_icms := 0;
         aliq_ICMS := 0;
         aliq_IPI := 0;
         aliq_II := 0;
         aliq_PIS := 0;
         aliq_CONFINS := 0;
         base_calculo_icms := 0;
         aliq_ICMS_valor := 0;
         valor_icms := 0;
         const_pis1 := 0;
         const_pis2 := 0;
         const_pis3 :=  0;

         temp_va := q_plafat2VA_NEW.AsFloat;
//         temp_va := (q_plafat2VA_NEW.AsFloat + q_plafat2Rateio_Acrescimos.AsFloat);;
         tempii := (q_plafat2valor_ii.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat);
         temp_ipi := (q_plafat2valor_ipi.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat);
         temp_tx := (q_plafat2valor_total.asfloat*constante)-q_plafat2valor_total.asfloat;
         temp_confis := (q_plafat2valor_cofins.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat);
         temp_pis := (q_plafat2valor_pis_pasep.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat);
         dif_icms := ((100-(q_plafat2Aliq_ICMS.AsFloat+q_plafat2Aliq_ICMS_EXTRA.AsFloat))/100);

         base_calculo_icms := (temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms;

         aliq_ICMS_valor := (q_plafat2Aliq_ICMS.AsFloat)/100;
         valor_icms := base_calculo_icms *  aliq_ICMS_valor;
         sub_total_icms := sub_total_icms +  valor_icms;

         CelDetalheVALOR(linha2, ColunaP,(q_plafat2valor_ii.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafat2valor_ipi.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafat2valor_pis_pasep.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafat2valor_cofins.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);

         CelDetalheVALOR(linha2, ColunaP, valor_icms, clWhite, ARIGHT, clNavy, 8, 15);
         CelDetalheVALOR(linha2, ColunaP,(q_plafat2valor_icms_extra.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat), clWhite, ARIGHT, clNavy, 8, 15);
         sub_total_icms := sub_total_icms +  (q_plafat2valor_icms_extra.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat);

         const_pis1 := (1+(aliq_ICMS)*(aliq_II+aliq_IPI*(1+aliq_II)));
         const_pis2 := (1-aliq_PIS-aliq_CONFINS)*(1-(aliq_ICMS));
         const_pis3 :=  const_pis1 / const_pis2;


         CelDetalheVALOR(linha2, ColunaP, ((q_plafat2valor_ii.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat))+((q_plafat2valor_ipi.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat))+((q_plafat2valor_pis_pasep.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat))+((q_plafat2valor_cofins.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat))+(valor_icms)+((q_plafat2valor_icms_extra.asfloat/q_plafat2fob.asfloat)*(q_plafat2vmle.asfloat*q_plafat2taxa_conversao.asfloat)), clWhite, ACENTER, clNavy, 8, 10);
         CelDetalheVALOR(linha2, ColunaP, base_calculo_icms, clWhite, ACENTER, clNavy, 8, 10);
         if  total_acres_ataereo > 0 then begin
             CelDetalheVALOR(linha2, ColunaP, temp_va * const_acres_ataereo, clWhite, ACENTER, clNavy, 8, 10);
         end else begin
             CelDetalheVALOR(linha2, ColunaP, q_plafat2Rateio_Acresc_ICMS.AsFloat, clWhite, ACENTER, clNavy, 8, 10);
         end;       
         CelDetalhe(linha2, ColunaP,q_plafat2nova_data.asstring, clWhite, ALEFT, clNavy, 8, 20);

         q_plafat2.Next;

     end;

     linha2 := linha2+1;
     ColunaP:=1;

     CelDetalhe(linha2, 35,'Subtotal ICMS', clyellow, ALEFT, clNavy, 8, 20);
     CelDetalheVALOR(linha2, 36,sub_total_icms, clWhite, ARIGHT, clNavy, 8, 20);
     sub_total_icms:=0;
     Excel.Cells.Range['A'+inttostr(linha2),'AH'+inttostr(linha2)].Merge;
     for colunas := 1 to 40 do begin
        Excel.cells[linha2, colunas].interior.Color := clyellow;
        Excel.Cells[linha2, colunas].Font.Bold := True;
        Excel.Cells[linha2, colunas].Font.Color := clNavy;
     end;


     Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace('Mês ' + nMes + ' - '+ qLocalLocal.Value +' - '+ qLocalDescricao.AsString,'/','_', [rfReplaceAll]) + ' - Itens de Processo.xlsx' );
     Application.ProcessMessages;

     Excel.Quit;
     Excel := unassigned;

     showmessage(v_usuario+', a planilha foi  gerada no diretório C:\MS2000\PLANILHAS_MS2000!');

end;  





end.
