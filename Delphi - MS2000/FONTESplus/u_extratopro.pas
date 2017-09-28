unit u_extratopro;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, Grids, DBGrids, Buttons, ComCtrls,
  DBCtrls, ActnList, ComObj, jpeg;

type
  Tf_extratopro = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    pnlPrincipal: TPanel;
    pnlBaixo: TPanel;
    btnSair: TBitBtn;
    re_processa: TRichEdit;
    q_adr: TQuery;
    q_conhecimento: TQuery;
    q_taxas: TQuery;
    q_fat: TQuery;
    q_cus: TQuery;
    q_itens: TQuery;
    q_cusunit: TQuery;
    Q_emb: TQuery;
    q_icms: TQuery;
    cb_ref: TCheckBox;
    cb_tra: TCheckBox;
    cb_car: TCheckBox;
    cb_reg: TCheckBox;
    cb_emb: TCheckBox;
    cb_fat: TCheckBox;
    cb_imp: TCheckBox;
    cb_ite: TCheckBox;
    cb_cut: TCheckBox;
    cb_cuu: TCheckBox;
    cb_fol: TCheckBox;
    cb_tax: TCheckBox;
    imprimir: TBitBtn;
    psd: TPrinterSetupDialog;
    q_fol: TQuery;
    BitBtn2: TBitBtn;
    qrExcelProc: TQuery;
    cbInfComp: TCheckBox;
    cbRelCont: TCheckBox;
    BitBtn1: TBitBtn;
    qrInfComp: TQuery;
    dsInfComp: TDataSource;
    DBMemo1: TDBMemo;
    qrRelCont: TQuery;
    cbImpDoc: TCheckBox;
    cbTodos: TCheckBox;
    Image1: TImage;
    qrExcelDataCredito: TQuery;
    qrExcelDataDebito: TQuery;
    cbDF: TCheckBox;
    DBMemo2: TDBMemo;
    qrObs: TQuery;
    dsObs: TDataSource;
    cb_cuus: TCheckBox;
    p_custosunit: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    q_cus_u: TQuery;
    ds_q_cus_u: TDataSource;
    DBGrid1: TDBGrid;
    cb_freteprepaid: TCheckBox;
    cb_fretecollect: TCheckBox;
    cb_freteternac: TCheckBox;
    cb_seguro: TCheckBox;
    cb_fob: TCheckBox;
    cb_ii: TCheckBox;
    cb_ipi: TCheckBox;
    RG_VALOR: TRadioGroup;
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
    qrInfCompCodigo: TStringField;
    qrInfCompTX_INFO_COMPL: TMemoField;
    qrObsObservacoes: TMemoField;
    qrObsCodigo: TStringField;
    qrRelContTipo_Carga: TStringField;
    qrRelContProcesso: TStringField;
    qrRelContDescricao: TStringField;
    qrRelContCodigo: TStringField;
    qrExcelProcNumero_Doc: TStringField;
    qrExcelProcProcesso: TStringField;
    qrExcelProcArquivo: TStringField;
    qrExcelProcDescricao: TStringField;
    qrExcelProcSub_Tipo_Doc: TStringField;
    qrExcelProcTipo_Doc: TStringField;
    qrExcelProcCodigo: TStringField;
    qrExcelProcPagina: TFloatField;
    qrExcelDataCreditoData_Credito: TDateTimeField;
    qrExcelDataCreditoDescricao: TStringField;
    qrExcelDataCreditoValor: TFloatField;
    qrExcelDataCreditoEmpresa: TStringField;
    qrExcelDataCreditoFilial: TStringField;
    qrExcelDataCreditoProcesso: TStringField;
    qrExcelDataDebitoData_Registro: TDateTimeField;
    qrExcelDataDebitoDescricao: TStringField;
    qrExcelDataDebitoValor_Registrado: TFloatField;
    q_cusunitFatura: TStringField;
    q_cusunitSequencial: TStringField;
    q_cusunitQuantidade: TFloatField;
    q_cusunitNumerario: TStringField;
    q_cusunitDescricao: TStringField;
    q_cusunitrateio: TStringField;
    q_cusunitvalor_registrado: TFloatField;
    q_cusunitpeso_total_acertado: TFloatField;
    q_cusunitvalor_previsao: TFloatField;
    q_cusunitvalor_unitario: TFloatField;
    q_cusunitpeso_unitario_acertado: TFloatField;
    q_cusunitRateio_Acrescimos: TFloatField;
    q_cus_uProcesso: TStringField;
    q_cus_uDescricao: TStringField;
    q_cus_uValor_Registrado: TFloatField;
    q_cus_uNumerario: TStringField;
    q_cus_uValor_Previsao: TFloatField;
    q_icmsProcesso: TStringField;
    q_icmsNumerario: TStringField;
    q_icmsData_Registro: TDateTimeField;
    q_icmsValor_Registrado: TFloatField;
    q_icmsvalor_contabilizado: TFloatField;
    q_icmsContabilizado: TStringField;
    Q_embEmpresa: TStringField;
    Q_embFilial: TStringField;
    Q_embProcesso: TStringField;
    Q_embTipoEmbalagem: TStringField;
    Q_embDescricaoEmbalagem: TStringField;
    Q_embQuantidade: TStringField;
    q_adrCodigo: TStringField;
    q_adrcliente: TStringField;
    q_adrEmpresa: TStringField;
    q_adrFilial: TStringField;
    q_adrref_ms: TStringField;
    q_adrref_empresa: TStringField;
    q_adrdi: TStringField;
    q_adrdt_reg: TStringField;
    q_adrresp_ms: TStringField;
    q_adremail_resp_ms: TStringField;
    q_adrdic: TStringField;
    q_adrdt_regc: TStringField;
    q_adrms: TStringField;
    q_adrqfilial: TStringField;
    q_adrBanco: TStringField;
    q_adrAgencia: TStringField;
    q_adrConta_Corrente: TStringField;
    q_adrII: TFloatField;
    q_adrIPI: TFloatField;
    q_adrTaxa_SISCOMEX: TFloatField;
    q_adrBancoc: TStringField;
    q_adrAgenciac: TStringField;
    q_adrConta_Correntec: TStringField;
    q_adrIIc: TFloatField;
    q_adrIPIc: TFloatField;
    q_adrTaxa_SISCOMEXc: TFloatField;
    q_adrEnviou_adcc: TSmallintField;
    q_adrEnviou_adcc_c: TSmallintField;
    q_adrEnviou_adr: TSmallintField;
    q_adrEnviou_adr_c: TSmallintField;
    q_adrqcontrato: TStringField;
    q_adrqlocal: TStringField;
    q_adrTipo: TStringField;
    q_adrqtipo: TStringField;
    q_adrqtipodecl: TStringField;
    q_adrqdecl: TStringField;
    q_adrPag_proporcional: TSmallintField;
    q_conhecimentoEmpresa: TStringField;
    q_conhecimentoFilial: TStringField;
    q_conhecimentoProcesso: TStringField;
    q_conhecimentoqtransporte: TStringField;
    q_conhecimentoqtransportador: TStringField;
    q_conhecimentoqembarcacao: TStringField;
    q_conhecimentoqlocal: TStringField;
    q_conhecimentoqdataembarque: TDateTimeField;
    q_conhecimentoqconhecimento: TStringField;
    q_conhecimentoqtipo: TStringField;
    q_conhecimentoqmaster: TStringField;
    q_conhecimentoqutilizacao: TStringField;
    q_conhecimentoqpaisprocedencia: TStringField;
    q_conhecimentoqurfentrada: TStringField;
    q_conhecimentoqdataurfchegada: TDateTimeField;
    q_conhecimentoqmoedafrete: TStringField;
    q_conhecimentoFrete_Prepaid: TFloatField;
    q_conhecimentoFrete_Collect: TFloatField;
    q_conhecimentoFrete_Ter_Nac: TFloatField;
    q_conhecimentoqmoedaseguro: TStringField;
    q_conhecimentoValor_Seguro: TFloatField;
    q_conhecimentoPeso_Liquido: TFloatField;
    q_conhecimentoPeso_Bruto: TFloatField;
    q_conhecimentoqurfdespacho: TStringField;
    q_conhecimentoqrecinto: TStringField;
    q_conhecimentoqsetor: TStringField;
    q_conhecimentoqdatadespacho: TDateTimeField;
    q_conhecimentoqdocentrada: TStringField;
    q_conhecimentoqtipodocentrada: TStringField;
    q_conhecimentoqpresencacarga: TStringField;
    q_taxasMoeda: TStringField;
    q_taxasTaxa_conversao: TFloatField;
    q_taxasTaxa_conversaoc: TFloatField;
    q_taxasCODIGO: TStringField;
    q_taxasDESCRICAO: TStringField;
    q_fatq_pro: TStringField;
    q_fatcodmoeda: TStringField;
    q_fatq_fat: TStringField;
    q_fatq_inc: TStringField;
    q_fatq_exp: TStringField;
    q_fatq_end: TStringField;
    q_fatq_com: TStringField;
    q_fatq_bai: TStringField;
    q_fatq_cid: TStringField;
    q_fatq_est: TStringField;
    q_fatq_moe: TStringField;
    q_fatq_val: TFloatField;
    q_cusProcesso: TStringField;
    q_cusDescricao: TStringField;
    q_cusValor_Registrado: TFloatField;
    q_cusValor_Previsao: TFloatField;
    q_folsequencial: TAutoIncField;
    q_folData: TDateTimeField;
    q_folHora: TStringField;
    q_folCodevento: TStringField;
    q_folDescricao: TStringField;
    q_folCodobs: TStringField;
    q_folDescricao_1: TStringField;
    q_folObs_especifica: TStringField;
    q_folData_final: TDateTimeField;
    q_folHora_final: TStringField;
    q_folUsuario: TStringField;
    q_itensProcesso: TStringField;
    q_itensDI: TStringField;
    q_itensvad: TIntegerField;
    q_itensvseq: TIntegerField;
    q_itensTaxa_conversao: TFloatField;
    q_itensIncoterm: TStringField;
    q_itensqmoeda: TStringField;
    q_itensAdicao: TStringField;
    q_itensSeq_Adicao: TSmallintField;
    q_itensSomaDePeso_Total_Acertado: TFloatField;
    q_itensFatura: TStringField;
    q_itensFOB: TFloatField;
    q_itensFOB_em_reais: TFloatField;
    q_itensCIF: TFloatField;
    q_itensCIF_em_reas: TFloatField;
    q_itensValor_mercadoria: TFloatField;
    q_itensvalunit: TFloatField;
    q_itensvaltot: TFloatField;
    q_itenspesounit: TFloatField;
    q_itenspesototal: TFloatField;
    q_itensSomaDeVMLE: TFloatField;
    q_itensseq: TStringField;
    q_itensProduto: TStringField;
    q_itensDescricao_Produto: TMemoField;
    q_itensQuantidade: TFloatField;
    q_itensNCM: TStringField;
    q_itensDestaque_NCM: TStringField;
    q_itensNALADI: TStringField;
    q_itensfreteprepaid: TFloatField;
    q_itensfreteprepaid_em_reais: TFloatField;
    q_itensfretecollect: TFloatField;
    q_itensfretecollect_em_reais: TFloatField;
    q_itensfreteternac: TFloatField;
    q_itensfreteternac_em_reais: TFloatField;
    q_itensseguro: TFloatField;
    q_itensseguro_em_reais: TFloatField;
    q_itensRegime_tri: TStringField;
    q_itensAliq_NCM_II: TFloatField;
    q_itensRegime_Tributacao_II: TStringField;
    q_itensRegime_Tributacao_IPI: TStringField;
    q_itensAliq_NCM_IPI: TFloatField;
    q_itensValor_II_a_recolher: TFloatField;
    q_itensValor_II_a_recolher_em_reais: TFloatField;
    q_itensValor_IPI_a_recolher: TFloatField;
    q_itensValor_IPI_a_recolher_em_reais: TFloatField;
    q_itensfob2: TFloatField;
    q_itensFOB_em_reais2: TFloatField;
    q_itensPercentual_Reducao_II: TFloatField;
    qrExcelDataDebitoValor_Previsao: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure processaClick(Sender: TObject);
    procedure imprimirClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure cbTodosClick(Sender: TObject);
    procedure cb_cutClick(Sender: TObject);
    procedure cb_cuuClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    procedure MoedaCorte(var nome_moeda: String);
    procedure FormaMenuPla();
    procedure AdicionaBotao();
    procedure IniciarFolha(pColunas: Word);
    procedure FinalizarFolha;
  public
    { Public declarations }
  end;

const
     AL_DIREITA = -4152;
     AL_ESQUERDA = -4131;
     AL_CENTRO = -4108;

var
  f_extratopro: Tf_extratopro;
  Excel : Variant;
  dir_cor,planilha_0,planilha,arqdir,arqnome,linha,expor:string;
  arqADR,arqDET:textfile;
  vb_dolar, eusu:boolean;
  qdi,qdidt:string;
  semval,semvalc,apri,enviamsg:boolean;
  qempresa,qfilial,qempresanome,qfilialnome,qimpor,
  vtcontato,vtcontato2,vtcontato3,vtusuario,qadicao,tlinha:string;
  Saux, i,aux,v_menuAux, v_pag:integer;
  vicms, vTaxaDolar:real;
  vtotcdolar,vtotcreal,ataxa,VTOTPRO,VTOTPESO:real;
  vtot_tdolar,vtot_treal,vtot_udolar,vtot_ureal:real;

  bExibePlanilha: Boolean; // EXIBE A PLANILHA SENDO GERADA
  vPro, vEmp, vFil: String;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_extratopro.MoedaCorte(var nome_moeda: String);
begin
     If Uppercase(Copy(q_fatq_moe.AsString,1,5)) = 'DOLAR' Then nome_moeda := 'Dolar'
     Else If Uppercase(Copy(q_fatq_moe.AsString,1,4)) = 'EURO' Then nome_moeda := 'EURO'
     Else nome_moeda := Copy((q_fatq_moe.AsString),1,3);
end;

