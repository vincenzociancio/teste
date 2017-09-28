unit uNotaFiscalEletronicaExportacao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, ExtCtrls, StdCtrls, Mask, Buttons, Db, DBTables, Grids, DBGrids, ChkDgVer;

type TEmitente = class
  private
    fCNPJ: String;
    fRazao: String;
    fMunicipio: String;
    fIE: String;
    fEndereco: String;
    fComplemento: String;
    fNumero: String;
    fBairro: String;
    fFantasia: String;
    fCEP: String;
    fUF: String;
    fImportador: String;
  public
    property CNPJ : String read fCNPJ write fCNPJ;
    property Razao : String read fRazao write fRazao;
    property Fantasia : String read fFantasia write fFantasia;
    property IE : String read fIE write fIE;
    property Endereco : String read fEndereco write fEndereco;
    property Numero : String read fNumero write fNumero;
    property Complemento : String read fComplemento write fComplemento;
    property Bairro : String read fBairro write fBairro;
    property Municipio : String read fMunicipio write fMunicipio;
    property UF : String read fUF write fUF;
    property CEP : String read fCEP write fCEP;
    property Importador : String read fImportador write fImportador;
    function BuscarEmitente( Processo : String ): Boolean;
    Constructor Create;
    Destructor Destroy; override;
end;

type
  TfrmNotaFiscalEE = class(TForm)
    StatusBar1: TStatusBar;
    tituloEmitente: TStaticText;
    pnlFiltro: TPanel;
    edtProcesso: TMaskEdit;
    btnBuscar: TBitBtn;
    Label1: TLabel;
    pnlDadosEmitente: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtEmitente_CNPJ: TEdit;
    edtEmitente_RazaoSocial: TEdit;
    edtEmitente_NomeFantasia: TEdit;
    edtEmitente_IE: TEdit;
    Label12: TLabel;
    edtEmitente_Endereco: TEdit;
    edtEmitente_Numero: TEdit;
    edtEmitente_Complemento: TEdit;
    edtEmitente_Bairro: TEdit;
    edtEmitente_Municipio: TEdit;
    edtEmitente_CEP: TEdit;
    StaticText1: TStaticText;
    Panel1: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label23: TLabel;
    edtDestinatario_CNPJ: TEdit;
    edtDestinatario_Nome: TEdit;
    edtDestinatario_IE: TEdit;
    edtDestinatario_Endereco: TEdit;
    edtDestinatario_Numero: TEdit;
    edtDestinatario_Complemento: TEdit;
    edtDestinatario_Bairro: TEdit;
    edtDestinatario_Municipio: TEdit;
    edtDestinatario_UF: TComboBox;
    pnlGerar: TPanel;
    btnGerar: TBitBtn;
    mmTXT: TMemo;
    Label13: TLabel;
    Label22: TLabel;
    edtCFOP: TEdit;
    edtInformacaoAdicionais: TEdit;
    qryEmitente: TQuery;
    qryEmitenteCNPJ_CPF_COMPLETO: TStringField;
    qryEmitenteRazao_Social: TStringField;
    qryEmitenteInscricao_Estadual: TStringField;
    qryEmitenteEndereco: TStringField;
    qryEmitenteNumero: TStringField;
    qryEmitenteComplemento: TStringField;
    qryEmitenteBairro: TStringField;
    qryEmitenteCidade: TStringField;
    qryEmitenteUF: TStringField;
    qryEmitenteCEP: TStringField;
    btnFechar: TBitBtn;
    GroupBox1: TGroupBox;
    gridAdicao: TDBGrid;
    dtsAdicao: TDataSource;
    q_plafat: TQuery;
    q_plafatI_xProd: TStringField;
    q_plafatI_NCM: TStringField;
    q_plafatI_uCom: TStringField;
    q_plafatI_qCom: TFloatField;
    q_plafatI_vUnCom: TFloatField;
    q_plafatI_vProd: TFloatField;
    q_plafatI25_nAdicao: TStringField;
    q_plafatI25_nSeqAdic: TSmallintField;
    q_plafatProcesso: TStringField;
    q_plafatFatura: TStringField;
    q_plafatPag: TFloatField;
    q_plafatSeq: TFloatField;
    q_plafatProduto: TStringField;
    q_plafatFabricante: TStringField;
    q_plafatUnidade: TStringField;
    q_plafatUnidade_Medida_Estat: TStringField;
    q_plafatDestaque_NCM: TStringField;
    q_plafatNALADI: TStringField;
    q_plafatReferencia: TStringField;
    q_plafatNumero_serie: TStringField;
    q_plafatReferencia_projeto: TStringField;
    q_plafatPO: TStringField;
    q_plafatSeqpo: TStringField;
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
    q_DI: TQuery;
    q_DINR_DECLARACAO_IMP: TStringField;
    q_DINR_DECLARACAO_IMPC: TStringField;
    q_DIDT_REGISTRO_DI: TStringField;
    q_DIDT_REGISTRO_DIC: TStringField;
    q_DIDT_DESEMBARACO: TStringField;
    q_DIDT_DESEMBARACOC: TStringField;
    q_LocalDesemb: TQuery;
    q_LocalDesembI18_xLocDesemb: TStringField;
    edtEmitente_UF: TEdit;
    SD: TSaveDialog;
    btnSalvar: TBitBtn;
    q_plafatFRENTE: TFloatField;
    q_plafatValor_Total: TFloatField;
    q_total_taxa_siscomex: TQuery;
    q_total_taxa_siscomextotal_taxa: TFloatField;
    q_total_produtos: TQuery;
    q_total_produtosValor_Total: TFloatField;
    Bevel1: TBevel;
    Label24: TLabel;
    lblTotalBaseCalculo: TLabel;
    lblTotalProdutos: TLabel;
    lblTotalII: TLabel;
    lblTotalOutrasDesp: TLabel;
    lblTotalFrete: TLabel;
    lblTotalIPI: TLabel;
    lblPIS: TLabel;
    lblTotalCOFINS: TLabel;
    lblTotalICMS: TLabel;
    edtTipoDeclaracao: TComboBox;
    Label25: TLabel;
    edtAliqProporcional: TEdit;
    Label26: TLabel;
    lblTotalSeguro: TLabel;
    qryEmitenteCodigo: TStringField;
    procedure btnBuscarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnGerarClick(Sender: TObject);
    procedure edtTipoDeclaracaoChange(Sender: TObject);
    procedure edtDestinatario_CNPJExit(Sender: TObject);
    procedure edtEmitente_CNPJExit(Sender: TObject);
    procedure edtDestinatario_IEExit(Sender: TObject);
  private
    { Private declarations }
    function TrocarVirgula( valor : double ): String; overload;
    function TrocarVirgula( valor : String ): String; overload;
    function Rpl( valor : String ): String;
    Function FIF( Condicao : Boolean; ResultIfTrue, ResultIfFalse : String ) : String; overload;
    Function FIF( Condicao : Boolean; ResultIfTrue, ResultIfFalse : Integer ) : Integer; overload;
    Function FIF( Condicao : Boolean; ResultIfTrue, ResultIfFalse : Extended ) : Extended; overload;
    Function FIF( Condicao : Boolean; ResultIfTrue, ResultIfFalse : Boolean ) : Boolean; overload;
    function ValidaCNPJ(numCNPJ: string): boolean;

  public
    { Public declarations }
  end;
