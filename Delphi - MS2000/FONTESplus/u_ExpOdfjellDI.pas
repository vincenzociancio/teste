unit u_ExpOdfjellDI;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ComCtrls, Mask, Buttons, ExtCtrls, Db, DBTables;

Const
  icms_tres_porcento = 0.97;  

type
  Tf_ExpOdfjellDI = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnSalvar: TBitBtn;
    Panel3: TPanel;
    Label14: TLabel;
    ME_nossaref: TMaskEdit;
    Progress: TProgressBar;
    GroupBox1: TGroupBox;
    gridAdicao: TDBGrid;
    q_Processo: TQuery;
    SaveDialog: TSaveDialog;
    dsProcesso: TDataSource;
    q_total_taxa_siscomex: TQuery;
    q_total_taxa_siscomextotal_taxa: TFloatField;
    q_total_produtos: TQuery;
    q_total_produtosValor_Total: TFloatField;
    q_ProcessoCodigo: TStringField;
    q_ProcessoDT_REGISTRO_DI: TStringField;
    q_ProcessoNR_DECLARACAO_IMP: TStringField;
    q_ProcessoAdicao: TStringField;
    q_ProcessoSeq_Adicao: TSmallintField;
    q_ProcessoSequencial: TStringField;
    q_ProcessoProduto: TStringField;
    q_ProcessoDescricao_Produto: TMemoField;
    q_ProcessoDescricao_Produto_ing: TMemoField;
    q_ProcessoPRODUTO_PORT: TStringField;
    q_ProcessoPRODUTO_ING: TStringField;
    q_ProcessoRazao_Social: TStringField;
    q_ProcessoNCM: TStringField;
    q_ProcessoQuantidade: TFloatField;
    q_ProcessoVMLE: TFloatField;
    q_ProcessoValor_Total: TFloatField;
    q_ProcessoAliq_NCM_II: TFloatField;
    q_ProcessoAliq_NCM_IPI: TFloatField;
    q_ProcessoAliq_PIS_PASEP: TFloatField;
    q_ProcessoAliq_COFINS: TFloatField;
    q_ProcessoAliq_ICMS: TFloatField;
    q_ProcessoAliq_ICMS_EXTRA: TFloatField;
    q_ProcessoVALOR_II: TFloatField;
    q_ProcessoVALOR_IPI: TFloatField;
    q_ProcessoVALOR_COFINS: TFloatField;
    q_ProcessoVALOR_PIS_PASEP: TFloatField;
    q_ProcessoFOB: TFloatField;
    q_ProcessoTaxa_conversao: TFloatField;
    q_ProcessoVA_NEW: TFloatField;
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSalvarClick(Sender: TObject);
  private
    function Completastr(texto: String; tamanho: integer): string;
    function  CompletaZeros(sCampo : String; iTam: Integer = -1): String;
    procedure InsereTxt(sTexto, sArquivo: String);
    function  TiraCaracter(Texto, Caracter: string): string;
    function  TrocaVirguloPorPonto(Texto: string): string;

    procedure TrazBase_ICMS;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_ExpOdfjellDI: Tf_ExpOdfjellDI;
  sDados, sAux, sArquivo : String;
  iLinhas : Integer;

  aliq_ICMS,
  aliq_IPI,
  aliq_II,
  aliq_PIS,
  aliq_CONFINS,
  aliq_ICMS_valor : Double;

  temp_va,
  tempii,
  temp_ipi,
  temp_tx,
  temp_confis,
  temp_pis,
  constante,
  dif_icms,

  valor_total_prod_taxsis,
  valor_total_produtos,
  valor_total_taxa_siscomex : Double;

  base_ipi, base_calculo_icms : Extended;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_ExpOdfjellDI.ME_nossarefChange(Sender: TObject);
begin
  if (Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8)
   then Exit;

  q_Processo.Close;
  q_Processo.Params[0].Value := me_nossaref.Text;
  q_Processo.Open;

  btnSalvar.Enabled := (q_Processo.RecordCount > 0);

  if (q_Processo.RecordCount = 0)
   then begin
     Application.MessageBox('Processo não encontrado ou não contém todas as informações suficientes','MS2000 - Exportação ODFJELL - DI', MB_ICONINFORMATION);
     ME_nossaref.Clear;
   end;  
end;