procedure Tf_extratopro.FormaMenuPla();
begin

     Excel.WorkSheets['Menu'].Select;

                 planilha := stringreplace(Copy(planilha,1,25),'.','_', [rfReplaceAll]);
                 planilha := stringreplace(Copy(planilha,1,25),':','_', [rfReplaceAll]);
                 planilha := stringreplace(Copy(planilha,1,25),'\','_', [rfReplaceAll]);
                 planilha := stringreplace(Copy(planilha,1,25),'?','_', [rfReplaceAll]);


     If v_pag = 0 Then begin
          Excel.Cells[v_menuAux, 3] := IntToStr(v_menuAux-2) + '. ' + Planilha;
     end
     Else begin
          Excel.Cells[v_menuAux, 1] := IntToStr(v_menuAux-8)+' - '+Planilha;
     end;


     planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);
     

     If v_pag = 0 Then Excel.WorkSheets['Menu'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Menu'].Range['C' + IntToStr(v_menuAux)], Address := '', SubAddress:= '''' + Planilha + '''!a1')
     Else Excel.WorkSheets['Menu'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Menu'].Range['a' + IntToStr(v_menuAux)], Address:= '', SubAddress:= '''' + Planilha_0 + '''!a1');

     If v_pag = 0 Then Excel.Range['C' + IntToStr(v_menuAux), 'F' + IntToStr(v_menuAux)].Merge
     Else Excel.Range['a' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Merge;

     Inc(v_menuAux);

     If v_pag = 0 Then Excel.WorkSheets[planilha].Select
     Else Excel.WorkSheets[planilha_0].Select;

end;

procedure Tf_extratopro.AdicionaBotao();
begin

{       Excel.WorkSheets[1].Shapes.AddOLEObject (left:=450, Top:=20, Width:=40, Height:=20, ClassType:='Forms.commandbutton.1');
       Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan'+inttostr(Saux)).CodeModule.VBE.MainWindow.Visible := False;
       Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan'+inttostr(Saux)).Codemodule.CreateEventProc ('click' , 'CommandButton1');
       Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan'+inttostr(Saux)).CodeModule.VBE.ActiveWindow.Close;
       Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan'+inttostr(Saux)).Codemodule.InsertLines (2, 'WorkSheets("MENU").Select');
       Excel.ActiveWorkBook.VBProject.VBE.MainWindow.Visible := bExibePlanilha;
}
       Application.ProcessMessages;

//       Excel.WorkSheets[Planilha].CommandButton1.Caption := 'Menu';
//       Excel.WorkSheets[Planilha].CommandButton1.PrintObject := False;
//       Excel.WorkSheets[Planilha].CommandButton1.Font.Bold := True;
//       Excel.WorkSheets[Planilha].CommandButton1.Activate;

       If Saux = 1 Then Saux := 3
       Else Inc(Saux);
end;

procedure Tf_extratopro.IniciarFolha(pColunas: Word);
begin
     re_Processa.Lines.Append('-> Gerando a opção: '+ Planilha);

     Excel.WorkSheets.Add;
     Excel.WorkSheets[1].Name := Planilha;
     //Excel.WorkSheets[1].PageSetup.PaperSize := '9';
     Excel.ActiveSheet.PageSetup.LeftMargin := '28';
     Excel.ActiveSheet.PageSetup.RightMargin := '28';
     Excel.ActiveWindow.DisplayGridLines := False;

     Excel.Cells[1,1] := v_empresanome; ////'MS2000 - Sistema Gerencial Aduaneiro';
     Excel.Cells[2,1] := 'EXTRATO DE PROCESSOS - V 1.0 - '+ FormatDateTime('dd/mm/yyyy "às" hh:nn', Now());
     Excel.Cells[1,1].Font.Size := 12;

     Excel.Cells[3,1] := '>> MENU <<';
     Excel.WorkSheets[planilha].Hyperlinks.Add (Anchor:= Excel.WorkSheets[planilha].Range['a3'], Address:= '', SubAddress:= '''' + 'MENU' + '''!a1');
     Excel.Range['A3', 'A3'].HorizontalAlignment := AL_DIREITA;

     Excel.Range['A1', Chr(pColunas+64) +'1'].Merge;
     Excel.Range['A2', Chr(pColunas+64) +'2'].Merge;
     Excel.Range['A3', Chr(pColunas+64) +'3'].Merge;
     Excel.Range['A4', Chr(pColunas+64) +'4'].Merge;
     Excel.Range['A1', 'A4'].Font.Bold := True;

     Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[8].LineStyle := 1;
     Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[8].Weight := 3;
     Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[9].LineStyle := 1;
     Excel.Range['A4', Chr(pColunas+64) +'4'].Borders.Item[9].Weight := 3;
     Excel.Range['A4', Chr(pColunas+64) +'4'].Interior.Color := clSilver;
     Excel.Range['A4', 'A4'].Font.Size := 9;

     Excel.Cells[4,1] := Planilha;
end;

procedure Tf_extratopro.FinalizarFolha;
begin
     AdicionaBotao();
     FormaMenuPla();
     Excel.WorkBooks[1].Save;
     Application.ProcessMessages;
end;

procedure Tf_extratopro.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


 {    h := Height;
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
     width := w;  }
end;

procedure Tf_extratopro.ME_nossarefChange(Sender: TObject);
begin
     If Length(me_nossaref.Text) <> 8 Then
        Exit;

     Screen.Cursor := crHourGlass;

     With qrProcessos Do Begin
         Close;  Open;
     End;
     If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin
        F_MSCOMEX.atualizacpastas(ME_nossaref.text);
        l_cliente.Caption := qrProcessosCliente.AsString;
        re_processa.clear;
        pnlPrincipal.Visible := True;
        pnlBaixo.Visible := True;

        vPro := qrProcessosProcesso.AsString;
        vEmp := qrProcessosEmpresa.AsString;
        vFil := qrProcessosFilial.AsString;

        q_cus_u.Close;
        q_adr.Close;
        q_conhecimento.Close;
        q_emb.Close;
        q_fat.Close;
        q_taxas.Close;
        q_fol.Close;
        q_icms.Close;
        q_Itens.Close;
        q_cus.Close;
        qrObs.Close;
        qrInfComp.Close;
        qrExcelDataCredito.Close;
        qrExcelDataDebito.Close;
        qrExcelProc.Close;
        q_cusunit.Close;

        With q_cus_u Do Begin
            Filter := '';
            Filtered := False;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
            Open;
        End;

        With q_adr Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_conhecimento Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_emb Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_fat Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_taxas Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_fol Do Begin
            {Params[0].AsString := vEmp;
            Params[1].AsString := vFil;}
            Params[0].AsString := vPro;
        End;

        With q_icms Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_itens Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_cus Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With qrObs Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With qrInfComp Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With qrExcelDataCredito Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With qrExcelDataDebito Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With qrExcelProc Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;

        With q_cusunit Do Begin
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := vPro;
        End;
     End
     Else Begin
        MessageDlg('Processo não encontrado!', mtInformation, [mbOk], 0);
        l_cliente.Caption := '';
        me_nossaref.Clear;
        pnlPrincipal.Visible := False;
        pnlBaixo.Visible := False;
        me_nossaref.SetFocus;
     End;

     Screen.Cursor := crDefault;
end;

procedure Tf_extratopro.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     f_mscomex.ExtratodeProcessos1.Enabled := True;
     F_extratopro := Nil;
     Action := caFree;
end;

procedure Tf_extratopro.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_extratopro.processaClick(Sender: TObject);
var
   v_soma, v_soma2: Real;
   v_str: String;
   valor_rateio, valor_rateio_reg, valor_rateio_prev: Real;
   qmoedafatura: String;
   vTaxaMoedaFatura, vTaxaConv: Real;
begin
     vb_dolar := True;

     p_custosunit.Visible := False;
     With re_processa Do Begin
         Clear;
         Lines.Add('  '+'*********************************************************************************************');
         Lines.Add('  '+'MS2000 - SISTEMA GERENCIAL ADUANEIRO');
         Lines.Add('  '+'EXTRATO DE PROCESSOS - V 1.0'+chr(9)+datetostr(date())+ ' às ' + Copy(timetostr(time),1,5));
         Lines.Add('  '+'*********************************************************************************************');
         Lines.Add('  '+' ');

         If Not q_ADR.Active Then q_ADR.Open;

         { REFERÊNCIA DO PROCESSO }
         If cb_ref.Checked Then Begin
            Lines.Add('  ');
            Lines.Add('  '+'*********************************************************************************************');
            Lines.Add('  '+'REFERÊNCIAS DO PROCESSO');
            Lines.Add('  ');
            Lines.Add('  '+'Despachante                    : '+chr(9)+'MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.');
            Lines.Add('  '+'Filial                         : '+chr(9)+q_ADRqfilial.AsString);
            Lines.Add('  ');
            Lines.Add('  '+'Cliente                        : '+chr(9)+q_ADRcliente.AsString);
            Lines.Add('  ');
            Lines.Add('  '+'Contrato                       : '+chr(9)+q_ADRqcontrato.AsString);
            Lines.Add('  '+'Local de Inventário            : '+chr(9)+q_ADRqlocal.AsString);
            Lines.Add('  ');
            Lines.Add('  '+'Referência MS                  : '+chr(9)+q_ADRref_ms.AsString);
            Lines.Add('  '+'Tipo Processo                  : '+chr(9)+q_ADRqtipo.AsString);
            Lines.Add('  '+'Referência Cliente             : '+chr(9)+q_ADRref_empresa.AsString);
            If q_adrqtipodecl.AsString <> '12' Then
               Lines.Add('  '+'DI - Declaração de Importação  : '+chr(9)+q_ADRdi.AsString)
            Else Begin
               If q_adrpag_proporcional.ASINTEGER = 0 Then
                  Lines.Add('  '+'DI - Declaração de Importação  : '+chr(9)+q_ADRdi.AsString+' -> ADMISSÃO TEMPORÁRIA ')
               Else
                  Lines.Add('  '+'DI - Declaração de Importação  : '+chr(9)+q_ADRdi.AsString+' -> CONSUMO E ADMISSÃO TEMPORÁRIA ');
               Lines.Add('  '+'Tipo de Declaração             : '+chr(9)+q_ADRqdecl.AsString);
               Lines.Add('  '+'Data Registro                  : '+chr(9)+Copy(q_ADRdt_reg.AsString,1,2)+'/'+Copy(q_ADRdt_reg.AsString,3,2)+'/'+Copy(q_ADRdt_reg.AsString,5,4));
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         If Not q_conhecimento.Active Then q_conhecimento.Open;
         If q_conhecimento.RecordCount > 0 Then Begin
            VTOTPESO := q_conhecimentopeso_liquido.AsFloat;
            { TRANSPORTES / CONHECIMENTO }
            If cb_tra.Checked Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'TRANSPORTES / CONHECIMENTO');
               Lines.Add('  ');
               Lines.Add('  '+'Transporte                     : '+chr(9)+q_conhecimentoqtransporte.AsString);
               Lines.Add('  '+'Transportador                  : '+chr(9)+q_conhecimentoqtransportador.AsString);
               Lines.Add('  '+'Embarcação                     : '+chr(9)+q_conhecimentoqembarcacao.AsString);
               Lines.Add('  '+'Local de Embarque              : '+chr(9)+q_conhecimentoqlocal.AsString);
               Lines.Add('  '+'Data do Embarque               : '+chr(9)+q_conhecimentoqdataembarque.AsString);
               Lines.Add('  '+'Conhecimento                   : '+chr(9)+q_conhecimentoqconhecimento.AsString);
               Lines.Add('  '+'Tipo                           : '+chr(9)+q_conhecimentoqtipo.AsString);
               Lines.Add('  '+'Master                         : '+chr(9)+q_conhecimentoqmaster.AsString);
               Lines.Add('  '+'Utilização                     : '+chr(9)+q_conhecimentoqutilizacao.AsString);
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;

            { CARGA }
            If cb_car.Checked Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'CARGA');
               Lines.Add('  ');
               Lines.Add('  '+'País de Procedência            : '+chr(9)+q_conhecimentoqpaisprocedencia.AsString);
               Lines.Add('  '+'URF de Entrada no País         : '+chr(9)+q_conhecimentoqurfentrada.AsString);
               Lines.Add('  '+'Moeda Frete                    : '+chr(9)+q_conhecimentoqmoedafrete.AsString);
               Lines.Add('  '+'Frete Prepaid                  : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_prepaid.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_prepaid.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Frete Collect                  : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_collect.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_collect.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Frete Territorio Nacional      : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_ter_nac.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentofrete_ter_nac.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Moeda Seguro                   : '+chr(9)+q_conhecimentoqmoedaseguro.AsString);
               Lines.Add('  '+'Seguro                         : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentovalor_seguro.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentovalor_seguro.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Peso Líquido                   : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentopeso_liquido.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentopeso_liquido.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Peso Bruto                     : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_conhecimentopeso_bruto.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_conhecimentopeso_bruto.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;

            { REGISTRO DE CHEGADA }
            If cb_reg.Checked Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'REGISTRO DE CHEGADA');
               Lines.Add('  ');
               Lines.Add('  '+'URF de Despacho                : '+chr(9)+q_conhecimentoqurfdespacho.AsString);
               Lines.Add('  '+'Recinto Alfandegado            : '+chr(9)+q_conhecimentoqrecinto.AsString);
               Lines.Add('  '+'Setor de Armazenamento         : '+chr(9)+q_conhecimentoqsetor.AsString);
               Lines.Add('  '+'Data de Chegada URF de Entrada : '+chr(9)+q_conhecimentoqdataurfchegada.AsString);
               Lines.Add('  '+'Documento de Entrada           : '+chr(9)+q_conhecimentoqdocentrada.AsString);
               Lines.Add('  '+'Tipo Documento                 : '+chr(9)+q_conhecimentoqtipodocentrada.AsString);
               Lines.Add('  '+'Presença de Carga              : '+chr(9)+q_conhecimentoqpresencacarga.AsString);
               Lines.Add('  '+'Data de Chegada URF de Despacho: '+chr(9)+q_conhecimentoqdatadespacho.AsString);
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { TIPOS DE EMBALAGENS }
         If cb_emb.Checked Then Begin
            If Not q_emb.Active Then q_emb.Open Else q_emb.First;
            If q_emb.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'TIPOS DE EMBALAGENS');
               Lines.Add('  ');
               Lines.Add('  '+'Tipo de  Embalagem                      '+CHR(9)+'    Quantidade');
               While Not q_emb.Eof do Begin
                    Lines.Add('  '+Copy(q_embdescricaoembalagem.AsString+StringOfChar(' ',40),1,40)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_embquantidade.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_embquantidade.AsFloat,fffixed,12,2))-10,11));
                    q_emb.Next;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { FATURAS }
         qmoedafatura := '';
         If Not q_fat.Active Then q_fat.Open Else q_fat.First;
         If q_fat.RecordCount > 0 Then Begin
            VTOTPRO := 0;
            If cb_fat.Checked Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'FATURAS');
            End;
            VTOTPRO := 0;

            While Not q_fat.Eof Do Begin
                 qmoedafatura := q_fatcodmoeda.AsString;
                 If cb_fat.Checked Then Begin
                    Lines.Add('  ');
                    Lines.Add('  '+chr(9)+'_____________________________________________________________________________________');
                    Lines.Add('  '+chr(9)+'Exportador                     : '+CHR(9)+Copy(q_fatq_exp.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  '+chr(9)+'Endereço                       : '+CHR(9)+Copy(q_fatq_end.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  '+chr(9)+'Complemento                    : '+CHR(9)+Copy(q_fatq_com.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  '+chr(9)+'Bairro                         : '+CHR(9)+Copy(q_fatq_bai.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  '+chr(9)+'Cidade                         : '+CHR(9)+Copy(q_fatq_cid.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  '+chr(9)+'Estado                         : '+CHR(9)+Copy(q_fatq_est.AsString+StringOfChar(' ',30),1,30));
                    Lines.Add('  ');
                    Lines.Add('  '+chr(9)+'Faturas                       '+chr(9)+'Incoterm Moeda                              Valor');
                    Lines.Add('  ');
                 End;

                 expor := q_fatq_exp.AsString;
                 While (Not q_fat.Eof) And (expor = q_fatq_exp.AsString) Do Begin
                      VTOTPRO := VTOTPRO + q_fatq_val.AsFloat;
                      If cb_fat.Checked Then Begin
                         linha := '';
                         linha := linha+chr(9)+Copy(q_fatq_fat.AsString+StringOfChar(' ',30),1,30);
                         linha := linha+chr(9)+Copy(q_fatq_inc.AsString+StringOfChar(' ',8),1,8)+' ';
                         linha := linha+Copy(q_fatq_moe.AsString+StringOfChar(' ',28),1,28)+' ';
                         linha := linha+Copy(StringOfChar(' ',12)+FloatToStrF(q_fatq_val.AsFloat,fffixed,13,2),Length(StringOfChar(' ',12)+FloatToStrF(q_fatq_val.AsFloat,fffixed,13,2))-10,12);
                         Lines.Add('  '+linha);
                      End;
                      q_fat.Next;
                 End;
            End;
            If cb_fat.Checked Then Begin
               Lines.Add('  '+' ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { TAXAS DE CÂMBIO }
         ataxa := 0;
         vTaxaMoedaFatura := 0;
         If Not q_taxas.Active Then q_taxas.Open Else q_taxas.First;
         If q_taxas.RecordCount > 0 Then Begin
            If q_taxas.Locate('Moeda', '220', []) Then Begin
               vTaxaDolar := q_taxastaxa_conversao.AsFloat;
               vb_dolar := True;
            End;
            If q_taxas.Locate('Moeda', qmoedafatura, []) Then Begin
               vTaxaMoedaFatura := q_taxastaxa_conversao.AsFloat;
               vb_dolar := False;
            End;
            ataxa := vTaxaDolar;
            If cb_tax.Checked Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'TAXAS DE CÂMBIO');
               Lines.Add('  ');
               If q_adrqtipodecl.AsString <> '12' Then
                  Lines.Add('  '+'Moeda                         '+chr(9)+'          Taxa')
               Else Begin
                  If q_adrpag_proporcional.ASINTEGER = 0 Then
                     Lines.Add('  '+'Moeda                         '+chr(9)+'      Taxa ADM'+chr(9)+'      Taxa CON')
                  Else
                     Lines.Add('  '+'Moeda                         '+chr(9)+'          Taxa')
               End;
               q_taxas.First;
               While Not q_taxas.Eof Do Begin
                    linha := Copy(q_taxasdescricao.AsString+StringOfChar(' ',30),1,30)+chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(q_taxastaxa_conversao.AsFloat,fffixed,15,7),Length(StringOfChar(' ',14)+FloatToStrF(q_taxastaxa_conversao.AsFloat,fffixed,15,7))-11,14);
                    If (q_adrqtipodecl.AsString = '12') And (q_adrpag_proporcional.ASINTEGER = 0) Then
                       linha := linha+chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(q_taxastaxa_conversaoc.AsFloat,fffixed,15,7),Length(StringOfChar(' ',14)+FloatToStrF(q_taxastaxa_conversaoc.AsFloat,fffixed,15,7))-11,14);
                    Lines.Add('  '+Linha);
                    q_taxas.Next;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { FOLLOW UP }
         If cb_fol.Checked Then Begin
            If Not q_fol.Active Then q_fol.Open Else q_fol.First;
            If q_fol.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'FOLLOW UP');
               Lines.Add('  ');
               Lines.Add('  '+'Data            '+chr(9)+'Descrição                                                     '+chr(9)+'Usuário       ');
               Lines.Add('  '+'----------------'+chr(9)+'--------------------------------------------------------------'+chr(9)+'--------------');
               ////            12/12/1212 12:12          123546789/123456789/123456789/123456789/12345          123456789/
               While Not q_fol.Eof Do Begin
                    Lines.Add('  '+q_folData.AsString +' '+ q_folHora.AsString+chr(9)+
                    Copy(q_folDescricao.AsString+'-'+q_folDescricao_1.AsString+StringOfChar(' ',45),1,60)+chr(9)+
                    Copy(q_folUsuario.AsString+'          ',1,10));
                    q_fol.Next;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { IMPOSTOS }
         If cb_imp.Checked Then Begin
            Lines.Add('  ');
            Lines.Add('  '+'*********************************************************************************************');
            Lines.Add('  '+'IMPOSTOS');
            Lines.Add('  ');

            If q_adrqtipodecl.AsString <> '12' Then Begin
               Lines.Add('  '+'II - Imposto de Importação     : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRII.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRII.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'IPI - Imposto de Produtos Ind. : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRIPI.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRIPI.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Taxa Siscomex                  : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRTAXA_SISCOMEX.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRTAXA_SISCOMEX.AsFloat,fffixed,12,2))-10,11));
               If q_adrqtipodecl.AsString = '01' Then Begin
                  If Not q_icms.Active Then q_icms.Open;
                  If q_icms.RecordCount = 0 Then
                     vicms := 0
                  Else
                     vicms := q_icmsvalor_registrado.AsFloat;
                  Lines.Add('  '+'ICMS                           : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(vicms,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(vicms,fffixed,12,2))-10,11));
               End;
            End
            Else Begin
               If q_adrpag_proporcional.ASINTEGER = 0 Then
                  Lines.Add('  '+'Admissão Temporária:')
               Else
                  Lines.Add('  '+'Consumo e Admissão Temporária:');
               Lines.Add('  '+'II - Imposto de Importação     : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRII.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRII.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'IPI - Imposto de Produtos Ind. : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRIPI.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRIPI.AsFloat,fffixed,12,2))-10,11));
               Lines.Add('  '+'Taxa Siscomex                  : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_ADRTAXA_SISCOMEX.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_ADRTAXA_SISCOMEX.AsFloat,fffixed,12,2))-10,11));
            End;
            Lines.Add('  ');
            Lines.Add('  '+'*********************************************************************************************');
         End;

         { IMPOSTOS POR ITEM }
         If cb_ite.Checked Then Begin
            If Not q_itens.Active Then q_itens.Open Else q_itens.First;
            If q_itens.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'IMPOSTOS POR ITEM');
               Lines.Add('  ');
               While Not q_itens.Eof Do Begin
                    Lines.Add('  ');
                    Lines.Add('  '+'_______________________________________________________________________________________________');
                    Lines.Add('  '+'Adição              : '+CHR(9)+Copy(q_itensadicao.AsString+StringOfChar(' ',6),1,6));
                    Lines.Add('  '+'Regime Tributação   : '+CHR(9)+Copy(q_itensregime_tri.AsString+StringOfChar(' ',40),1,40));
                    Lines.Add('  '+'NCM                 : '+CHR(9)+Copy(q_itensncm.AsString+StringOfChar(' ',8),1,8));
                    Lines.Add('  '+'DESTAQUE            : '+CHR(9)+Copy(q_itensdestaque_ncm.AsString+StringOfChar(' ',8),1,8));
                    Lines.Add('  '+'NALADI              : '+CHR(9)+Copy(q_itensnaladi.AsString+StringOfChar(' ',8),1,8));
                    Lines.Add('  '+'Aliq. II            : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensaliq_ncm_ii.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensaliq_ncm_ii.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+'Aliq. IPI           : '+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensaliq_ncm_ipi.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensaliq_ncm_ipi.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  ');
                    qadicao := q_itensadicao.AsString;
                    While (Not q_itens.Eof) And (qadicao = q_itensadicao.AsString) Do Begin
                         Lines.Add('  '+chr(9)+'______________________________________________________________________________________');
                         Lines.Add('  '+chr(9)+'Seq             : '+chr(9)+q_itensseq_adicao.AsString);
                         Lines.Add('  '+chr(9)+'Produto         : '+chr(9)+q_itensproduto.AsString);
                         Lines.Add('  '+chr(9)+'Descrição       : '+chr(9)+Copy(q_itensdescricao_produto.AsString,1,60));
                         Lines.Add('  '+chr(9)+'                : '+chr(9)+Copy(q_itensdescricao_produto.AsString,61,60));
                         Lines.Add('  '+chr(9)+'Quantidade      : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensquantidade.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensquantidade.AsFloat,fffixed,12,2))-10,11));
                         Lines.Add('  '+chr(9)+'Valor Unitário  : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalunit.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalunit.AsFloat,fffixed,12,2))-10,11));
                         Lines.Add('  '+chr(9)+'Valor Total     : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvaltot.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvaltot.AsFloat,fffixed,12,2))-10,11));
                         Lines.Add('  '+chr(9)+'Peso Unitário   : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenspesounit.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenspesounit.AsFloat,fffixed,12,2))-10,11));
                         Lines.Add('  '+chr(9)+'Peso Total      : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenspesototal.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenspesototal.AsFloat,fffixed,12,2))-10,11));
                         Lines.Add('  ');
                         Lines.Add('  '+chr(9)+chr(9)+chr(9)+chr(9)+'Valores Totais         '+chr(9)+'Valores Unitários      ');
                         Lines.Add('  '+chr(9)+chr(9)+chr(9)+chr(9)+'       (U$)        (R$)'+chr(9)+'       (U$)        (R$)');
                         Lines.Add('  '+chr(9)+chr(9)+chr(9)+chr(9)+'_______________________'+chr(9)+'_______________________');

                         tlinha := chr(9)+'FOB            '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfob2.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfob2.AsFloat                            ,fffixed,12,2))-10,11)+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfob_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfob_em_reais2.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfob2.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfob2.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfob_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfob_em_reais2.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'FRETE PREPAID  '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'FRETE COLLECT  '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'FRETE TER.NAC. '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'SEGURO         '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensseguro.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensseguro.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensseguro.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensseguro.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'CIF            '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenscif.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenscif.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenscif_em_reas.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenscif_em_reas.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itenscif.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itenscif.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itenscif_em_reas.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itenscif_em_reas.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'II             '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         tlinha := chr(9)+'IPI 	         '
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher.AsFloat                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher.AsFloat                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                                 + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher.AsFloat/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                         Lines.Add('  '+tlinha);

                         Lines.Add('  '+chr(9)+'______________________________________________________________________________________');
                         q_itens.Next;
                    End;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { CUSTOS TOTAIS DO PROCESSO }
         If cb_cut.Checked Then Begin
            If Not q_cus.Active Then q_cus.Open Else q_cus.First;
            If q_cus.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               If RG_VALOR.ItemIndex=1 Then
                  Lines.Add('  '+'CUSTOS TOTAIS')
               Else
                  Lines.Add('  '+'CUSTOS TOTAIS (PREVISÃO)');
               Lines.Add('  ');
               Lines.Add('  '+'Descrição do Custo                      '+chr(9)+'     Valor (U$)'+chr(9)+'     Valor (R$)');
               /////           123456789/123456789/123456789/123546789/          123456789/12345          123456789/12345
               Lines.Add('  '+'________________________________________'+chr(9)+'_______________'+chr(9)+'_______________');

               vtotcdolar := 0;
               vtotcreal := 0;
               While Not q_cus.Eof Do Begin
                    tlinha := '  '+Copy(q_cusdescricao.AsString+StringOfChar(' ',40),1,40);
                    If RG_VALOR.ItemIndex=1 Then Begin /// valor registrado
                       tlinha := tlinha
                               + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF((q_cusvalor_registrado.AsFloat/ataxa),fffixed ,15,2),Length(StringOfChar(' ',14)+FloatToStrF((q_cusvalor_registrado.AsFloat/ataxa),fffixed,15,2))-13,14)
                               + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(q_cusvalor_registrado.AsFloat,fffixed,15,2),Length(StringOfChar(' ',14)+FloatToStrF(q_cusvalor_registrado.AsFloat,fffixed,15,2))-13,14);
                       vtotcdolar := vtotcdolar + (q_cusvalor_registrado.AsFloat/ataxa);
                       vtotcreal := vtotcreal + q_cusvalor_registrado.AsFloat;
                    End
                    Else Begin                        ///valor previsão
                       tlinha := tlinha
                               + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF((q_cusvalor_previsao.AsFloat/ataxa),fffixed ,15,2),Length(StringOfChar(' ',14)+FloatToStrF((q_cusvalor_previsao.AsFloat/ataxa),fffixed,15,2))-13,14)
                               + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(q_cusvalor_previsao.AsFloat,fffixed,15,2),Length(StringOfChar(' ',14)+FloatToStrF(q_cusvalor_previsao.AsFloat,fffixed,15,2))-13,14);
                       vtotcdolar := vtotcdolar + (q_cusvalor_previsao.AsFloat/ataxa);
                       vtotcreal := vtotcreal + q_cusvalor_previsao.AsFloat;
                    End;
                    Lines.Add('  '+tlinha);
                    q_cus.Next;
               End;
               Lines.Add('  '+'________________________________________'+chr(9)+'_______________'+chr(9)+'_______________');
               Lines.Add('  '+'Totais                                  '
                     + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(vtotcdolar,fffixed ,15,2),Length(StringOfChar(' ',14)+FloatToStrF(vtotcdolar,fffixed,15,2))-13,14)
                     + chr(9)+Copy(StringOfChar(' ',14)+FloatToStrF(vtotcreal,fffixed,15,2),Length(StringOfChar(' ',14)+FloatToStrF(vtotcreal,fffixed,15,2))-13,14));
            End;
            Lines.Add('  ');
            Lines.Add('  '+'*********************************************************************************************');
         End;

         { CUSTOS UNITÁRIOS ANALÍTICOS DO PROCESSO }
         If cb_cuu.Checked Then Begin
            If Not q_itens.Active Then q_itens.Open Else q_itens.First;
            If q_itens.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               If RG_VALOR.ItemIndex = 1 Then
                  Lines.Add('  '+'CUSTOS UNITÁRIOS - ANALÍTICOS')
               Else
                  Lines.Add('  '+'CUSTOS UNITÁRIOS - ANALÍTICOS (PREVISÃO)');
               Lines.Add('  ');

               While Not q_itens.Eof Do Begin
                    vtot_tdolar := 0;
                    vtot_treal  := 0;
                    vtot_udolar := 0;
                    vtot_ureal  := 0;
                    Lines.Add('  '+'______________________________________________________________________________________');
                    Lines.Add('  '+'Adição          : '+chr(9)+q_itensAdicao.AsString);
                    Lines.Add('  '+'Seq             : '+chr(9)+q_itensseq_adicao.AsString);
                    Lines.Add('  '+'Produto         : '+chr(9)+q_itensproduto.AsString);
                    Lines.Add('  '+'Descrição       : '+chr(9)+Copy(q_itensdescricao_produto.AsString,1,60));
                    Lines.Add('  '+'                : '+chr(9)+Copy(q_itensdescricao_produto.AsString,61,60));
                    Lines.Add('  '+'Quantidade      : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensquantidade.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensquantidade.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+'Valor Unitário  : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalunit.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalunit.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+'Valor Total     : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvaltot.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvaltot.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+'Peso Unitário   : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenspesounit.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenspesounit.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+'Peso Total      : '+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itenspesototal.AsFloat,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itenspesototal.AsFloat,fffixed,12,2))-10,11));
                    Lines.Add('  '+' ');
                    Lines.Add('  '+'Descrição dos Custos               '+chr(9)+'Valores Totais         '+chr(9)+'Valores Unitários      ');
                    /////           123456789/123456789/123456789/12345
                    Lines.Add('  '+'                                   '+chr(9)+'       (U$)        (R$)'+chr(9)+'       (U$)        (R$)');
                    Lines.Add('  '+'___________________________________'+chr(9)+'_______________________'+chr(9)+'_______________________');
                                                                                   //// 99999999.99 99999999.99          99999999.99  99999999.99
                    If vb_dolar Then
                       vTaxaConv := 1
                    Else
                       vTaxaConv := vTaxaDolar;

                    If cb_fob.Checked Then Begin
                       tlinha := Copy('FOB'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfob_em_reais.AsFloat/vTaxaConv{q_itensfob2.AsFloat}                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfob_em_reais.AsFloat/vTaxaConv)                            ,fffixed,12,2))-10,11)+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfob_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfob_em_reais2.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensfob_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensfob_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+CHR(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfob_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfob_em_reais2.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensfob_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensfob_em_reais2.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensfob_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensfob_em_reais2.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_freteprepaid.Checked Then Begin
                       tlinha := Copy('FRETE PREPAID'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv{q_itensfreteprepaid.AsFloat}                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteprepaid_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensfreteprepaid_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_fretecollect.Checked Then Begin
                       tlinha := Copy('FRETE COLLECT'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat/vTaxaConv                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfretecollect_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensfretecollect_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensfretecollect_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_freteternac.Checked Then Begin
                       tlinha := Copy('FRETE TER.NAC.'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat/vTaxaConv                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensfreteternac_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensfreteternac_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensfreteternac_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_seguro.Checked Then Begin
                       tlinha := Copy('SEGURO'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat/vTaxaConv                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensseguro_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensseguro_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensseguro_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_ii.Checked Then Begin
                       tlinha := Copy('IMPOSTO DE IMPORTAÇÃO'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ii_a_recolher_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;
                    If cb_ipi.Checked Then Begin
                       tlinha := Copy('IMPOSTO S/ PRODUTOS INDUSTRIALIZADOS'+StringOfChar(' ',35),1,35)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv                            ,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv                            ,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat                            ,fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF(q_itensvalor_ipi_a_recolher_em_reais.AsFloat                            ,fffixed,12,2))-10,11)
                               + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat),fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2),Length(StringOfChar(' ',11)+FloatToStrF((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat),fffixed,12,2))-10,11);
                       Lines.Add('  '+tlinha);

                       vtot_tdolar := vtot_tdolar +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv);
                       vtot_treal  := vtot_treal  +q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                       vtot_udolar := vtot_udolar +((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                       vtot_ureal  := vtot_ureal  +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                    End;

                    q_cusunit.Filter := q_cus_u.Filter;
                    If q_cusunit.Filter = '' Then
                       q_cusunit.Filter := q_cusunit.Filter +'Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' '
                    Else
                       q_cusunit.Filter := q_cusunit.Filter +' AND Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' ';
                    q_cusunit.Filtered := True;
                    If Not q_cusunit.Active Then q_cusunit.Open;

                    While Not q_cusunit.Eof Do Begin
                         If q_cusunitrateio.AsString = '2' Then Begin
                            valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                            valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                         End
                         Else Begin
                            valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpeso) * q_cusunitpeso_total_acertado.AsFloat;
                            valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpeso) * q_cusunitpeso_unitario_acertado.AsFloat;
                         End;

                         If ((q_cusunitnumerario.AsString <> 'II') And (q_cusunitnumerario.AsString <> 'IPI')) Then Begin
                            If vb_dolar Then
                               vTaxaConv := ataxa
                            Else
                               vTaxaConv := vTaxaDolar;

                            If RG_VALOR.ItemIndex = 1 Then
                               { valor registrado }
                               valor_rateio := valor_rateio_reg
                            Else
                               { valor previsão }
                               valor_rateio := valor_rateio_prev;

                            If q_cusunitrateio.AsString = '1' Then Begin
                               tlinha := Copy(q_cusunitdescricao.AsString+StringOfChar(' ',35),1,35)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(valor_rateio/vTaxaConv,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(valor_rateio/vTaxaConv,fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(valor_rateio,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(valor_rateio,fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF((valor_rateio/vTaxaConv)/q_cusunitquantidade.AsFloat,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF((valor_rateio/vTaxaConv)/q_cusunitquantidade.AsFloat,fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(valor_rateio/q_cusunitquantidade.AsFloat,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(valor_rateio/q_cusunitquantidade.AsFloat,fffixed,12,2))-10,11);

                               vtot_tdolar := vtot_tdolar +(valor_rateio/vTaxaDolar);
                               vtot_treal  := vtot_treal  +(valor_rateio);
                               vtot_udolar := vtot_udolar +(valor_rateio/vTaxaDolar)/q_cusunitquantidade.AsFloat;
                               vtot_ureal  := vtot_ureal  +(valor_rateio/q_cusunitquantidade.AsFloat);
                            End
                            Else Begin
                               tlinha := Copy(q_cusunitdescricao.AsString+StringOfChar(' ',35),1,35)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((valor_rateio/vTaxaConv)*q_cusunitquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((valor_rateio/vTaxaConv)*q_cusunitquantidade.AsFloat),fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((valor_rateio)*q_cusunitquantidade.AsFloat),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((valor_rateio)*q_cusunitquantidade.AsFloat),fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((valor_rateio/vTaxaConv)),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((valor_rateio/vTaxaConv)),fffixed,12,2))-10,11)
                                       + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(((valor_rateio)),fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(((valor_rateio)),fffixed,12,2))-10,11);

                               vtot_tdolar := vtot_tdolar +(valor_rateio/vTaxaDolar)*q_cusunitquantidade.AsFloat;
                               vtot_treal  := vtot_treal  +(valor_rateio*q_cusunitquantidade.AsFloat);
                               vtot_udolar := vtot_udolar +(valor_rateio/vTaxaDolar);
                               vtot_ureal  := vtot_ureal  +(valor_rateio);
                            End;
                            Lines.Add('  '+tlinha);
                         End;
                         q_cusunit.Next;
                    End;
                    Lines.Add('  '+'___________________________________'+chr(9)+'_______________________'+chr(9)+'_______________________');
                    tlinha := Copy('Totais'+StringOfChar(' ',35),1,35)
                            + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(vtot_tdolar,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(vtot_tdolar,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(vtot_treal,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(vtot_treal,fffixed,12,2))-10,11)
                            + chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(vtot_udolar,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(vtot_udolar,fffixed,12,2))-10,11)+chr(9)+Copy(StringOfChar(' ',11)+FloatToStrF(vtot_ureal,fffixed ,12,2),Length(StringOfChar(' ',11)+FloatToStrF(vtot_ureal,fffixed,12,2))-10,11);
                    Lines.Add('  '+tlinha);
                    Lines.Add('  '+'___________________________________'+chr(9)+'_______________________'+chr(9)+'_______________________');

                    q_itens.Next;
               End;
            End;
         End;

         { RELAÇÃO DE CONTAINERS }
         If cbRelCont.Checked Then Begin
            If Not qrRelCont.Active Then qrRelCont.Open Else qrRelCont.First;
            If qrRelCont.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'RELAÇÃO DE CONTAINERS');
               Lines.Add('  ');
               While Not qrRelCont.Eof Do Begin
                    Inc(aux);
                    Lines.Add('  '+'Nº: '+ qrRelContCodigo.AsString +' - '+ qrRelContDescricao.AsString);
                    qrRelCont.Next;
               End;
               {
               |----------------------------------------------------------------
               |RELAÇÃO DE CONTAINERS:
               |
               |Nº: CPSU 474.664-4 - Container 40''
               |Nº: TMMU 431.482-4 - Container 40''
               |--------------------------------------
               }
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { INFORMAÇÕES COMPLEMENTARES }
         If cbInfComp.Checked Then Begin
            If Not qrInfComp.Active Then qrInfComp.Open;
            If qrInfComp.RecordCount > 0 Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'INFORMAÇÕES COMPLEMENTARES');
               Lines.Add('  ');
               aux := 0;
               While aux < dbmemo1.Lines.Count Do Begin
                  Lines.Add('  '+ dbmemo1.Lines.Strings[aux]);
                  Inc(aux);
               End;
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;

         { DEMONSTRATIVO FINANCEIRO }
         If cbDF.Checked Then Begin
            Planilha := 'DEMONSTRATIVO FINANCEIRO';

            If Not qrExcelDataCredito.Active Then qrExcelDataCredito.Open Else qrExcelDataCredito.First;
            If Not qrExcelDataDebito.Active Then qrExcelDataDebito.Open Else qrExcelDataDebito.First;
            If (qrExcelDataCredito.RecordCount > 0) OR (qrExcelDataDebito.RecordCount > 0) Then Begin
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
               Lines.Add('  '+'DEMONSTRATIVO FINANCEIRO');
               Lines.Add('  ');
               Lines.Add('  ');
               Lines.Add('  '+'                                          '+'CRÉDITOS');
               Lines.Add('  ');
               Lines.Add('  '+'Data' +'        Descrição'+'                                                  Valor' );
               Lines.Add('  '+'---------------------------------------------------------------------------------------------');

               v_soma := 0;
               While Not qrExcelDataCredito.Eof Do Begin
                  if (RG_VALOR.ItemIndex = 1)
                   then begin
                     v_str := '  ' + qrExcelDataCreditoData_Credito.AsString+'  ' + qrExcelDataCreditoDescricao.AsString + '                                                                             ';
                     Lines.Add(Copy(v_str,0,77-Length(FormatFloat('#,##0.00', (qrExcelDataCreditoValor.AsFloat)))) + '  ' + FormatFloat('#,##0.00', (qrExcelDataCreditoValor.AsFloat)));
                     v_soma := v_soma + qrExcelDataCreditoValor.AsFloat;
                   end;

                  qrExcelDataCredito.Next;
               End;
               Lines.Add('  ');
               Lines.Add('  '+'                                                                     SubTotal     '+ FormatFloat('#,##0.00', (v_soma)));
               Lines.Add('  '+'_____________________________________________________________________________________________');
               Lines.Add('  ');

               Lines.Add('  '+'                                          '+'DÉBITOS');
               Lines.Add('  ');
               Lines.Add('  '+'Data' +'        Descrição'+'                                                  Valor' );
               Lines.Add('  '+'---------------------------------------------------------------------------------------------');
               v_soma2 := 0;
               While Not qrExcelDataDebito.Eof Do
                Begin
                  if (RG_VALOR.ItemIndex = 0) and (Trim(qrExcelDataDebitoData_Registro.AsString) = '')
                   then begin
                     v_str := '  '+ qrExcelDataDebitoData_Registro.AsString+'  ' + qrExcelDataDebitoDescricao.AsString + '                                                                             ';
                     Lines.Add(Copy(v_str,0,77-Length(FormatFloat('#,##0.00', (qrExcelDataDebitoValor_Previsao.AsFloat)))) + '  ' + FormatFloat('#,##0.00', (qrExcelDataDebitoValor_Previsao.AsFloat)));
                     v_soma2 := v_soma2 + qrExcelDataDebitoValor_Previsao.AsFloat;
                   end;

                  if (RG_VALOR.ItemIndex = 1) and (Trim(qrExcelDataDebitoData_Registro.AsString) <> '')
                   then begin
                     v_str := '  '+ qrExcelDataDebitoData_Registro.AsString+'  ' + qrExcelDataDebitoDescricao.AsString + '                                                                             ';
                     Lines.Add(Copy(v_str,0,77-Length(FormatFloat('#,##0.00', (qrExcelDataDebitoValor_Registrado.AsFloat)))) + '  ' + FormatFloat('#,##0.00', (qrExcelDataDebitoValor_Registrado.AsFloat)));
                     v_soma2 := v_soma2 + qrExcelDataDebitoValor_Registrado.AsFloat;
                   end;

                  qrExcelDataDebito.Next;
                End;
               Lines.Add('  ');
               Lines.Add('  '+'                                                                     SubTotal     '+ FormatFloat('#,##0.00', (v_soma2)));
               Lines.Add('  '+'_____________________________________________________________________________________________');
               Lines.Add('  ');

               Lines.Add('  '+'                                                                     Resultado    '+FormatFloat('#,##0.00', v_soma-v_soma2));
               Lines.Add('  '+'OBSERVAÇÕES');
               Lines.Add('  ');

               Lines.Add('                                      (SALDO A PAGAR)= '+ FormatFloat('#,##0.00', v_soma-v_soma2));
               Lines.Add('  ');
               Lines.Add('  ');

               aux := 0;
               If Not qrObs.Active Then qrObs.Open;
               While aux < dbmemo2.Lines.Count Do Begin
                    Lines.Add('  '+ dbmemo2.Lines.Strings[aux]);
                    Inc(aux);
               End;

               Lines.Add('  '+'Atenciosamente,');
               Lines.Add('  ');
               Lines.Add('  ');
               Lines.Add('  ');
               Lines.Add('  '+'*********************************************************************************************');
            End;
         End;
     End;
     ShowMessage('Extrato concluído!');
