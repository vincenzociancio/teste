{$A+,B-,C+,D+,E-,F-,G+,H+,I+,J+,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00020000}
{$IMAGEBASE $00040000}
{$APPTYPE GUI}
unit u_prodarjicms;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Grids, DBGrids, Buttons, ComCtrls,
  DBCtrls, ActnList, jpeg, QRExport, ComObj, ActiveX;
//  , pBarcode, pCode25,
//  pCode25Int;

type
  TF_prodarjicms = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    pnlprincipal: TPanel;
    me_vencimento: TMaskEdit;
    me_nome: TMaskEdit;
    me_end: TMaskEdit;
    me_mun: TMaskEdit;
    me_uf: TMaskEdit;
    me_cep: TMaskEdit;
    me_rec: TMaskEdit;
    Image1: TImage;
    me_insc: TMaskEdit;
    me_codrec: TMaskEdit;
    me_cnpj: TMaskEdit;
    me_docorigem: TMaskEdit;
    me_per: TMaskEdit;
    me_valprincipal: TMaskEdit;
    me_atumonet: TMaskEdit;
    me_mora: TMaskEdit;
    me_multa: TMaskEdit;
    me_totalarec: TMaskEdit;
    me_fecp: TMaskEdit;
    me_ms: TMaskEdit;
    me_di: TMaskEdit;
    me_aliquota: TMaskEdit;
    Label2: TLabel;
    Label3: TLabel;
    me_cif: TMaskEdit;
    me_ii: TMaskEdit;
    me_ipi: TMaskEdit;
    me_ad: TMaskEdit;
    me_bc: TMaskEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    b_imp: TBitBtn;
    b_impv: TBitBtn;
    me_vencimento2: TMaskEdit;
    QRTextFilter1: TQRTextFilter;
    BitBtn1: TBitBtn;
    Image2: TImage;
    Label1: TLabel;
    me_pis: TMaskEdit;
    Label10: TLabel;
    me_cofins: TMaskEdit;
    t_propis: TTable;
    ds_propis: TDataSource;
    q_piscofinstrib: TQuery;
    q_fobc: TQuery;
    q_acertafretseg: TQuery;
    qrALIQ: TQuery;
    t_propisEmpresa: TStringField;
    t_propisFilial: TStringField;
    t_propisProcesso: TStringField;
    t_propisAdicao: TStringField;
    t_propisNCM: TStringField;
    t_propisVA: TFloatField;
    t_propisOT: TFloatField;
    t_propisDA: TFloatField;
    t_propisAliq_NCM_II: TFloatField;
    t_propisAliq_NCM_IPI: TFloatField;
    t_propisAliq_PIS_PASEP: TFloatField;
    t_propisAliq_COFINS: TFloatField;
    t_propisAliq_ICMS: TFloatField;
    t_propisAliq_ICMS_EXTRA: TFloatField;
    t_propisBASEC_PISCOFINS: TFloatField;
    t_propisBASEC_ICMS: TFloatField;
    t_propisVALOR_II: TFloatField;
    t_propisVALOR_IPI: TFloatField;
    t_propisVALOR_ICMS: TFloatField;
    t_propisVALOR_ICMS_EXTRA: TFloatField;
    t_propisVALOR_PIS_PASEP: TFloatField;
    t_propisVALOR_COFINS: TFloatField;
    t_propisPrazo_permanencia: TIntegerField;
    t_propisVA_proporcional: TFloatField;
    t_propisAliq_NCM_II_proporcional: TFloatField;
    t_propisAliq_NCM_IPI_proporcional: TFloatField;
    t_propisFOB: TFloatField;
    q_piscofinstribProcesso: TStringField;
    q_piscofinstribAdicao: TStringField;
    q_piscofinstribRegime_Tributacao_II: TStringField;
    q_piscofinstribRegime_Tributacao_IPI: TStringField;
    q_piscofinstribDESCRICAO: TStringField;
    q_piscofinstribTratamento_Tributario: TStringField;
    q_piscofinstribFundamento_Legal: TStringField;
    qrALIQProcesso: TStringField;
    qrALIQAliq_ICMS: TFloatField;
    qrALIQAliq_ICMS_EXTRA: TFloatField;
    q_fobcProcesso: TStringField;
    q_fobcqvalor: TFloatField;
    q_acertafretsegProcesso: TStringField;
    q_acertafretsegRegime_Tributacao_II: TStringField;
    q_acertafretsegprepaid: TFloatField;
    q_acertafretsegcollect: TFloatField;
    q_acertafretsegternac: TFloatField;
    q_acertafretsegseguro: TFloatField;
    q_acertafretsegMoeda: TStringField;
    q_acertafretsegTaxa_conversao: TFloatField;
    q_acertafretsegTaxa_conversaoc: TFloatField;
    q_acertafretsegMoeda_1: TStringField;
    q_acertafretsegTaxa_conversaofre: TFloatField;
    q_acertafretsegTaxa_conversaocfre: TFloatField;
    q_acertafretsegMoeda_2: TStringField;
    q_acertafretsegTaxa_conversaoseg: TFloatField;
    q_acertafretsegTaxa_conversaocseg: TFloatField;
    Label11: TLabel;
    ME_ICMS: TMaskEdit;
    ME_ICMS_EXTRA: TMaskEdit;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosdecl: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosCliente: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosendereco: TStringField;
    qrProcessosmun: TStringField;
    qrProcessosUF: TStringField;
    qrProcessosCEP: TStringField;
    qrProcessosinsc: TStringField;
    qrProcessosValor_FOB: TFloatField;
    qrProcessosValor_CIF: TFloatField;
    qrProcessosValor_FOBC: TFloatField;
    qrProcessosValor_CIFC: TFloatField;
    qrProcessosII: TFloatField;
    qrProcessosIPI: TFloatField;
    qrProcessosTaxa_SISCOMEX: TFloatField;
    qrProcessosIIc: TFloatField;
    qrProcessosIPIc: TFloatField;
    qrProcessosTaxa_SISCOMEXc: TFloatField;
    qrProcessosNR_DECLARACAO_IMP: TStringField;
    qrProcessosNR_DECLARACAO_IMPC: TStringField;
    qrProcessosURF_chegada: TStringField;
    qrProcessosData_Chegada_URF_Cheg: TDateTimeField;
    qrProcessosDT_DESEMBARACO: TDateTimeField;
    qrProcessosURF_Despacho: TStringField;
    qrProcessosFechado: TIntegerField;
    qrProcessosAtivo: TIntegerField;
    qrProcessosImportador: TStringField;
    qrProcessosPag_proporcional: TIntegerField;
    qrProcessosResponsavel_Empresa: TStringField;
    qrProcessosResponsavel_EmpresaC: TStringField;
    qrProcessosBASE_ICMS: TIntegerField;
    qrProcessosTR_IMPRESSOES: TIntegerField;
    qrProcessosTR_IMPRESSOES_FECP: TIntegerField;
    qrProcessosNOMESUPER: TStringField;
    qrProcessosSENHASUPER: TStringField;
    gb_senha: TGroupBox;
    L_SUPER: TLabel;
    Label12: TLabel;
    e_senha: TEdit;
    b_ok: TBitBtn;
    b_cancela: TBitBtn;
    Panel1: TPanel;
    cb1: TImage;
    LCODB: TLabel;
    l_imp: TLabel;
    me_totalarec1: TMaskEdit;
    me_valprincipal1: TMaskEdit;
    qrProcessosTipo: TStringField;
    t_propisRegime_Tributacao_II: TStringField;
    t_propisRegime_Tributacao_IPI: TStringField;
    t_propisCD_REGIME_TRIBUTAR_PISCOFINS: TStringField;
    t_propisTratamento_Tributario: TStringField;
    t_propisBASEC_ICMS_ACRESC: TFloatField;
    t_propisVALOR_ICMS_ACRESC: TFloatField;
    t_propisVALOR_ICMS_ACRESC_EXTRA: TFloatField;
    t_propisRateio_Acresc_ICMS: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure me_aliquotaExit(Sender: TObject);
    procedure me_codrecExit(Sender: TObject);
    procedure me_vencimentoExit(Sender: TObject);
    procedure b_impClickOK(Sender: TObject);
    procedure b_impClick(Sender: TObject);
    procedure b_impvClick(Sender: TObject);
    procedure CelText(Row : Integer; Col : Integer; Text : String; True : Boolean);
    procedure CelText2(Row : Integer; Col : Integer; Text : String; True : Boolean );
    procedure BitBtn1Click(Sender: TObject);
    procedure me_bcEnter(Sender: TObject);
    procedure me_aliquotaKeyPress(Sender: TObject; var Key: Char);
    procedure b_cancelaClick(Sender: TObject);
    procedure b_okClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_prodarjicms: TF_prodarjicms;
  ii_total,ipi_total,bc_total,pis_total,cofins_total,aliq_icms,aliq_icms_extra,da_total,cif_proporcional, acresc_icms:real;
  MSWord : Variant;
  basedigi,cifdigitado:boolean;
  qbarcode:string;
implementation

uses U_MSCOMEX, U_qrdarjicms, U_qrdarjicmsv;

{$R *.DFM}


function Modulo10(Valor: String) : string;
{
   Rotina usada para cálculo de alguns dígitos verificadores
   Pega-se cada um dos dígitos contidos no parâmetro VALOR, da direita para a
   esquerda e multiplica-se por 2121212...
   Soma-se cada um dos subprodutos. Caso algum dos subprodutos tenha mais de um
   dígito, deve-se somar cada um dos dígitos. (Exemplo: 7*2 = 14 >> 1+4 = 5)
   Divide-se a soma por 10.
   Faz-se a operação 10-Resto da divisão e devolve-se o resultado dessa operação
   como resultado da função Modulo10.
   Obs.: Caso o resultado seja maior que 9, deverá ser substituído por 0 (ZERO).
}
var
   Auxiliar : string;
   Contador, Peso : integer;
   Digito : integer;
begin
   Auxiliar := '';
   Peso := 2;
   for Contador := Length(Valor) downto 1 do
   begin
      Auxiliar := IntToStr(StrToInt(Valor[Contador]) * Peso) + Auxiliar;
      if Peso = 1 then
         Peso := 2
      else
         Peso := 1;
   end;

   Digito := 0;
   for Contador := 1 to Length(Auxiliar) do
   begin
      Digito := Digito + StrToInt(Auxiliar[Contador]);
   end;
   Digito := 10 - (Digito mod 10);
   if (Digito > 9) then
      Digito := 0;
   Result := IntToStr(Digito);
end;



{Função para o cálculo do DV (Módulo 10) dos campos da Linha Digitável FEBRABAN}
{Criada por BRASIDATA}
function FBMod10(N : string) : Integer;
VAR
  ASomar, Soma, X , Pn : Integer;
  Produto : String;
begin
  X := 2;
  Soma := 0;
  For Pn := Length(N) downto 1 do
  begin
    Produto := IntToStr(StrToInt(N[Pn]) * X);
    IF StrToInt(Produto) > 9 Then
      ASomar:=  StrToInt(Produto[1]) + StrToInt(Produto[2])
    else
      ASomar:= StrToInt(Produto);

    Soma := Soma + ASomar;
    IF X = 2 Then X := 1 else X := 2;
  end;

  Result := 10 - (Soma mod 10);
  IF Result > 9 then Result := 0;
//  IF Result = 1 then Result := 0;
//  IF Result > 9 then Result := 1;
end;

