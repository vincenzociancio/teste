unit u_consaldodesmem;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Mask, Grids, DBGrids, ExtCtrls, Db, DBTables, ComCtrls;

type
  Tf_consaldodesmem = class(TForm)
    Q_extrato: TQuery;
    q_santerior: TQuery;
    ds_qextrato: TDataSource;
    qrCreditos: TQuery;
    ds_qcreditos: TDataSource;
    qrDebitos: TQuery;
    ds_qdebitos: TDataSource;
    qrParam: TQuery;
    qrImport: TQuery;
    dsImport: TDataSource;
    qrCC: TQuery;
    dsCC: TDataSource;
    qrLancamentos: TQuery;
    dsLancamento: TDataSource;
    Panel5: TPanel;
    Label30: TLabel;
    Label1: TLabel;
    dbGrdCC: TDBGrid;
    cbCC: TCheckBox;
    dbGrdImport: TDBGrid;
    cbImport: TCheckBox;
    Label35: TLabel;
    cbLancamentos: TCheckBox;
    dbGrdLancamentos: TDBGrid;
    rgTipos: TRadioGroup;
    GroupBox1: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    me_dataini: TMaskEdit;
    me_datafin: TMaskEdit;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    Panel1: TPanel;
    re_ext: TRichEdit;
    rg_check: TRadioGroup;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    qrParamEmpresa: TStringField;
    qrParamFilial: TStringField;
    Q_extratoEmpresa: TStringField;
    Q_extratoFilial: TStringField;
    Q_extratoDescricao: TStringField;
    Q_extratoCodigo: TIntegerField;
    Q_extratoData: TDateTimeField;
    Q_extratoTipo: TIntegerField;
    Q_extratoqusu: TStringField;
    Q_extratootipo: TStringField;
    Q_extratoDoc: TStringField;
    Q_extratoHistorico: TStringField;
    Q_extratoValor: TFloatField;
    Q_extratoCliente: TStringField;
    Q_extratoDesmembra: TIntegerField;
    Q_extratoCodigo_Mov: TAutoIncField;
    Q_extratoPositivo: TIntegerField;
    Q_extratoqimp: TStringField;
    q_santeriorSaldoanterior: TFloatField;
    qrLancamentosCodigo: TAutoIncField;
    qrLancamentosDescricao: TStringField;
    qrLancamentosPositivo: TIntegerField;
    qrCCCodigo: TAutoIncField;
    qrCCDescricao: TStringField;
    qrCCNivel: TStringField;
    qrCreditosEmpresa: TStringField;
    qrCreditosFilial: TStringField;
    qrCreditosConta_Corrente: TIntegerField;
    qrCreditosCodigo_mov: TIntegerField;
    qrCreditosData_Credito: TDateTimeField;
    qrCreditosContabilizado: TStringField;
    qrCreditosProcesso: TStringField;
    qrCreditosREG: TAutoIncField;
    qrCreditosCredito: TStringField;
    qrCreditosDescricao: TStringField;
    qrCreditosValor: TFloatField;
    qrCreditosImportador: TStringField;
    qrDebitosEmpresa: TStringField;
    qrDebitosFilial: TStringField;
    qrDebitosProcesso: TStringField;
    qrDebitosREG: TAutoIncField;
    qrDebitosNumerario: TStringField;
    qrDebitosUsuario_Previsao: TStringField;
    qrDebitosData_Previsao: TDateTimeField;
    qrDebitosValor_Previsao: TFloatField;
    qrDebitosPrevisao_solicitada: TStringField;
    qrDebitosOk_Previsao_financeiro: TStringField;
    qrDebitosUsuario_Financeiro: TStringField;
    qrDebitosData_Registro: TDateTimeField;
    qrDebitosValor_Registrado: TFloatField;
    qrDebitosValor_Contabilizado: TFloatField;
    qrDebitosContabilizado: TStringField;
    qrDebitosUsuario_Contablizado: TStringField;
    qrDebitosConta_Corrente: TIntegerField;
    qrDebitosCodigo_mov: TIntegerField;
    qrDebitosDetalhe: TStringField;
    qrDebitosDescricao: TStringField;
    qrDebitosImportador: TStringField;
    procedure btnImprimirClick(Sender: TObject);
    procedure Q_extratoAfterScroll(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgTiposClick(Sender: TObject);
    procedure cbImportClick(Sender: TObject);
    procedure cbCCClick(Sender: TObject);
    procedure cbLancamentosClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_consaldodesmem: Tf_consaldodesmem;
  vEmp, vFil: String;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_consaldodesmem.btnImprimirClick(Sender: TObject);
begin
     If me_dataini.Text = '  /  /    ' Then Begin
        MessageDlg('Informe o Período de Extrato!', mtWarning, [mbOk], 0);
        me_dataini.SetFocus;
        Exit;
     End;

     If me_datafin.Text = '  /  /    ' Then Begin
        MessageDlg('Informe o Período de Extrato!', mtWarning, [mbOk], 0);
        me_datafin.SetFocus;
        Exit;
     End;

     If cbImport.Checked Then Begin
        q_extrato.Params[6].AsString := '%';
        q_santerior.Params[5].AsString := '%';
     End
     Else Begin
        q_extrato.Params[6].AsString := qrImportCodigo.AsString;
        q_santerior.Params[5].AsString := qrImportCodigo.AsString;
     End;

     If cbCC.Checked Then Begin
        q_extrato.Params[0].AsString := '%';
        q_santerior.Params[0].AsString := '%';
     End
     Else Begin
        q_extrato.Params[0].AsInteger := qrCCCodigo.AsInteger;
        q_santerior.Params[0].AsInteger := qrCCCodigo.AsInteger;
     End;

     q_extrato.Params[1].AsDateTime := StrToDate(me_dataini.Text);
     q_extrato.Params[2].AsDateTime := StrToDate(me_datafin.Text);

     q_santerior.Params[1].AsDateTime := StrToDate('01/01/2000');
     q_santerior.Params[2].AsDateTime := StrToDate(me_dataini.Text);

     Case rgTipos.ItemIndex Of
         0: Begin
            //q_extrato.Params[9].AsBoolean := False;
            q_extrato.Params[9].Asinteger := 0;
            //q_extrato.Params[10].AsBoolean := False;
            q_extrato.Params[10].Asinteger := 0;
         End;
         1: Begin
            //q_extrato.Params[9].AsBoolean := True;
            q_extrato.Params[9].Asinteger := 1;
            //q_extrato.Params[10].AsBoolean := True;
            q_extrato.Params[10].Asinteger := 1;
         End;
         2: Begin
            //q_extrato.Params[9].AsBoolean := True;
            q_extrato.Params[9].Asinteger := 1;
            //q_extrato.Params[10].AsBoolean := False;
            q_extrato.Params[10].Asinteger := 0;
         End;
     End;
     If cbLancamentos.Checked Then Begin
        q_extrato.Params[3].AsString := '%';
     End
     Else Begin
        q_extrato.Params[3].AsInteger := qrLancamentosCodigo.AsInteger;
     End;

     re_ext.Clear;
     re_ext.Lines.Add('****************************************************');
     re_ext.Lines.Add('Seleção:');
     If cbImport.Checked Then
        re_ext.Lines.Add('Empresa............: Todas')
     else
        re_ext.Lines.Add('Empresa............: '+qrimportrazao_social.asstring);
     If cbCC.Checked Then
        re_ext.Lines.Add('Conta Corrente.....: Todas')
     else
        re_ext.Lines.Add('Conta Corrente.....: '+qrccdescricao.asstring);
     If cbLancamentos.Checked Then
        re_ext.Lines.Add('Tipo de Lançamento.: Todos')
     else
        re_ext.Lines.Add('Tipo de Lançamento.: '+qrlancamentosdescricao.asstring);
     Case rgTipos.ItemIndex Of
         0: Begin
            re_ext.Lines.Add('Tipo...............: Somente Débitos');
         End;
         1: Begin
            re_ext.Lines.Add('Tipo...............: Somente Créditos');
         End;
         2: Begin
            re_ext.Lines.Add('Tipo...............: Todos');
         End;
     End;

     re_ext.Lines.Add('Período............: de '+me_dataini.Text+' até '+me_datafin.Text);
     re_ext.Lines.Add('Check Desmembramento: '+ rg_check.Items.Strings[rg_check.ItemIndex]);
     re_ext.Lines.Add('****************************************************');

     q_extrato.Params[4].AsString := '%';
     q_extrato.Params[5].AsString := '%';
     q_extrato.Params[7].AsString := '1';
     q_extrato.Params[8].AsString := 'RJO';

     q_extrato.Open;
     q_santerior.Open;

     while not q_extrato.eof do begin
           processamento('Aguarde... Verificando Movimentações...',q_extrato.recordcount,false);
           Q_extratoAfterScroll(q_extrato);
           q_extrato.Next;
     end;
     processamento('Aguarde... Verificando Movimentações...',q_extrato.recordcount,true);

     q_extrato.Close;
     q_santerior.Close;
end;

procedure Tf_consaldodesmem.Q_extratoAfterScroll(DataSet: TDataSet);
var qsalde:real;
begin

    //if ((rg_check.ItemIndex=2) or ((rg_check.ItemIndex=1) and (not q_extratodesmembra.asboolean)) or ((rg_check.ItemIndex=0) and ( q_extratodesmembra.asboolean)) ) then begin
    if ((rg_check.ItemIndex=2) or ((rg_check.ItemIndex=1) and (not q_extratodesmembra.asinteger = 1)) or ((rg_check.ItemIndex=0) and ( q_extratodesmembra.asinteger = 1)) ) then begin

     qsalde := 0;

     With qrCreditos Do Begin
         Close;
         Params[0].AsInteger := Q_extratoCodigo.AsInteger;
         Params[1].AsInteger := Q_extratoCodigo_Mov.AsInteger;
         if cbimport.Checked then
            Params[2].Asstring  := '%'
         else
            Params[2].Asstring  := qrimportcodigo.asstring;
         Open;
     End;

     while not qrCreditos.eof do begin
           qsalde := qsalde+qrCreditosvalor.asfloat;
           qrCreditos.next;
     end;

     With qrDebitos Do Begin
         Close;
         Params[0].AsInteger := Q_extratoCodigo.AsInteger;
         Params[1].AsInteger := Q_extratoCodigo_Mov.AsInteger;
         if cbimport.Checked then
            Params[2].Asstring  := '%'
         else
            Params[2].Asstring  := qrimportcodigo.asstring;
         Open;
     End;

     while not qrDebitos.eof do begin
           qsalde := qsalde-qrDebitosvalor_contabilizado.asfloat;
           qrDebitos.next;
     end;

     if (floattostrf(qsalde,fffixed,15,2) <> floattostrf(q_extratovalor.asfloat,fffixed,15,2)) then begin
     re_ext.Lines.Add('Conta Corrente....: '+q_extratoDescricao.asstring);
     re_ext.Lines.Add('Empresa...........: '+q_extratoqimp.asstring);
     re_ext.Lines.Add('Data..............: '+q_extratodata.asstring);
     re_ext.Lines.Add('Tipo..............: '+q_extratootipo.asstring);
     re_ext.Lines.Add('Doc...............: '+q_extratodoc.asstring);
     re_ext.Lines.Add('Historico.........: '+q_extratohistorico.asstring);
     re_ext.Lines.Add('Valor.............: '+floattostrf(q_extratovalor.asfloat,fffixed,15,2));
     re_ext.Lines.Add('Valor Desmembrado.: '+floattostrf(qsalde,fffixed,15,2));
     re_ext.Lines.Add('Usuário...........: '+q_extratoqusu.asstring);
     re_ext.Lines.Add('****************************************************');
     end;
   end;
end;

procedure Tf_consaldodesmem.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     F_MSCOMEX.Valoressemdesmembramento1.Enabled := True;
     f_consaldodesmem := Nil;
     Action := caFree;
end;

procedure Tf_consaldodesmem.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


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
     width := w; }
