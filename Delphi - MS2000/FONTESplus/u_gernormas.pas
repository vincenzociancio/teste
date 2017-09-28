unit u_gernormas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBCtrls, StdCtrls, Mask, Grids, DBGrids, Buttons, ExtCtrls, Db, DBTables;

type
  Tf_gernormas = class(TForm)
    DBGrid1: TDBGrid;
    dbeditNorma: TDBEdit;
    dbEditPDF: TDBEdit;
    dbLcbSetor: TDBLookupComboBox;
    pnlBaixo: TPanel;
    btnGravar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSair: TBitBtn;
    btnNovo: TBitBtn;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    qrNormas_setor: TQuery;
    dsNormas_setor: TDataSource;
    dsNormas_gerencia: TDataSource;
    tbNormas_gerencia: TTable;
    qrNormas_setorPK_SETOR: TAutoIncField;
    qrNormas_setorNome_setor: TStringField;
    qrNormas_setorExcluido: TBooleanField;
    tbNormas_gerenciasequencial: TAutoIncField;
    tbNormas_gerenciaNorma: TStringField;
    tbNormas_gerenciaNome_PDF: TStringField;
    tbNormas_gerenciaSetor: TStringField;
    qrDelete_norma: TQuery;
    QryAux: TQuery;
    btnCancelar: TBitBtn;
    btnSetor: TBitBtn;
    btnAlterar: TBitBtn;
    btnRevisa: TBitBtn;
    tbNormas_gerenciaAtivo: TBooleanField;
    qrRevisa: TQuery;
    qrRevisasequencial: TAutoIncField;
    qrRevisaNorma: TStringField;
    qrRevisaNome_PDF: TStringField;
    qrRevisaSetor: TStringField;
    qrRevisaAtivo: TBooleanField;
    qrUpdateRevisa: TQuery;
    qrUpdateLetreiro: TQuery;
    qrLetreiro: TQuery;
    qrInsertLetreiro: TQuery;
    tbEmailAuto: TTable;
    tbEmailAutoCodigo: TAutoIncField;
    tbEmailAutoPrograma: TStringField;
    tbEmailAutoAssunto: TStringField;
    tbEmailAutoTitulo: TStringField;
    tbEmailAutoDe: TStringField;
    tbEmailAutoPara: TStringField;
    tbEmailAutoCC: TStringField;
    tbEmailAutoCCO: TStringField;
    tbEmailAutoBody: TMemoField;
    tbEmailAutoAnexo: TStringField;
    tbEmailAutoHTML: TIntegerField;
    tbEmailAutoData: TDateTimeField;
    tbEmailAutoHora: TDateTimeField;
    qUsuOperac: TQuery;
    qUsuOperacEmail: TStringField;
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSetorClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnRevisaClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1Enter(Sender: TObject);
    procedure tbNormas_gerenciaAtivoGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
  private

  function NormaJaExistente : Boolean;
    procedure EnviaEmail;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_gernormas: Tf_gernormas;

implementation

uses U_MSCOMEX, u_relususet, u_cadsetor;

{$R *.DFM}

procedure Tf_gernormas.btnNovoClick(Sender: TObject);
begin


  tbNormas_gerencia.Append;  
  btnNovo.Enabled := False;
  btnExcluir.Enabled := False;
  btnAlterar.Enabled := False;
  btnSair.Enabled :=False;
  btnGravar.Enabled := True;
  btnCancelar.Enabled := True;
  dbeditNorma.Enabled := True;
  dbEditPDF.Enabled := True;
  dbLcbSetor.Enabled := TRue;
  DBGrid1.Enabled :=False;

end;

procedure Tf_gernormas.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma a exclusão deste Setor ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
      qrDelete_norma.close;
      qrDelete_norma.ParamByName('sequencia').Value := tbNormas_gerenciasequencial.AsString;
      qrDelete_norma.ExecSQL;
      Application.MessageBox('Usuário excluído com sucesso!','Informação',MB_ICONINFORMATION);
      tbNormas_gerencia.close;
      tbNormas_gerencia.open;
  end;
end;

procedure Tf_gernormas.FormActivate(Sender: TObject);
begin
     tbNormas_gerencia.close;
     tbNormas_gerencia.open;
     qrNormas_setor.close;
     qrNormas_setor.open;
   //  tbNormas_gerencia.IndexFieldNames:= 'norma';
   //  tbNormas_gerencia.First;
end;

