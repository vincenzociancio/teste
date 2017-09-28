unit u_TaxasConversaoCambioAmanha;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, DBCtrls, Buttons, Grids, DBGrids, ExtCtrls, DBTables, Db;

type
  TfrmTaxasConversaoCambioAmanha = class(TForm)
    pnlTaxaConv: TPanel;
    dbgTaxaConvC: TDBGrid;
    btnAlterarTaxaC: TBitBtn;
    Label1: TLabel;
    btnCopiar: TButton;
    tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA: TTable;
    tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHACodigo: TStringField;
    tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHADescricao: TStringField;
    tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHATaxa_Conversao: TStringField;
    tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAVigencia_Inicio_Taxa: TStringField;
    tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAVigencia_Fim_Taxa: TStringField;
    dstbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA: TDataSource;
    btnGravar: TButton;
    txtTxConversao: TEdit;
    qrTAB_CONVERSAO_CAMBIO: TQuery;
    qrTAB_CONVERSAO_CAMBIOCodigo: TStringField;
    qrTAB_CONVERSAO_CAMBIODescricao: TStringField;
    qrTAB_CONVERSAO_CAMBIOTaxa_Conversao: TStringField;
    qrTAB_CONVERSAO_CAMBIOVigencia_Inicio_Taxa: TStringField;
    qrTAB_CONVERSAO_CAMBIOVigencia_Fim_Taxa: TStringField;
    qrInsereMoedas: TQuery;
    txtVI: TEdit;
    txtVF: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    qrDeleteMoedas: TQuery;
    qrAlterarTx: TQuery;
    qrExcluir: TQuery;
    btnAlterarVigencias: TButton;
    qrAlterarVigencia: TQuery;
    GroupBox1: TGroupBox;
    ME_nossaref: TMaskEdit;
    btnVincularProcesso: TBitBtn;
    qExcluiProcessoComTaxa: TQuery;
    qIncluiProcessoComTaxa: TQuery;
    qrProcessos: TQuery;
    qrProcessosProcesso: TStringField;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    txtCodMoedaPesq: TEdit;
    Label4: TLabel;
    procedure btnCopiarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAAfterScroll(
      DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure HablitarEdicao(blnComponente : Boolean; Color : TColor);
    procedure btnAlterarTaxaCClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure btnAlterarVigenciasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnVincularProcessoClick(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
     Function Date_MoveNDays(DateValue : TDateTime;  DateMovement : Integer): TDateTime;
     Function Date_NextDay(DateValue: TDateTime): TDateTime;     
  public
    { Public declarations }
  end;

var
  frmTaxasConversaoCambioAmanha: TfrmTaxasConversaoCambioAmanha;
  vOp : Integer;
implementation

uses U_MSCOMEX, u_prodidsi;

{$R *.DFM}

procedure TfrmTaxasConversaoCambioAmanha.HablitarEdicao(blnComponente : Boolean; Color : TColor);
begin
   txtTxConversao.enabled := blnComponente;
   txtTxConversao.Color := Color;
   txtVI.enabled := blnComponente;
   txtVI.Color := Color;
   txtVF.enabled := blnComponente;
   txtVF.Color := Color;
   btnGravar.Visible:= blnComponente;
end;


procedure TfrmTaxasConversaoCambioAmanha.btnCopiarClick(Sender: TObject);
begin
      try
        qrDeleteMoedas.Close;
        qrDeleteMoedas.ExecSQL;      
        qrTAB_CONVERSAO_CAMBIO.close;
        qrTAB_CONVERSAO_CAMBIO.Open;
        while not qrTAB_CONVERSAO_CAMBIO.eof do
        begin
            qrInsereMoedas.close;
            qrInsereMoedas.ParamByName('pCodigo').asString:= qrTAB_CONVERSAO_CAMBIOCodigo.asString;
            qrInsereMoedas.ParamByName('pDescricao').asString:=qrTAB_CONVERSAO_CAMBIODescricao.asString;
            qrInsereMoedas.ParamByName('pTaxa_Conversao').asString:='0';
            qrInsereMoedas.ParamByName('pVigencia_Inicio_Taxa').asString:=DateToStr(Date_NextDay(now()));
            qrInsereMoedas.ParamByName('pVigencia_Fim_Taxa').asString:=DateToStr(Date_NextDay(now()));
            qrInsereMoedas.ExecSQL;
            qrTAB_CONVERSAO_CAMBIO.Next;
        end;
        tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.Close;
        tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.Open;
        txtVI.text := tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAVigencia_Inicio_Taxa.Value;
        txtVF.text := tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAVigencia_Fim_Taxa.Value;
        txtTxConversao.text := '0';
        HablitarEdicao(false, clMenu);        
      except
        On E:Exception do
        begin
               showmessage(v_usuario + ', no momento ocorreu um erro na cópia das moedas da taxa de conversão! Tente novamente.');
        end;
      end;
end;

function TfrmTaxasConversaoCambioAmanha.Date_MoveNDays(
  DateValue: TDateTime; DateMovement: Integer): TDateTime;
begin
     {Date_MoveNDays(now()+1000)}
     Result := DateValue + DateMovement;
end;

function TfrmTaxasConversaoCambioAmanha.Date_NextDay(
  DateValue: TDateTime): TDateTime;
begin
     {Date_NextDay(now()+1000)}
     Result := Date_MoveNDays(DateValue,1);
end;

procedure TfrmTaxasConversaoCambioAmanha.btnGravarClick(Sender: TObject);
begin
   if vOp = 1 then
   begin
       if (txtTxConversao.text = '') then
       begin
           ShowMessage('Por favor, informe a taxa de conversão.');
           txtTxConversao.SetFocus;
           Exit;
       end;
       try
         try
           StrToFloat(txtTxConversao.Text);
         except
         On E:Exception do
           begin
             Showmessage(v_usuario+', por favor informe somente números e utlize (,) como separador decimal.');
             txtTxConversao.SetFocus;
             Exit;
           end;
         end;

         qrAlterarTx.Close;
         qrAlterarTx.ParamByName('pTaxa_Conversao').asString:= txtTxConversao.Text;
         qrAlterarTx.ParamByName('pCodigo').asString:= tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHACodigo.Value;
         qrAlterarTx.ExecSQL;
       Except
       On E:Exception do
            begin
                   showmessage(v_usuario + ', no momento ocorreu um erro ao alterar a taxa de conversão!Por favor, tente novamente.');
                   Exit;
            end;
       end;
   end
   else if vOp = 2 then
   begin
       try
          StrToDate(txtVI.text);
       except
       on EConvertError do
          begin
             txtVI.setFocus;
             ShowMessage('Por favor, informe uma data vigência inicial válida!');
             Exit;
          end;
       end;

       try
          StrToDate(txtVF.text);
       except
       on EConvertError do
           begin
               txtVF.setFocus;
               ShowMessage('Por favor, informe uma data vigência final válida!');
               Exit;
           end;
       end;
       if (StrToDate(txtVI.text) <=  StrToDate(DateTimeToStr(date))) then
       begin
           ShowMessage('Informe a data vigência Inicial maior que hoje.');
           txtVI.setFocus;
           Exit;                                                          
       end;
       if (StrToDate(txtVF.text) < StrToDate(txtVI.text)) then
       begin
           ShowMessage('Informe a data vigência final maior ou igual a vigência inicial.');
           txtVF.setFocus;
           Exit;
       end;
       try
         qrAlterarVigencia.Close;
         qrAlterarVigencia.ParamByName('pVigencia_Inicio_Taxa').asString:= txtVI.Text;
         qrAlterarVigencia.ParamByName('pVigencia_Fim_Taxa').asString:= txtVF.Text;
         qrAlterarVigencia.ExecSQL;
       Except
       On E:Exception do
            begin
                   showmessage(v_usuario + ', no momento ocorreu um erro ao alterar as vigências!Por favor, tente novamente.');
            end;
       end;
   end;
   HablitarEdicao(false, clMenu);
   tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.close;
   tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.Open;
   btnCopiar.Enabled := True;
   btnAlterarTaxaC.Enabled := True;
   btnAlterarVigencias.Enabled := True;
end;

procedure TfrmTaxasConversaoCambioAmanha.tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHAAfterScroll(
  DataSet: TDataSet);
begin
   txtTxConversao.text := tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.fieldbyname('Taxa_Conversao').AsString;
   txtVI.text := tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.fieldbyname('Vigencia_Inicio_Taxa').AsString;
   txtVF.text := tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.fieldbyname('Vigencia_Fim_Taxa').AsString;   
end;

procedure TfrmTaxasConversaoCambioAmanha.FormShow(Sender: TObject);
begin
   tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.Close;
   tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.Open;
   HablitarEdicao(false, clMenu);
end;

procedure TfrmTaxasConversaoCambioAmanha.Button1Click(Sender: TObject);
begin
  frmTaxasConversaoCambioAmanha.Close;
end;

procedure TfrmTaxasConversaoCambioAmanha.btnAlterarTaxaCClick(
  Sender: TObject);
begin
   vOp := 1;
   HablitarEdicao(True, clWindow);
   txtTxConversao.setFocus;
   txtVI.enabled := false;
   txtVI.Color := clMenu;
   txtVF.enabled := false;
   txtVF.Color := clMenu;
end;

procedure TfrmTaxasConversaoCambioAmanha.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   CanClose := True;
end;

procedure TfrmTaxasConversaoCambioAmanha.btnAlterarVigenciasClick(Sender: TObject);
begin
   vOp := 2;
   HablitarEdicao(True, clWindow);
   txtVI.SetFocus;
   txtTxConversao.enabled := false;
   txtTxConversao.Color := clMenu;
   btnCopiar.Enabled := False;
   btnAlterarTaxaC.Enabled := False;
   btnAlterarVigencias.Enabled := False;
end;

procedure TfrmTaxasConversaoCambioAmanha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
frmTaxasConversaoCambioAmanha := nil;
f_mscomex.TaxadeConversoparaAmanha.enabled := true;
end;

procedure TfrmTaxasConversaoCambioAmanha.btnVincularProcessoClick(
  Sender: TObject);
begin
    Screen.Cursor := crHourGlass;

    qrProcessos.Close;
    qrProcessos.Parambyname('pProcesso').asString := me_nossaref.Text;
    qrProcessos.Open;
    If ( qrProcessos.IsEmpty ) Then
    begin
        messagedlg('O processo não foi encontrado', mtInformation, [mbOk], 0);
        me_nossaref.Clear;
        me_nossaref.setfocus;
        Exit;
    end
    else
    begin
          try
              {Exclui o Processo com a respectiva moeda}
              qExcluiProcessoComTaxa.Close;
              qExcluiProcessoComTaxa.ParamByName('pProcesso').asString := ME_nossaref.text;
              qExcluiProcessoComTaxa.ParamByName('pMoeda').AsString := tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHACodigo.Value;
              qExcluiProcessoComTaxa.ExecSQL;
          except
              On E: Exception Do
                 MessageDlg('Erro ao excluir o registro!'+#13#10+'MSG: '+E.message, mtError, [mbOk], 0);
          end;
    end;

    try
        {Inclui o processo com respectiva moeda}
        qIncluiProcessoComTaxa.close;
        qIncluiProcessoComTaxa.ParamByName('pProcesso').AsString := ME_nossaref.text;
        qIncluiProcessoComTaxa.ParamByName('pMoeda').AsString := tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHACodigo.Value;
        qIncluiProcessoComTaxa.ParamByName('pTaxa_conversao').asFloat := tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHATaxa_Conversao.asFloat;
        qIncluiProcessoComTaxa.ParamByName('pTaxa_conversaoC').asFloat := tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHATaxa_Conversao.asFloat;
        qIncluiProcessoComTaxa.ExecSQL;

        Showmessage('A taxa de conversão foi vinculada ao processo com sucesso.');
        ME_nossaref.Clear;
    except
        On E: Exception Do
           MessageDlg('Erro ao incluir o registro!'+#13#10+'MSG: '+E.message, mtError, [mbOk], 0);
    end;
    Screen.Cursor := crDefault; 
end;

procedure TfrmTaxasConversaoCambioAmanha.ME_nossarefChange(
  Sender: TObject);
begin
    If Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8 Then
    Exit;

end;

procedure TfrmTaxasConversaoCambioAmanha.BitBtn1Click(Sender: TObject);
begin

   if txtCodMoedaPesq.text = '' then
   begin
     tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.Close;
     tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.Open;
     HablitarEdicao(false, clMenu);
   end
   else
   begin
           BitBtn2Click(Sender);
           HablitarEdicao(false, clMenu);
   end;
end;

procedure TfrmTaxasConversaoCambioAmanha.BitBtn2Click(Sender: TObject);
begin
    If Length(F_MSCOMEX.LRTrim(txtCodMoedaPesq.Text)) <> 3 Then
    begin
        showmessage('Por favor, informe um código de moeda com 3 dígitos.');
        Exit;
    end;

    tbPROCESSOS_TAXAS_CONVERSAO_CAMBIO_AMANHA.Locate('Codigo', txtCodMoedaPesq.Text, [loCaseInsensitive]);
end;

end.