{Função para o cálculo do DV (Módulo 11) do Código de Barras FEBRABAN, do Nosso Número, Codigo do Cedente e Agência CAIXA ECONÔMICA }
{Criada por BRASIDATA}
function FBMod11(N : string) : Integer;
VAR
  Soma, X , Pn : Integer;
begin
  X := 2;
  Soma := 0; 
  For Pn := Length(N) downto 1 do 
  begin 
    Soma := Soma + (StrToInt(N[Pn]) * X); 
    inc(X); 
    IF X = 10 Then X := 2; 
  end; 

  Result := 11 - (Soma mod 11); 
  IF Result > 9 Then  Result := 1; 
//    IF Length(N)=43 Then
//      Result := 1
//  else
//      Result := 0;
end;


{Função para o cálculo do DV (Módulo 11) da Agência, Código do Cedente e Nosso Número BB } 
{Criada por BRASIDATA} 
function BBMod11(N : string) : String;
VAR 
  Soma, X , Pn : Integer; 
begin 
  X := 9; 
  Soma := 0; 
  For Pn := Length(N) downto 1 do 
  begin 
    Soma := Soma + (StrToInt(N[Pn]) * X);
    inc(X,-1); 
    IF X = 1 Then X := 9; 
  end; 

  Result := IntToStr(Soma mod 11); 
  IF Result = '1' Then Result := '0';
  IF Result = '10' Then Result := '1';

end;


{Código de Barras 2 interpolado 5 FEBRABAN sem precisar de componente}
Procedure CriaCodigo(Cod : String; Imagem : TCanvas);

Const 
  digitos : array['0'..'9'] of string[5]= ('00110',  '10001',  '01001',  '11000',  '00101',  '10100',  '01100',  '00011',  '10010',  '01010'); 
Var 
  Numero : String; 
  Cod1 : Array[1..1000] Of Char; 
  Cod2 : Array[1..1000] Of Char; 
  Codigo : Array[1..1000] Of Char; 
  Digito : String; 
  c1,c2 : Integer; 
  x,y,z,h : LongInt; 
  a,b,c,d : TPoint; 
  I : Boolean; 
begin
  Numero := Cod; 
  For x := 1 to 1000 Do 
  begin 
    Cod1 [x] := #0; 
    Cod2 [x] := #0; 
    Codigo[x] := #0; 
  end; 
  c1 := 1; 
  c2 := 1; 
  x := 1; 
  For y := 1 to Length(Numero) div 2 do 
  begin 
    Digito := Digitos[Numero[x ]]; 
    For z := 1 to 5 do
    begin 
      Cod1[c1] := Digito[z]; 
      Inc(c1); 
    end; 
    Digito := Digitos[Numero[x+1]]; 
    For z := 1 to 5 do 
    begin 
      Cod2[c2] := Digito[z]; 
      Inc(c2); 
    end; 
    Inc(x,2); 
  end; 
  y := 5; 
  Codigo[1] := '0'; 
  Codigo[2] := '0'; 
  Codigo[3] := '0'; 
  Codigo[4] := '0'; { Inicio do Codigo } 
  For x := 1 to c1-1 do 
  begin 
    Codigo[y] := Cod1[x]; Inc(y); 
    Codigo[y] := Cod2[x]; Inc(y); 
  end; 
  Codigo[y] := '1'; Inc(y); { Final do Codigo } 
  Codigo[y] := '0'; Inc(y); 
  Codigo[y] := '0'; 
  Imagem.Pen .Width := 1; 
  Imagem.Brush.Color := ClWhite; 
  Imagem.Pen .Color := ClWhite;
  a.x := 1; a.y := 0; 
  b.x := 1; b.y := 79; 
  c.x := 2000; c.y := 79; 
  d.x := 2000; d.y := 0; 
  Imagem.Polygon([a,b,c,d]); 
  Imagem.Brush.Color := ClBlack; 
  Imagem.Pen .Color := ClBlack; 
  x := 0; 
  i := True; 
  for y:=1 to 1000 do 
  begin 
    If Codigo[y] <> #0 Then 
    begin 
      If Codigo[y] = '0' then 
        h := 1 
      else 
        h := 3; 
      a.x := x; a.y := 0; 
      b.x := x; b.y := 79; 
      c.x := x+h-1; c.y := 79; 
      d.x := x+h-1; d.y := 0; 
      If i Then 
        Imagem.Polygon([a,b,c,d]); 
      i := Not(i); 
      x := x + h; 
    end; 
  end; 
end;


procedure TF_prodarjicms.FormActivate(Sender: TObject);
  var
    s,w,h,m,p : integer;
    mc : string;

begin

//if not assigned (qr_darjicms) then
// Application.CreateForm(Tqr_darjicms, qr_darjicms);

   Left := 1;
   Top  := 1;
   If Not Assigned( qr_darjicms ) Then
     Application.CreateForm(Tqr_darjicms, qr_darjicms)
   else begin // eduardo.souza 27/06/2011
     qr_darjicms.Destroy;
     qr_darjicms := NIL;
     Application.CreateForm(Tqr_darjicms, qr_darjicms)
   end;




 {   h := Height;
     w := width ;

     Height := 0;
     width := 0;

     if h>w then m := h
     else m := w;

     p := 10;

     mc := floattostrf(abs(m/p),fffixed,5,0);
     m := strtoint(mc)-1;

     for s := 0 to m do begin

         if (s*p)<h then Height := s*p;
         if (s*p)<w then width := s*p;

     end;

     Height := h;
     width := w;      }
end;

