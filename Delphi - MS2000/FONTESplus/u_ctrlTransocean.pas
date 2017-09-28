unit u_ctrlTransocean;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, DBCtrls, Buttons, Db, DBTables, ExtCtrls, Mask,
  ComObj,jpeg;

type
  Tf_ctrlTransocean = class(TForm)
    Label16: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    cbVerTodos: TCheckBox;
    Label25: TLabel;
    edtFiltro: TEdit;
    q_status: TQuery;
    q_statusCodigo: TStringField;
    q_statusDescricao: TStringField;
    ds_status: TDataSource;
    q_pla: TQuery;
    ds_pla: TDataSource;
    q_plaSequencial: TAutoIncField;
    q_plaPlanilha: TStringField;
    q_plaData: TDateTimeField;
    q_plaResponsavel: TStringField;
    q_plaStatus: TStringField;
    q_plaData_Recebimento: TDateTimeField;
    q_plaDescricao: TStringField;
    q_itens: TQuery;
    ds_itens: TDataSource;
    q_itensSequencial: TAutoIncField;
    q_itensSequencial_Planilha: TIntegerField;
    q_itensREF_MS: TStringField;
    q_itensPLATAF: TStringField;
    q_itensINVOICE: TStringField;
    q_itensCIF: TFloatField;
    q_itensAWB_BL: TStringField;
    q_itensNAVIO: TStringField;
    q_itensRCR: TStringField;
    q_itensLIBERACAO_AWB_BL: TFloatField;
    q_itensHONORARIOS: TFloatField;
    q_itensII: TFloatField;
    q_itensIPI: TFloatField;
    q_itensPIS_PASEP: TFloatField;
    q_itensCOFINS: TFloatField;
    q_itensTX_SISCOMEX: TFloatField;
    q_itensICMS: TFloatField;
    q_itensARMAZ_AIRJ: TFloatField;
    q_itensARMAZ_CFRIO: TFloatField;
    q_itensMARINHA_MERCANTE: TFloatField;
    q_itensTOTAL: TFloatField;
    q_itensRESP_PROCESSO: TStringField;
    q_itensNFiscal: TStringField;
    q_itensData_emissao: TDateTimeField;
    t_itens: TTable;
    ds_Titens: TDataSource;
    t_pla: TTable;
    ds_tpla: TDataSource;
    Panel2: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    dbe_pla: TDBEdit;
    Label2: TLabel;
    dbe_data: TDBEdit;
    l_dtrec: TLabel;
    dbe_dtrec: TDBEdit;
    Panel1: TPanel;
    b_incluir: TBitBtn;
    b_alterar: TBitBtn;
    b_gravar: TBitBtn;
    b_excluir: TBitBtn;
    b_excel: TBitBtn;
    Label4: TLabel;
    b_incluiritem: TBitBtn;
    b_excluiritem: TBitBtn;
    DBG_itens: TDBGrid;
    p_itens: TPanel;
    b_final: TBitBtn;
    q_pro: TQuery;
    q_fat: TQuery;
    q_up_itens_02: TQuery;
    q_up_itens_01: TQuery;
    q_up_pla: TQuery;
    Image1: TImage;
    qrParametros: TQuery;
    qrParametrosEmpresa: TStringField;
    qrParametrosFilial: TStringField;
    qrParametrosEndereco_ftp: TStringField;
    qrParametrosUsuario_ftp: TStringField;
    qrParametrosSenha_ftp: TStringField;
    qrParametrosHost: TStringField;
    qrParametrosKeyCrypt: TStringField;
    qrParametrosHost_SMTP: TStringField;
    qrParametrosPorta_SMTP: TSmallintField;
    qrParametrosUsuario_SMTP: TStringField;
    qrParametrosSenha_SMTP: TStringField;
    q_fatProcesso: TStringField;
    q_fatFatura: TStringField;
    t_plaSequencial: TAutoIncField;
    t_plaPlanilha: TStringField;
    t_plaData: TDateTimeField;
    t_plaResponsavel: TStringField;
    t_plaStatus: TStringField;
    t_plaData_Recebimento: TDateTimeField;
    q_proRazao_Social: TStringField;
    q_proProcesso: TStringField;
    q_prodecl: TStringField;
    q_proVia: TStringField;
    q_proEmbarcacao: TStringField;
    q_proValor_CIF: TFloatField;
    q_proNumerodoccarga: TStringField;
    q_proNumeromaster: TStringField;
    q_proResponsavel_Empresa: TStringField;
    q_proplataf: TStringField;
    q_proitem: TQuery;
    q_proitemREF_MS: TStringField;
    q_proitemPlanilha: TStringField;
    t_itensSequencial: TAutoIncField;
    t_itensSequencial_Planilha: TIntegerField;
    t_itensREF_MS: TStringField;
    t_itensPLATAF: TStringField;
    t_itensINVOICE: TStringField;
    t_itensCIF: TFloatField;
    t_itensAWB_BL: TStringField;
    t_itensNAVIO: TStringField;
    t_itensRCR: TStringField;
    t_itensLIBERACAO_AWB_BL: TFloatField;
    t_itensHONORARIOS: TFloatField;
    t_itensII: TFloatField;
    t_itensIPI: TFloatField;
    t_itensPIS_PASEP: TFloatField;
    t_itensCOFINS: TFloatField;
    t_itensTX_SISCOMEX: TFloatField;
    t_itensICMS: TFloatField;
    t_itensARMAZ_AIRJ: TFloatField;
    t_itensARMAZ_CFRIO: TFloatField;
    t_itensMARINHA_MERCANTE: TFloatField;
    t_itensTOTAL: TFloatField;
    t_itensRESP_PROCESSO: TStringField;
    t_itensNFiscal: TStringField;
    t_itensData_emissao: TDateTimeField;
    t_itensObs: TStringField;
    t_itensData_Recebimento: TDateTimeField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure q_statusAfterScroll(DataSet: TDataSet);
    procedure cbVerTodosClick(Sender: TObject);
    procedure edtFiltroChange(Sender: TObject);
    procedure q_plaAfterScroll(DataSet: TDataSet);
    procedure q_itensAfterScroll(DataSet: TDataSet);
    procedure t_plaAfterScroll(DataSet: TDataSet);
    procedure b_incluirClick(Sender: TObject);
    procedure b_gravarClick(Sender: TObject);
    procedure b_alterarClick(Sender: TObject);
    procedure b_finalClick(Sender: TObject);
    procedure q_plaBeforeOpen(DataSet: TDataSet);
    procedure b_excluirClick(Sender: TObject);
    procedure t_itensBeforePost(DataSet: TDataSet);
    procedure b_incluiritemClick(Sender: TObject);
    procedure b_excluiritemClick(Sender: TObject);
    procedure DBG_itensColExit(Sender: TObject);
    procedure b_excelClick(Sender: TObject);
    Procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);
    procedure t_itensAfterPost(DataSet: TDataSet);
    procedure DBG_itensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure t_plaAfterPost(DataSet: TDataSet);
    procedure t_plaBeforePost(DataSet: TDataSet);
    procedure t_plaBeforeDelete(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    procedure EnCrypt(var StrCrypt: String);
    procedure DeCrypt(var StrCrypt: String);
  public
    { Public declarations }
  end;

  TLetraAcent = array[1..50] of String;
  TLetraConv = array[1..50] of String;

Const
  Aleft = -4131;
  Aright = -4152;
  ACenter = -4108;
  //                    1          2        3         4         5         6         7         8         9         0         1          2        3         4         5         6         7         8         9         0         1         2         3         4         6
  //           123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/123456789/
  KeyCryptX = 'Þ‡†¥Šµ¿ý±¥Šýþ¬¥šµ††Š¤¯š¯±ý¬Ÿÿ„¬„†¥¨Ý†ýþßµÞŸßýø¨ÿ¶šß¯¿øø¨‡¶ÝŸ¶¯‡ø¯†Ð†¬ý¿Ÿ‡¶†µŸ†ŸÝþÿøþÐÐŠµ¨ß±±¨þÝÿß‡Ð†¥ÿøÞ¬†š†¤‡¯š¤ß†¿ÐŸÞ¬±¨Ý¬¨ßšŸ±µÝŸýøŸ¯ÿþÿýÐšÞ¤¯±¶ŠÐ†±¿¬¨†¨Ýš¯†¿±Þšþ¯Ð‡±±†„Ý±¶µßÐ†Š¶±¥ÐŠ¯ø¿¤¤þýø¥¤†š¬ÝÝß±„„þ„¿ÐŸšµ¶Ð¨±þ†µ¥„±‡ßþÐÝŠÐßÿÞ¨¬ýþý¯ø¶ý¨¬Þø¿ŸýšÝø‡¬Ý‡±';
  //  KeyCryptX = 'A1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5F6J7H8I9J0KLMNOPQRSTUVXYZA1B2C3D4E5';
var
  f_ctrlTransocean: Tf_ctrlTransocean;
  excel : Variant;
  planilha_0,planilha,arqdir,arqnome,linha,expor:string;
  qreg,
  NotExecute :integer;


implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_ctrlTransocean.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  f_ctrlTransocean := Nil;
  F_MSCOMEX.ControledePlanilhasTransocean1.Enabled := true;
end;

procedure Tf_ctrlTransocean.FormCreate(Sender: TObject);
begin
  q_up_itens_01.ExecSQL;

  //PREENCHE DATA RECEBIMENTO PARA PLANILHAS
  q_up_pla.SQL.Clear;
  q_up_pla.SQL.Add('UPDATE Planilha_Transocean SET Data_Recebimento = PTI.Data_Recebimento ');
  q_up_pla.SQL.Add('  FROM Planilha_Transocean PT INNER JOIN Planilha_Transocean_Itens PTI   ');
  q_up_pla.SQL.Add('        ON PT.Sequencial = PTI.Sequencial_Planilha                       ');
  q_up_pla.SQL.Add(' WHERE PTI.DATA_RECEBIMENTO IS NOT NULL AND PT.DATA_RECEBIMENTO IS NULL  ');
  q_up_pla.ExecSQL;  

  //INCLUINDO SN PARA PROCESSOS SEM NF
  q_up_pla.SQL.Clear;
  q_up_pla.SQL.Add('UPDATE Planilha_Transocean_Itens SET Planilha_Transocean_Itens.NFiscal = ''SN'' FROM Planilha_Transocean_Itens INNER JOIN Processos ON Planilha_Transocean_Itens.REF_MS = Processos.Codigo  WHERE (((Processos.sem_nfs)=1)) ');
  //UPDATE Planilha_Transocean_Itens INNER JOIN Processos ON Planilha_Transocean_Itens.REF_MS = Processos.Código SET Planilha_Transocean_Itens.NFiscal = "SN" WHERE (((Processos.sem_nfs)=1)) ');
  q_up_pla.ExecSQL;

  q_up_itens_02.ExecSQL;

  //excluindo itens de planilhas não existentes
  q_up_pla.SQL.Clear;
  q_up_pla.SQL.Add(' DELETE Planilha_Transocean_Itens ');
  q_up_pla.SQL.Add(' FROM Planilha_Transocean_Itens LEFT JOIN Planilha_Transocean ON Planilha_Transocean_Itens.Sequencial_Planilha = Planilha_Transocean.Sequencial ');
  q_up_pla.SQL.Add(' WHERE (((Planilha_Transocean.Sequencial) Is Null)) ');
  q_up_pla.ExecSQL;
  // showmessage('2');
  //finalizadas no Financeiro todas as nf emitidas
  q_up_pla.SQL.Clear;
  q_up_pla.SQL.Add('UPDATE Planilha_Transocean SET Planilha_Transocean.Status = ''3'' WHERE (((Planilha_Transocean.Status)>''0'')) ');
  q_up_pla.ExecSQL;
  // showmessage('3');
  //em aberto no Financeiro existem nfs a serem emitidas
  q_up_pla.SQL.Clear;
  q_up_pla.SQL.Add(' UPDATE Planilha_Transocean SET Planilha_Transocean.Status = ''2'' ');
  q_up_pla.SQL.Add(' FROM Planilha_Transocean INNER JOIN Planilha_Transocean_Itens ON Planilha_Transocean.Sequencial = Planilha_Transocean_Itens.Sequencial_Planilha WHERE ((Planilha_Transocean.Status>''0'') ');
  q_up_pla.SQL.Add(' AND ((Planilha_Transocean_Itens.NFiscal Is Null) Or (Planilha_Transocean_Itens.NFiscal='''')) ) ');
  q_up_pla.ExecSQL;
  //showmessage('4');
  //em aberto com o cliente se finalizado no Financeiro
  q_up_pla.SQL.Clear;
  q_up_pla.SQL.Add(' UPDATE Planilha_Transocean SET Planilha_Transocean.Status = ''4'' ');
  q_up_pla.SQL.Add(' WHERE (((Planilha_Transocean.Status)>''0'') AND ((Planilha_Transocean.Data_Recebimento) Is Null )) ');
  //q_up_pla.SQL.Add(' WHERE ((Planilha_Transocean.Data_Recebimento) Is Null ) ');
  q_up_pla.ExecSQL;
  //showmessage('5');
  //em aberto com o cliente se finalizado no Financeiro
  q_up_pla.SQL.Clear;
  q_up_pla.SQL.Add(' UPDATE Planilha_Transocean SET Planilha_Transocean.Status = ''5'' ');
  q_up_pla.SQL.Add(' WHERE ( ((Planilha_Transocean.Status)=''3'') AND ( (Planilha_Transocean.Data_Recebimento) Is Not Null ) ) ');
  // q_up_pla.SQL.Add(' WHERE ( ((Planilha_Transocean.Data_Recebimento) Is Not Null ) AND ((Planilha_Transocean_Itens.NFiscal) Is Not Null ) )  ');
  q_up_pla.ExecSQL;
  // showmessage('6');
  q_status.open;

  q_pro.close;
  q_pro.params[0].asstring := '%TRANSOCEAN%';

  if (v_versao_s = 'MS2000PLUS-treinamento')
   then begin
     q_pro.params[0].asstring := '%';
   end;

  q_pro.open;
  q_fat.open;
  //showmessage('7');
end;

procedure Tf_ctrlTransocean.q_statusAfterScroll(DataSet: TDataSet);
begin
  q_pla.close;
  q_pla.Params[0].asstring := '%'+edtfiltro.text+'%';

  if cbvertodos.Checked
   then q_pla.Params[1].asstring := '%'
   else q_pla.Params[1].asstring := q_statuscodigo.asstring;
   
  q_pla.open;
end;

procedure Tf_ctrlTransocean.cbVerTodosClick(Sender: TObject);
begin
  q_statusAfterScroll(q_status);
end;

procedure Tf_ctrlTransocean.edtFiltroChange(Sender: TObject);
begin
  q_statusAfterScroll(q_status);
end;

procedure Tf_ctrlTransocean.q_plaAfterScroll(DataSet: TDataSet);
begin
  t_pla.findkey([q_plasequencial.asinteger]);

  q_itens.close;
  q_itens.params[0].asinteger := q_plasequencial.asinteger;
  q_itens.open;

  b_alterar.Enabled := false;
  b_gravar.Enabled  := false;
  b_excluir.Enabled := false;
  b_excel.Enabled   := true;
  b_final.enabled   := false;

  b_incluiritem.Enabled := false;
  b_excluiritem.Enabled := false;
  dbg_itens.ReadOnly := true;

  if (v_usuario = q_plaresponsavel.asstring)
   then begin
     b_alterar.Enabled := true;
     b_excluir.Enabled := true;
     b_excel.Enabled   := true;

     b_incluiritem.Enabled := true;
     b_excluiritem.Enabled := true;
     dbg_itens.ReadOnly    := false;

     if q_plastatus.asstring = '0'
      then b_final.enabled := true;
   end;

  if q_plastatus.asstring > '0'
   then begin
     b_alterar.Enabled     := false;
     b_gravar.Enabled      := false;
     b_excluir.Enabled     := false;
     b_incluiritem.Enabled := false;
     b_excluiritem.Enabled := false;
     dbg_itens.ReadOnly    := true;
   end;

  if (v_usuario = 'MM') or (v_usuario = 'DUDA') or (v_usuario = 'FABIANO')
   then begin
     b_alterar.Enabled := true;
     b_gravar.Enabled  := true;
     b_excluir.Enabled := true;
     p_itens.Enabled   := true;
   end;
end;

procedure Tf_ctrlTransocean.q_itensAfterScroll(DataSet: TDataSet);
begin
  //t_itens.findkey([q_itenssequencial.asinteger]);
  if ( NotExecute = 0 )
   then begin
     t_itens.close;
     t_itens.open;

     while not t_itens.eof do
      begin
        if q_itenssequencial.asinteger = t_itenssequencial.asinteger
         then exit;
         
        t_itens.Next;
      end;
  end;
end;

procedure Tf_ctrlTransocean.t_plaAfterScroll(DataSet: TDataSet);
begin
  if t_plastatus.asstring >= '1'
   then begin
     b_excel.Visible := true;

     if (v_usuario='MM') or (v_usuario='DUDA') or (v_usuario='FABIANO')
      then begin
        l_dtrec.Visible := true;
        dbe_dtrec.Visible := true;
      end
      else begin
        l_dtrec.Visible := false;
        dbe_dtrec.Visible := false;
      end;
   end
   else begin
     b_excel.Visible := false;
   end;
end;

procedure Tf_ctrlTransocean.b_incluirClick(Sender: TObject);
var
  qreg:integer;
begin
  b_incluir.Enabled  := false;
  edtfiltro.Text := '';


  t_pla.Append;
  t_plaplanilha.asstring := ' nova planilha sem nome';
  t_pladata.asstring := datetostr(date());
  t_plaresponsavel.asstring := v_usuario;
  t_plastatus.asstring := '0';
  t_pla.post;
  t_itens.append;
  t_itenssequencial_planilha.asinteger :=t_plasequencial.asinteger;

  t_itensCIF.ASFLOAT              := 0;
  t_itensLIBERACAO_AWB_BL.ASFLOAT := 0;
  t_itensHONORARIOS.ASFLOAT       := 0;
  t_itensII.ASFLOAT               := 0;
  t_itensIPI.ASFLOAT              := 0;
  t_itensPIS_PASEP.ASFLOAT        := 0;
  t_itensCOFINS.ASFLOAT           := 0;
  t_itensTX_SISCOMEX.ASFLOAT      := 0;
  t_itensICMS.ASFLOAT             := 0;
  t_itensARMAZ_AIRJ.ASFLOAT       := 0;
  t_itensARMAZ_CFRIO.ASFLOAT      := 0;
  t_itensMARINHA_MERCANTE.ASFLOAT := 0;
  t_itensTOTAL.ASFLOAT            := 0;
  t_itens.post;
  qreg:=t_plasequencial.asinteger;
  q_pla.close;
  q_pla.open;
  q_pla.Locate('sequencial',qreg,[]);

  dbe_pla.Enabled   := true;
  dbe_data.Enabled  := true;
  dbe_dtrec.Enabled := true;  
  dbe_pla.setfocus();

  b_incluir.enabled  := false;
  b_alterar.enabled  := false;
  b_excluir.enabled  := false;
  b_excel.enabled    := false;
  b_gravar.Enabled   := true;

  dbgrid1.Enabled := false;
end;

procedure Tf_ctrlTransocean.b_gravarClick(Sender: TObject);
var
  qreg:integer;
begin
  edtfiltro.Text := '';

  b_gravar.Enabled  := false;

  t_pla.edit;
  t_pla.post;
  qreg:=t_plasequencial.asinteger;
  q_pla.close;
  q_pla.open;
  q_pla.Locate('sequencial',qreg,[]);

  dbe_pla.Enabled   := false;
  dbe_data.Enabled  := false;
  dbe_dtrec.Enabled := false;

  b_incluir.enabled  := true;

  dbgrid1.Enabled := true;
end;

procedure Tf_ctrlTransocean.b_alterarClick(Sender: TObject);
var
  qreg:integer;
begin
  edtfiltro.Text := '';
  b_incluir.enabled  := false;
  b_alterar.enabled  := false;
  b_excluir.enabled  := false;
  b_excel.enabled    := false;

  dbe_pla.Enabled := true;
  dbe_data.Enabled := true;
  dbe_dtrec.Enabled := true;
  dbe_pla.setfocus();

  b_gravar.Enabled := true;
  dbgrid1.Enabled  := false;
end;

procedure Tf_ctrlTransocean.b_finalClick(Sender: TObject);
var
  qreg : integer;
  FollowOK : Boolean;
begin
  if ( messagedlg(v_usuario+', confirma Finalização desta planilha?',mtconfirmation,[mbno,mbyes],0)= mryes )
   then begin
     t_pla.edit;
     t_plastatus.asstring := '1';
     t_pla.post;
     logusu('A','Planilhas Transocean - finalizou no Operacional: sequencial('+t_plasequencial.asstring+') nome:'+t_plaplanilha.asstring);
     qreg := t_plasequencial.asinteger;

     q_pla.close;
     q_pla.Params[0].asstring := '%';
     q_pla.Params[1].asstring := '%';
     q_pla.open;
     q_pla.Locate('sequencial',qreg,[]);

     //Follow Automático eduardo.souza 11/07/2011
     q_itens.First;
     FollowOK := True;
     NotExecute := 1;

     while (not q_itens.Eof and FollowOK) do
      begin
        FollowOK := FollowOK And F_MSCOMEX.IncluiFollow( q_itensREF_MS.Text, '1021','1143', q_plaPlanilha.AsString, v_usuario, Date, Now );
        FollowOK := FollowOK And F_MSCOMEX.IncluiFollow( q_itensREF_MS.Text, '96','70', '', v_usuario, Date, Now );

        q_itens.Next;
      end;

     if ( Not FollowOK )
      then Application.MessageBox( 'Não foi possível incluir o Follow Automático','Aviso', MB_OK+MB_ICONWARNING );

     NotExecute := 0;
     // fim 11/07/2011
   end;
end;

procedure Tf_ctrlTransocean.q_plaBeforeOpen(DataSet: TDataSet);
begin
  t_pla.open;
end;

procedure Tf_ctrlTransocean.b_excluirClick(Sender: TObject);
begin
  if messagedlg(v_usuario+', confirma exclusão desta planilha?',mtconfirmation,[mbno,mbyes],0)= mryes
   then begin
     t_pla.delete;
     q_pla.close;
     q_pla.open;
   end;
end;

procedure Tf_ctrlTransocean.t_itensBeforePost(DataSet: TDataSet);
begin
  t_itens.edit;
  //t_itenssequencial_planilha.asinteger :=q_itenssequencial_planilha.asinteger;
  t_itenstotal.asfloat := (t_itensLIBERACAO_AWB_BL.asfloat+
  t_itensHONORARIOS.asfloat+
  t_itensII.asfloat+
  t_itensIPI.asfloat+
  t_itensPIS_PASEP.asfloat+
  t_itensCOFINS.asfloat+
  t_itensTX_SISCOMEX.asfloat+
  t_itensICMS.asfloat+
  t_itensARMAZ_AIRJ.asfloat+
  t_itensARMAZ_CFRIO.asfloat+
  t_itensMARINHA_MERCANTE.asfloat);
end;

procedure Tf_ctrlTransocean.b_incluiritemClick(Sender: TObject);
var
  qreg:integer;
begin
  t_itens.append;
  t_itenssequencial_planilha.asinteger := t_plasequencial.asinteger;

  t_itensCIF.ASFLOAT              := 0;
  t_itensLIBERACAO_AWB_BL.ASFLOAT := 0;
  t_itensHONORARIOS.ASFLOAT       := 0;
  t_itensII.ASFLOAT               := 0;
  t_itensIPI.ASFLOAT              := 0;
  t_itensPIS_PASEP.ASFLOAT        := 0;
  t_itensCOFINS.ASFLOAT           := 0;
  t_itensTX_SISCOMEX.ASFLOAT      := 0;
  t_itensICMS.ASFLOAT             := 0;
  t_itensARMAZ_AIRJ.ASFLOAT       := 0;
  t_itensARMAZ_CFRIO.ASFLOAT      := 0;
  t_itensMARINHA_MERCANTE.ASFLOAT := 0;
  t_itensTOTAL.ASFLOAT            := 0;
  t_itens.post;
end;

procedure Tf_ctrlTransocean.b_excluiritemClick(Sender: TObject);
begin
  if messagedlg(v_usuario+', confirma exclusão deste item?',mtconfirmation,[mbno,mbyes],0)= mryes
   then begin
     t_itens.delete;
     q_itens.close;
     q_itens.open;
   end;
end;

procedure Tf_ctrlTransocean.DBG_itensColExit(Sender: TObject);
var
  qfaturas, qdocs: string;
begin
  if not DBG_ITENS.ReadOnly
   then begin
     if (DBG_ITENS.SelectedIndex = 0)
      then begin
        if (Length(F_MSCOMEX.LRTrim(dbg_itens.Fields[0].AsString)) = 8)
         then begin
           q_proitem.close;
           q_proitem.Params[0].asstring := dbg_itens.Fields[0].AsString;
           q_proitem.open;

           if q_proitem.RecordCount > 0
            then begin
              if messagedlg(v_usuario+', ATENÇÃO! processo já informado na planilha '+q_proitemplanilha.asstring+'. Deseja incluir novamente?',mtconfirmation,[mbno,mbyes],0)= mryes
               then begin
                 t_itens.edit;
                 t_itensobs.asstring := 'processo informado também na planilha: '+q_proitemplanilha.asstring;
                 t_itens.post;
               end;
            end;

           if q_pro.locate('Processo',dbg_itens.Fields[0].AsString,[])
            then begin
              if messagedlg(v_usuario+', atualiza informações deste processo?',mtconfirmation,[mbno,mbyes],0)= mryes
               then begin
                 t_itens.edit;
                 t_itensplataf.asstring := q_proplataf.asstring;

                 qfaturas := '';
                 q_fat.First;
                 q_fat.locate('Processo',dbg_itens.Fields[0].AsString,[]);

                 while (not q_fat.eof) and (q_fatprocesso.asstring=dbg_itens.Fields[0].AsString) do
                  begin
                    if qfaturas = ''
                     then qfaturas:=q_fatfatura.asstring
                     else qfaturas:=qfaturas+','+q_fatfatura.asstring;

                    q_fat.Next;
                  end;

                 t_itensINVOICE.asstring := qfaturas;
                 t_itensCIF.asfloat := q_provalor_cif.asfloat;
                 qdocs := '';

                 if q_pronumeromaster.asstring <> ''
                  then qdocs := q_pronumeromaster.asstring;

                 if q_pronumerodoccarga.asstring <> ''
                  then begin
                    if qdocs <> ''
                     then qdocs := qdocs +' '+ q_pronumerodoccarga.asstring
                     else qdocs := q_pronumerodoccarga.asstring;
                  end;

                 t_itensAWB_BL.asstring := qdocs;

                 if q_proembarcacao.asstring <> ''
                  then t_itensNAVIO.asstring  := q_proembarcacao.asstring
               end
               else begin
                 if q_provia.asstring = '4'
                  then t_itensNAVIO.asstring := 'AÉREA';

                 if q_provia.asstring = '1'
                  then t_itensNAVIO.asstring := 'MARÍTIMA';
               end;

              if q_prodecl.asstring='01' then t_itensRCR.asstring := 'CONSUMO';
              if q_prodecl.asstring='05' then t_itensRCR.asstring := 'ADMISSÃO';
              if q_prodecl.asstring='12' then t_itensRCR.asstring := 'CONS/ADM';

              t_itensRESP_PROCESSO.asstring := q_proresponsavel_empresa.asstring;
            end;
         end;
      end
      else begin
        if (dbg_itens.Fields[0].AsString <> '') and (Length(F_MSCOMEX.LRTrim(dbg_itens.Fields[0].AsString)) <> 8)
         then Showmessage(v_usuario+', Atenção! Processo não encontrado!');
      end;
   end;
end;

procedure Tf_ctrlTransocean.b_excelClick(Sender: TObject);
var
  sheet : Variant;
  v_cred_i, v_deb_i, coluna, aux,auy, aue, teste , linha2, col2: Integer;
  h_est, h_tot, dir_cor, v_form_aux, astring, astring2, vpro, qpro, osprocessos,osprocessos2,data,data_arq,nome_arq,vespacos,qlink: string;
  t_emp,t_emp2, pos_form_cred, pos_form_deb : integer;
  i,j : integer;
  FIni,FFim, FFim0 : TDateTime;
  qvalor:real;
  entra:boolean;
begin
{     qrParametros.Open;
     KeyCryptX := qrParametrosKeyCrypt.AsString;
     qrParametros.Close;}
     {$I-}
  image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
  data := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
  data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);
  //nome_arq := q_ImportCNPJ_CPF_COMPLETO.AsString;
  System.GetDir(0,dir_cor);
  dir_cor := dir_cor + '\Planilhas_Ms2000';
  MkDir(dir_cor);

  Excel := CreateOleObject('Excel.Application');
  Excel.Application.DisplayAlerts := False;
  Excel.Visible := false;
  Excel.Workbooks.add(1);

  vespacos := '                                                                                                                                          ';
  vespacos := copy(vespacos+vespacos,1,70);

  Excel.Worksheets[1].Name := 'PLANILHA';
  Excel.WorkSheets['PLANILHA'].Select;
  Excel.WorkSheets['PLANILHA'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);
  Excel.Cells[1,1] := vespacos+v_empresanome;
  Excel.Cells[1,1].Font.Size := 12;
  Excel.cells[1,1].Font.Bold := True;
  Excel.Cells[2,1] := vespacos+q_plaplanilha.asstring;
  Excel.cells[2,1].Font.Bold := True;
  Excel.Cells[3,1] := vespacos+'Empresa: TRANSOCEAN BRASIL LTDA';
  Excel.Cells[3,1].Font.Size := 12;
  Excel.cells[3,1].Font.Bold := True;
  Excel.Cells[5,1] := vespacos+'Data da Planilha: ' + q_pladata.asstring;
  Excel.ActiveWindow.DisplayGridlines := TRUE;

  linha2 := 6;

  Celtitulo(linha2, 1,'REF/MS', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2, 2,'PLATAF', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2, 3,'INVOICE', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2, 4,'VALOR CIF', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2, 5,'AWB / B/L', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2, 6,'NAVIO', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2, 7,'RCR', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2, 8,'LIBER.', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2, 9,'HONORÁRIOS', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,10,'II', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,11,'IPI', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,12,'PIS/PASEP', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,13,'COFINS', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,14,'TX SISCOMEX', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,15,'ICMS', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,16,'ARMAZ AIRJ', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,17,'ARMAZ C.FRIO / NITERÓI', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,18,'M.MERCANTE', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,19,'TOTAL', clNavy, ACenter, clWhite, 8, 10);
  Celtitulo(linha2,20,'RESP/PROC.', clNavy, ACenter, clWhite, 8, 10);

  ///Excel.Range['A'+IntToStr(linha2), 'V'+IntToStr(linha2)].WrapText := True;

  q_itens.First;
  while not q_itens.eof do
   begin
     linha2 := linha2+1;
     Excel.cells[linha2, 1] := ''''+q_itensref_ms.asstring;
     Excel.cells[linha2, 2] := ''''+q_itensplataf.asstring;
     Excel.cells[linha2, 3] := ''''+q_itensinvoice.asstring;

     qlink := 'TRANSOCEAN BRASIL LTDA|4027868100|';
     qlink := qlink+q_itensref_ms.asstring;
     qlink := qlink+'|PROC|1|';///+q_itensinvoice.asstring;
     qlink := stringreplace(qlink,',','|||', [rfReplaceAll]);
     EnCrypt(qlink);
     //SHOWMESSAGE(qlink);

     Excel.WorkSheets['PLANILHA'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['PLANILHA'].Range['C' + IntToStr(linha2)], Address := 'http://www.mslogistica.com.br/redir.asp?func=extradocs&op='+qlink, SubAddress:= '');
     Excel.cells[linha2, 4] := q_itenscif.asfloat;
     Excel.Cells[linha2, 4].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2, 5] := ''''+q_itensawb_bl.asstring;
     Excel.cells[linha2, 6] := ''''+q_itensnavio.asstring;
     Excel.cells[linha2, 7] := ''''+q_itensRCR.asstring;
     Excel.cells[linha2, 8] := q_itensliberacao_awb_bl.asfloat;
     Excel.Cells[linha2, 8].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2, 9] := q_itenshonorarios.asfloat;
     Excel.Cells[linha2, 9].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,10] := q_itensii.asfloat;
     Excel.Cells[linha2,10].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,11] := q_itensipi.asfloat;
     Excel.Cells[linha2,11].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,12] := q_itenspis_pasep.asfloat;
     Excel.Cells[linha2,12].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,13] := q_itenscofins.asfloat;
     Excel.Cells[linha2,13].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,14] := q_itenstx_siscomex.asfloat;
     Excel.Cells[linha2,14].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,15] := q_itensicms.asfloat;
     Excel.Cells[linha2,15].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,16] := q_itensarmaz_airj.asfloat;
     Excel.Cells[linha2,16].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,17] := q_itensarmaz_cfrio.asfloat;
     Excel.Cells[linha2,17].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,18] := q_itensmarinha_mercante.asfloat;
     Excel.Cells[linha2,18].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,19] := q_itenstotal.asfloat;
     Excel.Cells[linha2,19].NumberFormatLocal := '#.##0,00';
     Excel.cells[linha2,20] := ''''+q_itensresp_processo.asstring;

     q_itens.Next;
   end;

  Excel.Range['A7', 'T'+IntToStr(linha2)].Font.Color := clNavy;

  //totais
  linha2 := linha2+1;

  Excel.cells[linha2, 14] := 'TOTAL';
  Excel.cells[linha2, 14].HorizontalAlignment:= ACenter;

  //valor total
  col2 := 19;
  Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-1)+'C'+IntToStr(col2)+')';
  Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';

  Excel.Range['N'+IntToStr(linha2), 'T'+IntToStr(linha2)].interior.Color := clNavy;
  Excel.Range['N'+IntToStr(linha2), 'T'+IntToStr(linha2)].Font.Color := clWhite;
  Excel.Range['N'+IntToStr(linha2), 'T'+IntToStr(linha2)].Font.Bold := True;

  linha2 := linha2+2;
  Excel.cells[linha2, 1] := 'DADOS P/ DEPÓSITO: BANCO BRADESCO 237 - AGÊNCIA: 3002 - C/C: 89483-4';
  Excel.Cells[linha2,1].Font.Size := 8;
  Excel.cells[linha2,1].Font.Bold := True;
  linha2 := linha2+1;
  Excel.cells[linha2, 1] := 'OBS: OS VALORES SOLICITADOS SÃO PREVISÕES';
  Excel.Cells[linha2,1].Font.Size := 8;
  Excel.cells[linha2,1].Font.Bold := True;

  //Excel.WorkBooks[1].Save;

  Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(q_plaplanilha.asstring,'/','_', [rfReplaceAll]) + '.xls' );
  Application.ProcessMessages;

  Excel.Quit;
  Excel := unassigned;

  showmessage(v_usuario+', a planilha foi  gerada no diretório C:\MS2000\PLANILHAS_MS2000!');
