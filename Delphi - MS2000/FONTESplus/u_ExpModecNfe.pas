unit u_ExpModecNfe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Mask, ComCtrls, Db, DBTables, Grids, DBGrids;

type
  Tf_ExpModecNfe = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Label14: TLabel;
    btnSalvar: TBitBtn;
    SaveDialog: TSaveDialog;
    Progress: TProgressBar;
    q_Processo: TQuery;
    q_ProcessoCodigo: TStringField;
    q_ProcessoRazao_Social: TStringField;
    q_ProcessoCNPJ_CPF_COMPLETO: TStringField;
    q_ProcessoNR_DECLARACAO_IMP: TStringField;
    q_ItensFaturas: TQuery;
    q_ItensFaturasCodigo_Produto: TStringField;
    q_ItensFaturasSequencial_Produto: TIntegerField;
    q_ItensFaturasQuantidade: TFloatField;
    q_ItensFaturasValor_Unitario: TFloatField;
    q_ItensFaturasPeso_Unitario: TFloatField;
    q_ItensFaturasAbrev: TStringField;
    q_Impostos: TQuery;
    StringField1: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField2: TStringField;
    GroupBox1: TGroupBox;
    gridAdicao: TDBGrid;
    dsAdicoes: TDataSource;
    q_Adicoes: TQuery;
    q_AdicoesI_xProd: TStringField;
    q_AdicoesI_NCM: TStringField;
    q_AdicoesI_uCom: TStringField;
    q_AdicoesI_qCom: TFloatField;
    q_AdicoesI_vUnCom: TFloatField;
    q_AdicoesI_vProd: TFloatField;
    q_AdicoesI25_nAdicao: TStringField;
    q_AdicoesI25_nSeqAdic: TSmallintField;
    q_AdicoesProcesso: TStringField;
    q_AdicoesFatura: TStringField;
    q_AdicoesPag: TFloatField;
    q_AdicoesSeq: TFloatField;
    q_AdicoesProduto: TStringField;
    q_AdicoesFabricante: TStringField;
    q_AdicoesUnidade: TStringField;
    q_AdicoesUnidade_Medida_Estat: TStringField;
    q_AdicoesDestaque_NCM: TStringField;
    q_AdicoesNALADI: TStringField;
    q_AdicoesReferencia: TStringField;
    q_AdicoesNumero_serie: TStringField;
    q_AdicoesReferencia_projeto: TStringField;
    q_AdicoesPO: TStringField;
    q_AdicoesSeqpo: TStringField;
    q_AdicoesPeso_Unitario: TFloatField;
    q_AdicoesPeso_Unitario_Acertado: TFloatField;
    q_AdicoesPeso_Total: TFloatField;
    q_AdicoesPeso_Total_Acertado: TFloatField;
    q_Adicoesdesci: TStringField;
    q_AdicoesRateio_Acrescimos: TFloatField;
    q_AdicoesRateio_Deducoes: TFloatField;
    q_AdicoesRateio_Embalagem: TFloatField;
    q_AdicoesRateio_Frete_Interno_imp: TFloatField;
    q_AdicoesRateio_Seguro_Interno: TFloatField;
    q_AdicoesRateio_outras_import: TFloatField;
    q_AdicoesRateio_startup: TFloatField;
    q_AdicoesRateio_jurosfin: TFloatField;
    q_AdicoesRateio_montagem: TFloatField;
    q_AdicoesRateio_Frete_Interno_exp: TFloatField;
    q_AdicoesRateio_carga_exp: TFloatField;
    q_AdicoesRateio_outras_export: TFloatField;
    q_AdicoesRateio_frete_fatura: TFloatField;
    q_AdicoesRateio_seguro_fatura: TFloatField;
    q_AdicoesRateio_carga_imp: TFloatField;
    q_AdicoesRateio_Despesas_ate_FOB: TFloatField;
    q_AdicoesRateio_Frete_prepaid: TFloatField;
    q_AdicoesRateio_Frete_collect: TFloatField;
    q_AdicoesRateio_Frete_ternac: TFloatField;
    q_AdicoesRateio_Seguro: TFloatField;
    q_AdicoesValor_Aduaneiro: TFloatField;
    q_AdicoesValor_mercadoria: TFloatField;
    q_AdicoesVMLE: TFloatField;
    q_AdicoesTaxa_conversao: TFloatField;
    q_AdicoesVA: TFloatField;
    q_AdicoesOT: TFloatField;
    q_AdicoesDA: TFloatField;
    q_AdicoesAliq_NCM_II: TFloatField;
    q_AdicoesAliq_NCM_IPI: TFloatField;
    q_AdicoesAliq_PIS_PASEP: TFloatField;
    q_AdicoesAliq_COFINS: TFloatField;
    q_AdicoesAliq_ICMS: TFloatField;
    q_AdicoesAliq_ICMS_EXTRA: TFloatField;
    q_AdicoesBASEC_PISCOFINS: TFloatField;
    q_AdicoesBASEC_ICMS: TFloatField;
    q_AdicoesVALOR_II: TFloatField;
    q_AdicoesVALOR_IPI: TFloatField;
    q_AdicoesVALOR_ICMS: TFloatField;
    q_AdicoesVALOR_ICMS_EXTRA: TFloatField;
    q_AdicoesVALOR_PIS_PASEP: TFloatField;
    q_AdicoesVALOR_COFINS: TFloatField;
    q_AdicoesPrazo_permanencia: TIntegerField;
    q_AdicoesVA_proporcional: TFloatField;
    q_AdicoesAliq_NCM_II_proporcional: TFloatField;
    q_AdicoesAliq_NCM_IPI_proporcional: TFloatField;
    q_AdicoesFOB: TFloatField;
    q_AdicoesVA_NEW: TFloatField;
    q_AdicoesFRENTE: TFloatField;
    q_AdicoesValor_Total: TFloatField;
    ME_nossaref: TMaskEdit;
    q_ItensFaturasDtEmissao: TDateTimeField;
    q_total_produtos: TQuery;
    q_total_produtosValor_Total: TFloatField;
    q_ProcessoDT_REGISTRO_DI: TStringField;
    q_ProcessoLocal_Desembaraco: TStringField;
    q_ProcessoVatotnota: TFloatField;
    q_ProcessoValServico: TFloatField;
    cbCFOP: TComboBox;
    lblCFOP: TLabel;
    txtDtEmissao: TEdit;
    Label1: TLabel;
    procedure me_nossarefChange(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure txtDtEmissaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    function CompletaStr(texto: String; tamanho: integer): string;

    function CompletaZeros(sCampo : String; iTam: Integer = -1): String;

    procedure InsereTxt(sTexto, sArquivo: String);

    function TiraCaracter(Texto, Caracter: string): string;

    function TrocaVirguloPorPonto(Texto : string) : string;

    procedure InsereImpostos(valor : real; base_calculo : real; aliquota : real; imposto: String;Sequencial : Integer);
    
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_ExpModecNfe: Tf_ExpModecNfe;
  valor_total_produtos, constante : real;
  sDados, sAux, sArquivo : String;
  iLinhas : Integer;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_ExpModecNfe.me_nossarefChange(Sender: TObject);
begin
  if Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8
   then Exit;

  q_Processo.Close;
  q_Processo.ParamByName('p0').Value := me_nossaref.Text;
  q_Processo.Open;

  q_ItensFaturas.Close;
  q_ItensFaturas.ParamByName('p0').Value := me_nossaref.Text;
  q_ItensFaturas.Open;

  q_Impostos.Close;
  q_Impostos.ParamByName('p0').Value := me_nossaref.Text;
  q_Impostos.Open;

  q_Adicoes.Close;
  q_Adicoes.ParamByName('p0').Value := me_nossaref.Text;
  q_Adicoes.Open;

  q_total_produtos.Params[0].asstring   := me_nossaref.text;
  q_total_produtos.open;
  valor_total_produtos := q_total_produtosValor_Total.AsFloat;
  q_total_produtos.close;

  cbCFOP.Enabled := true;
  txtDtEmissao.Enabled := true;
  btnSalvar.Enabled := TRUE;

end;

function Tf_ExpModecNfe.Completastr(texto: String; tamanho: integer): string;
var
  t: string;
  I: integer;
begin
  t := '';

  for I := 1 to tamanho do
    if copy(texto, I, 1) = '' then
      t := t + ' '
    else
      t := t + AnsiUpperCase(copy(texto, I, 1));

  Result := t;
end;

function Tf_ExpModecNfe.CompletaZeros(sCampo : String; iTam: Integer = -1): String;
var
  sAux : String;
  i: integer;
begin
  sAux := '';

  for i := 1 to iTam do
    sAux := '0' + sAux;

  Result := sAux + sCampo;
end;

function Tf_ExpModecNfe.TiraCaracter(Texto, Caracter: string): string;
var
  i: Integer;
  Str: String;
begin
  Str := '';

  for i := 1 to Length(Texto) do
    if Copy(Texto, i, 1) <> Caracter then
      str := str + Copy(Texto, i, 1);

  Result := str;
end;

procedure Tf_ExpModecNfe.InsereTxt(sTexto, sArquivo: String);
var
  T: TextFile;
begin
  AssignFile(T, sArquivo);

  if FileExists(sArquivo) then
    Append(T)
  else
    Rewrite(T);

  Writeln(T, sTexto);
  CloseFile(T);
end;

function Tf_ExpModecNfe.TrocaVirguloPorPonto(Texto : string): string;
var
  i: Integer;
  Str: String;
begin
  Str := '';

  for i := 1 to Length(Texto) do
    if Copy(Texto, i, 1) <> ','
     then str := str + Copy(Texto, i, 1)
     else str := str + '.';

  Result := str;
end;

procedure Tf_ExpModecNfe.btnSalvarClick(Sender: TObject);
var
  temp_va, tempii, temp_ipi, temp_tx, temp_pis, temp_confis, aliq_ICMS_valor : real;
  valor_ii, valor_ipi, valor_pis, valor_cofins, valor_icms, valor_fecp : real;
  aliq_ICMS, aliq_IPI, aliq_II, aliq_PIS, aliq_CONFINS, dif_icms : real;
  base_pis, base_ii, base_ipi, base_calculo_icms : real;
  const_pis1, const_pis2, const_pis3 : real;
  i : Integer;
  F: File;

  procedure LimpaValores;
   begin
     valor_icms   := 0;
     valor_ii     := 0;
     valor_ipi    := 0;
     valor_pis    := 0;
     valor_cofins := 0;
     valor_fecp   := 0;
   end;
     
begin
  sDados   := '';
  sAux     := '';
  sArquivo := '';

  i       := 0;
  iLinhas := 0;

  If cbCFOP.text = '' then begin
    showMessage('Favor informar o CFOP.');
    exit;
  End;

  If txtDtEmissao.text = '' then begin
     showMessage('Favor informar a data.');
    exit;
  End;

  try
    SaveDialog.InitialDir := ExtractFileDir(Application.ExeName);

    if SaveDialog.Execute then
    begin
      sArquivo := SaveDialog.FileName;

      if FileExists(sArquivo) then
      begin
        AssignFile(F, sArquivo);
        Erase(F);
      end;

      progress.Visible  := True;
      progress.Position := 0;
      progress.Max      := 100;
      progress.Repaint;

      {Linha de Dados dos Movimentos}

      {Campo 1 a 6}
      sDados := 'M' + '00001' + CompletaStr('',30);


     If q_ProcessoCNPJ_CPF_COMPLETO.AsString ='05217376000176'  then begin
         sDados := sDados +   '1.01' + CompletaStr('',15-length('1.01'))+  CompletaStr('',15) +  CompletaStr('',15);
     end
     Else begin
         sDados := sDados +   CompletaStr('',15) + CompletaStr('',15) +   CompletaStr('',15);
     End;

      {Campo 7 a 8}
      sDados := sDados + q_ProcessoCNPJ_CPF_COMPLETO.AsString + CompletaStr('',25-length(q_ProcessoCNPJ_CPF_COMPLETO.AsString)) + CompletaStr('',25);

      {Campo 9 a 10}
      sDados := sDados + '1' + CompletaStr('',35-length('1')) + 'MS' + CompletaStr('',8-length('MS'));

      {Campo 11 a 23}
      sDados := sDados + '1.1.05' + CompletaStr('',10-length('1.1.05')) + 'S' + 'N' + '000' +

                txtDtEmissao.Text  + CompletaStr('',10-length(txtDtEmissao.Text)) + txtDtEmissao.Text  + CompletaStr('',10-length(txtDtEmissao.Text)) +
                CompletaStr('',10) + CompletaStr('',10) + CompletaStr('',15) + CompletaZeros('',20) +
                CompletaStr('',20) + CompletaStr('',5 ) + CompletaZeros('',5);

      {Campo 24}
      sAux := TiraCaracter(FormatFloat('0.00', q_ProcessoValServico.AsCurrency), ',');
      sDados := sDados + CompletaZeros(sAux, 20-length(sAux));

      {Campo 25}
      sAux := TiraCaracter(FormatFloat('0.00', q_ProcessoVaTotNota.AsCurrency), ',');
      sDados := sDados + CompletaZeros(sAux, 20-length(sAux));

      {Campo 26 a 36}
      sDados := sDados + CompletaZeros('', 20) + CompletaStr('',60)   + CompletaZeros('',20)
                       + CompletaZeros('',20)  + CompletaZeros('',20) + CompletaZeros('',20)
                       + CompletaZeros('',20)  + CompletaZeros('',20) + CompletaZeros('',20)
                       + CompletaZeros('',20)  + CompletaZeros('',20) + CompletaZeros('',20)
                       + CompletaZeros('',20)  + CompletaStr('',20);


      {Campo 40 a 46}
     sDados := sDados + CompletaStr('',16) + CompletaZeros('',20) + CompletaZeros('',5 )
                      + CompletaStr('',5 ) + CompletaStr('',15) + CompletaStr('',10);

      {Campo 47 a 53}
      sDados := sDados + CompletaStr('',2) + CompletaZeros('',20) + CompletaZeros('',20)
                       + CompletaStr('',10)   + CompletaZeros('',10) + CompletaZeros('',10)
                       + CompletaStr('',15);

      {Campo 54 a 66}
      sDados := sDados + CompletaStr('',10) + CompletaStr('',10)  + CompletaStr('',10)
                       + CompletaStr('',10) + CompletaStr('',10)  + CompletaStr('',25)
                       + CompletaStr('',25) + CompletaStr('',25)  + CompletaStr('',25)
                       + CompletaStr('',25) + CompletaStr('',100) + CompletaStr('',100)
                       + CompletaStr('',100);

      {Campo 67 a 75}
      sDados := sDados +
                       'R$' + CompletaStr('',10-length('R$'))  + CompletaStr('',10)  + txtDtEmissao.Text  + CompletaStr('',10-length(txtDtEmissao.Text))
                       + CompletaZeros('',5) + CompletaZeros('',5) + CompletaZeros('',5)
                       + CompletaStr('',16)  + CompletaStr('',20)  + CompletaZeros('',5);

      {Campo 76 a 84}
      sDados := sDados + CompletaStr('',1)   + CompletaStr('',5)   + CompletaStr('',5)
                       + CompletaStr('',5)   + CompletaZeros('',5) + CompletaZeros('',5)
                       + CompletaZeros('',5) + CompletaZeros('',5) + CompletaZeros('',5);

      {Campo 85 a 91}
      sDados := sDados + CompletaStr('',16)   + CompletaStr('',16) + CompletaZeros('',20)
                       + CompletaZeros('',5);

      {Campo 92 a 100}
      sDados := sDados + CompletaZeros('',20) + CompletaStr('',5)   + CompletaStr('',5) + CompletaZeros('',5) + CompletaZeros('',5)
                       + CompletaStr('',1)    + CompletaStr('',10)  + CompletaZeros('',20)
                       + CompletaStr('',25)   +  '26' + CompletaStr('',5-length('26'))  + CompletaStr('',10) + CompletaZeros('',5);

      {Campo 101 a 109}
      sDados := sDados + CompletaStr('',25) +  '26' + CompletaStr('',5-length('26')) + CompletaZeros('',5)
                       + CompletaStr('',10)   + txtDtEmissao.Text  + CompletaStr('',10-length(txtDtEmissao.Text)) + CompletaZeros('',10)
                       + CompletaZeros('',10) + CompletaStr('',20) + CompletaZeros('',5);

      {Campo 110 a 118}
      sDados := sDados + copy(cbCFOP.Text,1,8)  + CompletaStr('',20-length(copy(cbCFOP.Text,1,8))) + CompletaStr('',20)   + CompletaStr('',20)
                       + CompletaStr('',10)  + CompletaZeros('',15) + CompletaZeros('',20)
                       + CompletaZeros('',2) + CompletaStr('',10)   + CompletaZeros('',10);

      {Campo 119 a 127}
      sDados := sDados + 'MS' + CompletaStr('',10-length('MS')) + CompletaStr('',10) + CompletaZeros('',20)
                       + CompletaStr('',20) + CompletaStr('',20) + CompletaStr('',24)
                       + CompletaStr('',5)  + CompletaStr('',8)  + CompletaStr('',10);

      {Campo 119 a 127}
      sDados := sDados + CompletaZeros('',20) + CompletaStr('',5)    + CompletaStr('',10)
                       + CompletaZeros('',10) + CompletaZeros('',10) + CompletaZeros('',10)
                       + CompletaStr('',20)   + CompletaStr('',15)   + CompletaZeros('',5)
                       + CompletaZeros('',5)  + CompletaStr('',1)    + CompletaZeros('',30);

      {Encerramento da Linha de Dados dos Movimentos}

      InsereTxt(sDados, sArquivo);
      iLinhas := iLinhas + 1;

      q_ItensFaturas.First;

      i := 1;

      Progress.Max := q_ItensFaturas.RecordCount;

      {Linha de Dados dos Itens de Movimentos}
      while not q_ItensFaturas.Eof do
      begin
        progress.Position := i;

        Application.ProcessMessages;

        sDados := 'I';

        sAux := '2.07.01.' + FormatFloat('0000', i);

        sDados := sDados + sAux + CompletaStr('',30-length(sAux));

        sDados := sDados + FormatFloat('00000', i);
                                                  
        sDados := sDados + CompletaStr('',10);        

        sAux   := FormatFloat('0.00',q_ItensFaturasQuantidade.AsFloat);
        sAux   := TrocaVirguloPorPonto(sAux);
        sDados := sDados + CompletaZeros(sAux, 20-length(sAux));

        sAux   := FormatFloat('0.00',q_ItensFaturasValor_Unitario.AsFloat);
        sAux   := TrocaVirguloPorPonto(sAux);
        sDados := sDados + CompletaZeros(sAux, 20-length(sAux));

        sDados := sDados + CompletaZeros('',20) + CompletaZeros('',20) + CompletaZeros('',20)
                         + CompletaZeros('',20) + CompletaZeros('',20);

        sDados := sDados + CompletaStr('',10);

        sDados := sDados + CompletaStr('',5) + CompletaZeros('',5) + CompletaStr('',10) + CompletaStr('',10);

        sDados := sDados + CompletaStr('',10) + CompletaStr('',10) + CompletaStr('',10);

        sDados := sDados + CompletaStr('',25) + CompletaStr('',25) + CompletaStr('',25)
                         + CompletaStr('',25) + CompletaStr('',25);

        sDados := sDados + CompletaStr('',15) + q_ItensFaturasAbrev.AsString + CompletaStr('',5-length(q_ItensFaturasAbrev.AsString));

        sDados := sDados + CompletaZeros('',20) + CompletaZeros('',5);

        sDados := sDados + CompletaStr('',5) + CompletaStr('',10) + CompletaStr('',15);

        sDados := sDados + CompletaZeros('',10) + CompletaZeros('',5) + CompletaZeros('',20);

        sDados := sDados + CompletaStr('',25) + CompletaStr('',20) + CompletaStr('',15) + CompletaStr('',30);

        sDados := sDados + CompletaStr('',25) + CompletaStr('',10) + CompletaZeros('',20);

        sDados := sDados + CompletaZeros('',60) + CompletaZeros('',5) + CompletaZeros('',3);

        sDados := sDados + CompletaStr('',60) + CompletaStr('',10) + CompletaZeros('',20);

        sDados := sDados + CompletaZeros('',20) + CompletaStr('',1) + CompletaZeros('',20);

        sDados := sDados + CompletaZeros('',10) + CompletaZeros('',20) + CompletaZeros('',20);

        sDados := sDados + CompletaZeros('',5) + CompletaStr('',15) + CompletaZeros('',20);

        sDados := sDados + CompletaStr('',16) + CompletaZeros('',20);

        InsereTxt(sDados, sArquivo);

        iLinhas := iLinhas + 1;

        i := i + 1;

        q_ItensFaturas.Next;
      end;
      {Encerramento da Linha de Dados dos Itens de Movimentos}

      q_Adicoes.First;

      i := 1;

      Progress.Max := q_Adicoes.RecordCount;

      {Linha de Dados dos Itens de Movimentos}
      while not q_Adicoes.Eof do
      begin
        Progress.Position := i;

        LimpaValores;

        aliq_ICMS    := (q_AdicoesAliq_ICMS.AsFloat+q_AdicoesAliq_ICMS_EXTRA.AsFloat)/100;
        aliq_IPI     := (q_AdicoesAliq_NCM_IPI.AsFloat)/100;
        aliq_II      := (q_AdicoesAliq_NCM_II.AsFloat)/100;
        aliq_PIS     := (q_AdicoesAliq_PIS_PASEP.AsFloat)/100;
        aliq_CONFINS := (q_AdicoesAliq_COFINS.AsFloat)/100;

        temp_va     := q_AdicoesVA_NEW.AsFloat;
        tempii      := (q_Adicoesvalor_ii.asfloat/q_Adicoesfob.asfloat)*(q_Adicoesvmle.asfloat*q_Adicoestaxa_conversao.asfloat);
        temp_ipi    := (q_Adicoesvalor_ipi.asfloat/q_Adicoesfob.asfloat)*(q_Adicoesvmle.asfloat*q_Adicoestaxa_conversao.asfloat);
        temp_tx     := (q_Adicoesvalor_total.asfloat*constante)-q_Adicoesvalor_total.asfloat;
        temp_confis := (q_Adicoesvalor_cofins.asfloat/q_Adicoesfob.asfloat)*(q_Adicoesvmle.asfloat*q_Adicoestaxa_conversao.asfloat);
        temp_pis    := (q_Adicoesvalor_pis_pasep.asfloat/q_Adicoesfob.asfloat)*(q_Adicoesvmle.asfloat*q_Adicoestaxa_conversao.asfloat);
        dif_icms    := ((100-(q_AdicoesAliq_ICMS.AsFloat+q_AdicoesAliq_ICMS_EXTRA.AsFloat))/100);

        base_calculo_icms := (temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms;

        aliq_ICMS_valor := (q_AdicoesAliq_ICMS.AsFloat)/100;

        valor_icms   := base_calculo_icms * aliq_ICMS_valor;
        valor_ii     := (q_Adicoesvalor_ii.asfloat/q_Adicoesfob.asfloat)*(q_Adicoesvmle.asfloat*q_Adicoestaxa_conversao.asfloat);
        valor_ipi    := (q_Adicoesvalor_ipi.asfloat/q_Adicoesfob.asfloat)*(q_Adicoesvmle.asfloat*q_Adicoestaxa_conversao.asfloat);
        valor_pis    := (q_Adicoesvalor_pis_pasep.asfloat/q_Adicoesfob.asfloat)*(q_Adicoesvmle.asfloat*q_Adicoestaxa_conversao.asfloat);
        valor_cofins := (q_Adicoesvalor_cofins.asfloat/q_Adicoesfob.asfloat)*(q_Adicoesvmle.asfloat*q_Adicoestaxa_conversao.asfloat);
        valor_fecp   := (q_Adicoesvalor_icms_extra.asfloat/q_Adicoesfob.asfloat)*(q_Adicoesvmle.asfloat*q_Adicoestaxa_conversao.asfloat);

        const_pis1 := (1+(aliq_ICMS)*(aliq_II+aliq_IPI*(1+aliq_II)));
        const_pis2 := (1-aliq_PIS-aliq_CONFINS)*(1-(aliq_ICMS));
        const_pis3 :=  const_pis1 / const_pis2;

        base_ii  := q_AdicoesVA_NEW.AsFloat;
        base_ipi := q_AdicoesVA_NEW.AsFloat + ((q_Adicoesvalor_ii.asfloat/q_Adicoesfob.asfloat)*(q_Adicoesvmle.asfloat*q_Adicoestaxa_conversao.asfloat));
        base_pis := q_AdicoesVA_NEW.AsFloat * const_pis3;

        if (valor_icms <> 0)
         then InsereImpostos(valor_icms, base_calculo_icms, aliq_ICMS_valor, 'ICMS',i);

        if (valor_ii <> 0)
         then InsereImpostos(valor_ii, base_ii, aliq_II,'II',i);

        if (valor_ipi <> 0)
         then InsereImpostos(valor_ipi, base_ipi, aliq_IPI,'IPI',i);

        if (valor_pis <> 0)
         then InsereImpostos(valor_pis, base_pis, aliq_PIS ,'PS5602',i);

        if (valor_cofins <> 0)
         then InsereImpostos(valor_cofins, base_pis, aliq_CONFINS,'CF5629',i);

        Application.ProcessMessages;

        i := i + 1;

        q_Adicoes.Next;
      end;
      {Encerramento da Linha de Dados dos Itens de Movimentos}

      {Lista de Dados das Notas Fiscais Eletrônicas}
      sDados := '=';

      sDados := sDados + CompletaStr('',11);

      sDados := sDados + CompletaStr('',10);

      sDados := sDados + CompletaZeros('',5);

      sDados := sDados + CompletaStr('',16);

      sDados := sDados + CompletaStr('',10);

      sDados := sDados + CompletaZeros('',5);

      sDados := sDados + CompletaStr('',10);

      sDados := sDados + q_ProcessoNR_DECLARACAO_IMP.AsString + CompletaStr('',12-Length(q_ProcessoNR_DECLARACAO_IMP.AsString));

      sAux := q_ProcessoDT_REGISTRO_DI.AsString;

      if (sAux <> '')
       then begin
         try
           StrToDate(sAux);

           sDados := sDados + sAux + CompletaStr('',10-length(sAux));
         except
           sAux := copy(sAux,1,2) + '/' + copy(sAux,3,2) + '/' + copy(sAux,5,4);

           sDados := sDados + sAux; 
         end;
       end
       else sDados := sDados + CompletaStr('',10);

      sDados := sDados + CompletaZeros('',15) + '.0000';

      sDados := sDados + CompletaStr('',11);

      sDados := sDados + CompletaStr('',60);

      sDados := sDados + CompletaStr('',2);

      sDados := sDados + CompletaZeros('',5);

      InsereTxt(sDados, sArquivo);
      {Encerramento da Lista de Dados das Notas Fiscais Eletrônicas}

      Application.MessageBox(PChar('Exportação concluída com sucesso!' + #13 +
                                   'Arquivo salvo em: ' + ExtractFilePath(sArquivo)), 'MS2000 - Exportação MODEC - Nfe', MB_ICONINFORMATION);
    end;
   finally
    progress.Visible  := False;
    progress.Position := 0;
  end;
end;

procedure Tf_ExpModecNfe.InsereImpostos(valor : real; base_calculo : real; aliquota : real; imposto: String; Sequencial : Integer);
var
  teste : integer;
begin
  sDados := 'T';

  sDados := sDados + FormatFloat('00000', Sequencial);

  sDados := sDados + imposto + CompletaStr('',10-length(imposto));

  sAux   := FormatFloat('0.00',base_calculo);
  sAux   := TrocaVirguloPorPonto(sAux);
  sAux   := CompletaZeros(sAux,20-length(sAux));
  sDados := sDados + sAux;

  teste := length(sAux);

  sAux   := FormatFloat('0.00',aliquota);
  sAux   := TrocaVirguloPorPonto(sAux);
  sAux   := CompletaZeros(sAux,20-length(sAux));
  sDados := sDados + sAux;

  teste := length(sAux);

  sAux   := FormatFloat('0.00',valor);
  sAux   := TrocaVirguloPorPonto(sAux);
  sAux   := CompletaZeros(sAux,20-length(sAux));
  sDados := sDados + sAux;

  teste := length(sAux);  

  sDados := sDados + CompletaZeros('',20) + CompletaZeros('',20);

  sDados := sDados + CompletaZeros('',20) + CompletaStr('',5);

  sDados := sDados + CompletaStr('',5) + CompletaStr('',10) + CompletaZeros('',20);

  sDados := sDados + '00000   ';

  InsereTxt(sDados, sArquivo);

  iLinhas := iLinhas + 1;
end;

procedure Tf_ExpModecNfe.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_ExpModecNfe.txtDtEmissaoKeyPress(Sender: TObject;
   var Key: Char);
  var data:TDate;
begin

if not (Key in [#8]) then begin
  If Length(txtDtEmissao.text) = 2 Then begin
   txtDtEmissao.text := txtDtEmissao.text + '/';
   txtDtEmissao.SelStart := 4 ;
  End;
  If Length(txtDtEmissao.text) = 5 Then begin
   txtDtEmissao.text := txtDtEmissao.text + '/';
   txtDtEmissao.SelStart := 7 ;
  End;
  If Length(txtDtEmissao.text)= 9 Then begin
    try
      data := StrToDate(txtDtEmissao.text);
    except
      showMessage('Data invalida');
    End;
  End;
End;
  if not (Key in ['0'..'9',#8]) then
   abort;
end;

procedure Tf_ExpModecNfe.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     F_MSCOMEX.MODECNFe1.Enabled := True;
     f_ExpModecNfe := Nil;
     Action := caFree;
end;

end.

