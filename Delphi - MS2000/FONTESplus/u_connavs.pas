unit u_connavs;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ExtCtrls, DBTables, Db, DBCtrls, Mask,
  ComCtrls;

type
  Tf_connavs = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label4: TLabel;
    edDtEmbarque: TMaskEdit;
    edDtETA: TMaskEdit;
    Label5: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    cbStatus: TComboBox;
    qrChegadaNavios: TQuery;
    DataSource1: TDataSource;
    tbNavios: TTable;
    tbTerminais: TTable;
    QryAux: TQuery;
    QryAux2: TQuery;
    QryDeterminaID: TQuery;
    sbControle: TScrollBox;
    btnGravar: TBitBtn;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    Bevel3: TBevel;
    btnCancelar: TBitBtn;
    Bevel4: TBevel;
    btnNavios: TBitBtn;
    btnTerminais: TBitBtn;
    btnSair: TBitBtn;
    Bevel1: TBevel;
    ckTodos: TCheckBox;
    Bevel2: TBevel;
    cbNavios: TDBLookupComboBox;
    dtsNavios: TDataSource;
    tbNaviosPK_NAVIO: TIntegerField;
    tbNaviosNOME_NAVIO: TStringField;
    tbNaviosEXCLUIDO: TBooleanField;
    tbTerminaisPK_TERMINAL: TIntegerField;
    tbTerminaisNOME_TERMINAL: TStringField;
    tbTerminaisEXCLUIDO: TBooleanField;
    qrChegadaNaviosPK_NAVIO_CHEGADA: TIntegerField;
    qrChegadaNaviosFK_NAVIO: TIntegerField;
    qrChegadaNaviosNOME_NAVIO: TStringField;
    qrChegadaNaviosFK_TERMINAL: TIntegerField;
    qrChegadaNaviosNOME_TERMINAL: TStringField;
    qrChegadaNaviosSTATUS: TStringField;
    qrChegadaNaviosDT_EMBARQUE: TDateTimeField;
    qrChegadaNaviosDT_ETA: TDateTimeField;
    qrChegadaNaviosEXCLUIDO: TBooleanField;
    cbTerminais: TDBLookupComboBox;
    dtsTerminais: TDataSource;
    EdtNavio: TEdit;
    EdtTerminal: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btnNaviosClick(Sender: TObject);
    procedure btnTerminaisClick(Sender: TObject);
    procedure qrChegadaNaviosAfterScroll(DataSet: TDataSet);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure qrChegadaNaviosDT_EMBARQUEGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ckTodosClick(Sender: TObject);
  private
    Inclusao  : Boolean;
    Alteracao : Boolean;

    function DeterminaChavePrimaria : Integer;
    procedure AlterarRegistro;
    procedure ExcluirRegistro;
    procedure IncluirRegistro;
    function ValidaCampos : Boolean;

    procedure AtualizaNavios;
    procedure AtualizaTerminais;
    procedure PreencheCampos;

    function TrazIDStatus(descricao : String) : integer;

    procedure ZerarVariaveis;
    procedure LimpaCampos;
    procedure HabilitaCampos;
    procedure DesabilitaCampos;
    procedure AtualizaGrid;

    procedure InclusaoAlteracao(Ativa : Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_connavs: Tf_connavs;

implementation

uses u_cadnav, u_cadnavter, U_MSCOMEX;

{$R *.DFM}

procedure Tf_connavs.FormCreate(Sender: TObject);
begin
  if (v_usuario = 'LFERRAZ') or (v_usuario = 'SULE') or (v_usuario = 'SIMONE') or
     (v_usuario = 'ODILMA')  or (v_usuario = 'DUDA') or (v_usuario = 'ELIANE') or
     (v_usuario = 'WMEDEIROS')
   then begin
     btnIncluir.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
   end
   else begin
     btnIncluir.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
   end;

  ckTodosClick(ckTodos);

  AtualizaNavios;
  AtualizaTerminais;  
end;

procedure Tf_connavs.btnNaviosClick(Sender: TObject);
begin
  try
    Application.CreateForm(Tf_cadnav, f_cadnav);
    f_cadnav.ShowModal;
  finally
    f_cadnav.Free;
    AtualizaGrid;
  end;
end;

procedure Tf_connavs.btnTerminaisClick(Sender: TObject);
begin
  try
    Application.CreateForm(Tf_cadnavter, f_cadnavter);
    f_cadnavter.ShowModal;
  finally
    f_cadnavter.Free;
    AtualizaGrid;
  end;
end;

procedure Tf_connavs.qrChegadaNaviosAfterScroll(DataSet: TDataSet);
begin
  if (qrChegadaNavios.RecordCount = 0)
   then begin
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
   end
   else PreencheCampos;
end;

procedure Tf_connavs.AtualizaNavios;
begin
  tbNavios.Filtered := (Inclusao or Alteracao);
  tbNavios.Close;
  tbNavios.Open;
end;

procedure Tf_connavs.AtualizaTerminais;
begin
  tbTerminais.Filtered := (Inclusao or Alteracao);
  tbTerminais.Close;
  tbTerminais.Open;
end;

procedure Tf_connavs.btnIncluirClick(Sender: TObject);
begin
  Inclusao := True;

  btnIncluir.Enabled   := False;
  btnAlterar.Enabled   := False;
  btnExcluir.Enabled   := False;
  btnNavios.Enabled    := False;
  btnTerminais.Enabled := False;
  btnGravar.Enabled    := True;
  btnCancelar.Enabled  := True;
  btnSair.Enabled      := False;

  DBGrid1.Enabled := False;

  LimpaCampos;

  InclusaoAlteracao(Inclusao);

  HabilitaCampos;

  AtualizaNavios;
  AtualizaTerminais;

  cbNavios.SetFocus;
end;

procedure Tf_connavs.btnAlterarClick(Sender: TObject);
begin
  Alteracao := True;

  btnIncluir.Enabled   := False;
  btnAlterar.Enabled   := False;
  btnExcluir.Enabled   := False;
  btnNavios.Enabled    := False;
  btnTerminais.Enabled := False;

  btnGravar.Enabled   := True;
  btnCancelar.Enabled := True;
  btnSair.Enabled     := False;

  DBGrid1.Enabled := False;

  InclusaoAlteracao(Alteracao);

  HabilitaCampos;

  AtualizaNavios;
  AtualizaTerminais;

  cbNavios.KeyValue    := qrChegadaNaviosFK_NAVIO.AsInteger;
  cbTerminais.KeyValue := qrChegadaNaviosFK_TERMINAL.AsInteger;

  cbNavios.SetFocus;
end;

procedure Tf_connavs.btnExcluirClick(Sender: TObject);
begin
  if MessageDlg('Confirma a exclusão deste Controle ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
     ExcluirRegistro;
     Application.MessageBox('Terminal excluído.','Informação',MB_ICONINFORMATION);
     AtualizaGrid;
   end;

  DesabilitaCampos; 
  DBGrid1.SetFocus;
end;

function Tf_connavs.DeterminaChavePrimaria: Integer;
begin
  try
    QryDeterminaID.Open;

    if QryDeterminaID.Fields[0].IsNull
      then Result := 1
      else Result := QryDeterminaID.Fields[0].AsInteger + 1;
  finally
    QryDeterminaID.Close;
  end;
end;

procedure Tf_connavs.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

procedure Tf_connavs.AlterarRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE CONTROLE_NAVIOS_CHEGADA SET FK_NAVIO = :FK_NAVIO, FK_TERMINAL = :FK_TERMINAL, STATUS = :STATUS ');
    QryAux.SQL.Add('                                  ,DT_EMBARQUE = :DT_EMBARQUE, DT_ETA = :DT_ETA                       ');
    QryAux.SQL.Add('       WHERE PK_NAVIO_CHEGADA = :PK_NAVIO_CHEGADA                                                     ');
    QryAux.Params[0].Value := tbNaviosPK_NAVIO.AsInteger;
    QryAux.Params[1].Value := tbTerminaisPK_TERMINAL.AsInteger;
    QryAux.Params[2].Value := cbStatus.Text;
    QryAux.Params[3].Value := edDtEmbarque.Text;
    QryAux.Params[4].Value := edDtETA.Text;

    QryAux.Params[5].Value := qrChegadaNavios.FieldByName('PK_NAVIO_CHEGADA').AsInteger;

    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_connavs.ExcluirRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('UPDATE CONTROLE_NAVIOS_CHEGADA SET EXCLUIDO =:EXCLUIDO WHERE PK_NAVIO_CHEGADA = :PK_NAVIO_CHEGADA');
    QryAux.Params[0].Value := 1;
    QryAux.Params[1].Value := qrChegadaNavios.FieldByName('PK_NAVIO_CHEGADA').AsInteger;
    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

procedure Tf_connavs.IncluirRegistro;
begin
  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add('INSERT INTO CONTROLE_NAVIOS_CHEGADA VALUES (:PK_NAVIO_CHEGADA,:FK_NAVIO,:FK_TERMINAL,:STATUS,:DT_EMBARQUE,:DT_ETA,:EXCLUIDO)');
    QryAux.Params[0].Value := DeterminaChavePrimaria;
    QryAux.Params[1].Value := tbNaviosPK_NAVIO.AsInteger;
    QryAux.Params[2].Value := tbTerminaisPK_TERMINAL.AsInteger;
    QryAux.Params[3].Value := cbStatus.Text;
    QryAux.Params[4].Value := edDtEmbarque.Text;
    QryAux.Params[5].Value := edDtETA.Text;
    QryAux.Params[6].Value := 0;

    QryAux.ExecSQL;
  finally
    QryAux.Close;
  end;
end;

function Tf_connavs.ValidaCampos: Boolean;
begin
  Result := True;

  if (cbNavios.Text = '')
   then begin
     Application.MessageBox('Selecione o Navio!','Atenção',MB_ICONWARNING);
     cbNavios.SetFocus;
     Result := False;
     Exit;
   end;

  if (cbTerminais.Text = '')
   then begin
     Application.MessageBox('Selecione o Terminal!','Atenção',MB_ICONWARNING);
     cbTerminais.SetFocus;
     Result := False;
     Exit;
   end;

  if (cbStatus.ItemIndex = -1)
   then begin
     Application.MessageBox('Selecione o Status!','Atenção',MB_ICONWARNING);
     cbStatus.SetFocus;
     Result := False;
     Exit;
   end;

  if (edDtEmbarque.Text <> '  /  /    ')
   then begin
     try
       StrToDate(edDtEmbarque.Text);
     except
       Application.MessageBox('Data Inválida!','Atenção',MB_ICONWARNING);
       edDtEmbarque.SetFocus;
       Result := False;
       Exit;
     end;
   end;

  try
    StrToDate(edDtETA.Text);
  except
    Application.MessageBox('Data Inválida!','Atenção',MB_ICONWARNING);
    edDtETA.SetFocus;
    Result := False;
    Exit;
  end;
end;

procedure Tf_connavs.btnGravarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     try
       if Inclusao
        then begin
          IncluirRegistro;
          Application.MessageBox('Controle de Chegada incluído com sucesso!','Informação',MB_ICONINFORMATION);
        end;

       if Alteracao
        then begin
          AlterarRegistro;
          Application.MessageBox('Controle de Chegada alterado com sucesso!','Informação',MB_ICONINFORMATION);
        end;
     except
       Application.MessageBox('Erro na Inclusão/Alteração do Registro','Informação',MB_ICONINFORMATION);
       Abort;
     end;

     ZerarVariaveis;

     AtualizaGrid;

     btnIncluir.Enabled   := True;
     btnAlterar.Enabled   := True;
     btnExcluir.Enabled   := True;
     btnNavios.Enabled    := True;
     btnTerminais.Enabled := True;
     btnGravar.Enabled    := False;
     btnCancelar.Enabled  := False;
     btnSair.Enabled      := True;

     DBGrid1.Enabled  := True;
     cbNavios.Enabled := False;

     InclusaoAlteracao(False);

     AtualizaNavios;
     AtualizaTerminais;

     DBGrid1.SetFocus;
   end;
end;

procedure Tf_connavs.btnCancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  btnIncluir.Enabled   := True;
  btnAlterar.Enabled   := True;
  btnExcluir.Enabled   := True;
  btnNavios.Enabled    := True;
  btnTerminais.Enabled := True;
  btnGravar.Enabled    := False;
  btnCancelar.Enabled  := False;
  btnSair.Enabled      := True;

  DBGrid1.Enabled := True;

  DesabilitaCampos;

  InclusaoAlteracao(False);  

  AtualizaNavios;
  AtualizaTerminais;

  DBGrid1.SetFocus;
end;

procedure Tf_connavs.DesabilitaCampos;
begin
  cbNavios.Enabled     := False;
  cbTerminais.Enabled  := False;
  cbStatus.Enabled     := False;
  edDtEmbarque.Enabled := False;
  edDtETA.Enabled      := False;
end;

procedure Tf_connavs.HabilitaCampos;
begin
  cbNavios.Enabled     := True;
  cbTerminais.Enabled  := True;
  cbStatus.Enabled     := True;
  edDtEmbarque.Enabled := True;
  edDtETA.Enabled      := True;
end;

procedure Tf_connavs.LimpaCampos;
begin
  edDtEmbarque.Clear;
  cbStatus.ItemIndex := -1;
  edDtETA.Clear;
end;

procedure Tf_connavs.PreencheCampos;
begin
  EdtNavio.Text      := qrChegadaNaviosNOME_NAVIO.AsString;
  EdtTerminal.Text   := qrChegadaNaviosNOME_TERMINAL.AsString;
  cbStatus.ItemIndex := TrazIDStatus(qrChegadaNaviosSTATUS.AsString);
  edDtEmbarque.Text  := qrChegadaNaviosDT_EMBARQUE.AsString;
  edDtETA.Text       := qrChegadaNaviosDT_ETA.AsString;
end;

function Tf_connavs.TrazIDStatus(descricao : String): integer;
begin
  if descricao = 'AGUARDANDO CHEGADA'
    then Result := 0;

  if descricao = 'CHEGADA DO NAVIO'
    then Result := 1;

  if descricao = 'TRANSBORDO'
    then Result := 2;
end;

procedure Tf_connavs.qrChegadaNaviosDT_EMBARQUEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  DBGrid1.Fields[3].Text := FormatDateTime('DD/MM/AAAA',qrChegadaNavios.FieldByName('DT_EMBARQUE').AsDateTime);
end;

procedure Tf_connavs.AtualizaGrid;
begin
  qrChegadaNavios.Close;
  qrChegadaNavios.Open;
end;

procedure Tf_connavs.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_connavs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  f_connavs := Nil;
  F_MSCOMEX.ControledeChegadadeNavios1.Enabled := True;
end;

procedure Tf_connavs.ckTodosClick(Sender: TObject);
var
  StrSql : String;
begin
  if ( ckTodos.Checked ) then
    StrSql := 'SELECT C.PK_NAVIO_CHEGADA, C.FK_NAVIO, N.NOME_NAVIO, C.FK_TERMINAL, '+
              'T.NOME_TERMINAL, C.STATUS, C.DT_EMBARQUE, C.DT_ETA, C.EXCLUIDO '+
              'FROM Controle_Navios_Chegada C '+
              'INNER JOIN Controle_Navios N ON C.FK_NAVIO = N.PK_NAVIO '+
              'INNER JOIN Controle_Navios_Terminal T ON C.FK_TERMINAL = T.PK_TERMINAL '+
              'WHERE C.EXCLUIDO = 0 '+
              'ORDER BY C.DT_ETA'
  else
    StrSql := 'SELECT C.PK_NAVIO_CHEGADA, C.FK_NAVIO, N.NOME_NAVIO, C.FK_TERMINAL, '+
              'T.NOME_TERMINAL, C.STATUS, C.DT_EMBARQUE, C.DT_ETA, C.EXCLUIDO '+
              'FROM Controle_Navios_Chegada C '+
              'INNER JOIN Controle_Navios N ON C.FK_NAVIO = N.PK_NAVIO '+
              'INNER JOIN Controle_Navios_Terminal T ON C.FK_TERMINAL = T.PK_TERMINAL '+
              'WHERE (STATUS <> ''TRANSBORDO'') And C.EXCLUIDO = 0 '+
              'And Not( DATEDIFF(day,cast(C.DT_ETA as date),cast(GETDATE() as date))+1 > 15 '+
              'And STATUS =''CHEGADA DO NAVIO'') ORDER BY C.DT_ETA';

  qrChegadaNavios.Close;
  qrChegadaNavios.SQL.Clear;
  qrChegadaNavios.SQL.Text := StrSql;
  qrChegadaNavios.Open;
end;

procedure Tf_connavs.InclusaoAlteracao(Ativa : Boolean);
begin
  EdtNavio.Visible    := not Ativa;
  EdtTerminal.Visible := not Ativa;
  cbNavios.Visible    := Ativa;
  cbTerminais.Visible := Ativa;
end;

end.