function Tf_gernormas.NormaJaExistente: Boolean;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('select sequencial from normas_gerencia_proc where norma =:pNorma and nome_PDF =:pNome  and Setor =:pSetor');
    QryAux.Params[0].Value := dbeditNorma.Text;
    QryAux.Params[1].Value := dbEditPDF.Text;
    QryAux.Params[2].Value := dbLcbSetor.Text;
    QryAux.Open;

    if QryAux.RecordCount > 0
     then Application.MessageBox('Essa Norma já está cadastrada.','Alerta',MB_ICONWARNING);

    Result := QryAux.RecordCount > 0;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_gernormas.btnGravarClick(Sender: TObject);
begin

 if (dbeditNorma.text = '')  then begin
     MessageDlg('Favor informar a Norma.', mtWarning, [mbOk], 0);
     exit;
  End;

  if (dbEditPDF.text = '')  then begin
     MessageDlg('Favor informar o Nome do PDF.', mtWarning, [mbOk], 0);
     exit;
  End;

   if (dbLcbSetor.text = '')  then begin
     MessageDlg('Favor informar o Setor.', mtWarning, [mbOk], 0);
     exit;
  End;

   if not NormaJaExistente then begin
      tbNormas_gerencia.post;
      tbNormas_gerencia.close;
      tbNormas_gerencia.open;
      btnNovo.Enabled := True;
      btnAlterar.Enabled := True;
      btnExcluir.Enabled := True;
      btnSair.Enabled := True;
      btnGravar.Enabled := False;
      btnCancelar.Enabled := False;
      dbeditNorma.Enabled := False;
      dbEditPDF.Enabled := False;
      dbLcbSetor.Enabled := False;
      DBGrid1.Enabled := True;
   end;
end;

procedure Tf_gernormas.btnSairClick(Sender: TObject);
begin
  tbNormas_gerencia.close;
  qrNormas_setor.close;
  close;

end;

procedure Tf_gernormas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    f_mscomex.gerencianormas.Enabled := True;
    f_gernormas:= nil;
    Action := caFree;
end;

procedure Tf_gernormas.btnCancelarClick(Sender: TObject);
begin
    tbNormas_gerencia.Cancel;
    btnNovo.Enabled := True;
    btnExcluir.Enabled := True;
    btnAlterar.Enabled :=True;
    btnSair.Enabled := True;
    btnGravar.Enabled := False;
    btnCancelar.Enabled := False;
    dbeditNorma.Enabled := False;
    dbEditPDF.Enabled := False;
    dbLcbSetor.Enabled := False;
    DBGrid1.Enabled := True;
end;

procedure Tf_gernormas.btnSetorClick(Sender: TObject);
begin
 Application.CreateForm(Tf_cadsetor,f_cadsetor);
  f_cadsetor.Show;

end;

procedure Tf_gernormas.btnAlterarClick(Sender: TObject);
begin
  tbNormas_gerencia.edit;
  btnNovo.Enabled := False;
  btnExcluir.Enabled := False;
  btnAlterar.Enabled := False;
  btnSair.Enabled :=False;
  btnGravar.Enabled := True;
  btnCancelar.Enabled := True;
  dbeditNorma.Enabled := True;
  dbEditPDF.Enabled := True;
  dbLcbSetor.Enabled := TRue;
end;

procedure Tf_gernormas.btnRevisaClick(Sender: TObject);
begin
   with qrRevisa do
   begin
     close;
     ParamByName('seq').Value := tbNormas_gerenciasequencial.AsString;
     Open;
   end;

  If qrRevisaAtivo.AsString = 'False' then begin
    Try
      btnRevisa.Caption := 'Ativar';

      qrUpdateRevisa.Close;
      qrUpdateRevisa.ParamByName('AT').Value := '1';
      qrUpdateRevisa.ParamByName('seq').Value := tbNormas_gerenciasequencial.AsString;
      qrUpdateRevisa.ExecSQL;
    Finally
      qrInsertLetreiro.Close;
      qrUpdateRevisa.Close;
    End;
  End
  Else begin
    Try
        btnRevisa.Caption := 'Revisar';

      qrUpdateRevisa.Close;
      qrUpdateRevisa.ParamByName('AT').Value := '0';
      qrUpdateRevisa.ParamByName('seq').Value := tbNormas_gerenciasequencial.AsString;
      qrUpdateRevisa.ExecSQL;

      with qrLetreiro do
         begin
           close;
           ParamByName('Norma1').asString := tbNormas_gerenciaNorma.AsString;
           Open;
      end;

      If qrLetreiro.RecordCount > 0 then begin
        qrUpdateLetreiro.Close;
        qrUpdateLetreiro.ParamByName('Desc').Value := tbNormas_gerenciaNorma.AsString;
        qrUpdateLetreiro.ParamByName('Data').AsString :=  FormatDateTime( 'dd/mm/yyyy', Now );
        qrUpdateLetreiro.ExecSQL;
      End
      Else begin
        qrInsertLetreiro.Close;
        qrInsertLetreiro.ParamByName('Normas').Value := tbNormas_gerenciaNorma.AsString;
        qrInsertLetreiro.ParamByName('Dt').AsString := FormatDateTime( 'dd/mm/yyyy', Now );
        qrInsertLetreiro.ExecSQL;
      End;
      EnviaEmail();
    Finally
      qrInsertLetreiro.Close;
      qrUpdateRevisa.Close;
    End;
    qrRevisa.Close;
    qrRevisa.Open;
    tbNormas_gerencia.close;
    tbNormas_gerencia.open;

  End;