var
  frmNotaFiscalEE: TfrmNotaFiscalEE;
  Emitente : TEmitente;

  const_pis1, const_pis2, const_pis3, base_calculo_icms, base_calculo_icms_pobre : real;
  aliq_ICMS, aliq_IPI, aliq_II, aliq_PIS, aliq_CONFINS, dif_icms, dif_icms_pobre : real;
  constante : real;
  temp_va, tempii, temp_ipi, temp_tx, temp_pis, temp_confis : real;
  valor_icms, valor_icms_pobre, aliq_ICMS_valor : real;
  total_base_calculo_icms, total_valor_icms, total_valor_icms_pobre, total_base_calculo_icms_pobre : real;
  total_valor_produto, total_valor_II, total_valor_ipi, total_valor_pis, total_valor_confis, total_valor_frete, total_outras_desp_acessorias, total_valor_seguro : real;

  {*** eduardo.souza ***}
  valor_total_taxa_siscomex,
  valor_total_prod_taxsis,
  valor_total_produtos : double;
  vImportador : String;
implementation

uses U_MSCOMEX;

{$R *.DFM}




function TfrmNotaFiscalEE.ValidaCNPJ(numCNPJ: string): boolean;
var
   n1,n2,n3,n4,n5,n6,n7,n8,n9,n10,n11,n12: integer;
   d1,d2: integer;
   digitado, calculado: string;
begin
 Try
   n1:=StrToInt(numCNPJ[1]);
   n2:=StrToInt(numCNPJ[2]);
   n3:=StrToInt(numCNPJ[3]);
   n4:=StrToInt(numCNPJ[4]);
   n5:=StrToInt(numCNPJ[5]);
   n6:=StrToInt(numCNPJ[6]);
   n7:=StrToInt(numCNPJ[7]);
   n8:=StrToInt(numCNPJ[8]);
   n9:=StrToInt(numCNPJ[9]);
   n10:=StrToInt(numCNPJ[10]);
   n11:=StrToInt(numCNPJ[11]);
   n12:=StrToInt(numCNPJ[12]);
   d1:=n12*2+n11*3+n10*4+n9*5+n8*6+n7*7+n6*8+n5*9+n4*2+n3*3+n2*4+n1*5;
   d1:=11-(d1 mod 11);
   if d1>=10 then d1:=0;

   d2:=d1*2+n12*3+n11*4+n10*5+n9*6+n8*7+n7*8+n6*9+n5*2+n4*3+n3*4+n2*5+n1*6;
   d2:=11-(d2 mod 11);
   if d2>=10 then d2:=0;
   calculado:=inttostr(d1)+inttostr(d2);
   digitado:=numCNPJ[13]+numCNPJ[14];
   if calculado=digitado then  ValidaCNPJ:=true;

 Except
   On E: Exception Do
           showmessage('Quantidade de dígitos do CNPJ está errado, informe somente números.')
 End;


end;

Function TfrmNotaFiscalEE.FIF( Condicao : Boolean; ResultIfTrue, ResultIfFalse : String ) : String;
Begin
  If ( Condicao ) Then
    Result := ResultIfTrue
  Else
    Result := ResultIfFalse;
End;

Function TfrmNotaFiscalEE.FIF( Condicao : Boolean; ResultIfTrue, ResultIfFalse : Integer ) : Integer;
Begin
  If ( Condicao ) Then
    Result := ResultIfTrue
  Else
    Result := ResultIfFalse;
End;

Function TfrmNotaFiscalEE.FIF( Condicao : Boolean; ResultIfTrue, ResultIfFalse : Extended ) : Extended;
Begin
  If ( Condicao ) Then
    Result := ResultIfTrue
  Else
    Result := ResultIfFalse;
End;

Function TfrmNotaFiscalEE.FIF( Condicao : Boolean; ResultIfTrue, ResultIfFalse : Boolean ) : Boolean;
Begin
  If ( Condicao ) Then
    Result := ResultIfTrue
  Else
    Result := ResultIfFalse;
End;


procedure ClearField ( Form : TForm );
var i : Integer;
begin
  for i := 0 to Form.ComponentCount -1 do begin
    if ( Form.Components[i] is TEdit ) then
      if (TEdit(Form.Components[i]).Name <> 'edtProcesso') then
       TEdit(Form.Components[i]).Text:=''
    else if Form.Components[i] is TMaskEdit then
       TMaskEdit(Form.Components[i]).Text:=''
    else if Form.Components[i] is TComboBox then
       TComboBox(Form.Components[i]).Text:='';
  end;
end;

procedure TfrmNotaFiscalEE.btnBuscarClick(Sender: TObject);
  var
    Gerar : Boolean;
