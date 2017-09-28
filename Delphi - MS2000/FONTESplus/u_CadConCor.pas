unit u_CadConCor;

interface   

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, DBCtrls, Db, DBTables, Mask, Grids, DBGrids, Buttons;

type
  Tf_CadConCor = class(TForm)
    pnlPrincipal: TPanel;
    Label2: TLabel;
    dbgCC: TDBGrid;
    pnlLocCC: TPanel;
    Label17: TLabel;
    Panel3: TPanel;
    meLocCC: TMaskEdit;
    dbGrdCC: TDBGrid;
    btnLocUniMedOk: TBitBtn;
    btnLocUniMedCanc: TBitBtn;
    qrLocCC: TQuery;
    dsLocCC: TDataSource;
    dbeDesc: TDBEdit;
    dbeCC: TDBEdit;
    dbeAgenc: TDBEdit;
    dbeBanco: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    qrCombo: TQuery;
    dsCombo: TDataSource;
    pnlMenu: TPanel;
    Bevel4: TBevel;
    Bevel3: TBevel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnImprimir: TBitBtn;
    btnLocalizar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    dsEmpresas: TDataSource;
    dsFiliais: TDataSource;
    dbrgBancoCaixa: TDBRadioGroup;
    qrEmpresas: TQuery;
    dblcbEmp: TDBLookupComboBox;
    tbCC: TTable;
    DataSource1: TDataSource;
    dblcbFiliais: TDBLookupComboBox;
    tbFiliais: TTable;
    qrExcluir: TQuery;
    pnlImpr: TPanel;
    Label7: TLabel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label8: TLabel;
    cbIS: TCheckBox;
    cbTF: TCheckBox;
    cbTodF: TCheckBox;
    cbTodE: TCheckBox;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    qrComboEmpresa: TStringField;
    qrComboFilial: TStringField;
    qrComboCodigo: TAutoIncField;
    qrComboBanco_Caixa: TStringField;
    qrComboBanco: TStringField;
    qrComboAgencia: TStringField;
    qrComboConta_Corrente: TStringField;
    qrComboSaldo: TFloatField;
    qrComboNivel: TStringField;
    qrComboData: TDateTimeField;
    qrComboQEMPRESA: TStringField;
    qrComboQFILIAL: TStringField;
    qrComboDescricao: TStringField;
    qrEmpresasCodigo: TStringField;
    qrEmpresasRazao_Social: TStringField;
    tbFiliaisCodigo_Empresa: TStringField;
    tbFiliaisCodigo_Filial: TStringField;
    tbFiliaisDescricao: TStringField;
    tbFiliaisEndereco: TStringField;
    tbFiliaisNumero: TStringField;
    tbFiliaisComplemento: TStringField;
    tbFiliaisBairro: TStringField;
    tbFiliaisCidade: TStringField;
    tbFiliaisUF: TStringField;
    tbFiliaisCEP: TStringField;
    tbFiliaisTelefone: TStringField;
    tbFiliaisFax: TStringField;
    qrExcluirEmpresa: TStringField;
    qrExcluirFilial: TStringField;
    qrExcluirCodigo: TIntegerField;
    qrLocCCEmpresa: TStringField;
    qrLocCCFilial: TStringField;
    qrLocCCCodigo: TAutoIncField;
    qrLocCCBanco_Caixa: TStringField;
    qrLocCCDescricao: TStringField;
    qrLocCCBanco: TStringField;
    qrLocCCAgencia: TStringField;
    qrLocCCConta_Corrente: TStringField;
    qrLocCCSaldo: TFloatField;
    qrLocCCNivel: TStringField;
    qrLocCCData: TDateTimeField;
    qrLocCCEmpresacc: TStringField;
    qrLocCCFilialcc: TStringField;
    qrLocCCASCAA: TSmallintField;
    tbCCEmpresa: TStringField;
    tbCCFilial: TStringField;
    tbCCBanco_Caixa: TStringField;
    tbCCDescricao: TStringField;
    tbCCBanco: TStringField;
    tbCCAgencia: TStringField;
    tbCCConta_Corrente: TStringField;
    tbCCSaldo: TFloatField;
    tbCCNivel: TStringField;
    tbCCData: TDateTimeField;
    tbCCEmpresacc: TStringField;
    tbCCFilialcc: TStringField;
    tbCCASCAA: TSmallintField;
    tbCCCodigo: TAutoIncField;
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure dblcbEmpExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure meLocCCChange(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnLocUniMedCancClick(Sender: TObject);
    procedure btnLocUniMedOkClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure cbTodEClick(Sender: TObject);
    procedure cbTodFClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_CadConCor: Tf_CadConCor;

implementation

uses U_MSCOMEX, u_relContCor;

{$R *.DFM}

procedure Tf_CadConCor.FormCreate(Sender: TObject);
begin
     qrCombo.Open;
     tbCC.Open;
     qrEmpresas.Open;
     tbFiliais.Open;
end;

procedure Tf_CadConCor.btnAlterarClick(Sender: TObject);
begin
     tbCC.Edit;

     dblcbFiliais.Enabled := True;
     dblcbEmp.Enabled := True;
     dbrgBancoCaixa.Enabled := True;
     dbeDesc.Enabled := True;
     dbeBanco.Enabled := True;
     dbeAgenc.Enabled := True;
     dbecc.Enabled := True;

     btnNovo.Enabled := False;
     btnAlterar.Enabled  := False;
     btnExcluir.Enabled  := False;
     btnGravar.Enabled   := True;
     btnCancelar.Enabled := True;

     btnLocalizar.Enabled := False;
     btnImprimir.Enabled := False;

     dbgCC.Enabled := False;
     dbeDesc.Enabled := True;

     dblcbEmp.SetFocus;

end;

procedure Tf_CadConCor.dblcbEmpExit(Sender: TObject);
begin
  {   qrFiliais.Close;
     qrFiliais.Params[0].AsString := qrEmpresasCodigo.AsString;
     qrFiliais.Open;
   }
end;

procedure Tf_CadConCor.btnExcluirClick(Sender: TObject);
begin

     qrExcluir.Params[0].AsString := qrComboEmpresa.AsString;
     qrExcluir.Params[1].AsString := qrComboFilial.AsString;
     qrExcluir.Params[2].AsString := qrComboCodigo.AsString;
     qrExcluir.Open;
     if qrExcluir.RecordCount <> 0 then
        MessageDlg('Existe Movimentação com esta Conta Corrente. Não pode ser excluído!', mtInformation,[mbOk], 0)
     else
       if MessageDlg('Confirma exclusão desta Conta Corrente?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
         begin
           tbCC.Delete;
           ShowMessage('Conta Corrente excluída!');
         end;
     qrCombo.Close;
     qrCombo.Open;


tbcc.Close;
tbcc.OPen;

     qrExcluir.Close;
     qrCombo.Close;
     qrCombo.Open;
     btnNovo.SetFocus;

end;

procedure Tf_CadConCor.btnNovoClick(Sender: TObject);
begin
     tbcc.Append;
     tbCCCodigo.AsString := '';

     btnNovo.Enabled := False;
     btnAlterar.Enabled  := False;
     btnExcluir.Enabled  := False;

     btnImprimir.Enabled := False;
     btnLocalizar.Enabled := False;

     btnGravar.Enabled   := True;
     btnCancelar.Enabled := True;

     dblcbFiliais.Enabled := True;
     dblcbEmp.Enabled := True;
     dbrgBancoCaixa.Enabled := True;
     dbeDesc.Enabled := True;
     dbeBanco.Enabled := True;
     dbeAgenc.Enabled := True;
     dbecc.Enabled := True;

     dbgCC.Enabled := False;
     dblcbEmp.SetFocus;
end;

procedure Tf_CadConCor.btnGravarClick(Sender: TObject);
begin
     btnNovo.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnGravar.Enabled := False;
     btnCancelar.Enabled := False;
     btnGravar.Tag := 0;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled := True;
     
     tbcc.post;
     tbcc.Close;
     tbcc.OPen;
     qrCombo.Close;
     qrCombo.Open;

     dblcbFiliais.Enabled := False;
     dblcbEmp.Enabled := False;
     dbrgBancoCaixa.Enabled := False;
     dbeDesc.Enabled := False;
     dbeBanco.Enabled := False;
     dbeAgenc.Enabled := False;
     dbecc.Enabled := False;

     dbgCC.Enabled := True;

     dbgCC.SetFocus;

end;

procedure Tf_CadConCor.btnCancelarClick(Sender: TObject);
begin
     btnNovo.Enabled := True;
     btnAlterar.Enabled  := True;
     btnExcluir.Enabled  := True;

     btnImprimir.Enabled := True;
     btnLocalizar.Enabled := True;

     btnGravar.Enabled   := False;
     btnCancelar.Enabled := False;

     dblcbFiliais.Enabled := False;
     dblcbEmp.Enabled := False;
     dbrgBancoCaixa.Enabled := False;
     dbeDesc.Enabled := False;
     dbeBanco.Enabled := False;
     dbeAgenc.Enabled := False;
     dbecc.Enabled := False;

     dbgCC.Enabled := True;

     tbCC.Cancel;
     btnNovo.SetFocus;

end;

procedure Tf_CadConCor.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_CadConCor.FormClose(Sender: TObject;
  var Action: TCloseAction);
var
  I : Integer;
begin
  for I := 0 to pred(ComponentCount) do
   begin
     if Components[I] is TQuery
      then TQuery(Components[I]).Close
      else if Components[I] is TTable
            then TTable(Components[I]).Close;
   end;

  Action := caFree;
  f_CadConCor := nil;
  f_mscomex.Cadastro1.Enabled := True;
end;

procedure Tf_CadConCor.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbCC.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Cadastro de Contas Correntes está em edição!', mtWarning, [mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;


end;

procedure Tf_CadConCor.meLocCCChange(Sender: TObject);
begin
     With qrLocCC Do Begin
         Close;
         Params[0].AsString := '%'+ meLocCC.Text +'%';
         Params[1].AsString := '%'+ meLocCC.Text +'%';
         Open;
     End;

end;

procedure Tf_CadConCor.btnLocalizarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     With pnlLocCC Do Begin
         Top  := 32;
         Left := 176;
         Height := 255;
         Visible := True;
     End;
     dbgCC.Enabled := False;

     With qrLocCC Do Begin
         Close;
         Open;
     End;
     meLocCC.SetFocus;
     meLocCC.Text :='';
     Screen.Cursor := crDefault;


end;

procedure Tf_CadConCor.btnLocUniMedCancClick(Sender: TObject);
begin
     pnlLoccc.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;
     dbgCC.Enabled := True;
     dbgCC.SetFocus;

end;

procedure Tf_CadConCor.btnLocUniMedOkClick(Sender: TObject);
begin
     pnlImpr.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;

     If qrCombo.Locate('Conta_Corrente', qrLocCCConta_Corrente.AsString , []) Then Begin
        pnlLocCC.Visible := False;
        pnlPrincipal.Enabled := True;
     End
     Else
        MessageDlg('Conta Corrente solicitada não foi localizada.', mtInformation,[mbOk], 0);

     dbgCC.Enabled := True;
     btnAlterar.SetFocus;

end;

procedure Tf_CadConCor.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


   {  h := Height;
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

procedure Tf_CadConCor.btnImprimirClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     With pnlImpr Do Begin
         Top  := 32;
         Left := 176;
         Height := 255;
         Visible := True;
     End;
     dbgCC.Enabled := False;

     DBLookupComboBox1.Enabled := True;
     DBLookupComboBox2.Enabled := True;

     DBLookUpComboBox1.SetFocus;
     Screen.Cursor := crDefault;

end;

procedure Tf_CadConCor.BitBtn1Click(Sender: TObject);
begin
     If (DBLookUpComboBox1.Text = '') Then
       If (Not cbTodE.Checked) Then Begin
         MessageDlg('Selecione uma Empresa.', mtError,[mbOk], 0);
         Exit;
       End;

     If (DBLookUpComboBox2.Text = '') Then
       If (Not cbTodF.Checked) Then Begin
         MessageDlg('Selecione uma Filial.', mtError,[mbOk], 0);
         Exit;
       End;

     pnlImpr.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;


     if not Assigned(f_relContCor) then Application.CreateForm(Tf_relContCor, f_relContCor);
       With f_relContCor Do Begin
         With qrRcc Do Begin
             Close;
             If cbTodE.Checked Then Begin
               params[0].AsString:= '*';
               qrLabel12.Caption := 'Todas';
             End
             Else Begin
                 params[0].AsString := qrEmpresasCodigo.AsString;
                 qrLabel12.Caption := qrEmpresasRazao_Social.AsString;
             End;

             If cbTodF.Checked Then Begin
               params[1].AsString:= '*';
               qrLabel13.Caption := 'Todas';
             End
             Else Begin
                 params[1].AsString := tbFiliaisCodigo_Filial.AsString;
                 qrLabel13.Caption :=  tbFiliaisDescricao.AsString;
             End;
             If cbIS.Checked Then Begin
               qrdbtext6.Enabled := True;
               qrLabel6.Enabled := True;
               qrlSald.Caption := 'Sim';
             End
             Else Begin
                 qrdbtext6.Enabled := False;
                 qrLabel6.Enabled := False;
                 qrlSald.Caption := 'Não';
             End;
             If cbTF.Checked Then Begin
                qrbTotal.Enabled := True;
                qrlVtot.Caption := 'Sim';
             End
             Else Begin
                 qrbTotal.Enabled := False;
                 qrlVtot.Caption := 'Não';
             End;
         Open;
         End;
         Preview;

         end;



     dbgCC.Enabled := True;
     btnAlterar.SetFocus;


end;

procedure Tf_CadConCor.BitBtn2Click(Sender: TObject);
begin
     pnlImpr.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;
     dbgCC.Enabled := True;
     dbgCC.SetFocus;

end;

procedure Tf_CadConCor.DBLookupComboBox1Click(Sender: TObject);
begin
     tbFiliais.Close;
     tbFiliais.Open;
     dblookupcombobox2.Refresh;
end;

procedure Tf_CadConCor.cbTodEClick(Sender: TObject);
begin
     If cbTodE.Checked Then DBLookupComboBox1.Enabled := False
     Else DBLookupComboBox1.Enabled := True;
end;

procedure Tf_CadConCor.cbTodFClick(Sender: TObject);
begin
     If cbTodF.Checked Then DBLookupComboBox2.Enabled := False
     Else DBLookupComboBox2.Enabled := True;
end;

end.