end;

procedure Tf_gernormas.DBGrid1CellClick(Column: TColumn);
begin
   with qrRevisa do
   begin
     close;
     ParamByName('seq').Value := tbNormas_gerenciasequencial.AsString;
     Open;
   end;

     If qrRevisaAtivo.AsString = 'False' then
        btnRevisa.Caption := 'Revisar'
     Else
        btnRevisa.Caption := 'Ativar';

end;

procedure Tf_gernormas.DBGrid1Enter(Sender: TObject);
begin
   with qrRevisa do
   begin
     close;
     ParamByName('seq').Value := tbNormas_gerenciasequencial.AsString;
     Open;
   end;

     If qrRevisaAtivo.AsString = 'False' then
        btnRevisa.Caption := 'Revisar'
     Else
        btnRevisa.Caption := 'Ativar';
end;

procedure Tf_gernormas.EnviaEmail;
var
  corpo_email : string;
  vDe, vPara, vImp,vCC: String;
  vAssunto : String;
  vTitulo  : String;
  vBody    : String;
  vHTML    : integer;
  vAnexo   : String;
begin


  vTitulo  := 'MS2000 - Aviso de Atualização no Procedimento';
  vAssunto := 'Por favor, verifique o Procedimento abaixo';
  vDe      := 'MS2000 <auditoria@logistic-ms.com.br>';

  corpo_email := ' O Procedimento  ' + tbNormas_gerenciaNorma.AsString + ' foi atualizado.Favor verificar no Ms2000.';

  vBody := '<BR>'
         + 'Prezado,<BR>'
         + '<BR>'
         +  corpo_email + '<BR><BR>'
         + 'Este e-mail é automático e não necessita de resposta. <BR>'
         + '<BR><BR>'
         + 'Atenciosamente,'
         + '<BR><BR>'
         + 'MS2000 - SISTEMA GERENCIAL ADUANEIRO<BR><BR>';

   qUsuOperac.Close;
   qUsuOperac.Open;
   vPara := '';
   vAnexo := '';
//  vCC := 'leandro.serra@mslogistica.com.br';
  // vCC := 'manuel.marques@mslogistica.com.br; leandro.serra@mslogistica.com.br';
   while not qUsuOperac.Eof do
   begin

          vPara := qUsuOperacEmail.Value;
//      while not qEmailAvisos.eof do
//      begin

          try
            tbEmailAuto.Open;
            tbEmailAuto.Append;
            tbEmailAutoPrograma.AsString := 'NORMA'; // qEmailAvisosTipo.value;
            tbEmailAutoTitulo.AsString   := vTitulo;
            tbEmailAutoAssunto.AsString  := vAssunto;
            tbEmailAutoAnexo.AsString    := vAnexo;
            tbEmailAutoHTML.Asinteger    := 1; //qEmailAvisosHTML.value;
            tbEmailAutoDe.AsString       := vDe;
            tbEmailAutoPara.AsString     := vPara;
            tbEmailAutoCC.AsString       := vCC;
            tbEmailAutoBody.AsString     := vBody;
            tbEmailAutoData.AsDateTime   := Date();
            tbEmailAutoHora.AsDateTime   := Now;
            tbEmailAuto.Post;
            tbEmailAuto.Close;
          except
            on E:Exception do
             begin
               showmessage(v_usuario+' Erro ao gravar registro na tabela EmailAuto.');
             end;
          end;
//         qEmailAvisos.next;
//      end;
          qUsuOperac.Next;
   end;
   qUsuOperac.Close;
end;


procedure Tf_gernormas.tbNormas_gerenciaAtivoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin

    If tbNormas_gerenciaAtivo.AsString = 'False'then
       Text := 'Ativo'
    Else
       Text := 'Revisando';

end;

end.