end;

procedure Tf_extratopro.imprimirClick(Sender: TObject);
begin
     psd.Execute;
     re_processa.Print('Extrato de Processos');
end;

procedure Tf_extratopro.BitBtn2Click(Sender: TObject);
var
   i, i2, j, v_aux: Integer;
   v_procCodigo, v_procNumero, v_procDesc, v_dirDocs, v_moeda, qmoedafatura: String;
   vtot_tot_tdolar, vtot_tot_treal, vTaxaMoedaFatura: Real;
   b_DOGA : Boolean;
   v_doga_custas, v_tot_9,v_tot_10,v_tot_11,v_tot_12,v_tot_13,v_total_impor: Real;
   vIni, vFim: String;
   vTaxaConv: Real; // TAXA DE CONVERSÃO
   valor_rateio, valor_rateio_reg, valor_rateio_prev: Real;
begin
  v_tot_9 := 0;
  v_tot_10 := 0;
  v_tot_11 := 0;
  v_tot_12 := 0;
  v_tot_13 := 0;
  b_DOGA := False;

  vb_dolar := True;
  vTaxaConv := 1;

  if cbimpdoc.Checked then cb_ref.Checked := true;

  re_Processa.Clear;
  p_custosunit.Visible := False;
  {$I-}
  v_aux := 0;
  Saux := 2;
  vtot_tot_tdolar := 0;
  vtot_tot_treal := 0;
  If MessageDlg('Não abrir outras planilhas no excel! O processamento será iniciado! Confirma?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then Exit;
  If cb_cuus.Checked Then
     b_DOGA := (mrYes = MessageDlg('Planilha em formato DOGA DO BRASIL?', mtConfirmation,[mbYes, mbNo], 0));
  logusu('A','Acessou Planilha Excel - Processo Nº: ' + vPro);
  Screen.Cursor := crHourGlass;
  System.GetDir(0,dir_cor);
  dir_cor := dir_cor + '\Planilhas_Ms2000';
  MkDir(dir_cor);

  Try
     If (cb_ref.Checked) Or (cb_tra.Checked) Or (cb_car.Checked) Or (cb_reg.Checked) Or
        (cb_emb.Checked) Or (cb_fat.Checked) Or (cb_tax.Checked) Or (cb_fol.Checked) Or
        (cb_imp.Checked) Or (cb_ite.Checked) Or (cb_cut.Checked) Or (cb_cuu.Checked) Or
        (cb_cuus.Checked) Or (cbRelCont.Checked) Or (cbInfComp.Checked) Or (cbDF.Checked)Then
     Begin
          bExibePlanilha := false; //(mrYes = MessageDlg('Deseja exibir a Planilha sendo gerada?', mtConfirmation, [mbYes, mbNo], 0));
          image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
          i2 := 0;
          v_menuAux := 3;
          v_pag := 0;
          re_Processa.Lines.Append('>>> GERANDO PLANILHA COM AS OPÇÕES SELECIONADAS');
          re_Processa.Lines.Append('PROCESSO Nº: ' + vPro);

          Excel := CreateOleObject('Excel.Application');
          Excel.Application.DisplayAlerts := False;
          Excel.Visible := bExibePlanilha;

          Excel.WorkBooks.Add[1];
          ///// ActiveWorkBook.VBProject.VBE.MainWindow.Visible = False
{          Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').Codemodule.CreateEventProc ('activate' , 'worksheet');
          Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.ActiveWindow.Close;
          Excel.ActiveWorkBook.VBProject.VBComponents.Item('plan1').CodeModule.VBE.MainWindow.Visible := False;
}//        Excel.ActiveWorkBook.VBProject.VBE.MainWindow.Visible := bExibePlanilha;

          Excel.WorkSheets[1].Name := 'MENU';
          
          //Excel.WorkSheets[1].PageSetup.PaperSize := '9';
          Excel.ActiveSheet.PageSetup.LeftMargin := '28';
          Excel.ActiveSheet.PageSetup.RightMargin := '28';

          Excel.Cells[1,1].Font.Size := 12;
          Excel.Range['A1', 'A1'].ColumnWidth := 60;
          Excel.Cells[9,1] := v_empresanome; 
          Excel.Cells[9,1].Font.Bold := True;
          Excel.Cells[10,1] := 'EXTRATO DE PROCESSOS - V 1.0' + ' ' + datetostr(date()) + ' às ' + Copy(timetostr(time),1,5);
          Excel.Cells[10,1].Font.Bold := True;
          Excel.Cells[11,1] := 'PROCESSO Nº '+ vPro;
          Excel.Cells[11,1].Font.Bold := True;
          Excel.Range['A9', 'A11'].HorizontalAlignment := AL_CENTRO;

          ///// Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].LineStyle := 1;
          ///// Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].Weight := 3;

          Excel.ActiveWindow.DisplayGridLines := False;

          Excel.WorkBooks[1].SaveAs(dir_cor + '\' +'extrato_'+ StringReplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');

          If Not q_ADR.Active Then q_ADR.Open;

          { REFERÊNCIA DO PROCESSO }
          If cb_ref.Checked Then Begin
             Planilha := 'REFERÊNCIAS DO PROCESSO';
             IniciarFolha(2);

             Excel.Range['A5', 'A5'].ColumnWidth := 30;
             Excel.Range['B5', 'B5'].ColumnWidth := 65;

             Excel.Cells[6,1] := 'Despachante ';
             Excel.Cells[6,2] := ':  '+ 'MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
             Excel.Cells[7,1] := 'Filial ';
             Excel.Cells[7,2] := ':  '+ q_ADRqfilial.AsString;

             Excel.Cells[9,1] := 'Cliente ';
             Excel.Cells[9,2] := ':  '+ q_ADRcliente.AsString;

             Excel.Cells[11,1] := 'Contrato ';
             Excel.Cells[11,2] := ':  '+ q_ADRqcontrato.AsString;
             Excel.Cells[12,1] := 'Local de Inventário: ';
             Excel.Cells[12,2] := ':  '+ q_ADRqlocal.AsString;

             Excel.Cells[14,1] := 'Referência MS ';
             Excel.Cells[14,2] := ':  '+ vPro;
             Excel.Cells[15,1] := 'Tipo Processo ';
             Excel.Cells[15,2] := ':  '+ q_ADRqtipo.AsString;

             Excel.Cells[16,1] := 'Referência Cliente ';
             Excel.Cells[16,2] := ':  '+ q_ADRref_empresa.AsString;
             If q_adrqtipodecl.AsString <> '12' Then Begin
                Excel.Cells[17,1] := 'DI - Declaração de Importação ';
                Excel.Cells[17,2] := ':  '+ q_ADRdi.AsString
             End
             Else Begin
                If q_adrpag_proporcional.ASINTEGER = 0 Then Begin
                   Excel.Cells[18,1] := 'DI - Declaração de Importação';
                   Excel.Cells[18,2] := ':  '+ q_ADRdi.AsString+' -> ADMISSÃO TEMPORÁRIA ';
                End
                Else Begin
                   Excel.Cells[18,1] := 'DI - Declaração de Importação ';
                   Excel.Cells[18,2] := ':  '+ q_ADRdi.AsString+' -> CONSUMO E ADMISSÃO TEMPORÁRIA '
                End;
             End;
             Excel.Cells[18,1] := 'Tipo de Declaração';
             Excel.Cells[18,2] := ':  '+ q_ADRqdecl.AsString;
             Excel.Cells[19,1] := 'Data Registro';
             Excel.Cells[19,2] := ':  '+ Copy(q_ADRdt_reg.AsString,1,2)+'/'+Copy(q_ADRdt_reg.AsString,3,2)+'/'+Copy(q_ADRdt_reg.AsString,5,4);

             Excel.Range['A20', 'B20'].Borders.Item[9].LineStyle := 1;
             Excel.Range['A20', 'B20'].Borders.Item[9].Weight := 3;
             Excel.Range['A5', 'B20'].Font.Size := 9;

             FinalizarFolha;
          End;
          
          If Not q_conhecimento.Active Then q_conhecimento.Open;
          If q_conhecimento.RecordCount > 0 Then Begin
             VTOTPESO := q_conhecimentopeso_liquido.AsFloat;
             { TRANSPORTES / CONHECIMENTO }
             If cb_tra.Checked Then Begin
                Planilha := 'TRANSPORTES - CONHECIMENTO';
                IniciarFolha(2);

                Excel.Range['A5', 'A5'].ColumnWidth := 30;
                Excel.Range['B5', 'B5'].ColumnWidth := 65;

                Excel.Cells[6,1] := 'Transporte ';
                Excel.Cells[6,2] := ':  ' + q_conhecimentoqtransporte.AsString;
                Excel.Cells[7,1] := 'Transportador ';
                Excel.Cells[7,2] := ':  ' + q_conhecimentoqtransportador.AsString;
                Excel.Cells[8,1] :='Embarcação ';
                Excel.Cells[8,2] := ':  ' + q_conhecimentoqembarcacao.AsString;
                Excel.Cells[9,1] :='Local de Embarque ';
                Excel.Cells[9,2] := ':  ' + q_conhecimentoqlocal.AsString;
                Excel.Cells[10,1] :='Data do Embarque ';
                Excel.Cells[10,2] := ':  ' + q_conhecimentoqdataembarque.AsString;
                Excel.Cells[11,1] := 'Conhecimento ';
                Excel.Cells[11,2] := ':  ' + q_conhecimentoqconhecimento.AsString;
                Excel.Cells[12,1] := 'Tipo ';
                Excel.Cells[12,2] := ':  ' + q_conhecimentoqtipo.AsString;
                Excel.Cells[13,1] := 'Master ';
                Excel.Cells[13,2] := ':  ' + q_conhecimentoqmaster.AsString;
                Excel.Cells[14,1] := 'Utilização ';
                Excel.Cells[14,2] := ':  ' + q_conhecimentoqutilizacao.AsString;
                Excel.Range['A15', 'B16'].Borders.Item[9].LineStyle := 1;

                Excel.Range['A15', 'B16'].Borders.Item[9].Weight := 3;;
                Excel.Range['A5', 'B16'].Font.Size := 9;

                FinalizarFolha;
             End;

             { CARGA }
             If cb_car.Checked Then Begin
                Planilha := 'CARGA';
                IniciarFolha(4);

                Excel.Range['A5', 'A5'].ColumnWidth := 25;
                Excel.Range['B5', 'B5'].ColumnWidth := 1;
                Excel.Range['C5', 'C5'].ColumnWidth := 12;
                Excel.Range['D5', 'D5'].ColumnWidth := 55;

                Excel.Cells[6,1] := 'País de Procedência ';
                Excel.Cells[6,2] := ':';
                Excel.Cells[6,3] := q_conhecimentoqpaisprocedencia.AsString;
                Excel.Cells[7,1] := 'URF de Entrada no País ';
                Excel.Cells[7,2] := ':';
                Excel.Cells[7,3] := q_conhecimentoqurfentrada.AsString;
                Excel.Cells[8,1] :='Moeda Frete ';
                Excel.Cells[8,2] := ':';
                Excel.Cells[8,3] := q_conhecimentoqmoedafrete.AsString;
                Excel.Cells[9,1] :='Frete Prepaid ';
                Excel.Cells[9,2] := ':';
                Excel.Cells[9,3] := q_conhecimentofrete_prepaid.AsFloat;
                Excel.Cells[10,1] :='Frete Collect ';
                Excel.Cells[10,2] := ':';
                Excel.Cells[10,3] := q_conhecimentofrete_collect.AsFloat;
                Excel.Cells[11,1] := 'Frete Territorio Nacional ';
                Excel.Cells[11,2] := ':';
                Excel.Cells[11,3] := q_conhecimentofrete_ter_nac.AsFloat;
                Excel.Cells[12,1] := 'Moeda Seguro ';
                Excel.Cells[12,2] := ':';
                Excel.Cells[12,3] := q_conhecimentoqmoedaseguro.AsString;
                Excel.Cells[13,1] := 'Seguro ';
                Excel.Cells[13,2] := ':';
                Excel.Cells[13,3] := q_conhecimentovalor_seguro.AsFloat;
                Excel.Cells[14,1] := 'Peso Líquido ';
                Excel.Cells[14,2] := ':';
                Excel.Cells[14,3] := q_conhecimentopeso_liquido.AsFloat;
                Excel.Cells[15,1] := 'Peso Bruto ';
                Excel.Cells[15,2] := ':';
                Excel.Cells[15,3] := q_conhecimentopeso_bruto.AsFloat;

                Excel.Range['C9', 'C15'].HorizontalAlignment := AL_DIREITA;
                Excel.Range['C9', 'C15'].NumberFormat := '#.##0,00';
                Excel.Range['A16', 'D16'].Borders.Item[9].LineStyle := 1;

                Excel.Range['A16', 'D16'].Borders.Item[9].Weight := 3;;
                Excel.Range['A5', 'D16'].Font.Size := 9;

                FinalizarFolha;
             End;
             
             { REGISTRO DE CHEGADA }
             If cb_reg.Checked Then Begin
                Planilha := 'REGISTRO DE CHEGADA';
                IniciarFolha(2);

                Excel.Range['A5', 'A5'].ColumnWidth := 30;
                Excel.Range['B5', 'B5'].ColumnWidth := 65;

                Excel.Cells[6,1] := 'URF de Despacho ';
                Excel.Cells[6,2] := ':  ' + q_conhecimentoqurfdespacho.AsString;
                Excel.Cells[7,1] := 'Recinto Alfandegado ';
                Excel.Cells[7,2] := ':  ' + q_conhecimentoqrecinto.AsString;
                Excel.Cells[8,1] :='Setor de Armazenamento ';
                Excel.Cells[8,2] := ':  ' + q_conhecimentoqsetor.AsString;
                Excel.Cells[9,1] :='Data de Chegada URF de Entrada ';
                Excel.Cells[9,2] := ':  ' + q_conhecimentoqdataurfchegada.AsString;
                Excel.Cells[10,1] :='Documento de Entrada ';
                Excel.Cells[10,2] := ':  ' + q_conhecimentoqdocentrada.AsString;
                Excel.Cells[11,1] := 'Tipo Documento ';
                Excel.Cells[11,2] := ':  ' + q_conhecimentoqtipodocentrada.AsString;
                Excel.Cells[12,1] := 'Presença de Carga ';
                Excel.Cells[12,2] := ':  ' + q_conhecimentoqpresencacarga.AsString;
                Excel.Cells[13,1] := 'Data de Chegada URF de Despacho ';
                Excel.Cells[13,2] := ':  ' + q_conhecimentoqdatadespacho.AsString;

                Excel.Range['A14', 'B14'].Borders.Item[9].LineStyle := 1;
                Excel.Range['A14', 'B14'].Borders.Item[9].Weight := 3;;
                Excel.Range['A5', 'B14'].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { TIPOS DE EMBALAGENS }
          If cb_emb.Checked Then Begin
             If Not q_emb.Active Then q_emb.Open Else q_emb.First;
             If q_emb.RecordCount > 0 Then Begin
                Planilha := 'TIPOS DE EMBALAGENS';
                IniciarFolha(4);

                Excel.Range['A5', 'A5'].ColumnWidth := 40;
                Excel.Range['B5', 'B5'].ColumnWidth := 10;
                Excel.Range['C5', 'C5'].ColumnWidth := 6;
                Excel.Range['D5', 'D5'].ColumnWidth := 37;

                Excel.Cells[6,1] := 'Tipo de Embalagem';
                Excel.Cells[6,2] := 'Quantidade';
                Excel.Range['B6', 'C6'].HorizontalAlignment := AL_CENTRO;
                Excel.Range['B6', 'C6'].Merge;

                i := 8;
                vIni := IntToStr(i);
                While Not q_emb.Eof Do Begin
                    Excel.Cells[i,1] := q_embdescricaoembalagem.AsString;
                    Excel.Cells[i,2] := q_embquantidade.AsFloat;
                    q_emb.Next;
                    Inc(i);
                End;
                vFim := IntToStr(i-1);
                { FORMATA AS CÉLULAS }
                Excel.Range['B'+ vIni, 'B'+ vFim].NumberFormat := '#.##0,00';
                Excel.Range['B'+ vIni, 'B'+ vFim].HorizontalAlignment := AL_DIREITA;

                Excel.Range['A'+ IntToStr(i), 'D'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'D'+ IntToStr(i)].Borders.Item[9].Weight := 3;;
                Excel.Range['A5', 'D'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { FATURAS }
          qmoedafatura := '';
          If Not q_fat.Active Then q_fat.Open Else q_fat.First;
          If q_fat.RecordCount > 0 Then Begin
             VTOTPRO := 0;
             If cb_fat.Checked Then Begin
                Planilha := 'FATURAS';
                IniciarFolha(6);

                Excel.Range['A5', 'A5'].ColumnWidth := 6;
                Excel.Range['B5', 'B5'].ColumnWidth := 20;
                Excel.Range['C5', 'C5'].ColumnWidth := 10;
                Excel.Range['D5', 'D5'].ColumnWidth := 35;
                Excel.Range['E5', 'E5'].ColumnWidth := 15;
                Excel.Range['F5', 'F5'].ColumnWidth := 6;

                i := 6;
                i2 := 6;
             End;
             While Not q_fat.Eof Do Begin
                qmoedafatura := q_fatcodmoeda.AsString;

                If cb_fat.Checked Then Begin
                   Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[8].LineStyle := 1;
                   Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[8].Weight := 2;

                   Excel.Cells[i,2] := 'Exportador ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_exp.AsString;
                   Inc(i);
                   Excel.Cells[i,2] := 'Endereço ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_end.AsString;
                   Inc(i);
                   Excel.Cells[i,2] :='Complemento ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_com.AsString;
                   Inc(i);
                   Excel.Cells[i,2] :='Bairro ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_bai.AsString;
                   Inc(i);
                   Excel.Cells[i,2] :='Cidade ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_cid.AsString;
                   Inc(i);
                   Excel.Cells[i,2] := 'Estado ';
                   Excel.Cells[i,3] := ':  ' + q_fatq_est.AsString;
                   Inc(i);

                   For j := i2 To i Do
                      Excel.Range['C'+ IntToStr(j), 'E'+ IntToStr(j)].Merge;

                   Inc(i);
                   Excel.Cells[i,2] := 'Faturas';
                   Excel.Cells[i,3] := 'Incoterm';
                   Excel.Cells[i,4] := 'Moeda';
                   Excel.Cells[i,5] := 'Valor';
                   Excel.Range['E' + IntToStr(i), 'E'+IntToStr(i)].HorizontalAlignment := AL_CENTRO;
                   Inc(i);
                   Inc(i);
                End;
                vIni := IntToStr(i);
                expor := q_fatq_exp.AsString;
                While (Not q_fat.Eof) And (expor = q_fatq_exp.AsString) Do Begin
                     VTOTPRO := VTOTPRO + q_fatq_val.AsFloat;
                     If cb_fat.Checked Then Begin
                        Excel.Cells[i,2] := q_fatq_fat.AsString;
                        Excel.Cells[i,3] := q_fatq_inc.AsString;
                        Excel.Cells[i,4] := q_fatq_moe.AsString;
                        Excel.Cells[i,5] := q_fatq_val.AsFloat;
                        Inc(i);
                        i2 := i;
                     End;
                     q_fat.Next;
                End;
                If cb_fat.Checked Then Begin
                   vFim := IntToStr(i-1);
                   { FORMATA AS CÉLULAS }
                   Excel.Range['B'+ vIni, 'B'+ vFim].NumberFormat := '@';
                   Excel.Range['E'+ vIni, 'E'+ vFim].NumberFormat := '#.##0,00';
                End;
             End;
             If cb_fat.Checked Then Begin
                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'B'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { TAXAS DE CÂMBIO }
          ataxa := 0;
          vTaxaMoedaFatura := 0;
          If Not q_taxas.Active Then q_taxas.Open Else q_taxas.First;
          If q_taxas.RecordCount > 0 Then Begin
             If q_taxas.Locate('Moeda', '220', []) Then Begin
                vTaxaDolar := q_taxastaxa_conversao.AsFloat;
                vb_dolar := True;
             End;
             If q_taxas.Locate('Moeda', qmoedafatura, []) Then Begin
                vTaxaMoedaFatura := q_taxastaxa_conversao.AsFloat;
                vb_dolar := False;
             End;
             ataxa := vTaxaDolar;
             If cb_tax.Checked Then Begin
                Planilha := 'TAXAS DE CÂMBIO';
                IniciarFolha(5);

                Excel.Range['A5', 'A5'].ColumnWidth := 5;
                Excel.Range['B5', 'B5'].ColumnWidth := 45;
                Excel.Range['C5', 'C5'].ColumnWidth := 15;
                Excel.Range['D5', 'D5'].ColumnWidth := 15;
                Excel.Range['E5', 'E5'].ColumnWidth := 13;

                If q_adrqtipodecl.AsString <> '12' Then Begin
                   Excel.Cells[6,2] := 'Moeda';
                   Excel.Cells[6,3] := 'Taxa';
                End
                Else Begin
                   If q_adrpag_proporcional.ASINTEGER = 0 Then Begin
                      Excel.Cells[6,2] := 'Moeda';
                      Excel.Cells[6,3] := 'Taxa ADM';
                      Excel.Cells[6,4] := 'Taxa CON';
                   End
                   Else Begin
                      Excel.Cells[6,2] := 'Moeda';
                      Excel.Cells[6,3] := 'Taxa';
                   End;
                End;
                Excel.Range['A6', 'E6'].HorizontalAlignment := AL_CENTRO;
                Excel.Range['B6', 'B6'].HorizontalAlignment := AL_ESQUERDA;
                Excel.Range['A6', 'E6'].Font.Bold := True;

                i := 7;
                vIni := IntToStr(i);
                q_taxas.First;
                While Not q_taxas.Eof Do Begin
                   Excel.Cells[i,2] := q_taxasdescricao.AsString;
                   Excel.Cells[i,3] := q_taxastaxa_conversao.AsFloat;
                   If (q_adrqtipodecl.AsString = '12') and (q_adrpag_proporcional.ASINTEGER = 0) Then
                      Excel.Cells[i,4] := q_taxastaxa_conversaoc.AsFloat;
                   Inc(i);
                   q_taxas.Next;
                End;
                vFim := IntToStr(i-1);
                { FORMATA AS CÉLULAS }
                Excel.Range['C'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,0000';
                Excel.Range['C'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;

                Excel.Range['A'+ IntToStr(i+1), 'E'+ IntToStr(i+1)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i+1), 'E'+ IntToStr(i+1)].Borders.Item[9].Weight := 3;;
                Excel.Range['A5', 'E'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { FOLLOW UP }
          If cb_fol.Checked Then Begin
             If Not q_fol.Active Then q_fol.Open Else q_fol.First;
             Planilha := 'FOLLOW UP';
             IniciarFolha(3);

             Excel.Range['A5', 'A5'].ColumnWidth := 17;
             Excel.Range['B5', 'B5'].ColumnWidth := 50;
             Excel.Range['C5', 'C5'].ColumnWidth := 27;

             i := 6;
             If q_fol.RecordCount > 0 Then Begin
                Excel.Cells[i,1] := 'Data';
                Excel.Cells[i,2] := 'Descrição';
                Excel.Cells[i,3] := 'Usuário';
                Inc(i);
                Excel.Cells[i,1] := '------------------------';
                Excel.Cells[i,2] := '--------------------------------------------------------------------';
                Excel.Cells[i,3] := '-----------------';

                Inc(i);
                vIni := IntToStr(i);
                While Not q_fol.Eof Do Begin
                   Excel.Cells[i,1].NumberFormat := '@';
                   Excel.Cells[i,1] := FormatDateTime('dd/mm/yyyy', q_folData.asDateTime) +' '+ q_folHora.AsString;
                   Excel.Cells[i,2] := q_folDescricao.AsString;
                   Excel.Cells[i,3] := q_folUsuario.AsString;
                   q_fol.Next;
                   Inc(i);
                End;

                vFim := IntToStr(i-1);
                { FORMATA AS CÉLULAS }
                Excel.Range['A'+ vIni, 'A'+ vFim].NumberFormat := 'dd/mm/yyyy hh:mm:ss';
                Excel.Range['A6', 'C' + IntToStr(i)].HorizontalAlignment := AL_ESQUERDA;
                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'C'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'C'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'C'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { IMPOSTOS }
          If cb_imp.Checked Then Begin
             Planilha := 'IMPOSTOS';
             IniciarFolha(4);

             Excel.Range['A5', 'A5'].ColumnWidth := 30;
             Excel.Range['B5', 'B5'].ColumnWidth := 1;
             Excel.Range['C5', 'C5'].ColumnWidth := 15;
             Excel.Range['D5', 'D5'].ColumnWidth := 45;

             i := 6;
             If q_adrqtipodecl.AsString <> '12' Then Begin
                Excel.Cells[i,1] := 'II - Imposto de Importação';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRII.AsFloat;
                Inc(i);
                Excel.Cells[i,1] := 'IPI - Imposto de Produtos Ind.';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRIPI.AsFloat;
                Inc(i);
                Excel.Cells[i,1] :='Taxa Siscomex';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRTAXA_SISCOMEX.AsFloat;
                Inc(i);
                If q_adrqtipodecl.AsString = '01' Then Begin
                   If Not q_icms.Active Then q_icms.Open;
                   If q_icms.RecordCount = 0 Then
                      vicms := 0
                   Else
                      vicms := q_icmsvalor_registrado.AsFloat;
                   Excel.Cells[i,1] :='ICMS';
                   Excel.Cells[i,2] := ':';
                   Excel.Cells[i,3] := FloatTostr(vicms);
                End;
             End
             Else Begin
                If q_adrpag_proporcional.ASINTEGER = 0 Then
                   Excel.Cells[i,1] := 'Admissão Temporária:'
                Else
                   Excel.Cells[i,1] := 'Consumo e Admissão Temporária:';
                Inc(i);
                Excel.Cells[i,1] := 'II - Imposto de Importação';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRII.AsFloat;
                Inc(i);
                Excel.Cells[i,1] := 'IPI - Imposto de Produtos Ind.';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRIPI.AsFloat;
                Inc(i);
                Excel.Cells[i,1] :='Taxa Siscomex';
                Excel.Cells[i,2] := ':';
                Excel.Cells[i,3] := q_ADRTAXA_SISCOMEX.AsFloat;
             End;
             Excel.Range['C6', 'C'+ IntToStr(i)].NumberFormat := '#.##0,00';
             Excel.Range['C6', 'C'+ IntToStr(i)].HorizontalAlignment := AL_DIREITA;
             Excel.Range['A11', 'D11'].Borders.Item[9].LineStyle := 1;
             Excel.Range['A11', 'D11'].Borders.Item[9].Weight := 3;
             Excel.Range['A5', 'D11'].Font.Size := 9;

             FinalizarFolha;
          End;

          { IMPOSTOS POR ITEM }
          If cb_ite.Checked Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             If Not q_itens.Active Then q_itens.Open Else q_itens.First;
             If q_itens.RecordCount > 0 Then Begin
                Planilha := 'IMPOSTOS POR ITEM';
                IniciarFolha(8);

                Excel.Range['A5', 'A5'].ColumnWidth := 5;
                Excel.Range['B5', 'B5'].ColumnWidth := 16;
                Excel.Range['C5', 'C5'].ColumnWidth := 1;
                Excel.Range['D5', 'D5'].ColumnWidth := 16;
                Excel.Range['E5', 'E5'].ColumnWidth := 16;
                Excel.Range['F5', 'F5'].ColumnWidth := 16;
                Excel.Range['G5', 'G5'].ColumnWidth := 16;
                Excel.Range['H5', 'H5'].ColumnWidth := 5;

                i := 4;
                While Not q_itens.Eof Do Begin
                   Inc(i);
                   Inc(i);
                   Excel.Range['A' + IntToStr(i), 'H'+IntToStr(i)].Borders.Item[8].LineStyle := 1;

                   vIni := IntToStr(i);
                   Excel.Cells[i,1] := 'Adição ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensadicao.AsString;
                   Excel.Cells[i,4].NumberFormat := '@';
                   Excel.Range['A'+ IntToStr(i), 'B'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,1] := 'Regime Tributação ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensregime_tri.AsString;
                   Excel.Range['A'+ IntToStr(i), 'B'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,1] := 'NCM ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensncm.AsString;
                   Excel.Range['A'+ IntToStr(i), 'B'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,1] := 'DESTAQUE ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensdestaque_ncm.AsString;
                   Excel.Range['A'+ IntToStr(i), 'B'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,1] := 'NALADI ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensnaladi.AsString;
                   Excel.Range['A'+ IntToStr(i), 'B'+ IntToStr(i)].Merge;

                   vFim := IntToStr(i);
                   Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_ESQUERDA;

                   Inc(i);
                   vIni := IntToStr(i);
                   Excel.Cells[i,1] := 'Aliq. II ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensaliq_ncm_ii.AsFloat;
                   Excel.Range['A' + IntToStr(i), 'B' + IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,1] := 'Aliq. IPI ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensaliq_ncm_ipi.AsFloat;
                   Excel.Range['A' + IntToStr(i), 'B' + IntToStr(i)].Merge;

                   vFim := IntToStr(i);
                   Excel.Range['D'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,00';
                   Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;

                   Inc(i);
                   Inc(i);

                   qadicao := q_itensadicao.AsString;
                   While (Not q_itens.Eof) And (qadicao=q_itensadicao.AsString) Do Begin
                      Excel.Range['B' + IntToStr(i), 'G'+IntToStr(i)].Borders.Item[9].LineStyle := 1;

                      Inc(i);
                      vIni := IntToStr(i);
                      Excel.Cells[i,2] := 'Seq ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensseq_adicao.AsString;
                      Inc(i);
                      Excel.Cells[i,2] := 'Produto ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensproduto.AsString;
                      Inc(i);
                      Excel.Cells[i,2] := 'Descrição ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := Copy(q_itensdescricao_produto.AsString,1,60);
                      Excel.Range['D' + IntToStr(i), 'G' + IntToStr(i)].Merge;
                      Inc(i);
                      Excel.Cells[i,4] := Copy(q_itensdescricao_produto.AsString,61,60);
                      Excel.Range['D' + IntToStr(i), 'G' + IntToStr(i)].Merge;

                      vFim := IntToStr(i);
                      { FORMATA AS CÉLULAS }
                      Excel.Range['C'+ vIni, 'C'+ vFim].NumberFormat := '@';
                      Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_ESQUERDA;

                      Inc(i);
                      vIni := IntToStr(i);
                      Excel.Cells[i,2] := 'Quantidade ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensquantidade.AsFloat;
                      Inc(i);
                      Excel.Cells[i,2] := 'Valor Unitário ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensvalunit.AsFloat;
                      Inc(i);
                      Excel.Cells[i,2] := 'Valor Total ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensvaltot.AsFloat;
                      Inc(i);
                      Excel.Cells[i,2] := 'Peso Unitário ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itenspesounit.AsFloat;
                      Inc(i);
                      Excel.Cells[i,2] := 'Peso Total ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itenspesototal.AsFloat;

                      vFim := IntToStr(i);
                      { FORMATA AS CÉLULAS }
                      Excel.Range['D'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,00';
                      Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;

                      Inc(i);
                      Inc(i);
                      Excel.Range['D' + IntToStr(i), 'G' + IntToStr(i+1)].HorizontalAlignment := AL_CENTRO;
                      Excel.Cells[i,4] := 'Valores Totais ';
                      Excel.Range['D'+ IntToStr(i), 'E'+ IntToStr(i)].Merge;
                      Excel.Cells[i,6] := 'Valores Unitários ';
                      Excel.Range['F'+ IntToStr(i), 'G'+ IntToStr(i)].Merge;
                      Inc(i);
                      Excel.Cells[i,4] := '(U$)';
                      Excel.Cells[i,5] := '(R$)';
                      Excel.Cells[i,6] := '(U$)';
                      Excel.Cells[i,7] := '(R$)';
                      Inc(i);
                      Excel.Cells[i,4] := '-----------------------------';
                      Excel.Cells[i,5] := '-----------------------------';
                      Excel.Cells[i,6] := '-----------------------------';
                      Excel.Cells[i,7] := '-----------------------------';
                      Inc(i);

                      vIni := IntToStr(i);
                      Excel.Cells[i,2] := 'FOB ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensfob2.AsFloat;
                      Excel.Cells[i,5] := q_itensfob_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensfob2.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfob_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'FRETE PREPAID ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensfreteprepaid.AsFloat;
                      Excel.Cells[i,5] := q_itensfreteprepaid_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensfreteprepaid.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'FRETE COLLECT ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensfretecollect.AsFloat;
                      Excel.Cells[i,5] := q_itensfretecollect_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensfretecollect.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'FRETE TER.NAC. ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensfreteternac.AsFloat;
                      Excel.Cells[i,5] := q_itensfreteternac_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensfreteternac.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'SEGURO ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensseguro.AsFloat;
                      Excel.Cells[i,5] := q_itensseguro_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensseguro.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'CIF ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itenscif.AsFloat;
                      Excel.Cells[i,5] := q_itenscif_em_reas.AsFloat;
                      Excel.Cells[i,6] := q_itenscif.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itenscif_em_reas.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'II ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensvalor_ii_a_recolher.AsFloat;
                      Excel.Cells[i,5] := q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensvalor_ii_a_recolher.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);

                      Excel.Cells[i,2] := 'IPI ';
                      Excel.Cells[i,3] := ':';
                      Excel.Cells[i,4] := q_itensvalor_ipi_a_recolher.AsFloat;
                      Excel.Cells[i,5] := q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                      Excel.Cells[i,6] := q_itensvalor_ipi_a_recolher.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Excel.Range['D' + IntToStr(i), 'H' + IntToStr(i)].HorizontalAlignment := AL_DIREITA;

                      vFim := IntToStr(i);
                      { FORMATA AS CÉLULAS }
                      Excel.Range['D'+ vIni, 'G'+ vFim].NumberFormat := '#.##0,00';
                      Excel.Range['D'+ vIni, 'G'+ vFim].HorizontalAlignment := AL_DIREITA;

                      Inc(i);
                      Excel.Range['B' + IntToStr(i), 'G'+IntToStr(i)].Borders.Item[9].LineStyle := 1;
                      Inc(i);
                      q_Itens.Next;
                   End;
                   Excel.Workbooks[1].Save;
                   Application.ProcessMessages;
                End;
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'H'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;
          
          { CUSTOS TOTAIS DO PROCESSO }
          If cb_cut.Checked Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             If Not q_cus.Active Then q_cus.Open Else q_cus.First;
             If q_cus.RecordCount > 0 Then Begin
                If RG_VALOR.ItemIndex=1 Then
                   Planilha := 'CUSTOS TOTAIS'
                Else
                   Planilha := 'CUSTOS TOTAIS - PREVISÃO';
                IniciarFolha(4);

                Excel.Range['A5', 'A5'].ColumnWidth := 45;
                Excel.Range['B5', 'B5'].ColumnWidth := 15;
                Excel.Range['C5', 'C5'].ColumnWidth := 15;
                Excel.Range['D5', 'D5'].ColumnWidth := 17;

                i := 6;
                Excel.Cells[i,1] := 'Descrição do Custo';
                Excel.Cells[i,2] := 'Valor (U$)';
                Excel.Cells[i,3] := 'Valor (R$)';
                Inc(i);
                Excel.Cells[i,1] := '------------------------------------------------------------------------------';
                Excel.Cells[i,2] := '----------------------------';
                Excel.Cells[i,3] := '----------------------------';
                Inc(i);
                vtotcdolar:=0;
                vtotcreal :=0;

                vIni := IntToStr(i);
                While Not q_cus.Eof Do Begin
                   Excel.Cells[i,1] := q_cusdescricao.AsString;
                   If RG_VALOR.ItemIndex=1 Then Begin
                      Excel.Cells[i,2] := q_cusvalor_registrado.AsFloat/ataxa;
                      Excel.Cells[i,3] := q_cusvalor_registrado.AsFloat;
                      vtotcdolar := vtotcdolar+(q_cusvalor_registrado.AsFloat/ataxa);
                      vtotcreal := vtotcreal+q_cusvalor_registrado.AsFloat;
                   End
                   Else Begin
                      Excel.Cells[i,2] := q_cusvalor_previsao.AsFloat/ataxa;
                      Excel.Cells[i,3] := q_cusvalor_previsao.AsFloat;
                      vtotcdolar := vtotcdolar+(q_cusvalor_previsao.AsFloat/ataxa);
                      vtotcreal := vtotcreal+q_cusvalor_previsao.AsFloat;
                   End;
                   Inc(i);
                   q_cus.Next;
                End;
                vFim := IntToStr(i-1);
                Excel.Range['B'+ vIni, 'C'+ vFim].NumberFormat := '#.##0,00';
                Excel.Range['B'+ vIni, 'C'+ vFim].HorizontalAlignment := AL_DIREITA;
                Excel.Cells[i,1] := '------------------------------------------------------------------------------';
                Excel.Cells[i,2] := '----------------------------';
                Excel.Cells[i,3] := '----------------------------';

                Inc(i);
                Excel.Cells[i,1] := 'Totais';
                Excel.Cells[i,2] := vtotcdolar;
                Excel.Cells[i,3] := vtotcreal;
                Excel.Range['B'+ IntToStr(i), 'C'+ IntToStr(i)].NumberFormat := '#.##0,00';
                Excel.Range['B'+ IntToStr(i), 'C'+ IntToStr(i)].HorizontalAlignment := AL_DIREITA;

                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'D'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'D'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'D'+ IntToStr(i)].Font.Size := 9;

                FinalizarFolha;
             End;
          End;

          { CUSTOS UNITÁRIOS SINTÉTICOS }
          If (cb_cuus.Checked AND NOT b_DOGA) Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             Planilha := 'CUSTOS UNITÁRIOS - SINTÉTICO';

             If Not q_itens.Active Then q_itens.Open Else q_itens.First;
             If q_itens.RecordCount > 0 Then Begin
                IniciarFolha(12);

                Excel.Range['A5', 'A5'].ColumnWidth := 1;
                Excel.Range['B5', 'B5'].ColumnWidth := 10;
                Excel.Range['C5', 'C5'].ColumnWidth := 16;
                Excel.Range['D5', 'D5'].ColumnWidth := 8;
                Excel.Range['E5', 'E5'].ColumnWidth := 5;
                Excel.Range['F5', 'F5'].ColumnWidth := 8;
                Excel.Range['G5', 'G5'].ColumnWidth := 8;
                Excel.Range['H5', 'H5'].ColumnWidth := 10;
                Excel.Range['I5', 'I5'].ColumnWidth := 10;
                Excel.Range['J5', 'J5'].ColumnWidth := 10;
                Excel.Range['K5', 'K5'].ColumnWidth := 10;
                Excel.Range['L5', 'L5'].ColumnWidth := 1;

                i := 4;
                Inc(i);
                Excel.Cells[i,2] := 'Produto';
                Excel.Cells[i,3] := 'Descrição';
                Excel.Cells[i,4] := 'NCM';
                Excel.Cells[i,5] := 'QTD';
                Excel.Cells[i,6] := 'Peso';
                Excel.Cells[i+1,6] := 'Total';
                Excel.Cells[i,7] := 'Peso';
                Excel.Cells[i+1,7] := 'Unitário';
                Excel.Cells[i,8] := 'Valor(U$)';
                Excel.Cells[i,9] := 'Valor(R$)';
                Excel.Cells[i,10] := 'Valor(U$)';
                Excel.Cells[i,11] := 'Valor(R$)';
                Excel.Cells[i+1,8] := 'Total';
                Excel.Cells[i+1,9] := 'Total';
                Excel.Cells[i+1,10] := 'Unitário';
                Excel.Cells[i+1,11] := 'Unitário';
                Excel.Range['D' + IntToStr(i), 'K' + IntToStr(i)].HorizontalAlignment := AL_CENTRO;
                Excel.Range['D' + IntToStr(i+1), 'K' + IntToStr(i+1)].HorizontalAlignment := AL_CENTRO;
                Inc(i);
                Excel.Range['B' + IntToStr(i), 'K'+IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Inc(i);

                vIni := IntToStr(i+1);
                While Not q_itens.Eof Do Begin
                   vtot_tdolar := 0;
                   vtot_treal  := 0;
                   vtot_udolar := 0;
                   vtot_ureal  := 0;

                   Inc(i);
                   Excel.Cells[i,2] := q_itensproduto.AsString;
                   Excel.Cells[i,3] := q_itensdescricao_produto.AsString;
                   Excel.Cells[i,4] := q_itensNCM.AsString;
                   Excel.Cells[i,5] := q_itensquantidade.AsFloat;

                   Excel.Cells[i,6] := q_itenspesototal.AsFloat;
                   Excel.Cells[i,7] := q_itenspesounit.AsFloat;

                   If vb_dolar Then
                      vTaxaConv := 1
                   Else
                      vTaxaConv := vTaxaDolar;

                   If cb_fob.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfob_em_reais2.AsFloat/vTaxaMoedaFatura);
                      vtot_treal  := vtot_treal  +q_itensfob_em_reais2.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfob_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfob_em_reais2.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_freteprepaid.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfreteprepaid_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensfreteprepaid_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteprepaid_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_fretecollect.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfretecollect_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensfretecollect_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfretecollect_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_freteternac.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfreteternac_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensfreteternac_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteternac_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_seguro.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensseguro_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensseguro_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensseguro_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_ii.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaDolar)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_ipi.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaDolar);
                      vtot_treal  := vtot_treal  +q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +(((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaDolar))/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;

                   q_cusunit.Filter := q_cus_u.Filter;
                   If q_cusunit.Filter = '' Then
                      q_cusunit.Filter := q_cusunit.Filter +'Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' '
                   Else
                      q_cusunit.Filter := q_cusunit.Filter +' AND Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' ';
                   q_cusunit.Filtered := True;
                   If Not q_cusunit.Active Then q_cusunit.Open;

                   While Not q_cusunit.Eof Do Begin
                      /////////// NOVO 03/03/2006
                      If q_cusunitrateio.AsString = '2' Then Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                      End
                      Else Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpeso) * q_cusunitpeso_total_acertado.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpeso) * q_cusunitpeso_unitario_acertado.AsFloat;
                      End;

                      If ((q_cusunitnumerario.AsString <> 'II') And (q_cusunitnumerario.AsString <> 'IPI')) Then Begin
                         If vb_dolar Then
                            vTaxaConv := ataxa
                         Else
                            vTaxaConv := vTaxaDolar;

                         If RG_VALOR.ItemIndex = 1 Then
                            { valor registrado }
                            valor_rateio := valor_rateio_reg
                         Else
                            { valor previsão }
                            valor_rateio := valor_rateio_prev;

                         vtot_tdolar := vtot_tdolar +((valor_rateio/vTaxaConv)*q_cusunitquantidade.AsFloat);
                         vtot_treal  := vtot_treal  +((valor_rateio)*q_cusunitquantidade.AsFloat);
                         vtot_udolar := vtot_udolar +((valor_rateio/vTaxaConv));
                         vtot_ureal  := vtot_ureal  +((valor_rateio));
                      End;
                      q_cusunit.Next;
                   End;

                   Excel.Cells[i,8] := vtot_tdolar;
                   Excel.Cells[i,9] := vtot_treal;
                   Excel.Cells[i,10] := vtot_udolar;
                   Excel.Cells[i,11] := vtot_ureal;

                   vtot_tot_tdolar := vtot_tot_tdolar + vtot_tdolar;
                   vtot_tot_treal := vtot_tot_treal + vtot_treal;
                   q_itens.Next;
                End;
                vFim := IntToStr(i);
                Excel.Range['F'+ vIni, 'S'+ vFim].NumberFormat := '#.##0,00';

                Inc(i);
                Inc(i);
                Excel.Cells[i,7] := 'Total:';
                Excel.Cells[i,8] := vtot_tot_tdolar;
                Excel.Cells[i,9] := vtot_tot_treal;
                Excel.Range['E'+ IntToStr(i), 'E'+ IntToStr(i)].HorizontalAlignment := AL_CENTRO;
                Excel.Range['G'+ IntToStr(i), 'I'+ IntToStr(i)].Interior.Color := clSilver;
                Excel.Range['H'+ IntToStr(i), 'I'+ IntToStr(i)].NumberFormat := '#.##0,00';

                Inc(i);

                Excel.Range['A'+ IntToStr(i), 'L'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'L'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'L'+ IntToStr(i)].Font.Size := 8;

                FinalizarFolha;
             End;
          End
          { CUSTOS UNITÁRIOS SINTÉTICOS - DOGA }
          ///ALTERADO POR MM - 09/12/2005
          Else If (cb_cuus.Checked AND b_DOGA) Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             Planilha := 'CUSTOS UNITÁRIOS - SINTÉTICO';

             If Not q_itens.Active Then q_itens.Open Else q_itens.First;
             If q_itens.RecordCount > 0 Then Begin
                If q_fat.RecordCount > 0 Then Begin
                   q_fat.First;
                   MoedaCorte(v_moeda);
                End;
                IniciarFolha(20);

                Excel.Range['A5', 'A5'].ColumnWidth := 1;
                Excel.Range['B5', 'B5'].ColumnWidth := 10;
                Excel.Range['C5', 'C5'].ColumnWidth := 16;
                Excel.Range['D5', 'D5'].ColumnWidth := 8;
                Excel.Range['E5', 'E5'].ColumnWidth := 5;
                Excel.Range['F5', 'F5'].ColumnWidth := 8;
                Excel.Range['G5', 'G5'].ColumnWidth := 8;
                Excel.Range['H5', 'H5'].ColumnWidth := 15;
                Excel.Range['I5', 'I5'].ColumnWidth := 40;
                Excel.Range['J5', 'J5'].ColumnWidth := 15;
                Excel.Range['K5', 'K5'].ColumnWidth := 25;
                Excel.Range['L5', 'L5'].ColumnWidth := 15;
                Excel.Range['M5', 'M5'].ColumnWidth := 10; ///aliquota II
                Excel.Range['N5', 'N5'].ColumnWidth := 10; ///REDUCAO
                Excel.Range['O5', 'O5'].ColumnWidth := 20; ///aliquota REDUZIDA
                Excel.Range['P5', 'P5'].ColumnWidth := 40;
                Excel.Range['Q5', 'Q5'].ColumnWidth := 20; //OK
                Excel.Range['R5', 'R5'].ColumnWidth := 15; //OK
                Excel.Range['S5', 'S5'].ColumnWidth := 15; //OK
                Excel.Range['T5', 'T5'].ColumnWidth := 1;

                i := 4;
                Inc(i);
                Excel.Cells[i,2] := 'Produto';
                Excel.Cells[i,3] := 'Descrição';
                Excel.Cells[i,4] := 'NCM';
                Excel.Cells[i,5] := 'QTD';
                Excel.Cells[i,6] := 'Peso'; Excel.Cells[i+1,6] := 'Total';
                Excel.Cells[i,7] := 'Peso'; Excel.Cells[i+1,7] := 'Unitário';
                Excel.Cells[i,8] := 'Valor FOB ' + v_moeda ;
                Excel.Cells[i+1,8] := 'Unitário';
                Excel.Cells[i,9] := 'Valor FOB em '+ v_moeda +'(Ou seja na moeda da fatura)';
                Excel.Cells[i+1,9] := 'Total';
                Excel.Cells[i,10] := 'Valor FOB em R$'; Excel.Cells[i+1,10] := 'Total';
                Excel.Cells[i,11] := 'Valor Frete internacional em R$';
                Excel.Cells[i,12] := 'Valor do II em R$';

                Excel.Cells[i,13] := 'Alíquota II %';
                ///colocado em 14/12/2005
                Excel.Cells[i,14] := 'Redução %';
                Excel.Cells[i,15] := 'Aliquota reduzida %';

                Excel.Cells[i,16] := 'Valor das custas em R$'; Excel.Cells[i+1,16] := 'Todas as despesas pagas, sem (PIS/COFINS/ICMS/II/IPI)';
                Excel.Cells[i,17] := 'Valor IMPORTAÇÃO (R$)'; Excel.Cells[i+1,17] := 'Total';
                Excel.Cells[i,18] := 'Valor '+v_moeda; Excel.Cells[i+1,18] := 'Unitário';
                Excel.Cells[i,19] := 'Valor(R$)'; Excel.Cells[i+1,16] := 'Unitário';

                Excel.Range['D'+ IntToStr(i), 'S'+ IntToStr(i+1)].HorizontalAlignment := AL_CENTRO;
                Inc(i);
                Excel.Range['B'+ IntToStr(i), 'S'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Inc(i);

                vIni := IntToStr(i+1);
                While Not q_itens.Eof Do Begin
                   vtot_tdolar := 0;
                   vtot_treal  := 0;
                   vtot_udolar := 0;
                   vtot_ureal  := 0;
                   Inc(i);

                   Excel.Cells[i,2] := q_itensproduto.AsString;
                   Excel.Cells[i,3] := q_itensdescricao_produto.AsString;
                   Excel.Cells[i,4] := q_itensNCM.AsString;
                   Excel.Cells[i,5] := q_itensquantidade.AsFloat;
                   Excel.Cells[i,5].HorizontalAlignment := AL_CENTRO;
                   Excel.Cells[i,6] := q_itenspesototal.AsFloat;
                   Excel.Cells[i,7] := q_itenspesounit.AsFloat;

                   v_total_impor := 0;

                   If vb_dolar Then
                      vTaxaConv := 1
                   Else
                      vTaxaConv := vTaxaMoedaFatura;

                   If cb_fob.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfob_em_reais2.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfob_em_reais2.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfob_em_reais2.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfob_em_reais2.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_freteprepaid.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfreteprepaid_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensfreteprepaid_em_reais.AsFloat;
                   End;
                   If cb_fretecollect.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfretecollect_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfretecollect_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensfretecollect_em_reais.AsFloat;
                   End;
                   If cb_freteternac.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensfreteternac_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfreteternac_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensfreteternac_em_reais.AsFloat;
                   End;
                   If cb_seguro.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensseguro_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensseguro_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensseguro_em_reais.AsFloat;
                   End;
                   If cb_ii.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                   End;
                   If cb_ipi.Checked Then Begin
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                      v_total_impor := v_total_impor + q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                   End;

                   /////  Excel.Cells[i,20] := vtotpro;
                   /////  Excel.Cells[i,21] := vtotpeso;
                   ////////colocando II IGUAL AO ANALÍTICO 12/12/2005

                   Excel.Cells[i,12] := q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                   v_tot_12 := v_tot_12 + q_itensvalor_ii_a_recolher_em_reais.AsFloat;

                   v_doga_custas := 0;

                   q_cusunit.Filter := q_cus_u.Filter;
                   If q_cusunit.Filter = '' Then
                      q_cusunit.Filter := q_cusunit.Filter +'Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' '
                   Else
                      q_cusunit.Filter := q_cusunit.Filter +' AND Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' ';
                   q_cusunit.Filtered := True;
                   If Not q_cusunit.Active Then q_cusunit.Open;

                   While Not q_cusunit.Eof Do Begin
                      ///// If q_cusunitNumerario.AsString = 'II' Then Begin
                      /////    Excel.Cells[i,12] :=(valor_rateio_reg)*q_cusunitquantidade.AsFloat;// valor_rateio;
                      /////    Excel.Cells[i,12].numberFormat := '#.##0,00';
                      /////    v_tot_12 := v_tot_12 +(valor_rateio_reg*q_cusunitquantidade.AsFloat);
                      ///// End;
                      If q_cusunitrateio.AsString = '2' Then Begin
//                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpro) * q_cusunitvalorunitrio.AsFloat;
//                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpro) * q_cusunitvalorunitrio.AsFloat;
//alterei em 25/07/2007 - mm
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpro) * (q_cusunitvalor_unitario.AsFloat+(q_cusunitrateio_acrescimos.asfloat));
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpro) * (q_cusunitvalor_unitario.AsFloat+(q_cusunitrateio_acrescimos.asfloat));

                      End
                      Else Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpeso) * q_cusunitpeso_total_acertado.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpeso) * q_cusunitpeso_unitario_acertado.AsFloat;
                      End;

                      If ((q_cusunitnumerario.AsString <> 'II') And (q_cusunitnumerario.AsString <> 'IPI')) Then Begin
                         If q_cusunitNumerario.AsString = 'FINT' Then Begin
                            ///// Excel.Cells[i,11] := valor_rateio_reg*q_cusunitquantidade.AsFloat;
                            ///// v_tot_11 := v_tot_11 + ((valor_rateio_reg)*q_cusunitquantidade.AsFloat);
                            Excel.Cells[i,11] := valor_rateio_reg;
                            v_tot_11 := v_tot_11 + valor_rateio_reg;
                         End;

                         If (q_cusunitNumerario.AsString <> '*PIS' ) And
                            (q_cusunitNumerario.AsString <> '*CFIN') And
                            (q_cusunitNumerario.AsString <> '*COFI') And
                            (q_cusunitNumerario.AsString <> '*ICMS') And
                            (q_cusunitNumerario.AsString <> 'IPI' )  And
                            (q_cusunitNumerario.AsString <> '*FOB' ) And
                            (q_cusunitNumerario.AsString <> 'II'  )  And
                            (q_cusunitNumerario.AsString <> '*FRETES') And
                            (q_cusunitNumerario.AsString <> 'FINT') Then Begin
                            ////(q_cusunitNumerario.AsString <> 'SISC') colocado nas custas em em 14/12/2005
                            ///"FINT" TIRADO EM 13/12/2005 - MM
                            v_doga_custas := v_doga_custas + (valor_rateio_reg*q_cusunitquantidade.AsFloat);//valor_rateio;
                         End
                         Else Begin
                              /// v_doga_custas := v_doga_custas + 1;
                         End;

                         If vb_dolar Then
                            vTaxaConv := ataxa
                         Else
                            vTaxaConv := vTaxaMoedaFatura;

                         vtot_tdolar := vtot_tdolar +((valor_rateio_reg/vTaxaConv)*q_cusunitquantidade.AsFloat);
                         vtot_treal  := vtot_treal  +((valor_rateio_reg)*q_cusunitquantidade.AsFloat);
                         vtot_udolar := vtot_udolar +((valor_rateio_reg/vTaxaConv));
                         vtot_ureal  := vtot_ureal  +((valor_rateio_reg));
                      End;

                      ///// colocado em 13/12/2005
                      ///// (q_cusunitNumerario.AsString = 'SISC') or tirado 14/12/2005 - mm
                      ///// (q_cusunitNumerario.AsString = 'II') or tirei em 15/12/2005 coloquei do itens
                      If (q_cusunitNumerario.AsString = 'FINT') Then Begin
                         ///// v_total_impor := v_total_impor+((valor_rateio_reg)*q_cusunitquantidade.AsFloat);//valor_rateio;
                         v_total_impor := v_total_impor + valor_rateio_reg;
                      End;
                      q_cusunit.Next;
                   End;
                   v_tot_13 := v_tot_13 + v_doga_custas;

                   Excel.Cells[i,8] := q_itensfob2.AsFloat/q_itensquantidade.AsFloat;
                   Excel.Cells[i,9] := q_itensfob2.AsFloat;
                   v_tot_9 := v_tot_9 + q_itensfob2.AsFloat;
                   Excel.Cells[i,10] := q_itensfob_em_reais.AsFloat;
                   v_tot_10 := v_tot_10 + q_itensfob_em_reais.AsFloat;

                   ////COLOCAR ALIQUOTA
                   Excel.Cells[i,13] := q_itensAliq_NCM_II.AsFloat;
                   Excel.Cells[i,14] := q_itensPercentual_Reducao_II.AsFloat;
                   Excel.Cells[i,15] := (q_itensAliq_NCM_II.AsFloat-((q_itensPercentual_Reducao_II.AsFloat*q_itensAliq_NCM_II.AsFloat)/100));
                   Excel.Cells[i,16] := v_doga_custas;

                   /////Excel.Range['H'+ IntToStr(i), 'T'+ IntToStr(i)].Interior.Color := clSilver;

                   ///// ALTERADO A FORMULA 13/12/2005 - MM
                   {2) Coluna "O" (Valor Importação em R$):
                       O valor dessa coluna devem ser o somatório das colunas abaixo:
                       "J" 10 - FOB em R$
                       "K" 11 - Frete Internacional
                       "L" 12 - Valor II
                       "N" 14 - Valor das custas
                        +  taxa siscomex
                   }
                   ///// Excel.Cells[i,15] := vtot_treal;
                   Excel.Cells[i,17] := (q_itensfob_em_reais.AsFloat+v_total_impor+v_doga_custas);
                   ////Excel.Cells[i,16] := vtot_udolar;
                   Excel.Cells[i,18] := ((q_itensfob_em_reais.AsFloat+v_total_impor+v_doga_custas)/q_itensquantidade.AsFloat)/vTaxaMoedaFatura;

                   ///Excel.Cells[i,17] := vtot_ureal;
                   ///alterado em 14/12/2005
                   Excel.Cells[i,19] := (q_itensfob_em_reais.AsFloat+v_total_impor+v_doga_custas)/q_itensquantidade.AsFloat;

                   vtot_tot_tdolar := vtot_tot_tdolar + vtot_tdolar;
                   /////vtot_tot_treal := vtot_tot_treal + vtot_treal;
                   vtot_tot_treal := vtot_tot_treal + (q_itensfob_em_reais.AsFloat+v_total_impor+v_doga_custas);

                   q_Itens.Next;
                End;
                vFim := IntToStr(i);
                Excel.Range['F'+ vIni, 'S'+ vFim].NumberFormat := '#.##0,00';
                Inc(i);
                Inc(i);
                Excel.Range['H' + IntToStr(i), 'Q'+IntToStr(i)].Interior.Color := clSilver;

                Excel.Cells[i,8] := 'Totais:';
                ///// Excel.Cells[i,8] := vtot_tot_tdolar;
                ///// Excel.Cells[i,8].numberFormat := '#.##0,00';
                Excel.Cells[i,9] := v_tot_9;
                Excel.Cells[i,10] := v_tot_10;
                Excel.Cells[i,11] := v_tot_11;
                Excel.Cells[i,12] := v_tot_12;
                Excel.Range['I'+ IntToStr(i), 'L'+ IntToStr(i)].NumberFormat := '#.##0,00';

                ///// ALIQUOTA
                ///// Excel.Cells[i,13] := q_cusunit.Text; lama sql

                Excel.Cells[i,16] := v_tot_13;
                Excel.Cells[i,17] := vtot_tot_treal;
                Excel.Range['P'+ IntToStr(i), 'Q'+ IntToStr(i)].NumberFormat := '#.##0,00';

                Inc(i);

                Excel.Range['A'+ IntToStr(i), 'T'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'T'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'T'+ IntToStr(i)].Font.Size := 8;

                FinalizarFolha;
             End;
          End;
          
          { CUSTOS UNITÁRIOS ANALÍTICOS DO PROCESSO }
          ///// ALTERADO POR MM - 09/12/2005
          If cb_cuu.Checked Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             If RG_VALOR.ItemIndex=1 Then
                Planilha := 'CUSTOS UNITÁRIOS - ANALÍTICO'
             Else
                Planilha := 'CUSTOS UNITÁRIOS - ANALÍTICO';

             If Not q_itens.Active Then q_itens.Open Else q_itens.First;
             If q_itens.RecordCount > 0 Then Begin
                IniciarFolha(8);
                
                Excel.Range['A5', 'A5'].ColumnWidth := 1;
                Excel.Range['B5', 'B5'].ColumnWidth := 32;
                Excel.Range['C5', 'C5'].ColumnWidth := 1;
                Excel.Range['D5', 'D5'].ColumnWidth := 14;
                Excel.Range['E5', 'E5'].ColumnWidth := 14;
                Excel.Range['F5', 'F5'].ColumnWidth := 14;
                Excel.Range['G5', 'G5'].ColumnWidth := 14;
                Excel.Range['H5', 'H5'].ColumnWidth := 1;
                
                i := 4;
                While Not q_itens.Eof Do Begin
                   vtot_tdolar := 0;
                   vtot_treal  := 0;
                   vtot_udolar := 0;
                   vtot_ureal  := 0;
                   Inc(i);
                   Excel.Range['B'+ IntToStr(i), 'G'+IntToStr(i)].Borders.Item[9].LineStyle := 1;
                   Inc(i);
                   Inc(i);
                   
                   vIni := IntToStr(i);
                   Excel.Cells[i,2] := 'Adição ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensAdicao.AsString;
                   Inc(i);
                   Excel.Cells[i,2] := 'Seq ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensseq_adicao.AsString;
                   Inc(i);
                   Excel.Cells[i,2] := 'Produto ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensproduto.AsString;
                   Inc(i);
                   Excel.Cells[i,2] := 'Descrição ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := Copy(q_itensdescricao_produto.AsString,1,60);

                   vFim := IntToStr(i);
                   Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_ESQUERDA;

                   Excel.Range['D'+ IntToStr(i), 'G'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,4] := Copy(q_itensdescricao_produto.AsString,61,60);
                   Excel.Range['D'+ IntToStr(i), 'G'+ IntToStr(i)].Merge;
                   Inc(i);

                   vIni := IntToStr(i);
                   Excel.Cells[i,2] := 'Quantidade ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensquantidade.AsFloat;
                   Inc(i);
                   Excel.Cells[i,2] := 'Valor Unitário ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensvalunit.AsFloat;
                   Inc(i);
                   Excel.Cells[i,2] := 'Valor Total ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itensvaltot.AsFloat;
                   Inc(i);
                   Excel.Cells[i,2] := 'Peso Unitário ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itenspesounit.AsFloat;
                   Inc(i);
                   Excel.Cells[i,2] := 'Peso Total ';
                   Excel.Cells[i,3] := ':';
                   Excel.Cells[i,4] := q_itenspesototal.AsFloat;

                   vFim := IntToStr(i);
                   Excel.Range['D'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,00';
                   Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;

                   Inc(i);
                   Inc(i);
                   Excel.Cells[i,2] := 'Descrição dos Custos';
                   Excel.Range['D'+ IntToStr(i), 'G'+ IntToStr(i+1)].HorizontalAlignment := AL_CENTRO;
                   Excel.Cells[i,4] := 'Valores Totais';
                   Excel.Range['D'+ IntToStr(i), 'E'+ IntToStr(i)].Merge;
                   Excel.Cells[i,6] := 'Valores Unitários';
                   Excel.Range['F'+ IntToStr(i), 'G'+ IntToStr(i)].Merge;
                   Inc(i);
                   Excel.Cells[i,4] := '(U$)';
                   Excel.Cells[i,5] := '(R$)';
                   Excel.Cells[i,6] := '(U$)';
                   Excel.Cells[i,7] := '(R$)';
                   Inc(i);
                   Excel.Cells[i,2] := '-----------------------------------------------------';
                   Excel.Cells[i,4] := '-----------------------------';
                   Excel.Cells[i,5] := '-----------------------------';
                   Excel.Cells[i,6] := '-----------------------------';
                   Excel.Cells[i,7] := '-----------------------------';
                   Inc(i);

                   If vb_dolar Then
                      vTaxaConv := 1
                   Else
                      vTaxaConv := vTaxaDolar;
                   
                   vIni := IntToStr(i);
                   If cb_fob.Checked Then Begin
                      Excel.Cells[i,2] := 'FOB ';
                      Excel.Cells[i,4] := q_itensfob_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensfob_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensfob_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfob_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensfob_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfob_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfob_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfob_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_freteprepaid.Checked Then Begin
                      Excel.Cells[i,2] := 'FRETE PREPAID ';
                      Excel.Cells[i,4] := q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensfreteprepaid_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfreteprepaid_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteprepaid_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteprepaid_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_fretecollect.Checked Then Begin
                      Excel.Cells[i,2] := 'FRETE COLLECT ';
                      Excel.Cells[i,4] := q_itensfretecollect_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensfretecollect_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensfretecollect_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfretecollect_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfretecollect_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfretecollect_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_freteternac.Checked Then Begin
                      Excel.Cells[i,2] := 'FRETE TER.NAC. ';
                      Excel.Cells[i,4] := q_itensfreteternac_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensfreteternac_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensfreteternac_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensfreteternac_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensfreteternac_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensfreteternac_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_seguro.Checked Then Begin
                      Excel.Cells[i,2] := 'SEGURO ';
                      Excel.Cells[i,4] := q_itensseguro_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensseguro_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensseguro_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensseguro_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensseguro_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensseguro_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_ii.Checked Then Begin
                      Excel.Cells[i,2] := 'IMPOSTO DE IMPORTAÇÃO ';
                      Excel.Cells[i,4] := q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensvalor_ii_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +((q_itensvalor_ii_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ii_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;
                   If cb_ipi.Checked Then Begin
                      Excel.Cells[i,2] := 'IMPOSTO S/ PRODUTOS INDUSTRIALIZADOS ';
                      Excel.Cells[i,4] := q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv;
                      Excel.Cells[i,5] := q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                      Excel.Cells[i,6] := (q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv)/q_itensquantidade.AsFloat;
                      Excel.Cells[i,7] := q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat;
                      Inc(i);
                      vtot_tdolar := vtot_tdolar +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv);
                      vtot_treal  := vtot_treal  +q_itensvalor_ipi_a_recolher_em_reais.AsFloat;
                      vtot_udolar := vtot_udolar +(((q_itensvalor_ipi_a_recolher_em_reais.AsFloat/vTaxaConv))/q_itensquantidade.AsFloat);
                      vtot_ureal  := vtot_ureal  +(q_itensvalor_ipi_a_recolher_em_reais.AsFloat/q_itensquantidade.AsFloat);
                   End;

                   vFim := IntToStr(i-1);
                   Excel.Range['D'+ vIni, 'G'+ vFim].NumberFormat := '#.##0,00';
                   Excel.Range['D'+ vIni, 'G'+ vFim].HorizontalAlignment := AL_DIREITA;

                   q_cusunit.Filter := q_cus_u.Filter;
                   If q_cusunit.Filter = '' Then
                      q_cusunit.Filter := q_cusunit.Filter +'Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' '
                   Else
                      q_cusunit.Filter := q_cusunit.Filter +' AND Fatura = '''+ q_itensFatura.AsString +''' AND Sequencial = '''+ q_itensseq.AsString +''' ';
                   q_cusunit.Filtered := True;
                   If Not q_cusunit.Active Then q_cusunit.Open;

                   vIni := IntToStr(i);
                   While Not q_cusunit.Eof Do Begin
                      If q_cusunitrateio.AsString = '2' Then Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpro) * q_cusunitvalor_unitario.AsFloat;
                      End
                      Else Begin
                         valor_rateio_reg := (q_cusunitvalor_registrado.AsFloat / vtotpeso) * q_cusunitpeso_total_acertado.AsFloat;
                         valor_rateio_prev := (q_cusunitvalor_previsao.AsFloat / vtotpeso) * q_cusunitpeso_unitario_acertado.AsFloat;
                      End;
                      If ((q_cusunitnumerario.AsString <> 'II') And (q_cusunitnumerario.AsString <> 'IPI')) Then Begin
                         If vb_dolar Then
                            vTaxaConv := ataxa
                         Else
                            vTaxaConv := vTaxaDolar;

                         If RG_VALOR.ItemIndex = 1 Then
                            { valor registrado }
                            valor_rateio := valor_rateio_reg
                         Else
                            { valor previsão }
                            valor_rateio := valor_rateio_prev;

                         If q_cusunitrateio.AsString = '1' Then Begin
                            Excel.Cells[i,2] := q_cusunitdescricao.AsString;
                            Excel.Cells[i,4] := valor_rateio/vTaxaDolar;
                            Excel.Cells[i,5] := valor_rateio;
                            Excel.Cells[i,6] := (valor_rateio/vTaxaDolar)/q_cusunitquantidade.AsFloat;
                            Excel.Cells[i,7] := valor_rateio/q_cusunitquantidade.AsFloat;
                            Inc(i);
                            vtot_tdolar := vtot_tdolar +(valor_rateio/vTaxaDolar);
                            vtot_treal  := vtot_treal  +(valor_rateio);
                            vtot_udolar := vtot_udolar +(valor_rateio/vTaxaDolar)/q_cusunitquantidade.AsFloat;
                            vtot_ureal  := vtot_ureal  +(valor_rateio/q_cusunitquantidade.AsFloat);
                         End
                         Else Begin
                            Excel.Cells[i,2] := q_cusunitdescricao.AsString;
                            Excel.Cells[i,4] := (valor_rateio/vTaxaDolar)*q_cusunitquantidade.AsFloat;
                            Excel.Cells[i,5] := valor_rateio*q_cusunitquantidade.AsFloat;
                            Excel.Cells[i,6] := valor_rateio/vTaxaDolar;
                            Excel.Cells[i,7] := valor_rateio;
                            Inc(i);
                            vtot_tdolar := vtot_tdolar +(valor_rateio/vTaxaDolar)*q_cusunitquantidade.AsFloat;
                            vtot_treal  := vtot_treal  +(valor_rateio*q_cusunitquantidade.AsFloat);
                            vtot_udolar := vtot_udolar +(valor_rateio/vTaxaDolar);
                            vtot_ureal  := vtot_ureal  +(valor_rateio);
                         End;
                      End;
                      q_cusunit.Next;
                   End;

                   vFim := IntToStr(i-1);
                   Excel.Range['D'+ vIni, 'G'+ vFim].NumberFormat := '#.##0,00';
                   Excel.Range['D'+ vIni, 'G'+ vFim].HorizontalAlignment := AL_DIREITA;

                   Excel.Cells[i,2] :='-----------------------------------------------------';
                   Excel.Cells[i,4] :='-----------------------------';
                   Excel.Cells[i,5] :='-----------------------------';
                   Excel.Cells[i,6] :='-----------------------------';
                   Excel.Cells[i,7] :='-----------------------------';
                   Inc(i);
                   Excel.Cells[i,2] := 'Totais';
                   Excel.Cells[i,4] := vtot_tdolar;
                   Excel.Cells[i,5] := vtot_treal;
                   Excel.Cells[i,6] := vtot_udolar;
                   Excel.Cells[i,7] := vtot_ureal;
                   vIni := IntToStr(i);
                   Excel.Range['D'+ vIni, 'G'+ vIni].NumberFormat := '#.##0,00';
                   Excel.Range['D'+ vIni, 'G'+ vIni].HorizontalAlignment := AL_DIREITA;

                   Inc(i);
                   Excel.Range['B'+ IntToStr(i), 'G'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                   Inc(i);
                   q_Itens.Next;
                   Excel.Workbooks[1].Save;
                   Application.ProcessMessages;
                End;
                
                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'H'+ IntToStr(i)].Font.Size := 8;

                FinalizarFolha;
             End;
          End;

          { RELAÇÃO DE CONTAINERS }
          If cbRelCont.Checked Then Begin
{
             Excel.Workbooks[1].Close;
             Application.ProcessMessages;
             Excel.Workbooks.Open(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
             Application.ProcessMessages;
}
             Planilha := 'RELAÇÃO DE CONTAINERS';

             If Not qrRelCont.Active Then qrRelCont.Open Else qrRelCont.First;
             If qrRelCont.RecordCount > 0 Then Begin
                IniciarFolha(8);

                Excel.Range['A5', 'A5'].ColumnWidth := 1;
                Excel.Range['B5', 'B5'].ColumnWidth := 32;
                Excel.Range['C5', 'C5'].ColumnWidth := 1;
                Excel.Range['D5', 'D5'].ColumnWidth := 14;
                Excel.Range['E5', 'E5'].ColumnWidth := 14;
                Excel.Range['F5', 'F5'].ColumnWidth := 14;
                Excel.Range['G5', 'G5'].ColumnWidth := 14;
                Excel.Range['H5', 'H5'].ColumnWidth := 1;

                i := 5;
                While Not qrRelCont.Eof Do Begin
                   Inc(i);
                   Excel.Cells[i,1] := 'Nº: ' + qrRelContCodigo.AsString + ' - ' + qrRelContDescricao.AsString;
                   qrRelCont.Next;
                End;
                For aux := 1 To i Do
                   Excel.Range['A'+IntToStr(aux), 'H'+IntToStr(aux)].Merge;

                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].Weight := 3;
                Excel.Range['A5', 'H'+ IntToStr(i-1)].Font.Size := 8;

                FinalizarFolha;
             End;
          End;

          { INFORMAÇÕES COMPLEMENTARES }
          If cbInfComp.Checked Then Begin
             Planilha := 'INFORMAÇÕES COMPLEMENTARES';

             If Not qrInfComp.Active Then qrInfComp.Open;
             If qrInfComp.RecordCount > 0 Then Begin
                IniciarFolha(8);

                Excel.Range['A5', 'A5'].ColumnWidth := 1;
                Excel.Range['B5', 'B5'].ColumnWidth := 32;
                Excel.Range['C5', 'C5'].ColumnWidth := 1;
                Excel.Range['D5', 'D5'].ColumnWidth := 14;
                Excel.Range['E5', 'E5'].ColumnWidth := 14;
                Excel.Range['F5', 'F5'].ColumnWidth := 14;
                Excel.Range['G5', 'G5'].ColumnWidth := 14;
                Excel.Range['H5', 'H5'].ColumnWidth := 1;

                Excel.Range['A5', 'H5'].Borders.Item[9].LineStyle := 1;
                Excel.Range['A5', 'H5'].Borders.Item[9].Weight := 3;

                i := 5;
                aux := 0;
                While aux < dbmemo1.Lines.Count Do Begin
                   Inc(i);
                   Excel.Cells[i,1] := dbmemo1.Lines.Strings[aux];
                   Inc(aux);
                End;
                For aux := 1 To i Do
                   Excel.Range['A'+ IntToStr(aux), 'H'+ IntToStr(aux)].Merge;

                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'H'+ IntToStr(i)].Borders.Item[9].Weight := 3;

                Excel.Range['A5', 'H'+ IntToStr(i)].Font.Size := 8;

                FinalizarFolha;
             End;
          End;

          { DEMONSTRATIVO FINANCEIRO }
          If cbDF.Checked Then Begin
             Planilha := 'DEMONSTRATIVO FINANCEIRO';

             If Not qrExcelDataCredito.Active Then qrExcelDataCredito.Open Else qrExcelDataCredito.First;
             If Not qrExcelDataDebito.Active Then qrExcelDataDebito.Open Else qrExcelDataDebito.First;
             If (qrExcelDataCredito.RecordCount > 0) OR (qrExcelDataDebito.RecordCount > 0) Then Begin
                IniciarFolha(6);

                Excel.Range['A5', 'A5'].ColumnWidth := 5;
                Excel.Range['B5', 'B5'].ColumnWidth := 10;
                Excel.Range['C5', 'C5'].ColumnWidth := 45;
                Excel.Range['D5', 'D5'].ColumnWidth := 14;
                Excel.Range['E5', 'E5'].ColumnWidth := 14;
                Excel.Range['F5', 'F5'].ColumnWidth := 5;

                Excel.Cells[6,1] := 'CRÉDITOS';
                Excel.Cells[6,1].HorizontalAlignment := AL_CENTRO;
                Excel.Cells[6,1].Font.Size := 12;
                Excel.Cells[6,1].Font.Bold := True;
                Excel.Range['A6', 'F6'].Merge;

                Excel.Cells[7,2] := 'Data';
                Excel.Cells[7,3] := 'Descrição';
                Excel.Cells[7,4] := 'Valor';
                Excel.Range['D7', 'D7'].HorizontalAlignment := AL_DIREITA;
                Excel.Range['B7', 'D7'].Font.Bold := True;
                Excel.Range['A7', 'F7'].Font.Size := 9;

                Excel.Range['B7', 'E7'].Borders.Item[9].LineStyle := 1;
                Excel.Range['B7', 'E7'].Borders.Item[9].Weight := 2;

                i := 8;
                vIni := IntToStr(i+1);
                While Not qrExcelDataCredito.Eof Do Begin
                   Inc(i);
                   Excel.Cells[i,2] := qrExcelDataCreditoData_Credito.AsString;
                   Excel.Cells[i,3] := qrExcelDataCreditoDescricao.AsString;
                   Excel.Cells[i,4] := qrExcelDataCreditoValor.AsFloat;
                   qrExcelDataCredito.Next;
                End;
                vFim := IntToStr(i);
                Excel.Range['D'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,00';
                Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;
                Excel.Range['B'+ vIni, 'B'+ vFim].HorizontalAlignment := AL_ESQUERDA;
                Excel.Range['B'+ vIni, 'D'+ vFim].Font.Size := 9;

                Inc(i);
                Inc(i);
                v_aux := i;
                Excel.Cells[i,3] := 'SubTotal';
                Excel.Cells[i,4].FormulaR1C1Local := '=SOMA(L'+ vIni +'C4:L'+ vFim +'C4)';
                Excel.Cells[i,4].NumberFormat := '#.##0,00';
                Excel.Range['C'+ IntToStr(i), 'D'+ IntToStr(i)].HorizontalAlignment := AL_DIREITA;
                Excel.Range['C'+ IntToStr(i), 'D'+ IntToStr(i)].Font.Bold := True;

                Inc(i);
                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].Weight := 1;

                Inc(i);
                Inc(i);
                Excel.Cells[i,1] := 'DÉBITOS';
                Excel.Cells[i,1].HorizontalAlignment := AL_CENTRO;
                Excel.Cells[i,1].Font.Size := 12;
                Excel.Cells[i,1].Font.Bold := True;
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Merge;

                Inc(i);
                Excel.Cells[i,2] := 'Data';
                Excel.Cells[i,3] := 'Descrição';
                Excel.Cells[i,4] := 'Valor';
                Excel.Range['B'+ IntToStr(i), 'D'+ IntToStr(i)].Font.Bold := True;
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Font.Size := 9;
                Excel.Range['D'+ IntToStr(i), 'D'+ IntToStr(i)].HorizontalAlignment := AL_DIREITA;

                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].Weight := 2;

                Inc(i);
                vIni := IntToStr(i+1);
                While Not qrExcelDataDebito.Eof Do Begin
                   inc(i);
                   inc(aux);
                   Excel.Cells[i,2] := qrExcelDataDebitoData_Registro.AsString;
                   Excel.Cells[i,3] := qrExcelDataDebitoDescricao.AsString;
                   Excel.Cells[i,4] := qrExcelDataDebitoValor_Registrado.AsFloat;
                   qrExcelDataDebito.Next;
                End;
                vFim := IntToStr(i);
                Excel.Range['D'+ vIni, 'D'+ vFim].NumberFormat := '#.##0,00';
                Excel.Range['D'+ vIni, 'D'+ vFim].HorizontalAlignment := AL_DIREITA;
                Excel.Range['B'+ vIni, 'B'+ vFim].HorizontalAlignment := AL_ESQUERDA;
                Excel.Range['B'+ vIni, 'D'+ vFim].Font.Size := 9;

                Inc(i);
                Inc(i);
                Excel.Cells[i,3] := 'SubTotal';
                Excel.Cells[i,4].FormulaR1C1Local := '=SOMA(L'+ vIni +'C4:L'+ vFim +'C4)';
                Excel.Cells[i,4].NumberFormat := '#.##0,00';
                Excel.Range['C'+ IntToStr(i), 'D'+ IntToStr(i)].HorizontalAlignment := AL_DIREITA;
                Excel.Range['C'+ IntToStr(i), 'D'+ IntToStr(i)].Font.Bold := True;

                Inc(i);
                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['B'+ IntToStr(i), 'E'+ IntToStr(i)].Borders.Item[9].Weight := 1;
                Inc(i);
                Inc(i);
                Excel.Cells[i,3] := 'Resultado';
                Excel.Cells[i,4].Formula := '=$D$'+ IntToStr(v_aux) +'-$D$'+ IntToStr(i-3);
                Excel.Cells[i,4].NumberFormat := '#.##0,00;[Vermelho](#.##0,00)';
                Excel.Range['C'+ IntToStr(i), 'D'+ IntToStr(i)].Font.Bold := True;
                Inc(i);
                Inc(i);
                Excel.Range['A' + IntToStr(i), 'F' + IntToStr(i)].Merge;
                Excel.Cells[i,1] := '(SALDO A PAGAR) = ';
                Excel.Cells[i,1] := Excel.Cells[i,1].Text + Excel.Cells[i-2,4].Text;
                Excel.Cells[i,1].HorizontalAlignment := AL_CENTRO;
                Excel.Cells[i,1].Font.Size := 10;
                Excel.Cells[i,1].Font.Bold := True;
                Inc(i);
                Inc(i);
                Excel.Cells[i,2] := 'OBSERVAÇÕES';
                Excel.Cells[i,2].Font.Size := 12;
                Excel.Cells[i,2].Font.Bold := True;

                If Not qrObs.Active Then qrObs.Open;
                aux := 0;
                While aux < dbmemo2.Lines.Count Do Begin
                   inc(i);
                   Excel.Cells[i,2] := dbmemo2.Lines.Strings[aux];
                   Excel.Cells[i,2].Font.Size := 9;
                   Excel.Range['B'+IntToStr(i), 'E'+IntToStr(i)].Merge;
                   Inc(aux);
                End;
                Excel.Cells[i,2] := 'Atenciosamente, ';
                Inc(i);
                Inc(i);
                Inc(i);
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Borders.Item[9].LineStyle := 1;
                Excel.Range['A'+ IntToStr(i), 'F'+ IntToStr(i)].Borders.Item[9].Weight := 3;

                FinalizarFolha;
             End;
          End;
          
          Excel.WorkSheets['Menu'].Select;
          ///// Excel.Range['A' + IntToStr(v_menuaux), 'J' + IntToStr(v_menuaux)].Borders.Item[9].LineStyle := 1;
          ///// Excel.Range['A' + IntToStr(v_menuaux), 'J' + IntToStr(v_menuaux)].Borders.Item[9].Weight := 3;
          If cbImpDoc.Checked Then Begin
             If Not qrExcelProc.Active Then begin
               qrExcelProc.sql.clear;
               qrExcelProc.sql.add('SELECT D.Numero_Doc, D.Processo, D.Arquivo, STD.Descricao, D.Sub_Tipo_Doc, D.Tipo_Doc, D.Codigo, cast(D.Pagina as float) AS Pagina ');
               qrExcelProc.sql.add('FROM Documentos AS D LEFT JOIN Sub_Tipo_Documentos AS STD ON (D.Sub_Tipo_Doc = STD.codigo) AND (D.Tipo_Doc = STD.Tipo_doc) ');
               qrExcelProc.sql.add('WHERE D.Empresa = "1" AND D.Filial = "RJO" AND D.Processo = "'+ME_nossaref.Text+'" and d.pagina <> "dar" and d.pagina <> "rec" ');
               qrExcelProc.sql.add('ORDER BY D.Codigo, cast(D.Pagina as float)');
               qrExcelProc.Open;
             end
             Else begin
               qrExcelProc.First;
             end;
             If qrExcelProc.RecordCount > 0 Then Begin
                Excel.Cells[v_menuAux, 3] := IntToStr(v_menuAux-2) + '. DOCUMENTOS';
                Excel.WorkSheets['Menu'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Menu'].Range['C' + IntToStr(v_menuAux)], Address := 'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '_docs.xls');
                Excel.Range['C' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Merge;
             End;
          End;

          { FINALIZANDO PLANILHA }

          Excel.WorkSheets['Menu'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 15, 27, 240, 58);//370, 4, 110, 60);
 //          Excel.WorkSheets['Menu'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 15, 27, 240, 125);//370, 4, 110, 60);
          Excel.Application.DisplayAlerts := False;

          Excel.Workbooks[1].SaveAs(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
          saux := 2;
          Excel.Quit;
          re_Processa.Lines.Append('>>> GERAÇÃO DA PLANILHA FINALIZADA');
          ///// Excel.Unassigned;
     End
     Else Begin
        If Not cbImpDoc.Checked Then Begin
           MessageDlg('Planilha Vazia!', mtInformation,[mbOk], 0);
           Exit;
        End;
     End;
  Finally
     Excel.Quit;
     Excel := Unassigned;
     Excel := Null;
     Screen.Cursor := crDefault;
  End;
      
     { DOCUMENTOS DIGITALIZADOS }
     If cbImpDoc.Checked Then Begin
        //If Not qrExcelProc.Active Then qrExcelProc.Open Else qrExcelProc.First;
        If Not qrExcelProc.Active Then begin
               qrExcelProc.sql.clear;
               qrExcelProc.sql.add('SELECT D.Numero_Doc, D.Processo, D.Arquivo, STD.Descricao, D.Sub_Tipo_Doc, D.Tipo_Doc, D.Codigo, cast(D.Pagina as integer) AS Pagina ');
               qrExcelProc.sql.add('FROM Documentos AS D LEFT JOIN Sub_Tipo_Documentos AS STD ON (D.Sub_Tipo_Doc = STD.codigo) AND (D.Tipo_Doc = STD.Tipo_doc) ');
               qrExcelProc.sql.add('WHERE D.Empresa = "1" AND D.Filial = "RJO" AND D.Processo = '+ME_nossaref.Text+' and d.pagina <> "dar" and d.pagina <> "rec" ');
               qrExcelProc.sql.add('ORDER BY D.Codigo, cast(D.Pagina as integer)');
               qrExcelProc.Open;
             end
        Else begin
          qrExcelProc.First;
        end;

        If qrExcelProc.RecordCount > 0 Then Begin
           v_menuAux := 9;
           Excel := CreateOleObject('Excel.Application');
           Excel.Application.DisplayAlerts := False;
           Excel.Visible := false;

           v_procNumero := qrExcelProcNumero_Doc.AsString;
           v_procDesc := qrExcelProcDescricao.AsString;
           v_procCodigo := qrExcelProcCodigo.AsString;
           v_pag := 1;

           Excel.WorkBooks.Add(1);

           Excel.ActiveWindow.DisplayGridLines := False;
           //Excel.WorkSheets[1].PageSetup.PaperSize := '9';
           Excel.ActiveSheet.PageSetup.LeftMargin := '28';
           Excel.ActiveSheet.PageSetup.RightMargin := '28';
           Excel.WorkSheets[1].Name := 'MENU';
           ///// Excel.Worksheet_Activate.Edit;
           Excel.Cells[1,1].Font.Size := 12;
           Excel.Cells[1,1] := v_empresanome;
           Excel.Cells[1,1].Font.Bold := True;
           Excel.Cells[2,1] := 'EXTRATO DE PROCESSOS - V 1.0' + ' ' + datetostr(date()) + ' às ' + Copy(timetostr(time),1,5);
           Excel.Cells[2,1].Font.Bold := True;
           Excel.Cells[5,1] := 'RELAÇÃO DE DOCUMENTOS DO PROCESSO: ' + vPro ;
           Excel.Cells[5,1].Font.Bold := True;

           Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].LineStyle := 1;
           Excel.Range['A' + IntToStr(6), 'J' + IntToStr(6)].Borders.Item[9].Weight := 3;
           Excel.ActiveWindow.DisplayGridLines := False;
           Excel.WorkSheets.Add;

           planilha := v_procNumero + ' - ' + v_procDesc;

                 planilha := stringreplace(Copy(planilha,1,25),'.','_', [rfReplaceAll]);
                 planilha := stringreplace(Copy(planilha,1,25),':','_', [rfReplaceAll]);
                 planilha := stringreplace(Copy(planilha,1,25),'\','_', [rfReplaceAll]);
                 planilha := stringreplace(Copy(planilha,1,25),'?','_', [rfReplaceAll]);

           planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);
           

           While Not qrExcelProc.Eof Do Begin
              If StrToInt(v_nivel) > 8 Then Begin
                 If qrExcelProcTipo_Doc.AsString = 'PROC' Then
                    If qrExcelProcSub_Tipo_Doc.AsString = '9' Then Begin
                       qrExcelProc.Next;
                       Continue;
                    End;
              End;

              If qrExcelProcCodigo.AsString <> v_procCodigo Then Begin
                 v_pag := 1;
                 v_procCodigo := qrExcelProcCodigo.AsString;
                 v_procNumero := qrExcelProcNumero_Doc.AsString;
                 v_procDesc := qrExcelProcDescricao.AsString;
                 AdicionaBotao();
                 FormaMenuPla();

                 Excel.WorkSheets.Add;
                 Excel.ActiveWindow.DisplayGridLines := False;

                 planilha := v_procNumero + ' - ' + v_procDesc;
                 planilha := stringreplace(Copy(planilha,1,25),'.','_', [rfReplaceAll]);
                 planilha := stringreplace(Copy(planilha,1,25),':','_', [rfReplaceAll]);
                 planilha := stringreplace(Copy(planilha,1,25),'\','_', [rfReplaceAll]);
                 planilha := stringreplace(Copy(planilha,1,25),'?','_', [rfReplaceAll]);
                 planilha_0 := IntToStr(v_menuAux-8)+' - '+stringreplace(Copy(planilha,1,25),'/','_', [rfReplaceAll]);

              End
              else begin
              
              end;


              v_dirDocs := FormatFloat('0000', strToFloat(Copy(qrExcelProcArquivo.AsString,4,4))+1)+'0000'+'\';
              If Copy(qrExcelProcArquivo.AsString,8,4) = '0000' Then
                 v_dirDocs := Copy(qrExcelProcArquivo.AsString,4,4)+'0000';
              Excel.WorkSheets[1].Name := planilha_0;
              if v_pag=1 then begin
                 v_pag:=2;
                 Excel.Cells[1,10] := '>> MENU <<';
                 Excel.WorkSheets[planilha_0].Hyperlinks.Add (Anchor:= Excel.WorkSheets[planilha_0].Range['J1'], Address:= '', SubAddress:= '''' + 'MENU' + '''!a1');
              end;
              Excel.Application.WorkSheets[1].Shapes.AddPicture (v_path_server + 'Docs\' + v_dirDocs + qrExcelProcArquivo.AsString +'.jpg', True, True, Excel.Cells[v_pag, 1].Left, Excel.Cells[v_pag, 1].Top, 1, 1);
              Excel.ActiveSheet.PageSetup.LeftMargin := '10';
              Excel.ActiveSheet.PageSetup.RightMargin := '10';
              v_pag := v_pag + 56;
              Excel.Application.WorkSheets[1].Shapes.Item((v_pag-1)/56).ScaleHeight (1, True);
              Excel.Application.WorkSheets[1].Shapes.Item((v_pag-1)/56).ScaleWidth (1, True);
              qrExcelProc.Next;
           End;
           
           v_pag := 1;

           AdicionaBotao();
           FormaMenuPla();
           Excel.WorkSheets['Menu'].Select;

           Excel.Range['A' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Borders.Item[9].LineStyle := 1;
           Excel.Range['A' + IntToStr(v_menuAux), 'J' + IntToStr(v_menuAux)].Borders.Item[9].Weight := 3;

           If FileExists(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls') Then Begin
              Excel.Cells[7, 8] := 'EXTRATO DO PROCESSO';
              Excel.WorkSheets['Menu'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Menu'].Range['H7'], Address := 'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '.xls');
              Excel.Range['H7', 'J7'].Merge;
           End;

           Excel.Application.DisplayAlerts := False;
           Excel.WorkSheets['Menu'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 370, 4, 110, 60);

           Excel.Workbooks[1].SaveAs(dir_cor + '\' +'extrato_'+ stringreplace(Copy(vPro,1,8),'/','_', [rfReplaceAll]) + '_docs.xls');
           Excel.Quit;

           ///// Excel.Unassigned;
        End
        Else Begin
           Screen.Cursor := crDefault;
           MessageDlg('Este processo não possui documentos digitalizados! ', mtInformation,[mbOk], 0);
        End;
     End;

     ///// Excel.Quit;
     ///// Excel := nil;
     ///// freeandnil(excel);
     Screen.Cursor := crDefault;
     MessageDlg('Planilha(s) Gerada(s) no Diretório ' + dir_cor + '!', mtInformation, [mbOk], 0);
end;

procedure Tf_extratopro.cbTodosClick(Sender: TObject);
var bTodos: Boolean;
begin
     bTodos := cbTodos.Checked;

     cb_ref.Checked := bTodos;
     cb_tra.Checked := bTodos;
     cb_car.Checked := bTodos;
     cb_reg.Checked := bTodos;
     cb_emb.Checked := bTodos;
     cb_ite.Checked := bTodos;
     cb_fat.Checked := bTodos;
     cb_tax.Checked := bTodos;
     cb_fol.Checked := bTodos;
     cb_imp.Checked := bTodos;
     cbRelCont.Checked := bTodos;
     cbInfComp.Checked := bTodos;
     cbImpDoc.Checked := bTodos;

     cb_ref.Enabled := Not bTodos;
     cb_tra.Enabled := Not bTodos;
     cb_car.Enabled := Not bTodos;
     cb_reg.Enabled := Not bTodos;
     cb_emb.Enabled := Not bTodos;
     cb_ite.Enabled := Not bTodos;
     cb_fat.Enabled := Not bTodos;
     cb_tax.Enabled := Not bTodos;
     cb_fol.Enabled := Not bTodos;
     cb_imp.Enabled := Not bTodos;
     cbRelCont.Enabled := Not bTodos;
     cbInfComp.Enabled := Not bTodos;
     cbImpDoc.Enabled := Not bTodos;

     If StrToInt(v_nivel) <= 8 Then Begin
        cb_cut.Checked := bTodos;
        cb_cuu.Checked := bTodos;
        cb_cuus.Checked := bTodos;
        cbDF.Checked := bTodos;
        cb_cut.Enabled := Not bTodos;
        cb_cuus.Enabled := Not bTodos;
        cb_cuu.Enabled := Not bTodos;
        cbDF.Enabled := Not bTodos;
     End;

     If cb_cuu.Checked OR cb_cuus.Checked Then Begin
        p_custosunit.Visible := True;
        dbgrid1.SetFocus;
     End
     Else
        p_custosunit.Visible := False;
end;

procedure Tf_extratopro.cb_cutClick(Sender: TObject);
begin
     If StrToInt(v_nivel) > 8 Then Begin
        MessageDlg('Acesso não Permitido!', mtInformation, [mbOk], 0);
        cb_cut.Checked := False;
     End;
end;

procedure Tf_extratopro.cb_cuuClick(Sender: TObject);
begin
     If StrToInt(v_nivel) > 8 Then Begin
        MessageDlg('Acesso não Permitido!', mtInformation, [mbOk], 0);
        cb_cuu.Checked := False;
     End;
     If cb_cuu.Checked OR cb_cuus.Checked Then Begin
        p_custosunit.Visible := True;
        dbgrid1.SetFocus;
     End
     Else
        p_custosunit.Visible := False;
end;

procedure Tf_extratopro.DBGrid1DblClick(Sender: TObject);
begin
     If q_cus_u.Filter = '' Then
        q_cus_u.Filter := q_cus_u.Filter +' numerario <> '''+ q_cus_unumerario.AsString +''' '
     Else
        q_cus_u.Filter := q_cus_u.Filter +' AND numerario <> '''+ q_cus_unumerario.AsString +''' ';
     q_cus_u.Filtered := True;
end;

procedure Tf_extratopro.BitBtn3Click(Sender: TObject);
begin
     q_cus_u.Filter := '';
     q_cus_u.Filtered := False;
end;

end.