procedure Tf_ExpOdfjellDI.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_ExpOdfjellDI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  F_MSCOMEX.ODFJELLDi1.Enabled := True;
  f_ExpOdfjellDI               := Nil;
  Action                       := caFree;
end;

function Tf_ExpOdfjellDI.Completastr(texto: String; tamanho: integer): string;
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

function Tf_ExpOdfjellDI.CompletaZeros(sCampo : String; iTam: Integer = -1): String;
var
  sAux : String;
  i: integer;
begin
  sAux := '';

  for i := 1 to iTam do
    sAux := '0' + sAux;

  Result := sAux + sCampo;
end;

function Tf_ExpOdfjellDI.TiraCaracter(Texto, Caracter: string): string;
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

procedure Tf_ExpOdfjellDI.InsereTxt(sTexto, sArquivo: String);
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

function Tf_ExpOdfjellDI.TrocaVirguloPorPonto(Texto : string): string;
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


procedure Tf_ExpOdfjellDI.btnSalvarClick(Sender: TObject);
var
  i : Integer;
  F: File;

  procedure LimpaValores;
   begin
     aliq_ICMS       := 0;
     aliq_IPI        := 0;
     aliq_II         := 0;
     aliq_PIS        := 0;
     aliq_CONFINS    := 0;
     aliq_ICMS_valor := 0;

     temp_va     := 0;
     tempii      := 0;
     temp_ipi    := 0;
     temp_tx     := 0;
     temp_confis := 0;
     temp_pis    := 0;
     constante   := 0;
     dif_icms    := 0;

     valor_total_prod_taxsis   := 0;
     valor_total_produtos      := 0;
     valor_total_taxa_siscomex := 0;

     base_ipi                  := 0;
     base_calculo_icms         := 0;
   end;