end;

procedure Tf_ctrlTransocean.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
begin
  Excel.cells[linha, coluna]                     := CTitulo;
  Excel.cells[linha, coluna].interior.Color      := CColor;
  Excel.cells[linha, coluna].Font.Color          := FColor;
  Excel.cells[linha, coluna].Font.Size           := FSize;
  Excel.cells[linha, coluna].Font.Bold           := True;
  Excel.cells[linha, coluna].HorizontalAlignment := CAlign;
  Excel.cells[linha, coluna].Borders.Weight      := 2;
  Excel.cells[linha, coluna].Borders.LineStyle   := 1;
  //Excel.rows[linha].RowHeight := 100;
  Excel.Columns[coluna].ColumnWidth              := COLSize;
  Excel.cells[linha, coluna].VerticalAlignment   := CAlign;
end;

{ CRIPTOGRAFA DADOS }
procedure Tf_ctrlTransocean.EnCrypt(var StrCrypt: String);
var
  i, j, strCode, keyCode, cryptCode: Integer;
  strCrypted: String;
begin
  j := 0;

  for i := 1 To Length(StrCrypt) do
   begin
     Inc(j);
     If j > Length(KeyCryptX) Then j := 1;
     keyCode := Ord(KeyCryptX[j]);
     strCode := Ord(StrCrypt[i]);
     cryptCode := keyCode Xor strCode;
     //strCrypted := strCrypted + IntToHex(cryptCode, 2);
     strCrypted := strCrypted + IntToHex(Ord(StrCrypt[i]),2);
     //strCrypted := strCrypted + Chr(cryptCode);
   end;

  StrCrypt := strCrypted;