end;

procedure Tf_consaldodesmem.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_consaldodesmem.FormCreate(Sender: TObject);
begin
     qrParam.Open;
     vEmp := qrParamEmpresa.AsString;
     vFil := qrParamFilial.AsString;
     With qrImport Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
     With qrCC Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := v_nivel_cc;         
         Open;
     End;
     With q_extrato Do Begin
         Params[7].AsString := vEmp;
         Params[8].AsString := vFil;
     End;
     With q_santerior Do Begin
         Params[3].AsString := vEmp;
         Params[4].AsString := vFil;
     End;

     qrLancamentos.Open;

     qrParam.Close;
end;

procedure Tf_consaldodesmem.rgTiposClick(Sender: TObject);
begin
     {Case rgTipos.ItemIndex Of
         0: Begin
            qrLancamentos.Filter := 'Positivo = ''False''';
            qrLancamentos.Filtered := True;
         End;
         1: Begin
            qrLancamentos.Filter := 'Positivo = ''True''';
            qrLancamentos.Filtered := True;
         End;
         2: Begin
            qrLancamentos.Filter := '';
            qrLancamentos.Filtered := False;
         End;
     End;}
end;

procedure Tf_consaldodesmem.cbImportClick(Sender: TObject);
begin
     If cbImport.Checked Then
        dbGrdImport.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit]
     Else
        dbGrdImport.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
end;

procedure Tf_consaldodesmem.cbCCClick(Sender: TObject);
begin
     If cbCC.Checked Then
        dbGrdCC.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit]
     Else
        dbGrdCC.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
end;

procedure Tf_consaldodesmem.cbLancamentosClick(Sender: TObject);
begin
     If cbLancamentos.Checked Then
        dbGrdLancamentos.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgConfirmDelete,dgCancelOnExit]
     Else
        dbGrdLancamentos.Options := [dgColumnResize,dgColLines,dgRowLines,dgTabs,dgRowSelect,dgAlwaysShowSelection,dgConfirmDelete,dgCancelOnExit];
end;

end.