begin
  sDados   := '';
  sAux     := '';
  sArquivo := '';

  i       := 0;
  iLinhas := 0;

  try
    SaveDialog.InitialDir := ExtractFileDir(Application.ExeName);

    if SaveDialog.Execute
     then begin
       sArquivo := SaveDialog.FileName;

       if FileExists(sArquivo)
        then begin
          AssignFile(F, sArquivo);
          Erase(F);
        end;

       progress.Visible  := True;
       Progress.Position := 0;
       Progress.Max := q_Processo.RecordCount;


       q_Processo.First;
       try
         try
           while not q_Processo.Eof do
            begin
              Progress.Position := Progress.Position + 1;
              Progress.Repaint;

              LimpaValores;

              TrazBase_ICMS;

              {Ano DI}
              sDados := Copy(q_ProcessoDT_REGISTRO_DI.AsString,5,4) + '|';

              {Num. DI}
              sDados := sDados + Copy(q_ProcessoNR_DECLARACAO_IMP.AsString,1,10) + '|';

              {Adicao}
              sDados := sDados + Copy(q_ProcessoAdicao.AsString,1,3) + '|';

              {Seq. Adicao}
              sDados := sDados + Copy(q_ProcessoSeq_Adicao.AsString,1,4) + '|';

              {Part Number}
              sDados := sDados + Copy(q_ProcessoProduto.AsString,1,25) + '|';

              {Desc. Produto}
              sAux := StringReplace(q_ProcessoDescricao_Produto.Value, #13#10,' ',[rfreplaceall] );

              sAux := StringReplace(sAux, '|',' ',[rfreplaceall] );

              sDados := sDados + sAux + '|';

              {Desc. Produto Inglês}
              sAux := StringReplace(q_ProcessoDescricao_Produto_ing.Value, #13#10,' ',[rfreplaceall] );

              sAux := StringReplace(sAux, '|',' ',[rfreplaceall] );

              sDados := sDados + sAux + '|';

              {Fabricante}
              sDados := sDados + Copy(q_ProcessoRazao_Social.AsString,1,40) + '|';

              {Ncm}
              sDados := sDados + Copy(q_ProcessoNCM.AsString,1,10) + '|';

              {Qtd}
              sDados := sDados + FormatFloat('0.00',q_ProcessoQuantidade.AsFloat) + '|';

              {Aliq II}
              sDados := sDados + FormatFloat('0.00',q_ProcessoAliq_NCM_II.AsFloat) + '|';

              {Aliq IPI}
              sDados := sDados + FormatFloat('0.00',q_ProcessoAliq_NCM_IPI.AsFloat) + '|';

              {Aliq PIS}
              sDados := sDados + FormatFloat('0.00',q_ProcessoAliq_PIS_PASEP.AsFloat) + '|';

              {Aliq COFINS}
              sDados := sDados + FormatFloat('0.00',q_ProcessoAliq_COFINS.AsFloat) + '|';

              {Aliq ICMS}
              sDados := sDados + FormatFloat('0.00',q_ProcessoAliq_ICMS.AsFloat) + '|';

              {Aliq FECP}
              sDados := sDados + FormatFloat('0.00',q_ProcessoAliq_ICMS_EXTRA.AsFloat) + '|';

              {Base IPI}
              sDados := sDados + FormatFloat('0.00000000',base_ipi) + '|';

              {Base ICMS}
              sDados := sDados + FormatFloat('0.00000000',base_calculo_icms) + '|';

              InsereTxt(sDados, sArquivo);

              q_Processo.Next;

              Application.ProcessMessages;
            end;
           {Encerramento do Arquivo}
         except
           Application.MessageBox('Erro na geração do arquivo, envie o print para o mssistemas.','Aviso',MB_ICONWARNING);
           progress.Visible  := False;
           progress.Position := 0;
           Abort;
         end;
       finally
         Application.MessageBox('Arquivo gerado com sucesso.','Informação',MB_ICONINFORMATION);
       end;
     end;
  finally
    progress.Visible  := False;
    progress.Position := 0;
  end;
end;

procedure Tf_ExpOdfjellDI.TrazBase_ICMS;
begin
  q_total_produtos.Params[0].asstring := me_nossaref.text;
  q_total_produtos.Open;
  valor_total_produtos := q_total_produtosValor_Total.AsFloat;
  q_total_produtos.Close;

  q_total_taxa_siscomex.Params[0].asstring := me_nossaref.text;
  q_total_taxa_siscomex.Open;
  valor_total_taxa_siscomex := q_total_taxa_siscomextotal_taxa.AsFloat;
  q_total_taxa_siscomex.Close;

  valor_total_prod_taxsis := valor_total_produtos + valor_total_taxa_siscomex;
  constante :=  valor_total_prod_taxsis / valor_total_produtos;

  aliq_ICMS    := (q_ProcessoAliq_ICMS.AsFloat + q_ProcessoAliq_ICMS_EXTRA.AsFloat)/100;
  aliq_IPI     := (q_ProcessoAliq_NCM_IPI.AsFloat)/100;
  aliq_II      := (q_ProcessoAliq_NCM_II.AsFloat)/100;
  aliq_PIS     := (q_ProcessoAliq_PIS_PASEP.AsFloat)/100;
  aliq_CONFINS := (q_ProcessoAliq_COFINS.AsFloat)/100;

  temp_va     := q_ProcessoVA_NEW.AsFloat;
  tempii      := (q_Processovalor_ii.asfloat/q_Processofob.asfloat)*(q_Processovmle.asfloat*q_Processotaxa_conversao.asfloat);
  temp_ipi    := (q_Processovalor_ipi.asfloat/q_Processofob.asfloat)*(q_Processovmle.asfloat*q_Processotaxa_conversao.asfloat);
  temp_tx     := (q_Processovalor_total.asfloat*constante)-q_Processovalor_total.asfloat;
  temp_confis := (q_Processovalor_cofins.asfloat/q_Processofob.asfloat)*(q_Processovmle.asfloat*q_Processotaxa_conversao.asfloat);
  temp_pis    := (q_Processovalor_pis_pasep.asfloat/q_Processofob.asfloat)*(q_Processovmle.asfloat*q_Processotaxa_conversao.asfloat);
  dif_icms    := ((100-(q_ProcessoAliq_ICMS.AsFloat+q_ProcessoAliq_ICMS_EXTRA.AsFloat))/100);

  if  dif_icms = icms_tres_porcento
   then base_calculo_icms := (temp_va + temp_tx) / dif_icms
   else base_calculo_icms := (temp_va + tempii + temp_ipi + temp_tx + temp_pis + temp_confis) / dif_icms;

  base_ipi := q_processoVA_NEW.AsFloat + ((q_processovalor_ii.asfloat/q_processofob.asfloat)*(q_processovmle.asfloat*q_processotaxa_conversao.asfloat));
end;

end.