end;

{ DESCRIPTOGRAFA DADOS }
procedure Tf_ctrlTransocean.DeCrypt(var StrCrypt: String);
var
  i, j, strCode, keyCode, cryptCode: Integer;
  strCrypted : String;
begin
   j := 0;

   for i := 1 To (Length(StrCrypt) div 2) do
    begin
      Inc(j);

      if j > Length(KeyCryptX)
       then j := 1;

      keyCode := Ord(KeyCryptX[j]);
      strCode := StrToInt('$'+ Copy(StrCrypt, i*2-1, 2));
      cryptCode := keyCode Xor strCode;
      strCrypted := strCrypted + Chr(cryptCode);
    end;

  StrCrypt := strCrypted;
end;

procedure Tf_ctrlTransocean.t_itensAfterPost(DataSet: TDataSet);
begin
  qreg := t_itenssequencial.asinteger;
  q_itens.close;
  q_itens.open;
  q_itens.locate('sequencial',qreg,[]);
  f_mscomex.MSPGP(t_itensref_ms.asstring);
end;

procedure Tf_ctrlTransocean.DBG_itensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  iF (Key = 13) or (Key = 9) or (Key = vk_up) or (Key = vk_down)
   then DBG_itensColExit(f_ctrlTransocean);
end;

procedure Tf_ctrlTransocean.t_plaAfterPost(DataSet: TDataSet);
begin
  logusu('A','Planilhas Transocean - alterou planilha: sequencial('+t_plasequencial.asstring+') nome:'+t_plaplanilha.asstring);
end;

procedure Tf_ctrlTransocean.t_plaBeforePost(DataSet: TDataSet);
begin
  logusu('A','Planilhas Transocean - alterou planilha: sequencial('+t_plasequencial.asstring+') nome:'+t_plaplanilha.asstring);
end;

procedure Tf_ctrlTransocean.t_plaBeforeDelete(DataSet: TDataSet);
begin
  logusu('A','Planilhas Transocean - excluiu planilha: sequencial('+t_plasequencial.asstring+') nome:'+t_plaplanilha.asstring);
end;

procedure Tf_ctrlTransocean.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_ctrlTransocean.FormShow(Sender: TObject);
begin
  NotExecute := 0;
end;

end.
