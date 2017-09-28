unit U_followaut;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Buttons, Mask, DBCtrls;

type
  Tf_followaut = class(TForm)
    t_probai: TTable;
    T_followup: TTable;
    Memo1: TMemo;
    b_probai: TBitBtn;
    b_cancela: TBitBtn;
    ds_probai: TDataSource;
    ds_followup: TDataSource;
    t_probaiEmpresa: TStringField;
    t_probaiFilial: TStringField;
    t_probaiCdigo: TStringField;
    t_probaiData: TDateTimeField;
    t_probaiImportador: TStringField;
    t_probaiCdigo_Cliente: TStringField;
    t_probaiTipo_Declarao: TStringField;
    t_probaiTipo: TStringField;
    t_probaiContrato: TStringField;
    t_probaiLocal_Inventario: TStringField;
    t_probaiNR_DECL_IMP_MICRO: TStringField;
    t_probaiNR_DECL_IMP_PROT: TStringField;
    t_probaiNR_DECLARACAO_IMP: TStringField;
    t_probaiDT_PROCESSAMENTO: TStringField;
    t_probaiDT_TRANSMISSAO: TStringField;
    t_probaiDT_REGISTRO_DI: TStringField;
    t_probaiDT_DESEMBARACO: TDateTimeField;
    t_probaiDT_DISTRIBUICAO: TDateTimeField;
    t_probaiCanal: TStringField;
    t_probaiFiscal: TStringField;
    t_probaiStatus: TStringField;
    t_probaiCOD_SIT: TStringField;
    t_probaiCD_MOTIVO_TRANS: TStringField;
    t_probaiIN_MOEDA_UNICA: TBooleanField;
    t_probaiTX_INFO_COMPL: TMemoField;
    t_probaiCD_TIPO_PGTO_TRIB: TStringField;
    t_probaiNumero_RCR: TStringField;
    t_probaiData_Entrada_RCR: TDateTimeField;
    t_probaiData_Aprovacao_RCR: TDateTimeField;
    t_probaiFundamentacao_RCR: TStringField;
    t_probaiProcurador: TStringField;
    t_probaiNumero_TR: TStringField;
    t_probaiData_Entrada_TR: TDateTimeField;
    t_probaiData_vencimento_TR: TDateTimeField;
    t_probaiData_Aprovacao_TR: TDateTimeField;
    t_probaiData_Baixa_TR: TDateTimeField;
    t_probaiData_CI: TDateTimeField;
    t_probaiTipo_Garantia: TStringField;
    t_probaiNome_banco_GAR: TStringField;
    t_probaiAgencia_GAR: TStringField;
    t_probaiData_deposito_GAR: TDateTimeField;
    t_probaiNome_titulo_GAR: TStringField;
    t_probainumeros_titulos_GAR: TStringField;
    t_probaiNome_seguradora_GAR: TStringField;
    t_probaiapolice_GAR: TStringField;
    t_probainome_fiador_GAR: TStringField;
    t_probaiCNPJ_fiador_GAR: TStringField;
    t_probaiendereco_fiador_GAR: TStringField;
    t_probaiQuantidade_LI: TFloatField;
    t_probaiValor_FOB: TFloatField;
    t_probaiValor_CIF: TFloatField;
    t_probaiResponsavel_Empresa: TStringField;
    t_probaiResponsavel_Importador: TStringField;
    t_probaiSaldo_Faturamento: TFloatField;
    t_probaiNR_DECL_IMP_MICROC: TStringField;
    t_probaiNR_DECL_IMP_PROTC: TStringField;
    t_probaiNR_DECLARACAO_IMPC: TStringField;
    t_probaiDT_PROCESSAMENTOC: TStringField;
    t_probaiDT_TRANSMISSAOC: TStringField;
    t_probaiDT_REGISTRO_DIC: TStringField;
    t_probaiDT_DESEMBARACOC: TDateTimeField;
    t_probaiDT_DISTRIBUICAOC: TDateTimeField;
    t_probaiCanalC: TStringField;
    t_probaiFiscalC: TStringField;
    t_probaiCOD_SITC: TStringField;
    t_probaiData_CIC: TDateTimeField;
    t_probaiValor_FOBC: TFloatField;
    t_probaiValor_CIFC: TFloatField;
    t_probaiident_meio1: TStringField;
    t_probaiident_meio2: TStringField;
    T_followupEmpresa: TStringField;
    T_followupFilial: TStringField;
    T_followupProcesso: TStringField;
    T_followupSequencial: TAutoIncField;
    T_followupCodevento: TStringField;
    T_followupCodobs: TStringField;
    T_followupObs_especifica: TStringField;
    T_followupData: TDateTimeField;
    T_followupHora: TStringField;
    T_followuplink: TStringField;
    l_pro: TLabel;
    T_followupData_final: TDateTimeField;
    T_followupHora_final: TStringField;
    T_followupDuracao: TIntegerField;
    T_followupUsuario: TStringField;
    procedure b_probaiClick(Sender: TObject);
    procedure incluifollowup(Sender: TObject);
    procedure b_cancelaClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_followaut: Tf_followaut;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_followaut.b_probaiClick(Sender: TObject);