begin
  btnSalvar.Enabled := false;
  mmTXT.Lines.Clear;
  If Length(F_MSCOMEX.LRTrim( edtProcesso.Text ) ) >= 8 Then Begin
      Emitente := TEmitente.Create;
    If ( Not Emitente.BuscarEmitente(edtProcesso.Text) ) Then
      Application.MessageBox('Processo não foi localizado.', 'Informação',  MB_OK + MB_ICONINFORMATION)
    Else Begin
      q_plafat.ParamByName('Processo').Value := edtProcesso.Text;
      q_plafat.Close;
      q_plafat.Open;

      Gerar := Not(q_plafat.IsEmpty);

      q_DI.ParamByName('Processo').Value := edtProcesso.Text;
      q_DI.Close;
      q_DI.Open;

      Gerar := Gerar
              and Not(q_DI.IsEmpty);

      {*** ZERANDO VARIVEIS ***}
      valor_total_produtos := 0;
      valor_total_taxa_siscomex := 0;
      constante := 0;
      valor_total_prod_taxsis := 0;
      {*** ***}
      q_total_produtos.Params[0].asstring := edtProcesso.text;
      q_total_produtos.open;
      valor_total_produtos := q_total_produtosValor_Total.AsFloat;
      q_total_produtos.close;

      q_total_taxa_siscomex.Params[0].asstring := edtProcesso.text;
      q_total_taxa_siscomex.open;
      valor_total_taxa_siscomex := q_total_taxa_siscomextotal_taxa.AsFloat;
      q_total_taxa_siscomex.close;

      valor_total_prod_taxsis := valor_total_produtos + valor_total_taxa_siscomex;
      constante :=  valor_total_prod_taxsis / valor_total_produtos;

      btnGerar.Enabled := Gerar;

      q_LocalDesemb.ParamByName('Processo').Value := edtProcesso.Text;
      q_LocalDesemb.Close;
      q_LocalDesemb.Open;
    End;
    {*** Clear fields ***}
    ClearField( frmNotaFiscalEE );
    {*** ATRIBUINDO TOTAIS NO LABEL ***}
    lblTotalBaseCalculo.Caption := 'Total base de cáculo:  ';
    lblTotalProdutos.Caption := 'Total dos produtos:  ';
    lblTotalII.Caption := 'Total do II:  ';
    lblTotalOutrasDesp.Caption := 'Total Outras desp. acessórias:  ';
    lblTotalFrete.Caption := 'Total do Frete:  ';
    lblTotalIPI.Caption := 'Total do IPI:  ';
    lblPIS.Caption := 'Total do PIS:  ';
    lblTotalCOFINS.Caption := 'Total do COFINS:  ';
    lblTotalICMS.Caption := 'Total do ICMS:  ';
    lblTotalSeguro.Caption := 'Total do Seguro: ';
    {*** ***}
    edtEmitente_CNPJ.Text := Emitente.CNPJ;
    edtEmitente_RazaoSocial.Text := Emitente.Razao;
    edtEmitente_NomeFantasia.Text := Emitente.Fantasia;
    edtEmitente_IE.Text := Emitente.IE;
    edtEmitente_Endereco.Text := Emitente.Endereco;
    edtEmitente_Numero.Text := Emitente.Numero;
    edtEmitente_Complemento.Text := Emitente.Complemento;
    edtEmitente_Bairro.Text := Emitente.Bairro;
    edtEmitente_Municipio.Text := Emitente.Municipio;
    edtEmitente_UF.Text := Emitente.UF;
    edtEmitente_CEP.Text := Emitente.CEP;
  End;
end;

{ TEmitente }
function TEmitente.BuscarEmitente(Processo: String): Boolean;
  var
    GoOn : Boolean;
begin
  With frmNotaFiscalEE do Begin
    try
      try
        qryEmitente.ParamByName('Processo').Value := Processo;
        qryEmitente.Open;
        If ( qryEmitente.IsEmpty ) Then
          GoOn := False
        Else
          GoOn := True;
      except
        GoOn := False;
      end;
    finally
      If ( GoOn ) Then Begin
        CNPJ := qryEmitenteCNPJ_CPF_COMPLETO.AsString;
        Razao := qryEmitenteRazao_Social.AsString;
        Fantasia := qryEmitenteRazao_Social.AsString;
        IE := StringReplace(qryEmitenteInscricao_Estadual.AsString, '.', '', [rfreplaceall]);
        Endereco := qryEmitenteEndereco.AsString;
        Numero := qryEmitenteNumero.AsString;
        Complemento := qryEmitenteComplemento.AsString;
        Bairro := qryEmitenteBairro.AsString;
        Municipio := qryEmitenteCidade.AsString;
        UF := qryEmitenteUF.AsString;
        CEP := StringReplace(qryEmitenteCEP.AsString, '-', '', [rfreplaceall]);;
        Importador := qryEmitenteCodigo.value;
        vImportador := Importador;
      End
      Else Begin
        CNPJ := '';
        Razao := '';
        Fantasia := '';
        IE := '';
        Endereco := '';
        Numero := '';
        Complemento := '';
        Bairro := '';
        Municipio := '';
        UF := '';
        CEP := '';
      End;
      qryEmitente.Close;
      Result := GoOn;
    end;
  end;
end;

procedure TfrmNotaFiscalEE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  f_mscomex.NFe1.Enabled := True;
  frmNotaFiscalEE := Nil;
  Action := caFree;
end;

constructor TEmitente.Create;
begin
end;

destructor TEmitente.Destroy;
begin
  inherited;
end;

procedure TfrmNotaFiscalEE.btnSalvarClick(Sender: TObject);
begin
  If( SD.Execute )Then Begin
    Try
      mmTXT.Lines.SaveToFile( SD.FileName );
      Application.MessageBox(PChar('Arquivo foi salvo em: ' + SD.FileName ), 'Informação', MB_OK + MB_ICONINFORMATION);
    Except
      Application.MessageBox('Não foi possível salvar o arquivo', 'Erro', MB_OK + MB_ICONERROR);
    End;
  End;
end;

