unit u_ferGrev;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, Mask, DBCtrls, Db, DBTables;

type
  Tf_FerGrev = class(TForm)
    qrParametro: TQuery;
    dsFerGrev: TDataSource;
    q_Teste: TQuery;
    pnlBase: TPanel;
    pnlGrid: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    dbgFerGrev: TDBGrid;
    dbEdtData: TDBEdit;
    dbEdtDesc: TDBEdit;
    pnlCheck: TPanel;
    rgFerGrev: TRadioGroup;
    pnlMenu: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    Bevel3: TBevel;
    qrFollowUp: TQuery;
    qrObs: TQuery;
    dsObs: TDataSource;
    pnlObs: TPanel;
    dbLcbObs: TDBLookupListBox;
    Label3: TLabel;
    qrIncObs: TQuery;
    qrIncObsIng: TQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    qrParametroEmpresa: TStringField;
    qrParametroFilial: TStringField;
    qrFollowUpData: TDateTimeField;
    qrFollowUpCodevento: TStringField;
    qrObsEvento: TStringField;
    qrObsCodigo: TStringField;
    qrObsDescricao: TStringField;
    qrObsAtivo: TSmallintField;
    chkAtivos: TCheckBox;
    Filtro: TLabel;
    lblData: TLabel;
    dbrgAtivo: TDBRadioGroup;
    qrLocFerGreves: TQuery;
    dsLocGreves: TDataSource;
    tbFerGrev: TTable;
    tbFerGrevData: TDateTimeField;
    tbFerGrevDescricao: TStringField;
    tbFerGrevFilial: TStringField;
    tbFerGrevCodObservacao: TStringField;
    tbFerGrevAtivo: TIntegerField;
    edtData: TEdit;
    qrUpdateFerGre: TQuery;
    qrLocFerGrevesData: TDateTimeField;
    qrLocFerGrevesDescricao: TStringField;
    qrLocFerGrevesFilial: TStringField;
    qrLocFerGrevesCodObservacao: TStringField;
    qrLocFerGrevesAtivo: TIntegerField;
    procedure FormCreate(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure rgFerGrevClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnSairClick(Sender: TObject);
    procedure dbEdtDescEnter(Sender: TObject);
    procedure dbEdtDescExit(Sender: TObject);
    procedure tbFerGrevCodObservacaoChange(Sender: TField);
    procedure dbEdtDescKeyPress(Sender: TObject; var Key: Char);
    procedure chkAtivosClick(Sender: TObject);
    procedure edtDataChange(Sender: TObject);
    procedure edtDataKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_FerGrev: Tf_FerGrev;
  aux: String;
  vEmp, vFil: String;

implementation

uses U_MSCOMEX;

{$R *.DFM}


procedure Tf_FerGrev.FormCreate(Sender: TObject);
begin
     qrParametro.Open;
     vEmp := qrParametroEmpresa.AsString;
     vFil := qrParametroFilial.AsString;
     qrParametro.Close;

     With qrFollowUp Do Begin
         //Params[2].AsString := vEmp;
         //Params[3].AsString := vFil;
     End;
     With qrObs Do Begin
         //Params[0].AsString := vEmp;
         //Params[1].AsString := vFil;
         Open;
     End;
     With qrIncObs Do Begin
         //Params[1].AsString := vEmp;
         //Params[2].AsString := vFil;
     End;
     With qrIncObsIng Do Begin
         //Params[0].AsString := vEmp;
         //Params[1].AsString := vFil;
     End;
end;

procedure Tf_FerGrev.btnAlterarClick(Sender: TObject);
begin
     qrFollowUp.Close;
     qrFollowUp.Params[0].AsDateTime := tbFerGrevData.AsDateTime;
     If rgFerGrev.ItemIndex = 0 Then qrFollowUp.Params[1].AsString := '55'
     Else qrFollowUp.Params[1].AsString := '53';
     qrFollowUp.Open;
     If qrFollowUp.RecordCount <> 0 Then Begin
       MessageDlg('Registro não pode ser alterado!', mtWarning,[mbOk], 0);
       dbgFerGrev.SetFocus;
       Exit;
     End;
     aux := tbFerGrevData.AsString;
     btnAlterar.Tag := 1;
     btnNovo.Tag := 0;
     dbgFerGrev.Enabled := False;
     dbEdtData.Enabled := True;
     dbEdtDesc.Enabled := True;
     dbrgAtivo.Enabled := True;
     btnNovo.Enabled := False;
     btnAlterar.Enabled := False;
     btnSair.Enabled := False;
     tbFerGrev.Edit;
     dbEdtData.SetFocus;
     btnCancelar.Enabled := True;
     btnGravar.Enabled := True;
     pnlCheck.Enabled := False;
end;

procedure Tf_FerGrev.btnCancelarClick(Sender: TObject);
begin
     btnNovo.Enabled := True;
     btnAlterar.Enabled  := True;
     btnGravar.Enabled   := False;
     btnCancelar.Enabled := False;
     btnSair.Enabled := True;
     pnlCheck.Enabled := True;
     dbEdtData.Enabled := False;
     dbEdtDesc.Enabled := False;
     dbrgAtivo.Enabled := False;
     dbgFerGrev.Enabled := True;
     rgFerGrev.Enabled := True;
     tbFerGrev.Cancel;
     btnNovo.SetFocus;
     btnAlterar.Tag := 0;
     btnNovo.Tag := 0;
end;

procedure Tf_FerGrev.btnNovoClick(Sender: TObject);
begin
  btnNovo.Tag := 1;
  btnNovo.Enabled := False;
  btnAlterar.Enabled  := False;
  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  dbgFerGrev.Enabled := False;
  dbEdtData.Enabled := True;
  dbEdtDesc.Enabled := True;
  dbrgAtivo.Enabled := True;
  tbFerGrev.Insert;
  dbEdtData.SetFocus;

  pnlCheck.Enabled := False;
  btnSair.Enabled := False;
  edtData.Clear;
end;

procedure Tf_FerGrev.btnGravarClick(Sender: TObject);
begin
     q_Teste.Close;
     If dbEdtData.Text = '  /  /    ' Then Begin
        MessageDlg('Digite a Data!', mtInformation, [mbOk], 0);
        dbEdtData.SetFocus;
        Exit;
     End;
     Try
        StrToDate(dbEdtData.Text);
     Except
        MessageDlg('Data inválida!', mtWarning, [mbOk], 0);
        dbEdtData.SetFocus;
        Exit;
     End;
     dbEdtDesc.Text := Trim(dbEdtDesc.Text);
     If dbEdtDesc.Text = '' Then Begin
        MessageDlg('Digite a Descrição !', mtInformation, [mbOk], 0);
        dbEdtDesc.SetFocus;
        Exit;
     End;
    // tbFerGrevFilial.AsString := vFil;
     q_Teste.Params[0].AsDateTime := tbFerGrevData.AsDateTime;
    // q_Teste.Params[1].AsString := vFil;
     q_Teste.Open;
     If btnAlterar.Tag = 1 Then
        If aux <> tbFerGrevData.AsString Then
           If q_Teste.RecordCount <> 0 Then Begin
              MessageDlg('Já existe registro com esta Data!', mtWarning, [mbOk], 0);
              dbEdtData.SetFocus;
              Exit;
           End;
     If btnNovo.Tag = 1 Then
        If q_Teste.RecordCount <> 0 Then Begin
           MessageDlg('Já existe registro com esta Data!', mtWarning, [mbOk], 0);
           dbEdtData.SetFocus;
           Exit;
        End;
     q_Teste.Close;

     If rgFerGrev.ItemIndex = 0 Then Begin
        If Not qrObs.Locate('Descricao', dbEdtDesc.Text, []) Then Begin
           qrIncObs.Params[0].AsString := dbEdtDesc.Text;
           qrIncObs.ExecSQL;
           qrObs.Close;
           qrObs.Open;
           qrObs.Locate('Descricao', dbEdtDesc.Text, []);
           Try
              qrIncObsIng.Params[0].AsString := qrObsCodigo.AsString;
              qrIncObsIng.Params[1].AsString := qrObsDescricao.AsString;
              qrIncObsIng.ExecSQL;
           Except
           End;
        End;
        tbFerGrevCodObservacao.AsString := qrObsCodigo.AsString;
     End;
     tbFerGrev.Post;

     If btnNovo.Tag = 1 Then
        MessageDlg('Registro incluído com sucesso!', mtInformation, [mbOk], 0)
     Else
        MessageDlg('Registro alterado com sucesso!', mtInformation, [mbOk], 0);

     btnNovo.Enabled := True;
     btnAlterar.Enabled := True;
     btnGravar.Enabled := False;
     btnCancelar.Enabled := False;
     btnAlterar.Tag := 0;
     btnNovo.Tag := 0;
     btnSair.Enabled := True;
     pnlCheck.Enabled := True;
     pnlGrid.Enabled := True;
     dbgFerGrev.Enabled  := True;
     dbEdtData.Enabled := False;
     dbEdtDesc.Enabled := False;
     dbrgAtivo.Enabled := False;
     rgFerGrev.Enabled := True;

     dbgFerGrev.SetFocus;
end;

procedure Tf_FerGrev.rgFerGrevClick(Sender: TObject);
begin
     If rgFerGrev.ItemIndex = 0 Then Begin
       tbFerGrev.Close;
       tbFerGrev.TableName := 'Greves';
       tbFerGrev.Open;
       dbgFerGrev.Enabled := True;
       pnlGrid.Enabled := True;
       pnlMenu.Enabled := True;
       q_Teste.SQL.Strings[1] := 'FROM Greves';
       dbgFerGrev.SetFocus;
       edtData.Enabled := True;
       btnNovo.Enabled := True;
       btnAlterar.Enabled := True;
       btnGravar.Enabled := False;
       btnCancelar.Enabled := False;
       btnSair.Enabled := True;
      End
     Else
     If rgFerGrev.ItemIndex = 1 Then Begin
       tbFerGrev.Close;
       tbFerGrev.TableName := 'Feriados';
       tbFerGrev.Open; 
       dbgFerGrev.Enabled := True;
       pnlGrid.Enabled := True;
       pnlMenu.Enabled := True;
       q_Teste.SQL.Strings[1] := 'FROM Feriados';
       dbgFerGrev.SetFocus;
       edtData.Enabled := True;
       btnNovo.Enabled := True;
       btnAlterar.Enabled := True;;
       btnGravar.Enabled := False;
       btnCancelar.Enabled := False;
       btnSair.Enabled := True;
     End

end;

procedure Tf_FerGrev.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbFerGrev.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Registro está em edição!', mtWarning, [mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure Tf_FerGrev.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     f_FerGrev := nil;
     f_mscomex.FeriadosGreves1.Enabled := True;
end;

procedure Tf_FerGrev.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_FerGrev.dbEdtDescEnter(Sender: TObject);
begin
     pnlObs.Visible := (rgFerGrev.ItemIndex = 0);
end;

procedure Tf_FerGrev.dbEdtDescExit(Sender: TObject);
begin
     If Not (dbLcbObs.Focused OR dbEdtDesc.Focused) Then
        pnlObs.Visible := False;
end;

procedure Tf_FerGrev.tbFerGrevCodObservacaoChange(Sender: TField);
begin
     If rgFerGrev.ItemIndex = 0 Then
        tbFerGrevDescricao.AsString := qrObsDescricao.AsString;
end;

procedure Tf_FerGrev.dbEdtDescKeyPress(Sender: TObject; var Key: Char);
begin
     qrObs.Locate('Descricao', dbEdtDesc.Text, [loPartialKey]);
end;

procedure Tf_FerGrev.chkAtivosClick(Sender: TObject);
begin
  if chkAtivos.Checked then begin
     tbFerGrev.close;
     tbFerGrev.Filtered := False;
     tbFerGrev.Filter := 'Ativo = 1';
     tbFerGrev.Filtered := TRUE;
     tbFerGrev.Open;
  end
  Else begin
     tbFerGrev.close;
     tbFerGrev.Filtered := False;
     tbFerGrev.Filter := 'Ativo = 0';
     tbFerGrev.Filtered := TRUE;
     tbFerGrev.Open;
  End;       
end;
procedure Tf_FerGrev.edtDataChange(Sender: TObject);
begin

       If Length(F_MSCOMEX.LRTrim(edtData.Text)) = 10 Then begin
         tbFerGrev.close;
         tbFerGrev.Filtered := False;
         tbFerGrev.Filter := 'Data = '''+edtData.text+'''';
         tbFerGrev.Filtered := TRUE;
         tbFerGrev.Open;

         if tbFerGrev.RecordCount = 0 then begin
            MessageDlg('Data não encontrada.', mtWarning, [mbOk], 0);
            tbFerGrev.close;
            tbFerGrev.Filtered := False;
            tbFerGrev.Open;
         end;
    { End
     Else begin
         If edtData.text ='' then begin
           tbFerGrev.close;
           tbFerGrev.Filtered := False;
           tbFerGrev.Open;
         End;  }
     End;
 end;

procedure Tf_FerGrev.edtDataKeyPress(Sender: TObject; var Key: Char);
begin
 if not (Key in['0'..'9',Chr(8)]) then Key:= #0;

end;

end.