procedure TF_prodarjicms.ME_nossarefChange(Sender: TObject);
var q_suspe,cnpj:string;
qfob,qprepaid,qcollect,qternac,qcif,qseguro:real;
begin
     If Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8 Then
        Exit;
     // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
     If (IsClosedProcess( me_nossaref.Text, F_prodarjicms )) Then
       Abort;
     //--
     Screen.Cursor := crHourGlass;

     {With qrProcessos Do Begin
         Close;   }
         {sql.Clear;
         sql.add('SELECT Processos.Empresa, Processos.Filial, Processos.Codigo AS Processo, Processos.Tipo_Declaracao AS decl, Processos.Data, ');
         sql.add('Importadores.Razao_Social AS Cliente,  Importadores.CNPJ_CPF_COMPLETO AS qcnpj,Endereco +", "+LTrim(RTrim([numero]))+" - "+LTrim(RTrim([complemento]))+" - "+LTrim(RTrim([bairro])) AS ende, ');
         sql.add('Importadores.Cidade AS mun, Importadores.UF, Importadores.CEP, Importadores.Inscricao_Estadual AS insc, Processos.Valor_FOB, Processos.Valor_CIF, Processos.Valor_FOBC, Processos.Valor_CIFC,  ');
         sql.add('Processos_registro_impostos.II, Processos_registro_impostos.IPI, Processos_registro_impostos.Taxa_SISCOMEX, Processos_registro_impostos.IIc, Processos_registro_impostos.IPIc, ');
         sql.add('Processos_registro_impostos.Taxa_SISCOMEXc, Processos.NR_DECLARACAO_IMP, Processos.NR_DECLARACAO_IMPC, Conhecimento_Processo.URF_chegada, Conhecimento_Processo.Data_Chegada_URF_Cheg, ');
         sql.add('Processos.DT_DESEMBARACO, Conhecimento_Processo.URF_Despacho, Processos.Fechado, Importadores.ATIVO, Processos.Importador, Pag_Proporcional , Processos.Responsavel_empresa,  Processos.Responsavel_empresac, Importadores.BASE_ICMS ');
         sql.add('FROM (((Parametros INNER JOIN Processos ON (Parametros.Filial = Processos.Filial) AND (Parametros.Empresa = Processos.Empresa)) LEFT JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) ');
         sql.add('AND (Processos.Empresa = Importadores.Empresa)) INNER JOIN Processos_registro_impostos ON (Processos.Codigo = Processos_registro_impostos.Processo) AND (Processos.Filial = Processos_registro_impostos.Filial) AND ');
         sql.add('(Processos.Empresa = Processos_registro_impostos.Empresa)) LEFT JOIN Conhecimento_Processo ON (Processos.Empresa = Conhecimento_Processo.Empresa) AND (Processos.Filial = Conhecimento_Processo.Filial) ');
         sql.add('AND (Processos.Codigo = Conhecimento_Processo.Processo) ORDER BY Processos.Codigo; ');
         showmessage(sql.Text);}
     {    Open;                          A
     End;
     //Obs: Que porra é essa, aqui!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
     If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin
     }

     // eduardo.souza 28/06/2011
     qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
     qrProcessos.Close;
     qrProcessos.Open;
     If ( Not qrProcessos.IsEmpty ) Then Begin
     {Fim eduardo.souza 02/06/2011}

        if F_MSCOMEX.AcessaPasta(me_nossaref.Text, qrProcessosTipo.AsString, F_prodarjicms)
         then pnlPrincipal.Enabled := True;

        pnlPrincipal.Visible := True;

        me_vencimento.text := '     /     /  '+copy(datetostr(date()),7,4);
        me_vencimento2.text := datetostr(date());
        me_nome.text := qrprocessoscliente.asstring;
        me_end.text  := qrprocessosendereco.asstring;
        me_mun.text  := qrprocessosmun.asstring;
        me_uf.text   := qrprocessosuf.asstring;
        me_cep.text  := qrprocessoscep.asstring;
        me_rec.text  := 'ICMS IMPORTAÇÃO';
        me_insc.text := qrprocessosinsc.asstring;
           cnpj := qrprocessosqcnpj.asstring;
           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

        me_cnpj.text := cnpj;//qrprocessosqcnpj.asstring;
        me_ms.text   := me_nossaref.text;
        me_codrec.text := '024-8';

        if qrprocessosdecl.asstring <> '12' then begin
           me_cif.text := floattostrf(qrprocessosvalor_cif.asfloat,fffixed,15,2);
           me_ii.text  := floattostrf(qrprocessosii.asfloat,fffixed,15,2);
           me_ipi.text  := floattostrf(qrprocessosipi.asfloat,fffixed,15,2);
           me_ad.text  := floattostrf(qrprocessostaxa_siscomex.asfloat,fffixed,15,2);
           me_di.text  := copy(qrprocessosnr_declaracao_imp.asstring,1,2)+'/'+
                          copy(qrprocessosnr_declaracao_imp.asstring,3,7)+'-'+
                          copy(qrprocessosnr_declaracao_imp.asstring,10,1);
        end
        else begin
           if MessageDlg(v_usuario+', Este processo gerou apenas 1 DI?' , mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
              ////calcular o cif
              me_cif.text := '0,00';

              qfob := 0;

              q_fobc.close;
              q_fobc.Params[0].asstring := me_nossaref.text;
              q_fobc.open;
              if q_fobc.RecordCount>0 then qfob := q_fobcqvalor.asfloat;

               ///acerta fretes e seguro da di de consumo
               q_acertafretseg.close;
               q_acertafretseg.params[0].asstring := me_nossaref.text;
               q_acertafretseg.params[1].asstring := '1';
               q_acertafretseg.open;


//               qprepaid := ((q_acertafretsegprepaid.asfloat*q_acertafretsegtaxa_conversaoc.asfloat));///q_acertafretsegtaxa_conversaocfre.asfloat);
//               qcollect := ((q_acertafretsegcollect.asfloat*q_acertafretsegtaxa_conversaoc.asfloat));///q_acertafretsegtaxa_conversaocfre.asfloat);
//               qternac  := ((q_acertafretsegternac.asfloat*q_acertafretsegtaxa_conversaoc.asfloat));///q_acertafretsegtaxa_conversaocfre.asfloat);

               qprepaid := ((q_acertafretsegprepaid.asfloat*q_acertafretsegtaxa_conversaocfre.asfloat));
               qcollect := ((q_acertafretsegcollect.asfloat*q_acertafretsegtaxa_conversaocfre.asfloat));
               qternac  := ((q_acertafretsegternac.asfloat*q_acertafretsegtaxa_conversaocfre.asfloat));


               qseguro  := 0;
               if q_acertafretsegseguro.asfloat>0 then begin
                  qseguro := ((q_acertafretsegseguro.asfloat*q_acertafretsegtaxa_conversaoc.asfloat));///q_acertafretsegtaxa_conversaocseg.asfloat);
               end;

              qcif := qfob+(qprepaid+qcollect-qternac)+qseguro;

              me_cif.text := floattostrf(qcif,fffixed,15,2);
              //showmessage(me_cif.text);
              me_ii.text  := floattostrf(qrprocessosii.asfloat,fffixed,15,2);
              me_ipi.text  := floattostrf(qrprocessosipi.asfloat,fffixed,15,2);
              me_ad.text  := floattostrf(qrprocessostaxa_siscomex.asfloat,fffixed,15,2);
              me_di.text  := copy(qrprocessosnr_declaracao_imp.asstring,1,2)+'/'+
                          copy(qrprocessosnr_declaracao_imp.asstring,3,7)+'-'+
                          copy(qrprocessosnr_declaracao_imp.asstring,10,1);

           end
           else begin
              me_cif.text := floattostrf(qrprocessosvalor_cifc.asfloat,fffixed,15,2);
              me_ii.text  := floattostrf(qrprocessosiic.asfloat,fffixed,15,2);
              me_ipi.text  := floattostrf(qrprocessosipic.asfloat,fffixed,15,2);
              me_ad.text  := floattostrf(qrprocessostaxa_siscomexc.asfloat,fffixed,15,2);
              me_di.text  := copy(qrprocessosnr_declaracao_impc.asstring,1,2)+'/'+
                          copy(qrprocessosnr_declaracao_impc.asstring,3,7)+'-'+
                          copy(qrprocessosnr_declaracao_impc.asstring,10,1);
           end;

        end;

        if  qrprocessosnr_declaracao_impc.asstring='' then begin
           ////me_cif.text := floattostrf(qrprocessosvalor_cif.asfloat,fffixed,15,2);
           me_ii.text  := floattostrf(qrprocessosii.asfloat,fffixed,15,2);
           me_ipi.text  := floattostrf(qrprocessosipi.asfloat,fffixed,15,2);
           me_ad.text  := floattostrf(qrprocessostaxa_siscomex.asfloat,fffixed,15,2);
           me_di.text  := copy(qrprocessosnr_declaracao_imp.asstring,1,2)+'/'+
                          copy(qrprocessosnr_declaracao_imp.asstring,3,7)+'-'+
                          copy(qrprocessosnr_declaracao_imp.asstring,10,1);
         end;

        me_docorigem.text := me_di.text;

        t_propis.close;
        t_propis.Filter := 'Processo = '+chr(39)+me_nossaref.text+chr(39);
        t_propis.open;
        
        q_piscofinstrib.close;
        q_piscofinstrib.Params[0].asstring := me_nossaref.text;
        q_piscofinstrib.open;

        qraliq.close;
        qraliq.Params[0].asstring := me_nossaref.text;
        qraliq.open;

        if qraliq.RecordCount>1 then begin
           while not qraliq.eof do begin
                if MessageDlg(v_usuario+', Existe mais de 1 alíquota de ICMS tributada para este processo! Deseja gerar DARJ somente para a alíquota = '+floattostr(qraliqaliq_icms.asfloat)+'% ? ' , mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
                   aliq_icms := qraliqaliq_icms.asfloat;
                   aliq_icms_extra := qraliqaliq_icms_extra.asfloat;
                   qraliq.last;
                end
                else begin
                   qraliq.Next;
                end;
           end;
        end
        else begin
             aliq_icms := qraliqaliq_icms.asfloat;
             aliq_icms_extra := qraliqaliq_icms_extra.asfloat;

//             aliq_icms := 0;//t_propisAliq_ICMS.asfloat;
//             aliq_icms_extra := 0;//t_propisAliq_ICMS_EXTRA.asfloat;
        end;
        
      //  showmessage(floattostr(aliq_icms));
      //  showmessage(floattostr(aliq_icms_extra));
        /// soma as bases de cálculo do icms, pis, cofins
        t_propis.first;
        qcif := 0;
        ii_total := 0;
        ipi_total := 0;
        bc_total := 0;
        pis_total := 0;
        cofins_total := 0;
        da_total := 0;
        cif_proporcional := 0;
        acresc_icms := 0;
        while not t_propis.eof do begin
          q_suspe := '';
          if q_piscofinstrib.Locate('Adicao',t_propisadicao.asstring,[loCaseInsensitive]) then begin
//             if q_piscofinstribRegime_Tributacao_II.asstring='5' then q_suspe := ' -> (SUSPENSÃO)';
             /// incluido dia 13/09/2006, solicitado por Odilma
//             if q_piscofinstribRegime_Tributacao_II.asstring='3' then q_suspe := ' -> (ISENÇÃO)';
             if q_piscofinstribtratamento_tributario.asstring<>'' then q_suspe := ' -> (SUSPENSÃO)';
          end;
//          if q_suspe='' then begin
//          if (t_propisAliq_ICMS.asfloat>0) or (t_propisAliq_ICMS_EXTRA.asfloat>0) then begin
          if ((aliq_icms = t_propisAliq_ICMS.asfloat) and (aliq_icms_extra = t_propisAliq_ICMS_EXTRA.asfloat)) and (q_suspe='') then begin

             qcif     := qcif + t_propisva.asfloat;
             da_total := da_total + t_propisda.asfloat;
             /// mm 26022009
             if (qrprocessosBASE_ICMS.asinteger=0) or ((qrprocessosBASE_ICMS.asinteger=1) and (q_piscofinstribRegime_Tributacao_II.asstring<>'5')) then begin
             ii_total := ii_total+t_propisvalor_ii.asfloat;
             ipi_total := ipi_total+t_propisvalor_ipi.asfloat;
             pis_total := pis_total+t_propisVALOR_PIS_PASEP.asfloat;
             cofins_total := cofins_total+t_propisVALOR_COFINS.asfloat;
             acresc_icms := acresc_icms + t_propisRateio_Acresc_ICMS.AsFloat;
             end;

             bc_total := bc_total+t_propisBASEC_ICMS.asfloat;
             aliq_icms := t_propisAliq_ICMS.asfloat;
             aliq_icms_extra := t_propisAliq_ICMS_EXTRA.asfloat;
          end
          //eduardo.souza 08/09/2011
          else
          //---
          {Leandro Serra - 05/09/2011
          Incluído este código pois quando for suspensão e a recolher ou seja no processo a BASE_ICMS = 1
          e alíquota_icms = 3 e ICMS_EXTRA = 0 estavam com o CIF, AD e Total A recolher = 0
          Solicitado pelo Fabiano Ferrreira}
          If ( aliq_icms = 3 ) Then Begin // eduardo.souza 09/09/2011
            if (t_propisAliq_ICMS.asfloat = 3) or (t_propisAliq_ICMS_EXTRA.asfloat = 0) then begin
               qcif     := qcif + t_propisva.asfloat;
               da_total := da_total + t_propisda.asfloat;

               bc_total := bc_total+t_propisBASEC_ICMS.asfloat;
               aliq_icms := t_propisAliq_ICMS.asfloat;
               aliq_icms_extra := t_propisAliq_ICMS_EXTRA.asfloat;
            end;
          End;
          {Fim do código acima}
          me_aliquota.text := floattostr(aliq_icms);
          me_icms.text := floattostr(aliq_icms);
          me_icms_extra.text := floattostr(aliq_icms_extra);

          /// 1- retirado do tratamento para entrar no caso de isenção
          ///    leandro dia 21/09/2006, solicitado por Jorge
          /// 2- Fazendo tratamento para quando for Admissão e Consumo, calcular apenas para as Adições de Consumo
          ///    leandro dia 27/09/2006, solicitado por Oraldo

         { If qrprocessosdecl.asstring <> '12' Then
             da_total := da_total + t_propisda.asfloat
          Else If q_piscofinstribRegime_Tributacao_II.asstring = '1' Then
             da_total := da_total + t_propisda.asfloat;
          }
          cif_proporcional := cif_proporcional+t_propisva_proporcional.asfloat;
          t_propis.next;
        end;

        me_cif.text := floattostrf(qcif,fffixed,15,7);
        me_ii.text := floattostrf(ii_total,fffixed,15,7);
        me_ipi.text := floattostrf(ipi_total,fffixed,15,7);
        me_pis.text := floattostrf(pis_total,fffixed,15,7);
        me_cofins.text := floattostrf(cofins_total,fffixed,15,7);
        me_ad.text := floattostrf(da_total,fffixed,15,7);


//        bc_total := bc_total/100;
  //      pis_total := pis_total/100;
    //    cofins_total := cofins_total/100;
        basedigi := false;

        v_AlteraPRO := 1;
        If (qrprocessosAtivo.asinteger = 0) then begin
           If (not v_Edita_cliente_inativo = 0 )  then begin
              Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
              v_AlteraPRO := 0;
           end;
        end;
        If (qrprocessosFechado.asinteger = 1) then begin
           If (not v_Edita_Processo_Fechado = 0 )  then begin
                Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
                v_AlteraPRO := 0;
           end
           else v_AlteraPRO := 1;
        end;

        //mm 24/07/2006 - usuariosclientes
        if f_mscomex.q_usucli.recordcount>0 then begin
           if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[]) then begin
              v_autorizadocli := 1;
           end
           else begin
              v_autorizadocli := 0;
           end;
        end
        else begin
              v_autorizadocli := 1;
        end;
        F_MSCOMEX.atualizacpastas(ME_nossaref.text);
        If v_autorizadocli = 1 Then Begin


//           cnpj := qrprocessoscnpj.asstring;
//           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

           cnpj := qrprocessosqcnpj.asstring;
           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

           l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
           pnlPrincipal.Visible := True;

          // eduardo.souza 28/06/2011
          {
          If Not Assigned( qr_darjicms ) Then
            Application.CreateForm(Tqr_darjicms, qr_darjicms)
          else begin
            qr_darjicms.Destroy;
            qr_darjicms := NIL;
            Application.CreateForm(Tqr_darjicms, qr_darjicms)
          end;
          }
          //---------
          me_vencimentoExit(f_prodarjicms);
          me_aliquotaExit(f_prodarjicms);

        End
        Else Begin
           l_cliente.Caption := '';
           pnlPrincipal.Visible := False;
           Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
        End;


     End
     Else Begin
        MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
        l_cliente.Caption := '';
        me_nossaref.Clear;
        pnlPrincipal.Visible := False;

        me_nossaref.SetFocus;
     End;

     Screen.Cursor := crDefault;
end;

procedure TF_prodarjicms.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     f_mscomex.DARJICMS1.Enabled := True;
     F_prodarjicms := Nil;
     Action := caFree;
end;

procedure TF_prodarjicms.me_aliquotaExit(Sender: TObject);
var qaliq,qtaxa:real;
    qstring,qvalor,qdigito,qinsc,qdi:string;
    I:integer;
begin

aliq_icms := strtofloat(me_icms.text);
aliq_icms_extra := strtofloat(me_icms_extra.text);

qtaxa := 1-((aliq_icms+aliq_icms_extra)*0.01);

if not basedigi then  bc_total := 0
else bc_total := strtofloat(me_bc.text);

/////30/11/2006 - cif proporcional
if qrProcessosPag_Proporcional.asinteger = 1 then begin
   if (not cifdigitado) then begin
    if messagedlg(v_usuario+', CIF PROPORCIONAL será digitado?',mtconfirmation,[mbno,mbyes],0)= mrNO then begin
       me_cif.text := floattostrf(cif_proporcional,fffixed,15,2);
    end
    else begin
       cifdigitado := true;
    end;
   end;

end
else begin
   if cif_proporcional>0 then begin
      showmessage(v_usuario+', ATENÇÃO! CIF PROPORCIONAL CÁLCULADO! para utiliza-lo, No processo deverá estar selecionado na abertura o "pagamento proporcional". Está sendo utilizado o CIF INTEGRAL!');
   end;
end;


if (bc_total <= 0) then

//if (not qrprocessosBASE_ICMS.asboolean) then
//   me_bc.text := floattostrf(((strtofloat(me_pis.text)+strtofloat(me_cofins.text)+strtofloat(me_cif.text)+strtofloat(me_ii.text)+strtofloat(me_ipi.text)+strtofloat(me_ad.text))/(qtaxa)),fffixed,15,2)
   me_bc.text := floattostrf(((acresc_icms+strtofloat(me_pis.text)+strtofloat(me_cofins.text)+strtofloat(me_cif.text)+strtofloat(me_ii.text)+strtofloat(me_ipi.text)+strtofloat(me_ad.text))/(qtaxa)),fffixed,15,2)
//else
//   me_bc.text := floattostrf(((strtofloat(me_cif.text)+strtofloat(me_ii.text)+strtofloat(me_ipi.text)+strtofloat(me_ad.text))/(qtaxa)),fffixed,15,2)

else begin

//        me_bc.text := floattostrf(bc_total,fffixed,15,2);
        me_bc.text := floattostrf(bc_total+acresc_icms,fffixed,15,2);
        me_pis.text := floattostrf(pis_total,fffixed,15,2);
        me_cofins.text := floattostrf(cofins_total,fffixed,15,2);


end;

me_valprincipal.text := floattostrf(strtofloat(me_bc.text)*(strtofloat(me_aliquota.text)/100),fffixed,15,2);

{---ticket 1397 - Wellington}
me_valprincipal1.text := floattostrf(strtofloat(me_bc.text)*(1/100),fffixed,15,2);
{---}

//if v_usuario<>'MM' THEN BEGIN
me_totalarec.text := floattostrf(strtofloat(me_valprincipal.text)+
                                 strtofloat(me_atumonet.text)+
                                 strtofloat(me_mora.text)+
                                 strtofloat(me_multa.text),fffixed,15,2);

{---ticket 1397 - Wellington}
me_totalarec1.text := floattostrf(strtofloat(me_valprincipal1.text)+
                                 strtofloat(me_atumonet.text)+
                                 strtofloat(me_mora.text)+
                                 strtofloat(me_multa.text),fffixed,15,2);
{---}

     {   me_cif.text    := floattostrf(strtofloat(me_cif.text),fffixed,15,2);
        me_ii.text     := floattostrf(strtofloat(me_ii.text),fffixed,15,2);
        me_ipi.text    := floattostrf(strtofloat(me_ipi.text),fffixed,15,2);
        me_pis.text    := floattostrf(strtofloat(me_pis.text ),fffixed,15,2);
        me_cofins.text := floattostrf(strtofloat(me_cofins.text),fffixed,15,2);
        me_ad.text     := floattostrf(strtofloat(me_ad.text),fffixed,15,2);    }
//END;



//qstring := inttostr(FBMod10(barcodetela.Barcode));
//qstring := BBMod11(barcodetela.Barcode);

//qstring := BBMod11('0'barcodetela.Barcode);
//                           123456789/1
//qstring := inttostr(FBMod10('00000000960'));
//qstring := BBMod11('00000000960');

qvalor := '00000000000000'+me_totalarec.text;
qvalor := stringreplace(qvalor,',','',[rfReplaceAll, rfIgnoreCase]);
qvalor := stringreplace(qvalor,'.','',[rfReplaceAll, rfIgnoreCase]);
qvalor := copy(qvalor,length(qvalor)-10,11);

//SHOWMESSAGE('QVALOR = '+QVALOR);

qdigito := BBMod11(qvalor);

qinsc :=  '00000000000000'+me_insc.text;
qinsc := stringreplace(qinsc,',','',[rfReplaceAll, rfIgnoreCase]);
qinsc := stringreplace(qinsc,'.','',[rfReplaceAll, rfIgnoreCase]);
qinsc := stringreplace(qinsc,'-','',[rfReplaceAll, rfIgnoreCase]);
qinsc := stringreplace(qinsc,'/','',[rfReplaceAll, rfIgnoreCase]);
qinsc := stringreplace(qinsc,'\','',[rfReplaceAll, rfIgnoreCase]);
qinsc := copy(qinsc,length(qinsc)-10,11);

qdi :=  '00000000000000'+me_docorigem.text;
qdi := stringreplace(qdi,',','',[rfReplaceAll, rfIgnoreCase]);
qdi := stringreplace(qdi,'.','',[rfReplaceAll, rfIgnoreCase]);
qdi := stringreplace(qdi,'-','',[rfReplaceAll, rfIgnoreCase]);
qdi := stringreplace(qdi,'/','',[rfReplaceAll, rfIgnoreCase]);
qdi := stringreplace(qdi,'\','',[rfReplaceAll, rfIgnoreCase]);
qdi := copy(qdi,length(qdi)-9,10);

qbarcode := '8';                        ///Identificação do Produto       1
qbarcode := qbarcode+'5';    ///Identificação do Segmento      1
qbarcode := qbarcode+'6';    ///Identificação do valor real ou referência    1
//qbarcode := qbarcode+qdigito+qvalor+'00192410'+qinsc+qdi;
qbarcode := qbarcode+qvalor+'00192410'+qinsc+qdi;
qdigito := Modulo10(qbarcode);

//SHOWMESSAGE(QDIGITO);
qbarcode := '8';                        ///Identificação do Produto       1
qbarcode := qbarcode+'5';    ///Identificação do Segmento      1
qbarcode := qbarcode+'6';    ///Identificação do valor real ou referência    1
qbarcode := qbarcode+qdigito+qvalor+'00192410'+qinsc+qdi;
CriaCodigo( qbarcode,CB1.Canvas);
CriaCodigo( qbarcode,qr_darjicms.QRI_CB1.Canvas);
CriaCodigo( qbarcode,qr_darjicms.QRI_CB2.Canvas);

{if v_usuario='MM' THEN BEGIN                //    123456789/1 123456789/1 123456789/1 123456789/1
   if messagedlg(v_usuario+', barcode teste fixo? 86770000000 00000035229 40061070154 30001000000 ',mtconfirmation,[mbno,mbyes],0)= mryes then begin
     qbarcode := '86770000000000000352294006107015430001000000';
     CriaCodigo( qbarcode,CB1.Canvas);
     CriaCodigo( qbarcode,qr_darjicms.QRI_CB1.Canvas);
     CriaCodigo( qbarcode,qr_darjicms.QRI_CB2.Canvas);
   end;
end;}

{
qbarcode := qbarcode+'5';    ///Dígito verificador geral (módulo 10 ou 11)   1
qbarcode := qbarcode+'123456789012345';    ///Valor     15


//qbarcode := qbarcode+'123456789012345';    ///Identificação da Empresa/Órgão   4
//qbarcode := qbarcode+'123456789012345';    ///Campo livre de utilização da Empresa/Órgão  25

qbarcode := qbarcode+'123456789012345';    ///CNPJ / MF    8
qbarcode := qbarcode+'123456789012345';    ///Campo livre de utilização da Empresa/Órgão 21
 }

 LCODB.Caption :='';

 for i:= 1 to 4 do begin

  qstring := inttostr(FBMod10(copy(qbarcode,(11*i)-10,11)));
  LCODB.Caption := LCODB.Caption+copy(qbarcode,(11*i)-10,11)+' '+qstring+'  ';

 end;

 if (me_codrec.text = '754-4') then begin
    l_imp.Caption := 'Nº Impressões '+ qrprocessostr_impressoes_fecp.asstring;
 end
 else begin
    l_imp.Caption := 'Nº Impressões '+ qrprocessostr_impressoes.asstring;
 end;

end;

procedure TF_prodarjicms.me_codrecExit(Sender: TObject);
begin
if me_codrec.text = '754-4' then begin
   me_aliquota.text := '1,00';
   me_docorigem.text := me_di.text;//'024-8';
   me_rec.text := 'ICMS - FECP';
   me_fecp.visible := true;
end
else begin

   me_aliquota.text := floattostr(aliq_icms);

   me_docorigem.text := me_di.text;
   me_rec.text := 'ICMS - IMPORTAÇÃO';
   me_fecp.visible := false;
end;
   me_aliquotaExit(f_prodarjicms);
end;

procedure TF_prodarjicms.me_vencimentoExit(Sender: TObject);
begin
if strtoint(copy(me_vencimento2.text,1,2)) < 11 then me_per.text := '1º DECÊNDIO ';
if ((strtoint(copy(me_vencimento2.text,1,2)) >= 11) and
    (strtoint(copy(me_vencimento2.text,1,2)) <= 20)) then me_per.text := '2º DECÊNDIO ';
if ((strtoint(copy(me_vencimento2.text,1,2)) >= 21) and
    (strtoint(copy(me_vencimento2.text,1,2)) <= 31)) then me_per.text := '3º DECÊNDIO ';

me_per.text := me_per.text + ' - ' + copy(me_vencimento2.text,4,2)+'/'+copy(me_vencimento2.text,7,4);

end;

procedure TF_prodarjicms.b_impClickOK(Sender: TObject);
begin
  If ( v_usuario <> 'MM' ) Then Begin
    If  ( (me_codrec.text <> '754-4') And
      ( qrprocessostr_impressoes.asinteger > 0 ) ) Or
      ( (me_codrec.text = '754-4' ) And
      ( qrprocessostr_impressoes_fecp.asinteger > 0 ) ) Then Begin
      gb_senha.visible := true;
      l_super.caption := qrprocessosnomesuper.asstring;
      e_senha.SetFocus;
      exit;
    End;
  End;
  b_impClick( F_prodarjicms );
end;

procedure TF_prodarjicms.b_impClick(Sender: TObject);
begin

{       me_cif.text    := floattostrf(strtofloat(me_cif.text),fffixed,15,2);
        me_ii.text     := floattostrf(strtofloat(me_ii.text),fffixed,15,2);
        me_ipi.text    := floattostrf(strtofloat(me_ipi.text),fffixed,15,2);
        me_pis.text    := floattostrf(strtofloat(me_pis.text ),fffixed,15,2);
        me_cofins.text := floattostrf(strtofloat(me_cofins.text),fffixed,15,2);
        me_ad.text     := floattostrf(strtofloat(me_ad.text),fffixed,15,2);
 }
//    if not assigned (qr_darjicms) then Application.CreateForm(Tqr_darjicms, qr_darjicms);

  // eduardo.souza 27/06/2011
  {
  If Not Assigned( qr_darjicms ) Then
    Application.CreateForm(Tqr_darjicms, qr_darjicms)
  else begin
    qr_darjicms.Destroy;
    qr_darjicms := NIL;
    Application.CreateForm(Tqr_darjicms, qr_darjicms)
  end;
  }
  //----
  
  { 1ª Parte }
  qr_darjicms.qrl_ven.Caption    := me_vencimento.text;
  qr_darjicms.qrl_nome.Caption   := me_nome.text;
  qr_darjicms.qrl_end.Caption    := me_end.text;
  qr_darjicms.qrl_mun.Caption    := me_mun.text;
  qr_darjicms.qrl_uf.Caption     := me_uf.text;
  qr_darjicms.qrl_cep.Caption    := me_cep.text;
  qr_darjicms.qrl_rec.Caption    := me_rec.text;
  qr_darjicms.qrl_ins.Caption    := me_insc.text;
  qr_darjicms.qrl_codrec.Caption := me_codrec.text;
  qr_darjicms.qrl_cnpj.Caption   := me_cnpj.text;
  qr_darjicms.qrl_docori.Caption := me_docorigem.text;
  qr_darjicms.qrl_per.Caption    := me_per.text;
  qr_darjicms.qrl_val.Caption    := me_valprincipal.text;
  qr_darjicms.qrl_atu.Caption    := me_atumonet.text;
  qr_darjicms.qrl_mo.Caption     := me_mora.text;
  qr_darjicms.qrl_mu.Caption     := me_multa.text;
  qr_darjicms.qrl_tot.Caption    := me_totalarec.text;

  qr_darjicms.qrl_aliq.Caption   := me_aliquota.text;
  qr_darjicms.qrl_ms.Caption     := me_ms.text;
  qr_darjicms.qrl_di.Caption     := me_di.text;
  qr_darjicms.qrl_cif.Caption    := floattostrf(strtofloat(me_cif.text),fffixed,15,2);//me_cif.text;
  qr_darjicms.qrl_ii.Caption     := floattostrf(strtofloat(me_ii.text),fffixed,15,2);//me_ii.text;
  qr_darjicms.qrl_ipi.Caption    := floattostrf(strtofloat(me_ipi.text),fffixed,15,2);//me_ipi.text;
  qr_darjicms.qrl_ad.Caption     := floattostrf(strtofloat(me_ad.text),fffixed,15,2);//me_ad.text;
  qr_darjicms.qrl_pis.Caption    := floattostrf(strtofloat(me_pis.text ),fffixed,15,2);;//me_pis.text;
  qr_darjicms.qrl_cofins.Caption := floattostrf(strtofloat(me_cofins.text),fffixed,15,2);//me_cofins.text;
  qr_darjicms.qrl_bc.Caption     := me_bc.text;


  { 2ª Parte }
  qr_darjicms.qrl_ven2.Caption    := me_vencimento.text;
  qr_darjicms.qrl_nome2.Caption   := me_nome.text;
  qr_darjicms.qrl_end2.Caption    := me_end.text;
  qr_darjicms.qrl_mun2.Caption    := me_mun.text;
  qr_darjicms.qrl_uf2.Caption     := me_uf.text;
  qr_darjicms.qrl_cep2.Caption    := me_cep.text;
  qr_darjicms.qrl_rec2.Caption    := me_rec.text;
  qr_darjicms.qrl_ins2.Caption    := me_insc.text;
  qr_darjicms.qrl_codrec2.Caption := '754-4';
  qr_darjicms.qrl_cnpj2.Caption   := me_cnpj.text;
  qr_darjicms.qrl_docori2.Caption := me_docorigem.text;
  qr_darjicms.qrl_per2.Caption    := me_per.text;
  //qr_darjicms.qrl_val2.Caption    := me_valprincipal.text;
  {---ticket 1397 - Wellington}
  qr_darjicms.qrl_val2.Caption    := me_valprincipal1.text;
  {---}
  qr_darjicms.qrl_atu2.Caption    := me_atumonet.text;
  qr_darjicms.qrl_mo2.Caption     := me_mora.text;
  qr_darjicms.qrl_mu2.Caption     := me_multa.text;
  //qr_darjicms.qrl_tot2.Caption    := me_totalarec1.text;
  {---ticket 1397 - Wellington}
  qr_darjicms.qrl_tot2.Caption    := me_totalarec1.text;
  {---}

  //qr_darjicms.qrl_aliq2.Caption   := me_aliquota.text;;
  {---ticket 1397 - Wellington}
  qr_darjicms.qrl_aliq2.Caption   := '1';
  {---}
  qr_darjicms.qrl_ms2.Caption     := me_ms.text;
  qr_darjicms.qrl_di2.Caption     := me_di.text;
  qr_darjicms.qrl_cif2.Caption    := floattostrf(strtofloat(me_cif.text),fffixed,15,2);//me_cif.text;
  qr_darjicms.qrl_ii2.Caption     := floattostrf(strtofloat(me_ii.text),fffixed,15,2);//me_ii.text;
  qr_darjicms.qrl_ipi2.Caption    := floattostrf(strtofloat(me_ipi.text),fffixed,15,2);//me_ipi.text;
  qr_darjicms.qrl_ad2.Caption     := floattostrf(strtofloat(me_ad.text),fffixed,15,2);//me_ad.text;
  qr_darjicms.qrl_pis2.Caption    := floattostrf(strtofloat(me_pis.text ),fffixed,15,2);;//me_pis.text;
  qr_darjicms.qrl_cofins2.Caption := floattostrf(strtofloat(me_cofins.text),fffixed,15,2);//me_cofins.text;
  qr_darjicms.qrl_bc2.Caption     := me_bc.text;

  qr_darjicms.qrl_fecp.Caption  := me_fecp.text;
  qr_darjicms.qrl_fecp2.Caption := me_fecp.text;

  qr_darjicms.qrl_fecp.enabled  := me_fecp.visible;
  qr_darjicms.qrl_fecp2.enabled := me_fecp.visible;

  {---ticket 1397 - Wellington}
  qr_darjicms.QRL_CB1.Caption  := LCODB.Caption;
  qr_darjicms.QRL_CB2.Caption  := LCODB.Caption;
  {---}

  if (me_codrec.text = '754-4')
   then begin
     qr_darjicms.l_imp1.Caption := '('+ inttostr(qrprocessostr_impressoes_fecp.asinteger+1)+')';
     qr_darjicms.l_imp2.Caption := '('+ inttostr(qrprocessostr_impressoes_fecp.asinteger+1)+')';
   end
   else begin
     qr_darjicms.l_imp1.Caption := '('+ inttostr(qrprocessostr_impressoes.asinteger+1)+')';
     qr_darjicms.l_imp2.Caption := '('+ inttostr(qrprocessostr_impressoes.asinteger+1)+')';
   end;

  if (me_aliquota.Text = '3')
   then qr_darjicms.QRBand2.Enabled := False; 

  qr_darjicms.preview; //erSettings   //.preview;
end;

procedure TF_prodarjicms.b_impvClick(Sender: TObject);
begin
  {
  if not assigned (qr_darjicmsv) then
    Application.CreateForm(Tqr_darjicmsv, qr_darjicmsv);
  qr_darjicmsv.preview;
  }
// eduardo.souza 27/06/2011
  If Not Assigned( qr_darjicmsv ) Then
    Application.CreateForm(Tqr_darjicmsv, qr_darjicmsv)
  else begin
    qr_darjicmsv.Destroy;
    qr_darjicmsv := NIL;
    Application.CreateForm(Tqr_darjicmsv, qr_darjicmsv)
  end;
  qr_darjicmsv.Preview;
end;


procedure TF_prodarjicms.CelText(Row : Integer; Col : Integer; Text : String; True : Boolean );
Begin
     MSWord.ActiveDocument.Tables.Item(1).Cell(Row, Col).Range.InsertAfter(Text);
     If True Then MSWord.ActiveDocument.Tables.Item(1).Cell(Row, Col).Range.Paragraphs.Item(2).Range.Font.Bold := True;
End;
procedure TF_prodarjicms.CelText2(Row : Integer; Col : Integer; Text : String; True : Boolean );
Begin
     MSWord.ActiveDocument.Tables.Item(3).Cell(Row, Col).Range.InsertAfter(Text);
     If True Then MSWord.ActiveDocument.Tables.Item(3).Cell(Row, Col).Range.Paragraphs.Item(2).Range.Font.Bold := True;
End;
procedure TF_prodarjicms.BitBtn1Click(Sender: TObject);
var aux, i : Integer;
    MargemDireita, MargemEsquerda : String;
begin
     image2.Picture.SaveToFile('c:\ms2000\logodarf2.jpg');
     MargemEsquerda  := '1.5';
     MargemDireita := '1.5';

     MSWord:= CreateOleObject('Word.application');
     MSWord.Visible := True;
     MSWord.Documents.Add;
     MsWord.Options.MeasurementUnit := 1;
     MSWord.ActiveDocument.PageSetup.RightMargin := MarGemDireita;
     MSWord.ActiveDocument.PageSetup.LeftMargin := MargemEsquerda;
     MSWord.ActiveDocument.PageSetup.TopMargin := '0.7';

     MSWord.ActiveDocument.Paragraphs.Item(1).Range.Text :=''+ #13;
     MSWord.ActiveDocument.Paragraphs.Item(2).Range.Text :=''+ #13+#13+#13;;


     MSWord.ActiveDocument.Paragraphs.Item(2).Range.Words.Item(1).Select;               

     MSWord.ActiveDocument.Tables.Add(Range := MSWord.Selection.Range, NumRows := 11, NumColumns := 2);
     MSWord.ActiveDocument.Range(Start:=MSWord.ActiveDocument.Tables.Item(1).Cell(1, 1).Range.Start,
                     End:=MSWord.ActiveDocument.Tables.Item(1).Cell(12, 2).Range.End).Select;
     MSWord.Selection.Paragraphs.SpaceBefore := 2;
     MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.SpaceBefore := 1;
     MSWord.ActiveDocument.Tables.Item(1).Cell(7, 1).Range.Paragraphs.SpaceBefore := 1;
     MSWord.ActiveDocument.Tables.Item(1).Cell(8, 1).Range.Paragraphs.SpaceBefore := 1;
     MSWord.ActiveDocument.Tables.Item(1).Cell(9, 1).Range.Paragraphs.SpaceBefore := 1;

     MSWord.ActiveDocument.Tables.Item(1).Range.Font.Size := '8';
     MSWord.ActiveDocument.Tables.Item(1).Range.Font.Name := 'Arial';

     For aux := 1 To 11 Do MSWord.ActiveDocument.Tables.Item(1).Cell(aux,1).Height := '26.15';

     For aux := 1 To 11 Do MSWord.ActiveDocument.Tables.Item(1).Cell(aux,1).Width := '14';
     For aux := 1 To 11 Do MSWord.ActiveDocument.Tables.Item(1).Cell(aux,2).Width := '5';


      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 1).Split(,2);
      MSWord.ActiveDocument.Tables.Item(1).Cell(4, 1).Split(,3);

      MSWord.ActiveDocument.Tables.Item(1).Cell(1,1).Width := '10.3';
      MSWord.ActiveDocument.Tables.Item(1).Cell(1,2).Width := '3.7';
      MSWord.ActiveDocument.Tables.Item(1).Cell(4,1).Width := '8.3';
      MSWord.ActiveDocument.Tables.Item(1).Cell(4,2).Width := '2.0';
      MSWord.ActiveDocument.Tables.Item(1).Cell(4,3).Width := '3.7';

      CelText(1,2,'11 - VENCIMENTO',False);
      CelText(1,2,#13 + me_vencimento.text, True);
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 2).Range.Paragraphs.Item(2).Alignment := 1;

      CelText(2,1,'12 - NOME, FIRMA OU RAZÃO SOCIAL',False);
      CelText(2,1,#13 + me_nome.text, True);
      CelText(2,2,'01 - INSCRIÇÃO ESTADUAL', False);
      CelText(2,2,#13 + me_insc.text, True);
      MSWord.ActiveDocument.Tables.Item(1).Rows.Item(1).Range.Paragraphs.Item(1).SpaceBefore := 4;
      CelText(3,1,'13 - ENDEREÇO COMPLETO', False);
      CelText(3,1,#13 + me_end.text, True);
      CelText(3,2,'02 - CÓDIGO DA RECEITA', False);
      CelText(3,2,#13 + me_codrec.text, True);

      CelText(4,1,'14 - MUNICÍPIO', False);
      CelText(4,1,#13 + me_mun.text, True);
      CelText(4,2,'15 - UF', False);
      CelText(4,2,#13 + me_uf.text, True);
      CelText(4,3,'16 - CEP', False);
      CelText(4,3,#13 + me_CEP.text, True);
      CelText(4,4,'03 - CGC / CNPJ / CPF', False);
      CelText(4,4,#13 + me_cnpj.text, True);

      CelText(5,1,'17 - RECEITA', False);
      CelText(5,1,#13 + me_rec.text, True);

      CelText(5,2,'04 - Nº DOCUMENTO DE ORIGEM', False);
      CelText(5,2,#13 + me_docorigem.text, True);
      CelText(6,2,'05 - PER. REF./PARCELA', False);
      CelText(6,2,#13 + me_per.text, True);
      CelText(7,2,'06 - VALOR PRINCIPAL', False);
      CelText(7,2,#13 + me_valprincipal.text, True);
      CelText(8,2,'07 - ATUALIZAÇÃO MONETÁRIA', False);
      CelText(8,2,#13 + me_atumonet.text, True);
      CelText(9,2,'08 - MORA', False);
      CelText(9,2,#13 + me_mora.text, True);
      CelText(10,2,'09 - MULTA', False);
      CelText(10,2,#13 + me_multa.text, True);
      CelText(11,2,'10 - TOTAL A RECOLHER', False);
      CelText(10,1,'19 - AUTENTICAÇÃO BANCÁRIA', False);
      CelText(11,2,#13 + me_totalarec.text, True);
//      CelText(11,2,#13 + '', True);
      MSWord.ActiveDocument.Tables.Item(1).Cell(7, 2).Range.Paragraphs.Item(2).Alignment := 2;
      MSWord.ActiveDocument.Tables.Item(1).Cell(8, 2).Range.Paragraphs.Item(2).Alignment := 2;
      MSWord.ActiveDocument.Tables.Item(1).Cell(9, 2).Range.Paragraphs.Item(2).Alignment := 2;
      MSWord.ActiveDocument.Tables.Item(1).Cell(10, 2).Range.Paragraphs.Item(2).Alignment := 2;
      MSWord.ActiveDocument.Tables.Item(1).Cell(11, 2).Range.Paragraphs.Item(2).Alignment := 2;
      MSWord.ActiveDocument.Tables.Item(1).Cell(11, 2).Range.Paragraphs.Item(2).Range.Bold := True;

      MSWord.ActiveDocument.Range(Start:=MSWord.ActiveDocument.Tables.Item(1).Cell(10, 1).Range.Start,
                                  End:=MSWord.ActiveDocument.Tables.Item(1).Cell(11, 1).Range.End).Select;
      MSWord.Selection.Cells.Merge;

      MSWord.ActiveDocument.Range(Start:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Start,
                                  End:=MSWord.ActiveDocument.Tables.Item(1).Cell(9, 1).Range.End).Select;
      MSWord.Selection.Cells.Merge;

     MSWord.ActiveDocument.Paragraphs.TabStops.Add (Position:= 28.35 * 6.25,Alignment:=0);
     MSWord.ActiveDocument.Paragraphs.TabStops.Add (Position:= 28.35 * 9{10},Alignment:=0);
     MSWord.ActiveDocument.Paragraphs.TabStops.Add (Position:= 28.35 * 10.6,Alignment:=0);
     MSWord.ActiveDocument.Paragraphs.TabStops.Add (Position:= 28.35 * 13.7,Alignment:=2);

      CelText(6,1,'18 - INFORMAÇÕES COMPLEMENTARES', False);
      CelText(6,1, #13 + me_cif.text, False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(2).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(2).Range.Words.First.InsertBefore (': R$');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(2).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(2).Range.Words.First.InsertBefore ('CIF');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(2).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(2).Range.Words.First.InsertBefore ('ICMS(%) ' + me_aliquota.text);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(2).Range.Words.First.InsertBefore (Chr(9));

      CelText(6,1, #13 + me_ii.text, False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(3).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(3).Range.Words.First.InsertBefore (': R$');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(3).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(3).Range.Words.First.InsertBefore ('II');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(3).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(3).Range.Words.First.InsertBefore ('Ref. MS: '+ me_ms.text);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(3).Range.Words.First.InsertBefore (Chr(9));

      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(2).Range.Words.First.InsertBefore ('* VALORES EM R$');

      CelText(6,1, #13 + me_ipi.text, False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(4).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(4).Range.Words.First.InsertBefore (': R$');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(4).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(4).Range.Words.First.InsertBefore ('IPI');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(4).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(4).Range.Words.First.InsertBefore ('DI: ' + me_di.text);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(4).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(3).Range.Words.First.InsertBefore ('* PAGÁVEL SOMENTE NO BANERJ');

      CelText(6,1, #13 +  me_ad.text, False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.First.InsertBefore (': R$');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.First.InsertBefore ('AD');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(4).Range.Words.First.InsertBefore ('OU BANCO DO BRASIL');


       CelText(6,1, #13 +  me_pis.text, False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore (': R$');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore ('PIS/PASEP');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore (Chr(9));
//      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.First.InsertBefore ('* NÃO RECEBER APÓS VENCIMENTO');

      CelText(6,1, #13 +  me_cofins.text, False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(7).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(7).Range.Words.First.InsertBefore (': R$');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(7).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(7).Range.Words.First.InsertBefore ('COFINS');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(7).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(7).Range.Words.First.InsertBefore (Chr(9));

   {   CelText(6,1, #13 +  me_bc.text, False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore (': R$');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore ('BC');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(6).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.First.InsertBefore ('* NÃO RECEBER APÓS VENCIMENTO');
     }
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(7).Range.Words.First.InsertBefore ('RESOLUÇÃO SEF N.º 2957/98');

//      CelText(6,1, {#13}{#13+}'RESOLUÇÃO SEF N.º 2957/98', False);

      CelText(6,1, #13{#13#13},False);
      CelText(6,1, {#13 + } me_bc.text, False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(8).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(8).Range.Words.First.InsertBefore (': R$');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(8).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(8).Range.Words.First.InsertBefore ('BC');
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(8).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(8).Range.Words.First.InsertBefore (Chr(9));
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.First.InsertBefore ('* NÃO RECEBER APÓS VENCIMENTO');



      CelText(6,1, #13+#13+{#13+}'O Contribuinte é responsável pelas informações contidas neste formulário e por comunicar qualquer'
      +#13+'alteração nos seus dados cadastrais junto à Secretaria da Fazenda. Qualquer informação que esteja'
      +#13+'desatualizada deverá ser corrigida na Inspetoria de sua Área.', False);

      MSWord.ActiveDocument.Range(Start:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(2).Range.Words.Item(1).Start,
                                  End:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(2).Range.Words.Item(5).End).Select;
      MSWord.Selection.Font.Size := 7;

      MSWord.ActiveDocument.Range(Start:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(3).Range.Words.Item(1).Start,
                                  End:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(3).Range.Words.Item(5).End).Select;
      MSWord.Selection.Font.Size := 7;

      MSWord.ActiveDocument.Range(Start:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(4).Range.Words.Item(1).Start,
                                  End:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(4).Range.Words.Item(4).End).Select;
      MSWord.Selection.Font.Size := 7;

      MSWord.ActiveDocument.Range(Start:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.Item(1).Start,
                                  End:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(5).Range.Words.Item(5).End).Select;
      MSWord.Selection.Font.Size := 7;

      MSWord.ActiveDocument.Range(Start:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(7).Range.Words.Item(1).Start,
                                  End:=MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(7).Range.Words.Item(7).End).Select;

      MSWord.Selection.Font.Size := 7;

      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(10).Range.Font.Size := 7;
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(11).Range.Font.Size := 7;
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(12).Range.Font.Size := 7;
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(12).Range.Bold := True;


      For i:= 2 To 11 Do MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(i).Range.Bold := True;

      For i:= 10 To 12 Do MSWord.ActiveDocument.Tables.Item(1).Cell(6, 1).Range.Paragraphs.Item(i).Range.Font.Size := 7;

      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 3).Shading.BackgroundPatternColorIndex := 16;
      CelText(1,3, 'DARJ', False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 3).VerticalAlignment := 1;
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 3).Range.Paragraphs.Item(1).Range.Font.Bold := True;
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 3).Range.Paragraphs.Item(1).Range.Font.Size := 18;
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 3).Range.Paragraphs.Item(1).Alignment := 1;

//showmessage('2');
      MSWord.ActiveDocument.Paragraphs.Item(66).Range.Text := 'Via CONTRIBUINTE'+#13+#13+#13+#13;
//showmessage('3');
      MSWord.ActiveDocument.Paragraphs.Item(66).Range.Font.Name := 'Arial';
      MSWord.ActiveDocument.Paragraphs.Item(66).Range.Font.Size := 10;
      MSWord.ActiveDocument.Paragraphs.Item(66).Range.Bold := True;
      MSWord.ActiveDocument.Paragraphs.Item(66).Alignment := 2;
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 1).Range.InlineShapes.AddPicture ('c:\ms2000\logodarf2.jpg');

      MSWord.ActiveDocument.InlineShapes.item(1).ScaleHeight := 165;
      MSWord.ActiveDocument.InlineShapes.item(1).ScaleWidth := 165;
      MSWord.ActiveDocument.InlineShapes.item(1).ConvertToShape;
      MSWord.ActiveDocument.Shapes.item(1).WrapFormat.Type := 3;

      MSWord.ActiveDocument.Shapes.Item(1).RelativeHorizontalPosition := 1;
      MSWord.ActiveDocument.Shapes.Item(1).RelativeVerticalPosition := 1;
      MSWord.ActiveDocument.Shapes.Item(1).Left := 45;
      MSWord.ActiveDocument.Shapes.Item(1).Top := 33;

{      MSWord.ActiveDocument.Shapes.Item(1).Top := 2;
      MSWord.ActiveDocument.Shapes.Item(1).Left := 3;
 }
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 1).Range.Paragraphs.SpaceBefore := 1;

      CelText(1,1,'            ESTADO DO RIO DE JANEIRO', False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 1).Range.Paragraphs.Item(1).Range.Font.Bold := True;
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 1).Range.Paragraphs.Item(1).Range.Font.Size := 10;
      CelText(1,1,#13+'               SECRETARIA DE ESTADO DA FAZENDA', False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 1).Range.Paragraphs.Item(2).Range.Font.Bold := True;
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 1).Range.Paragraphs.Item(2).Range.Font.Size := 8;
      CelText(1,1,#13+'               DOCUMENTO DE ARRECADAÇÃO', False);
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 1).Range.Paragraphs.Item(3).Range.Font.Bold := True;
      MSWord.ActiveDocument.Tables.Item(1).Cell(1, 1).Range.Paragraphs.Item(3).Range.Font.Size := 8;
      MSWord.ActiveDocument.Shapes.AddLine (beginx:=38, beginy:=360, endx:=28.35 * 20.4, endy:=360);

      //FORMATAÇÃO DO ALINHAMENTO DAS CÉLULAS DA DIREITA

      MSWord.ActiveDocument.Tables.Item(1).Cell(2, 2).Range.Paragraphs.Item(2).Alignment := 1;
      MSWord.ActiveDocument.Tables.Item(1).Cell(3, 2).Range.Paragraphs.Item(2).Alignment := 1;
      MSWord.ActiveDocument.Tables.Item(1).Cell(4, 4).Range.Paragraphs.Item(2).Alignment := 1;


      MSWord.ActiveDocument.Tables.Item(1).Cell(5, 2).Range.Paragraphs.Item(2).Alignment := 1;
      MSWord.ActiveDocument.Tables.Item(1).Cell(6, 2).Range.Paragraphs.Item(2).Alignment := 1;
      MSWord.ActiveDocument.Tables.Item(1).Cell(4, 2).Range.Paragraphs.Item(2).Alignment := 1;
      MSWord.ActiveDocument.Tables.Item(1).Cell(4, 3).Range.Paragraphs.Item(2).Alignment := 1;

      MSWord.ActiveDocument.Tables.item(1).Range.Copy;

      MSWord.ActiveDocument.Paragraphs.Item(72).Range.Paste;


//      MSWord.ActiveDocument.Shapes.Item(1).RelativeHorizontalPosition := 1;
 //     MSWord.ActiveDocument.Shapes.Item(1).RelativeVerticalPosition := 170;
      MSWord.ActiveDocument.Shapes.Item(3).RelativeHorizontalPosition := 1;
      MSWord.ActiveDocument.Shapes.Item(3).RelativeVerticalPosition := 1;
      MSWord.ActiveDocument.Shapes.Item(3).Left := 1;
      MSWord.ActiveDocument.Shapes.Item(3).Top :=  1;
//      MSWord.ActiveDocument.Shapes.Item(3).Left := 45;
 //     MSWord.ActiveDocument.Shapes.Item(3).Top := 393;

      MSWord.ActiveDocument.Paragraphs.Item(138).Range.Text := 'Via BANCO'+#13+#13+#13+#13;

      MSWord.ActiveDocument.Paragraphs.Item(138).Range.Font.Name := 'Arial';
      MSWord.ActiveDocument.Paragraphs.Item(138).Range.Font.Size := 10;
      MSWord.ActiveDocument.Paragraphs.Item(138).Range.Bold := True;
      MSWord.ActiveDocument.Paragraphs.Item(138).Alignment := 2;
      MSWord.ActiveDocument.Shapes.AddLine (beginx:=38, beginy:=720, endx:=28.35 * 20.4, endy:=720);


      MSWord.ActiveDocument.Paragraphs.Item(140).Range.Words.Item(1).Select;


      MSWord.ActiveDocument.Tables.Add(Range := MSWord.Selection.Range, NumRows := 16, NumColumns := 2);


      MSWord.ActiveDocument.Tables.Item(3).Columns.item(1).Width := '2.3';
      MSWord.ActiveDocument.Tables.Item(3).Columns.item(2).Width := '16.7';
      MSWord.ActiveDocument.Tables.Item(3).Range.Font.Name := 'Arial';

      CelText2(1,1,'CAMPO', False);
      MSWord.ActiveDocument.Tables.Item(3).Cell(1,1).Range.Paragraphs.Item(1).Range.Font.Bold := True;
      CelText2(1,2,'INSTRUÇÕES DE PREENCHIMENTO',False);
      MSWord.ActiveDocument.Tables.Item(3).Cell(1,2).Range.Paragraphs.Item(1).Range.Font.Bold := True;
      CelText2(2,1,'01', False);
      CelText2(3,1,'02', False);
      CelText2(4,1,'03', False);
      CelText2(5,1,'04', False);
      MSWord.ActiveDocument.Tables.Item(3).Cell(5, 1).VerticalAlignment := 1;
      CelText2(6,1,'05', False);
      MSWord.ActiveDocument.Tables.Item(3).Cell(6, 1).VerticalAlignment := 1;
      CelText2(7,1,'06', False);
      MSWord.ActiveDocument.Tables.Item(3).Cell(7, 1).VerticalAlignment := 1;
      CelText2(8,1,'07', False);
      MSWord.ActiveDocument.Tables.Item(3).Cell(8, 1).VerticalAlignment := 1;
      CelText2(9,1,'08', False);
      CelText2(10,1,'09', False);
      MSWord.ActiveDocument.Tables.Item(3).Cell(10, 1).VerticalAlignment := 1;
      CelText2(11,1,'10', False);
      CelText2(12,1,'11', False);
      CelText2(13,1,'12',False);
      CelText2(14,1,'13 A 16',False);
      CelText2(15,1,'17',False);
      CelText2(16,1,'18',False);

      CelText2(2,2,'Preencher com o Nº da Inscrição no Cadastro de Contribuintes do Estado do Rio de Janeiro.',False);
      CelText2(3,2,'Preencher com o Código da Receita, conforme tabela impressa na 1ª via.',False);
      CelText2(4,2,'Indicar o Nº do CGC /  CNPJ ou CPF do contribuinte responsável pelo recolhimento, conforme o caso.',False);
      CelText2(5,2,'Indicar o Nº do auto de infração, do RQP (Parcelamento), Certidão da Inscrição em Dívida Ativa,',False);
      CelText2(5,2,#13 + 'Declaração de Importação, RENAVAM ou Guia de Controle do ITD, conforme o caso.',False);
      CelText2(6,2,'Apor o mês e ano, no formato MM AAAA, referente à ocorrência do fato gerador do tributo ou número da',False);
      CelText2(6,2,#13 + 'parcela quando for parcelamento.',False);
      CelText2(7,2,'Indicar o valor atualizado da receita principal, ou nominal em alguns casos. Este valor está sempre asso-',False);
      CelText2(7,2,#13 + 'ciado ao código de receita informado no campo 02.',False);

      CelText2(8,2,'Indicar o valor correspondente à atualização monetária, caso ela seja cobrada de forma não associada',False);
      CelText2(8,2,#13 + 'ao principal.',False);
      CelText2(9,2,'Indicar valor dos juros, acréscimos moratórios e da multa de mora somados.',False);
      CelText2(10,2,'Indicar o valor da multa em decorrência da infração. Este valor está sempre associado ao principal infor-',False);
      CelText2(10,2,#13 + 'mado no campo 06, existindo ou não.',False);
      CelText2(11,2,'Preencher com o somatório dos campos 06 a 09.',False);
      CelText2(12,2,'Indicar o dia, mês e ano (no formato DD/MM/AAAA) em que a receita deverá ser recolhida.',False);
      CelText2(13,2,'Apor o nome, firma ou razão social do contribuinte responsável pelo recolhimento.',False);
      CelText2(14,2,'Indicar dados completos do endereço do contribuinte.',False);
      CelText2(15,2,'Indicar, por extenso, nome da receita relativa ao código informado no campo 2.',False);
      CelText2(16,2,'Informações complementares que se fizerem necessárias.',False);

      MSWord.ActiveDocument.Range(Start:=MSWord.ActiveDocument.Tables.Item(3).Cell(1,1).Range.Start,
                                  End:=MSWord.ActiveDocument.Tables.Item(3).Cell(16, 2).Range.End).Select;
      MSWord.Selection.Font.Size := 10;
      MSWord.Selection.Paragraphs.SpaceBefore := 2;
      MSWord.Selection.Paragraphs.SpaceAfter := 1;

      For i:=1 To 16 Do
      MSWord.ActiveDocument.Tables.Item(3).Cell(i, 1).Range.Paragraphs.Item(1).Alignment := 1;
      MSWord.ActiveDocument.Tables.Item(3).Cell(1, 2).Range.Paragraphs.Item(1).Alignment := 1;

      For i:=2 To 16 Do
      MSWord.ActiveDocument.Tables.Item(3).Cell(i, 2).Range.Paragraphs.Item(1).Alignment := 3;

      MSWord.ActiveDocument.Tables.Item(3).Cell(7, 1).VerticalAlignment := '1';

      For i:=1 to 16 Do MSWord.ActiveDocument.Tables.Item(3).Cell(i, 1).VerticalAlignment := '1';
      For i:=1 to 16 Do MSWord.ActiveDocument.Tables.Item(3).Cell(i, 2).VerticalAlignment := '1';
      MSWord.ActiveDocument.Paragraphs.Item(194).Range.Words.Item(1).Select;
      MSWord.ActiveDocument.Paragraphs.Item(194).Range.Text := #13+#13+#13+#13{+#13};
      MSWord.ActiveDocument.Shapes.AddLine(beginx:=38, beginy:=355, endx:=28.35 * 20.4, endy:=355);
      MSWord.ActiveDocument.Paragraphs.Item(197).Range.Text := 'CÓDIGOS DE RECEITA';
      MSWord.ActiveDocument.Paragraphs.Item(197).Range.Font.Name := 'Arial';
      MSWord.ActiveDocument.Paragraphs.Item(197).Range.Font.Size := 10;

      MSWord.ActiveDocument.Paragraphs.Item(197).Range.Words.Last.InsertAfter(#13+#13+'DÍVIDA ATIVA');
      MSWord.ActiveDocument.Paragraphs.Item(199).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(199).Range.Words.First.InsertBefore ('ICMS');
      MSWord.ActiveDocument.Paragraphs.Item(199).Range.Font.Size := 7;
      MSWord.ActiveDocument.Paragraphs.Item(199).Range.Font.Name := 'Arial';
      MSWord.ActiveDocument.Paragraphs.Item(197).Alignment := 1;
      MSWord.ActiveDocument.Paragraphs.Item(197).Range.Bold := True;

      MSWord.ActiveDocument.Paragraphs.Item(199).Range.Words.Last.InsertAfter (#13+'500 - 2     DÍVIDA ATIVA ICM');
      MSWord.ActiveDocument.Paragraphs.Item(200).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(200).Range.Words.First.InsertBefore ('021 - 3      ICMS NORMAL');
      MSWord.ActiveDocument.Paragraphs.Item(199).Range.Font.Size := 8;
      MSWord.ActiveDocument.Paragraphs.Item(199).Range.Bold := True;

      MSWord.ActiveDocument.Paragraphs.Item(200).Range.Words.Last.InsertAfter (#13+'501 - 0     DÍVIDA ATIVA ICM PARCELAMENTO');
      MSWord.ActiveDocument.Paragraphs.Item(201).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(201).Range.Words.First.InsertBefore ('022 - 1      ICMS ESTIMATIVA');

      MSWord.ActiveDocument.Paragraphs.Item(201).Range.Words.Last.InsertAfter (#13+'502 - 9     DÍVIDA ATIVA ICMS');
      MSWord.ActiveDocument.Paragraphs.Item(202).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(202).Range.Words.First.InsertBefore ('023 - 0      ICMS SUBSTITUIÇÃO TRIBUTÁRIA');

      MSWord.ActiveDocument.Paragraphs.Item(202).Range.Words.Last.InsertAfter (#13+'503 - 7     DÍVIDA ATIVA ICMS PARCELAMENTO');
      MSWord.ActiveDocument.Paragraphs.Item(203).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(203).Range.Words.First.InsertBefore ('024 - 8      ICMS IMPORTAÇÃO');

      MSWord.ActiveDocument.Paragraphs.Item(203).Range.Words.Last.InsertAfter (#13+'507 - 0     DÍVIDA ATIVA OUTROS');
      MSWord.ActiveDocument.Paragraphs.Item(204).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(204).Range.Words.First.InsertBefore ('027 - 2      ICMS AQS. AT. FIXO OU MAT. FORA ESTADO');

      MSWord.ActiveDocument.Paragraphs.Item(204).Range.Words.Last.InsertAfter (#13+'508 - 8     DÍVIDA ATIVA OUTROS PARCELAMENTO');
      MSWord.ActiveDocument.Paragraphs.Item(205).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(205).Range.Words.First.InsertBefore ('028 - 0      ICMS PARCELAMENTO');

      MSWord.ActiveDocument.Paragraphs.Item(205).Range.Words.Last.InsertAfter (#13+'509 - 6     DÍVIDA ATIVA TAXA JUDICIÁRIA');
      MSWord.ActiveDocument.Paragraphs.Item(206).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(206).Range.Words.First.InsertBefore ('030 - 2      ICMS AUTO DE INFRAÇÃO');

      MSWord.ActiveDocument.Paragraphs.Item(206).Range.Words.Last.InsertAfter (#13+'032 - 9      ICMS PETRÓLEO E DERIVADOS COMB. LUB.');

      MSWord.ActiveDocument.Paragraphs.Item(207).Range.Words.Last.InsertAfter (#13+'033 - 7      ICMS ENERGIA ELÉTRICA');

      MSWord.ActiveDocument.Paragraphs.Item(208).Range.Words.Last.InsertAfter (#13+'MULTAS');
      MSWord.ActiveDocument.Paragraphs.Item(209).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(209).Range.Words.First.InsertBefore ('034 - 5      ICMS COMUNICAÇÕES');

      MSWord.ActiveDocument.Paragraphs.Item(209).Range.Words.Last.InsertAfter (#13+'542 - 8     MULTA TRIBUNAL DE CONTAS');
      MSWord.ActiveDocument.Paragraphs.Item(210).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(210).Range.Words.First.InsertBefore ('036 - 1      ICMS SERVIÇOS DE TRANSPORTE');

      MSWord.ActiveDocument.Paragraphs.Item(210).Range.Words.Last.InsertAfter (#13+'545 - 2     MULTA PROCON /  RJ');
      MSWord.ActiveDocument.Paragraphs.Item(211).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(211).Range.Words.First.InsertBefore ('037 - 0      ICMS OUTROS');

      MSWord.ActiveDocument.Paragraphs.Item(211).Range.Words.Last.InsertAfter (#13+'551 - 7     MULTA FORMAL ICMS');
      MSWord.ActiveDocument.Paragraphs.Item(212).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(212).Range.Words.First.InsertBefore ('039 - 6      ICMS AUTO DE INFRAÇÃO PARCELAMENTO');

      MSWord.ActiveDocument.Paragraphs.Item(212).Range.Words.Last.InsertAfter (#13+'552 - 5     MULTA FORMAL ITD');
      MSWord.ActiveDocument.Paragraphs.Item(213).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));

      MSWord.ActiveDocument.Paragraphs.Item(213).Range.Words.Last.InsertAfter (#13+#13+'OUTRAS RECEITAS');
      MSWord.ActiveDocument.Paragraphs.Item(215).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(215).Range.Words.First.InsertBefore ('ITD');

      MSWord.ActiveDocument.Paragraphs.Item(215).Range.Words.Last.InsertAfter (#13+'601 - 7     ALUGUÉIS E ARRENDAMENTOS');
      MSWord.ActiveDocument.Paragraphs.Item(216).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(216).Range.Words.First.InsertBefore ('101 - 5     ITD BENS MÓVEIS');

      MSWord.ActiveDocument.Paragraphs.Item(216).Range.Words.Last.InsertAfter (#13+'602 - 5     FOROS E LAUDÊMIOS');
      MSWord.ActiveDocument.Paragraphs.Item(217).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(217).Range.Words.First.InsertBefore ('102 - 3     ITD BENS IMÓVEIS');

      MSWord.ActiveDocument.Paragraphs.Item(217).Range.Words.Last.InsertAfter (#13+'604 - 1     UTILIZAÇÃO SEVIDÃO DE USO BENS PRÓPRIOS');
      MSWord.ActiveDocument.Paragraphs.Item(218).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(218).Range.Words.First.InsertBefore ('107 - 4     ITD AUTO  DE INFRAÇÃO');

      MSWord.ActiveDocument.Paragraphs.Item(199).Range.Font.Size := 8;
      MSWord.ActiveDocument.Paragraphs.Item(199).Range.Bold := True;

      MSWord.ActiveDocument.Paragraphs.Item(218).Range.Words.Last.InsertAfter (#13+'801 - 0     ALIENAÇÃO DE BENS MÓVEIS DO ESTADO');
      MSWord.ActiveDocument.Paragraphs.Item(219).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(219).Range.Words.First.InsertBefore ('108 - 2     ITD AUTO DE INFRAÇÃO PARCELAMENTO');

      MSWord.ActiveDocument.Paragraphs.Item(219).Range.Words.Last.InsertAfter (#13+'802 - 8     ALIENAÇÃO DE BENS IMÓVEIS DO ESTADO');
      MSWord.ActiveDocument.Paragraphs.Item(220).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(220).Range.Words.First.InsertBefore ('109 - 0     ITD PARCELAMENTO');

      MSWord.ActiveDocument.Paragraphs.Item(220).Range.Words.Last.InsertAfter (#13+'803 - 6     PRODUTO DE REMISSÃO DE FORO');
      MSWord.ActiveDocument.Paragraphs.Item(221).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));

      MSWord.ActiveDocument.Paragraphs.Item(221).Range.Words.Last.InsertAfter (#13+#13'IPVA');

      MSWord.ActiveDocument.Paragraphs.Item(223).Range.Words.Last.InsertAfter (#13+'901 - 6     SALÁRIO EDUCAÇÃO ESTADUAL');
      MSWord.ActiveDocument.Paragraphs.Item(224).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(224).Range.Words.First.InsertBefore ('150 - 3     IPVA');

      MSWord.ActiveDocument.Paragraphs.Item(223).Range.Font.Size := 8;
      MSWord.ActiveDocument.Paragraphs.Item(223).Range.Bold := True;

      MSWord.ActiveDocument.Paragraphs.Item(224).Range.Words.Last.InsertAfter (#13+'902 - 4     INDENIZAÇÕES E RESTITUIÇÕES');
      MSWord.ActiveDocument.Paragraphs.Item(225).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(225).Range.Words.First.InsertBefore ('151 - 1     IPVA AUTO DE INFRAÇÃO');

      MSWord.ActiveDocument.Paragraphs.Item(225).Range.Words.Last.InsertAfter (#13+'903 - 2     COMPENDAÇÃO RECURSOS HÍDRICOS');
      MSWord.ActiveDocument.Paragraphs.Item(226).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(226).Range.Words.First.InsertBefore ('152 - 0     IPVA AUTO DE INFRAÇÃO PARCELAMENTO');

      MSWord.ActiveDocument.Paragraphs.Item(226).Range.Words.Last.InsertAfter (#13+'905 - 9     IMPOSTO DE RENDA RETIDO NA FONTE');
      MSWord.ActiveDocument.Paragraphs.Item(227).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));

      MSWord.ActiveDocument.Paragraphs.Item(227).Range.Words.Last.InsertAfter (#13+'909 - 1     DEPÓSITO OU FIANÇA EM DINHEIRO - DIVERSOS');
      MSWord.ActiveDocument.Paragraphs.Item(228).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(228).Range.Words.First.InsertBefore ('TAXAS');

      MSWord.ActiveDocument.Paragraphs.Item(228).Range.Words.Last.InsertAfter (#13+'999 - 7     OUTRAS RECEITAS');
      MSWord.ActiveDocument.Paragraphs.Item(229).Range.Words.First.InsertBefore (Chr(9)+Chr(9)+Chr(9));
      MSWord.ActiveDocument.Paragraphs.Item(229).Range.Words.First.InsertBefore ('200 - 3     TAXA DE SERVIÇOS ESTADUAIS');

      MSWord.ActiveDocument.Paragraphs.Item(229).Range.Words.Last.InsertAfter (#13+'300 - 0     TAXA JUDICIÁRIA');
      MSWord.ActiveDocument.Paragraphs.Item(230).Range.Words.Last.InsertAfter (#13+'310 - 7     TAXA AUTO DE INFRAÇÃO');
      MSWord.ActiveDocument.Paragraphs.Item(231).Range.Words.Last.InsertAfter (#13+'311 - 5     TAXA AUTO DE INFRAÇÃO PARCELAMENTO');
      MSWord.ActiveDocument.Paragraphs.Item(232).Range.Words.Last.InsertAfter (#13+'400 - 6     CUSTAS EXTRAJUDICIAIS');

      MSWord.ActiveDocument.Paragraphs.Item(228).Range.Words.First.Font.Bold := True;
      MSWord.ActiveDocument.Paragraphs.Item(228).Range.Words.First.Font.Size := 8;
      MSWord.ActiveDocument.Paragraphs.Item(209).Range.Words.Item(9).Bold := True;
      MSWord.ActiveDocument.Paragraphs.Item(209).Range.Words.Item(9).Font.Size := 8;
      MSWord.ActiveDocument.Paragraphs.Item(215).Range.Font.Size := 8;
      MSWord.ActiveDocument.Paragraphs.Item(215).Range.Bold := True;
      MSWord.ActiveDocument.Tables.Item(1).Borders.Enable := True;
      MSWord.ActiveDocument.Tables.Item(2).Borders.Enable := True;
      MSWord.ActiveDocument.Paragraphs.Item(233).Range.Words.Last.Select;
end;

procedure TF_prodarjicms.me_bcEnter(Sender: TObject);
begin
   basedigi := false;
if messagedlg(v_usuario+', a base de cálculo será digitada?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
   me_bc.text := '0,00';
   basedigi := true;
end;

end;

procedure TF_prodarjicms.me_aliquotaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = '.' Then Key := ',';
end;

procedure TF_prodarjicms.b_cancelaClick(Sender: TObject);
begin
gb_senha.visible := false;
end;

procedure TF_prodarjicms.b_okClick(Sender: TObject);
begin
if uppercase(e_senha.text) <> uppercase(qrprocessossenhasuper.asstring) then begin
   showmessage('Senha inválida!');
   e_senha.text:='';
   e_senha.setfocus();

end
else begin
logusu('A','Supervisor '+l_super.caption +' - Autorizou impressão do DARJ - processo:'+me_nossaref.text);
e_senha.text:='';
gb_senha.visible := false;
b_impClick(F_prodarjicms);

end;


end;

end.