procedure TfrmNotaFiscalEE.btnGerarClick(Sender: TObject);
  var
    A_versao, A_Id : string;

    B_cUF, B_cNF, B_natOp, B_indPag, B_mod, B_serie, B_nNF, B_dEmi : string;
    B_dSaiEnt, B_hSaiEnt, B_tpNF, B_cMunFG, B_tpImp, B_tpEmis, B_cDV, B_tpAmb : string;
    B_finNFe, B_procEmi, B_verProc : string;

    C_xNome, C_xFant, C_IE, C_IEST, C_IM, C_CNAE, C_CRT, C02_CNPJ, C02a_CPF : string;
    C05_xLgr, C05_nro, C05_xCpl, C05_xBairro, C05_cMun, C05_xMun, C05_UF : string;
    C05_CEP, C05_cPais, C05_xPais, C05_fone : string;

    E_xNome, E_IE, E_ISUF, E_Email, E02_CNPJ, E03_CPF, E05_xLgr, E05_nro, E05_xCpl : string;
    E05_xBairro, E05_cMun, E05_xMun, E05_UF, E05_CEP, E05_cPais, E05_xPais, E05_fone : string;

    H_nItem, H_infAdProd : string;

    I_cProd, I_cEAN, I_xProd, I_NCM, I_EXTIPI, I_genero, I_CFOP, I_uCom : string;
    I_qCom, I_vUnCom, I_vProd, I_cEANTrib, I_uTrib, I_qTrib, I_vUnTrib : string;
    I_vFrete, I_vSeg, I_vDesc, I_vOutro, I_indTot, I_xPed, I_nItemPed : string;
    I18_nDI, I18_dDi, I18_xLocDesemb, I18_UFDesemb, I18_dDesemb, I18_cExportador : string;
    I25_nAdicao, I25_nSeqAdic, I25_cFabricante, I25_vDescDI : string;

    N02_orig, N02_CST, N02_modBC, N02_vBC, N02_pICMS, N02_vICMS : string;
    N06_orig, N06_CST : String;

    O_clEnq, O_CNPJProd, O_cSelo, O_qSelo, O_cEnq : string;
    O07_CST, O07_vIPI, O07_vBC, O07_pIPI, O07_vUnid, O07_qUnid : string;
    O08_CST : String;
    O10_vBC, O10_pIPI : string;

    P_vBC, P_vDespAdu, P_vII, P_IOF : string;

    Q02_CST, Q02_vPIS, Q02_vBC, Q02_pPIS: string;
    Q04_CST : String;

    S02_CST, S02_vCONFIS, S02_vBC, S02_pCONFIS : string;
    S04_CST : String;

    W02_vBC, W02_vICMS, W02_vBCST, W02_vST, W02_vProd, W02_vFrete, W02_vSeg, W02_vDesc, W02_vII, W02_vIPI : string;
    W02_vPIS, W02_vCONFINS, W02_vOutros, W02_vNF : string;

    X_modFrete, X03_xNome, X03_IE, X03_xEnder, X03_UF, X03_xMun, X04_CNPJ : string;
    X26_qVol, X26_esp, X26_marca, X26_nVol, X26_pesoL, X26_pesoB : string;

    Arquivo : textfile;
    Caminho, NomeArquivo : string;

    Cont : integer;