begin
incluifollowup(f_followaut);
end;

procedure Tf_followaut.incluifollowup(Sender: TObject);
var qevento,qobs,qobsespec,qdata,qhora:string;
    temfollow:boolean;
    quantos:integer;
    qdata2:string;
    qhora2:string;
    qduracao:real;

begin

l_pro.visible := true;

t_probai.open;
t_followup.open;

try
   ///gera follow up de processos de prorrogacao de tr / baixa de tr
//   if MessageDlg(v_usuario+', Deseja gerar Follow Up automático para processos de Baixa/Prorrogação de TR?', mtConfirmation, [mbNo,mbYes], 0) = mrYes then begin
//      t_probai.open;
      t_probai.first;
      quantos:=0;
      while not t_probai.eof do begin
            l_pro.caption := 'Verificando Processo... '+t_probaicdigo.asstring;
            l_pro.refresh;

///            processamento('Aguarde... verificando Follow Up do processo... '+t_probaicdigo.asstring ,t_probai.recordcount,false);
            if (((t_probaitipo.asstring = '8') or (t_probaitipo.asstring = 'BT')) and
   ////             (t_probaiResponsavel_Empresa.asstring=v_usuario) and
                (t_probaistatus.asstring<'1')) then begin
                 t_followup.first;
                 ///t_followup.findkey([t_probaiempresa.asstring,t_probaifilial.asstring,t_probaicdigo.asstring]);
                 temfollow := false;
                 qdata:='01/01/2000';
                 while ((not t_followup.eof)and(t_followupprocesso.asstring=t_probaicdigo.asstring)) do begin
                       l_pro.caption := 'Verificando Processo... '+t_probaicdigo.asstring+' - Follow do dia '+datetostr(T_followupData.asdatetime);
                       l_pro.refresh;

                       if (T_followupData.asdatetime >= date()) then temfollow := true;
                       if ( (strtodate(qdata) < T_followupData.asdatetime) and
                            (T_followupCodevento.asstring<>'51') and
                            (T_followupCodevento.asstring<>'52') and
                            (T_followupCodevento.asstring<>'53')) then begin
                          qevento   := T_followupCodevento.asstring;
                          qobs      := T_followupCodobs.asstring;
                          qobsespec := T_followupObs_especifica.asstring;
                          qdata     := datetostr(T_followupData.asdatetime);
                          qhora     := T_followupHora.asstring;
                       end;
                       t_followup.next;
                 end;
                 if (temfollow=false) then begin
                    l_pro.caption := 'Incluindo Follow Up no Processo... '+t_probaicdigo.asstring;
                    l_pro.refresh;

                    t_followup.append;
                    t_followupempresa.asstring         := t_probaiempresa.asstring;
                    t_followupfilial.asstring          := t_probaifilial.asstring;
                    t_followupprocesso.asstring        := t_probaicdigo.asstring;
                    T_followupCodevento.asstring       := qevento;
                    T_followupCodobs.asstring          := qobs;
                    T_followupObs_especifica.asstring  := qobsespec;
                    t_followupdata.asdatetime          := date();
                    t_followuphora.asstring            := timetostr(time());
                    t_followupusuario.asstring         := 'AUTO';
                    t_followup.post;

                    ///gravando final do evento
                    qdata2 := t_followupdata.asstring;
                    qhora2 := t_followuphora.asstring;
                    t_followup.moveby(-1);
                    t_followup.edit;
                    t_followupdata_final.asstring := qdata2;
                    t_followuphora_final.asstring := qhora2;
                    qduracao := (t_followupdata_final.asdatetime-t_followupdata.asdatetime);
                    if qduracao > 0 then qduracao := (((qduracao*24)*60)*60)
                    else qduracao := 0;
                    qduracao := qduracao-((strtoint(copy(t_followuphora.asstring,1,2))*60)*60);
                    qduracao := qduracao-(strtoint(copy(t_followuphora.asstring,4,2))*60);
                    qduracao := qduracao+((strtoint(copy(t_followuphora_final.asstring,1,2))*60)*60);
                    qduracao := qduracao+(strtoint(copy(t_followuphora_final.asstring,4,2))*60);
                    t_followupduracao.asfloat   := qduracao;
                    t_followup.post;
                    t_followup.moveby(+1);

                    quantos := quantos+1;
////                    showmessage('incluiu follow no processo '+t_probaicdigo.asstring);

                 end;

            end;

            t_probai.next;
      end;
///      processamento('Aguarde... verificando Follow Up dos processos de Prorrogação e Baixa de TR... '+t_probaicdigo.asstring ,t_probai.recordcount,true);
////      t_probai.close;
      l_pro.visible := false;
      showmessage(v_usuario+', foram inseridos '+inttostr(quantos)+' evento(s) de follow up.');
      f_followaut.close;
//   end;
except
   On E:Exception do begin
      incluifollowup(f_followaut);
      end;
   end;

end;


procedure Tf_followaut.b_cancelaClick(Sender: TObject);
begin
f_followaut.close;
end;

procedure Tf_followaut.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_followaut := nil;

end;

end.