begin
  {*** VERIFICANDO TIPO DECLARAÇÃO ***}
  If( edtTipoDeclaracao.Text = '' )Then Begin
    Application.MessageBox('Selecione um tipo de declaração', 'Informação', MB_OK+MB_ICONINFORMATION);
    Abort;
  End;
  {*** VERIFICANDO CFOP ***}
  If( edtCFOP.Text = '' )Then Begin
    Application.MessageBox('Digite o CFOP', 'Informação', MB_OK+MB_ICONINFORMATION);
    Abort;
  End;

  {*** ZERANDO TOTALIZADORES ***}
  total_base_calculo_icms := 0;
  total_valor_icms := 0;
  total_valor_icms_pobre := 0;
  total_base_calculo_icms_pobre := 0;
  total_valor_produto := 0;
  total_valor_II := 0;
  total_valor_ipi := 0;
  total_valor_pis := 0;
  total_valor_confis := 0;
  total_valor_frete := 0;
  total_outras_desp_acessorias := 0;
  {*** ***}

  mmTXT.Clear;
  mmTXT.Lines.Add( 'NOTAFISCAL|1' );
  {Linha "A"}
  A_versao := '2.00|';
  A_Id := 'NFe|';
  mmTXT.Lines.Add( 'A|' + A_versao + A_Id );

  {Linha "B"}
  B_cUF := '33|'; //3304557 = rio de janeiro
  B_cNF := '|'; //Deixar em branco porque e importação
  B_natOp := 'IMPORTAÇÃO DE MERCADORIA|';
  B_indPag := '0|';
  B_mod := '55|';
  B_serie := '1|';
  B_nNF := '0|';  //????????
  B_dEmi := FormatDateTime('yyyy-mm-dd', date)+'|'; //???????? data do dia
  B_dSaiEnt := FormatDateTime('yyyy-mm-dd', date)+'|'; //????????
  B_hSaiEnt := FormatDateTime('hh:mm:ss', time)+'|';
  B_tpNF := '0|';// 0 - entrada 1- saida
  B_cMunFG := '3304557|';  //Código do município RJ
  B_tpImp := '1|';// 1 = retrato 2 = paisagem
  B_tpEmis := '1|';// 1 = normal 2 = contingência
  B_cDV := '|';//Deixar em branco porque e importação
  {----- Importante chave para envio para produção ou homologação -----------------------}
  B_tpAmb := '1|';// 1 = produção 2 = homologação
  B_finNFe := '1|';// 1 = normal 2 = complementar 3 = ajuste
  B_procEmi := '3|';// sempre utilizar 3 porque esta sendo utilizado Software Emissor
  B_verProc := '2.2.0|';
  mmTXT.Lines.Add(
    'B|'+
    B_cUF+
    B_cNF+
    B_natOp+
    B_indPag+
    B_mod+
    B_serie+
    B_nNF+
    B_dEmi+
    B_dSaiEnt+
    B_hSaiEnt+
    B_tpNF+
    B_cMunFG+
    B_tpImp+
    B_tpEmis+
    B_cDV+
    B_tpAmb+
    B_finNFe+
    B_procEmi+
    B_verProc+'||');

  { Linha "C" - Emitente}
  C_xNome := Emitente.Razao + '|';
  C_xFant := Emitente.Fantasia + '|';
  C_IE := Emitente.IE + '|';
  C_IEST := '|';
  C_IM := '|'; //C_IM
  C_CNAE := '|'; //C_CNAE
  C_CRT := '3|';
  mmTXT.Lines.Add(
    'C|' +
    C_xNome +
    C_xFant +
    C_IE +
    C_IEST +
    C_IM +
    C_CNAE +
    C_CRT );

  {Linha "C02" - Emitente}
  C02_CNPJ := Emitente.CNPJ + '|';
  mmTXT.Lines.Add(
    'C02|' +
    C02_CNPJ );

  {Linha "C05" - Emitente}
  C05_xLgr := Emitente.Endereco + '|';
  C05_nro := Emitente.Numero + '|';
  C05_xCpl := Emitente.Complemento + '|';
  C05_xBairro := Emitente.Bairro + '|';
  C05_cMun := '3304557|'; //Código do município RJ
  C05_xMun := Emitente.Municipio + '|';
  C05_UF := Emitente.UF + '|';
  C05_CEP := Emitente.CEP + '|';
  C05_cPais := '1058|';
  C05_xPais := 'BRASIL|';
  C05_fone := '|';

  mmTXT.Lines.Add(
    'C05|' +
    C05_xLgr +
    C05_nro +
    C05_xCpl +
    C05_xBairro +
    C05_cMun +
    C05_xMun +
    C05_UF +
    C05_CEP +
    C05_cPais +
    C05_xPais +
    C05_fone );

  {Linha "E" - Destinatário}
  E_xNome := edtDestinatario_Nome.Text + '|';
  E_IE := edtDestinatario_IE.text + '|';
  E_ISUF := '|';
  E_Email := '|';
  mmTXT.Lines.Add(
    'E|' +
    E_xNome +
    E_IE +
    E_ISUF +
    E_Email );

  {Linha "E02" - Destinatário}
  E02_CNPJ := edtDestinatario_CNPJ.text + '|';
  mmTXT.Lines.Add(
    'E02|' +
    E02_CNPJ );

  {Linha "E05" - Destinatário}
  E05_xLgr := edtDestinatario_Endereco.text + '|';
  E05_nro := edtDestinatario_Numero.text + '|';
  E05_xCpl := edtDestinatario_Complemento.text + '|';
  E05_xBairro := edtDestinatario_Bairro.text + '|';
  if ( edtDestinatario_UF.Text = 'EX' ) then
    E05_cMun := '9999999|' //"9999999" para operações com exteriores
  else
    E05_cMun := '3304557|'; //Código do município RJ
  E05_xMun := edtDestinatario_Municipio.text + '|'; //"EXTERIOR" para operações com exteriores
  E05_UF := edtDestinatario_UF.Text + '|';
  E05_CEP := '|';
  E05_cPais := '|';
  E05_xPais := '|';
  E05_fone := '|';

  mmTXT.Lines.Add(
    'E05|' +
    E05_xLgr +
    E05_nro +
    E05_xCpl +
    E05_xBairro +
    E05_cMun +
    E05_xMun +
    E05_UF +
    E05_CEP +
    E05_cPais +
    E05_xPais +
    E05_fone );

  Cont:= 1;
  q_plafat.First;
  While Not ( q_plafat.eof ) Do Begin
    {Linha "H" - Detalhamento de Produtos e Serviços}
    H_nItem := inttostr(Cont) + '|'; //contador para o numero de itens
    mmTXT.Lines.Add(
      'H|' +
      H_nItem );

    {Linha "I" - Produtos e Serviços}
    I_cProd := H_nItem;
    I_cEAN := '|'; //vazio
    I_xProd := StringReplace( q_plafatI_xProd.AsString, #13#10,' ',[rfreplaceall] ) + '|';
    I_NCM := q_plafatI_NCM.AsString + '|';
    I_EXTIPI := '|';//vazio
    I_genero := '|';//vazio
    I_CFOP := edtCFOP.Text + '|';
    I_uCom := copy(q_plafatI_uCom.AsString, 1, 2) + '|';
    I_qCom := q_plafatI_qCom.AsString + '|';
    I_vUnCom := FormatFloat('0.00', q_plafatI_vUnCom.AsFloat ) + '|';
    I_vProd := FormatFloat('0.00', q_plafatI_vProd.AsFloat ) + '|';
    I_cEANTrib := '|';//vazio
    I_uTrib := I_uCom;// repetir  I_uCom
    I_qTrib := I_qCom;// repetir  I_qCom
    I_vUnTrib := I_vUnCom;// repetir  I_vUnCom
    I_vFrete := FormatFloat('0.00', q_plafatFRENTE.AsFloat ) + '|';
    I_vSeg := FormatFloat('0.00', q_plafatrateio_seguro.asfloat * q_plafatI_qCom.asfloat) + '|';
    I_vDesc := '|';//vazio
    I_vOutro := '|';//vazio
    I_indTot := '1|';//vazio
    I_xPed := '|';//vazio
    I_nItemPed := '|';//vazio

    mmTXT.Lines.Add(
      'I|'+
      I_cProd+
      I_cEAN+
      I_xProd+
      I_NCM+
      I_EXTIPI+
      //I_genero+ // não existe atualmente
      I_CFOP+
      I_uCom+
      I_qCom+
      TrocarVirgula( I_vUnCom )+
      TrocarVirgula( I_vProd )+
      I_cEANTrib+
      I_uTrib+
      I_qTrib+
      TrocarVirgula( I_vUnTrib )+
      TrocarVirgula( FIF(I_vFrete = '0,00|', '|', I_vFrete))+
      TrocarVirgula( FIF(I_vSeg = '0,00|', '|', I_vSeg))+
      I_vDesc+
      I_vOutro+
      I_indTot+
      I_xPed+
      I_nItemPed );

      {Linha "I18" - Declaração de Importação (DI)}
      If ( q_DINR_DECLARACAO_IMP.AsString <> '' ) Then Begin
        I18_nDI := q_DINR_DECLARACAO_IMP.AsString + '|';
        I18_dDi := copy(q_DIDT_REGISTRO_DI.AsString,5,4) + '-' + copy(q_DIDT_REGISTRO_DI.AsString,3,2) + '-' + copy(q_DIDT_REGISTRO_DI.AsString,1,2)+'|';//Colocar a data do registo da DI
        I18_dDesemb := q_DIDT_DESEMBARACO.AsString + '|';
      End
      Else begin
        I18_nDI := q_DINR_DECLARACAO_IMPC.AsString + '|';
        I18_dDi := copy(q_DIDT_REGISTRO_DIC.AsString,5,4) + '-' + copy(q_DIDT_REGISTRO_DIC.AsString,3,2) + '-' + copy(q_DIDT_REGISTRO_DIC.AsString,1,2)+'|';//Colocar a data do registo da DI
        I18_dDesemb := q_DIDT_DESEMBARACOC.AsString + '|';
      end;

      I18_xLocDesemb := q_LocalDesembI18_xLocDesemb.AsString + '|';
      I18_UFDesemb := 'RJ|';//Colocar RJ por enquanto
      I18_cExportador := '1|';//??????

      mmTXT.Lines.Add(
        'I18|' +
        I18_nDI +
        I18_dDi +
        I18_xLocDesemb +
        I18_UFDesemb +
        I18_dDesemb +
        I18_cExportador );

      {Linha "I25" - Adições}
      I25_nAdicao := IntToStr(strtoint(q_plafatI25_nAdicao.AsString)) + '|';
      I25_nSeqAdic := IntToStr(strtoint(q_plafatSeq.AsString)) + '|';
      I25_cFabricante := edtDestinatario_Nome.Text +'|';// Nome do destinatário
      I25_vDescDI := '|';//vazio

      mmTXT.Lines.Add(
        'I25|' +
        I25_nAdicao +
        I25_nSeqAdic +
        I25_cFabricante +
        I25_vDescDI );

      {*** Calculos ***}
      aliq_ICMS := (q_plafatAliq_ICMS.AsFloat + q_plafatAliq_ICMS_EXTRA.AsFloat)/100;
      aliq_IPI := (q_plafatAliq_NCM_IPI.AsFloat)/100;
      aliq_II := (q_plafatAliq_NCM_II.AsFloat)/100;
      aliq_PIS := (q_plafatAliq_PIS_PASEP.AsFloat)/100;
      aliq_CONFINS := (q_plafatAliq_COFINS.AsFloat)/100;

      const_pis1 := (1+(aliq_ICMS)*(aliq_II+aliq_IPI*(1+aliq_II)));
      const_pis2 := (1-aliq_PIS-aliq_CONFINS)*(1-(aliq_ICMS));
      const_pis3 :=  const_pis1 / const_pis2;

      temp_va := q_plafatVA_NEW.AsFloat;
      tempii := (q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
      temp_ipi := (q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
      temp_tx := (q_plafatvalor_total.asfloat*constante)-q_plafatvalor_total.asfloat;
      temp_confis := (q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
      temp_pis := (q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
      dif_icms := ((100-(q_plafatAliq_ICMS.AsFloat + q_plafatAliq_ICMS_EXTRA.AsFloat))/100);
      dif_icms_pobre := ((100-(q_plafatAliq_ICMS_EXTRA.AsFloat))/100);
      base_calculo_icms := (temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms;
      base_calculo_icms_pobre := (temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms_pobre;
      aliq_ICMS_valor := (q_plafatAliq_ICMS.AsFloat )/100;
      valor_icms := base_calculo_icms * aliq_ICMS_valor;
      valor_icms_pobre := (q_plafatvalor_icms_extra.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);

      {Linha "M" - Vazia}
      mmTXT.Lines.Add( 'M|' );
      {Linha "N" - Vazia}
      mmTXT.Lines.Add( 'N|' );

      {Linha "N06" - CST -40- isenta, 41 Não tributa e 50-Suspensão}
      If ( edtTipoDeclaracao.Text = 'Admissão' ) Then Begin
        N06_orig := '1|';// 1 = Estrangeira - Importação direta
        N06_CST := '50|';

        {*** Escrevendo N06 ***}
        mmTXT.Lines.Add(
        'N06|' +
        N06_orig +
        N06_CST );
      {Linha "N02" - CST -00- Tributa integralmente}
      End
      Else Begin
        N02_orig := '1|';//sempre utilizar 1 = Estrangeira - Importação direta
        N02_CST := '00|';
        N02_modBC := '3|';// 3 = valor da operação
        N02_vBC := FormatFloat( '0.00', base_calculo_icms ) + '|'; // = base_calculo_icms
        N02_pICMS := FormatFloat( '0.00', aliq_ICMS * 100 ) + '|'; // = aliq_ICMS_valor
        N02_vICMS := FormatFloat( '0.00', valor_icms + valor_icms_pobre ) + '|'; // =  valor_icms + fecp
        
        {*** Escrevendo N02 ***}
        mmTXT.Lines.Add(
        'N02|' +
        N02_orig +
        N02_CST +
        N02_modBC +
        TrocarVirgula( N02_vBC ) +
        TrocarVirgula( N02_pICMS ) +
        TrocarVirgula( N02_vICMS ));
      End;

      {Linha "O" - IPI - Informar apenas quando item for sujeito ao IPI}
      If ( (aliq_IPI * 100) > 0 ) Then Begin
        O_clEnq := '|'; //vazio
        O_CNPJProd := '|';//vazio
        O_cSelo := '|';//vazio
        O_qSelo := '|';//vazio
        O_cEnq := '999|';

        mmTXT.Lines.Add(
        'O|' +
        O_clEnq +
        O_CNPJProd +
        O_cSelo +
        O_qSelo +
        O_cEnq );

        {Linha "O08" - IPI Não Tributável}
        if ( edtTipoDeclaracao.Text = 'Admissão' ) then Begin
          O08_CST := '05|';{ 05 - Entrada com Suspensão}
          mmTXT.Lines.Add(
          'O08|' +
          O08_CST);
        End
        Else Begin
          {Linha "O07" - IPI Tributável}
          O07_CST := '49|'; // Outras entradas
          O07_vIPI := FormatFloat('0.00', (q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat)) + '|';//

          mmTXT.Lines.Add(
          'O07|' +
          O07_CST +
          TrocarVirgula( O07_vIPI ));

          {Linha "O10" - IPI Tributável}
          O10_vBC := FormatFloat('0.00', q_plafatVA_NEW.AsFloat + ((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))) + '|';//
          O10_pIPI := FormatFloat('0.00', aliq_IPI * 100) + '|';//

          mmTXT.Lines.Add(
          'O10|' +
          TrocarVirgula( O10_vBC ) +
          TrocarVirgula( O10_pIPI ));
        End;
      End;
      
      {Linha "P" - Informar apenas quando item for sujeito ao II}
      If ( tempii > 0 )and( edtTipoDeclaracao.Text <> 'Admissão' ) Then Begin
        P_vBC := FormatFloat('0.00', q_plafatVA_NEW.AsFloat) + '|'; //
        P_vDespAdu := '|';//??????
        P_vII := FormatFloat('0.00', tempii) + '|';//
        P_IOF := '0.00|'; //

        mmTXT.Lines.Add(
          'P|' +
          TrocarVirgula( P_vBC ) +
          P_vDespAdu +
          TrocarVirgula( P_vII ) +
          TrocarVirgula( P_IOF ));
      End;
      {Linha "Q" - Vazia}
      mmTXT.Lines.Add( 'Q|' );

      {Linha "Q04" - PIS - grupo de PIS Não tributado}
      If ( edtTipoDeclaracao.Text = 'Admissão' ) Then Begin
        Q04_CST := '09|';
        mmTXT.Lines.Add( 'Q04|'+ Q04_CST );
      End
      Else Begin
        {Linha "Q02" - PIS - grupo de PIS tributado pela aliquota}
        Q02_CST := '01|';
        Q02_vPIS := FormatFloat('0.00', (q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat)) + '|';//
        Q02_vBC := FormatFloat('0.00', q_plafatVA_NEW.AsFloat * const_pis3) + '|';//
        Q02_pPIS := FormatFloat('0.00', q_plafataliq_pis_pasep.asfloat) + '|';//

        mmTXT.Lines.Add(
        'Q02|'+
        Q02_CST+
        TrocarVirgula( Q02_vBC )+
        TrocarVirgula( Q02_pPIS ) +
        TrocarVirgula( Q02_vPIS ));
      End;
      {Linha "S" - Vazia}
      mmTXT.Lines.Add( 'S|' );

      {Linha "S05" - COFINS - grupo de COFINS Outras Operações}
      If ( edtTipoDeclaracao.Text = 'Admissão' ) Then Begin
        S04_CST := '09|';
        mmTXT.Lines.Add( 'S04|'+ S04_CST );
      End
      Else Begin
        S02_CST := '01|';
        S02_vCONFIS := FormatFloat('0.00', (q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat)) + '|'; // =;
        S02_vBC := FormatFloat('0.00', q_plafatVA_NEW.AsFloat * const_pis3) + '|'; //=
        S02_pCONFIS := FormatFloat('0.00', q_plafataliq_cofins.asfloat) + '|'; // =

        mmTXT.Lines.Add(
          'S02|'+
          S02_CST+
          TrocarVirgula( S02_vBC )+
          TrocarVirgula( S02_pCONFIS )+
          TrocarVirgula( S02_vCONFIS ));
      End;
      {*** Totalizador ***}
      total_base_calculo_icms := total_base_calculo_icms + ((temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms);
      total_valor_icms := total_valor_icms + valor_icms;
      total_base_calculo_icms_pobre := total_base_calculo_icms_pobre + base_calculo_icms_pobre;
      total_valor_icms_pobre := total_valor_icms_pobre + valor_icms_pobre;
      total_valor_produto := total_valor_produto + q_plafatI_vProd.AsFloat;
      
      If ( tempii > 0 )and( edtTipoDeclaracao.Text <> 'Admissão' ) Then Begin
        total_valor_II := total_valor_II + StrToFloat(stringReplace(P_vII,'|','',[]));//( P_vII);
      End;

      If ( (aliq_IPI * 100) > 0 )and( edtTipoDeclaracao.Text <> 'Admissão' ) Then Begin
        total_valor_ipi := total_valor_ipi + (q_plafatvalor_ipi.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat);
      End;

      total_valor_pis := total_valor_pis + ((q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat));
      total_valor_confis := total_valor_confis + ((q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*(q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat));
      total_valor_frete := total_valor_frete + q_plafatFRENTE.AsFloat;

      total_outras_desp_acessorias := total_outras_desp_acessorias + ((q_plafatvalor_pis_pasep.asfloat/q_plafatfob.asfloat)*
                                                                     (q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+
                                                                     ((q_plafatvalor_cofins.asfloat/q_plafatfob.asfloat)*
                                                                     (q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+
                                                                     ((q_plafatvalor_ii.asfloat/q_plafatfob.asfloat)*
                                                                     (q_plafatvmle.asfloat*q_plafattaxa_conversao.asfloat))+
                                                                     ((q_plafatValor_Total.asfloat*constante)-q_plafatvalor_total.asfloat);
      {*** total seguro ***}
      total_valor_seguro := total_valor_seguro + ( q_plafatrateio_seguro.asfloat * q_plafatI_qCom.asfloat );
      q_plafat.Next;
      Cont := Cont + 1;
      Application.ProcessMessages;
  End;
  {Linha "W" - Totais}
  mmTXT.Lines.Add( 'W|' );

  {Linha "W02" - Grupo de valores totais referentes ao ICMS}
  If ( edtTipoDeclaracao.Text = 'Admissão' ) Then Begin
    W02_vBC := '0.00' + '|';
    {Ticket 3400 - Leandro Serra 12/09/2012}
    {OBS: Conforme solicitação da Isabella somente este importador faz esse pagamento}
    if vImportador = '358' then
       W02_vICMS := FormatFloat('0.00', total_valor_icms + total_valor_icms_pobre ) + '|'
    else
        W02_vICMS := '0.00' + '|';
    {Fim Ticket 3400 - Leandro Serra 12/09/2012}
    W02_vBCST := '0.00|';
    W02_vST := '0.00|';
    W02_vII := '0.00' + '|';
    W02_vIPI := '0.00' + '|';
    W02_vPIS := '0.00' + '|';
    W02_vCONFINS := '0.00' + '|';
  End
  Else Begin
    W02_vBC := FormatFloat('0.00', total_base_calculo_icms) + '|';
    W02_vICMS := FormatFloat('0.00', total_valor_icms + total_valor_icms_pobre ) + '|';
    W02_vBCST := '0.00|';//FormatFloat('0.00',total_base_calculo_icms_pobre) + '|';
    W02_vST := '0.00|';//FormatFloat('0.00',total_valor_icms_pobre) + '|';
    W02_vII := FormatFloat('0.00', total_valor_II) + '|';
    W02_vIPI := FormatFloat('0.00', total_valor_ipi) + '|';
    W02_vPIS := FormatFloat('0.00', total_valor_pis) + '|';
    W02_vCONFINS := FormatFloat('0.00', total_valor_confis) + '|';
  End;
  W02_vProd := FormatFloat('0.00', total_valor_produto) + '|';
  W02_vFrete := FormatFloat('0.00', total_valor_frete) + '|';
  W02_vSeg := FormatFloat('0.00', total_valor_seguro) + '|';
  W02_vDesc := '0.00|';
  W02_vOutros := '0.00|';//FormatFloat('0.00', total_outras_desp_acessorias) + '|';
  {Calculo "Total da Nota"}
  {*** Total Frete + Total Seguro + Total Produto + IPI + II - Desconto ***}
  W02_vNF := FormatFloat('0.00', total_valor_frete + total_valor_produto + total_valor_ipi + total_valor_II ) + '|';

  mmTXT.Lines.Add(
    'W02|'+
    TrocarVirgula( W02_vBC )+
    TrocarVirgula( W02_vICMS )+
    TrocarVirgula( W02_vBCST )+
    TrocarVirgula( W02_vST )+
    TrocarVirgula( W02_vProd )+
    TrocarVirgula( W02_vFrete )+
    TrocarVirgula( W02_vSeg )+
    TrocarVirgula( W02_vDesc )+
    TrocarVirgula( W02_vII )+
    TrocarVirgula( W02_vIPI )+
    TrocarVirgula( W02_vPIS )+
    TrocarVirgula( W02_vCONFINS )+
    TrocarVirgula( W02_vOutros )+
    TrocarVirgula( W02_vNF ));

  mmTXT.Lines.Add( 'X|0|' );
  {Observação}
  mmTXT.Lines.Add( 'Z||' + edtInformacaoAdicionais.text );
  btnSalvar.Enabled := true;
  {*** ATRIBUINDO TOTAIS NO LABEL ***}
  lblTotalBaseCalculo.Caption := 'Total base de cáculo:  '+ Rpl( W02_vBC );
  lblTotalProdutos.Caption := 'Total dos produtos:  '+ Rpl( W02_vProd );
  lblTotalII.Caption := 'Total do II:  '+ Rpl( W02_vII );
  lblTotalOutrasDesp.Caption := 'Total Outras desp. acessórias:  '+ Rpl( W02_vOutros );
  lblTotalFrete.Caption := 'Total do Frete:  '+ Rpl( W02_vFrete );
  lblTotalIPI.Caption := 'Total do IPI:  '+ Rpl( W02_vIPI );
  lblPIS.Caption := 'Total do PIS:  '+ Rpl( W02_vPIS );
  lblTotalCOFINS.Caption := 'Total do COFINS:  '+ Rpl( W02_vCONFINS );
  lblTotalICMS.Caption := 'Total do ICMS:  '+ Rpl( W02_vICMS );
  lblTotalSeguro.Caption := 'Total do Seguro:  '+ Rpl( W02_vSeg );
  {*** ***}
end;

function TfrmNotaFiscalEE.TrocarVirgula(valor: double): String;
begin
  Result := stringReplace(FloatToStr( valor ),',','.',[rfreplaceall]);
end;

function TfrmNotaFiscalEE.TrocarVirgula(valor: String): String;
begin
  Result := stringReplace(valor,',','.',[rfreplaceall]);
end;

function TfrmNotaFiscalEE.Rpl(valor: String): String;
begin
  Result := StringReplace(valor, '|','', [rfreplaceall]);
end;

procedure TfrmNotaFiscalEE.edtTipoDeclaracaoChange(Sender: TObject);
begin
  edtAliqProporcional.Enabled := ( edtTipoDeclaracao.Text = 'Proporcional' );
end;

procedure TfrmNotaFiscalEE.edtDestinatario_CNPJExit(Sender: TObject);
begin
  ValidaCNPJ(edtDestinatario_CNPJ.Text)

end;

procedure TfrmNotaFiscalEE.edtEmitente_CNPJExit(Sender: TObject);
begin
  ValidaCNPJ(edtEmitente_CNPJ.Text)
end;

procedure TfrmNotaFiscalEE.edtDestinatario_IEExit(Sender: TObject);
var
  item: string;
begin

  item := edtDestinatario_UF.Items[edtDestinatario_UF.ItemIndex];
  if  item = 'EX' then exit;

  if ChkInscEstadual(edtDestinatario_IE.Text, item ) = False then showmessage('IE inválida, digite somente números.');
end;


end.
