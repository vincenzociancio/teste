unit uUpload_PDF;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Mask, ComCtrls, DBCtrls, Db, DBTables, Buttons, FileCtrl,
  Grids, DBGrids;
type
  TProcesso = class
  private
    fContrato: String;
    fNumero_TR: String;
    fProcesso: String;
    fNomeCliente: String;
    fLocal_Inventario: String;
    fCNPJ: String;
    fCodigoCliente: String;
    fStatus: String;
  public
    property NomeCliente : String read fNomeCliente write fNomeCliente;
    property Numero_TR : String read fNumero_TR write fNumero_TR;
    property Processo : String read fProcesso write fProcesso;
    property Local_Inventario : String read fLocal_Inventario write fLocal_Inventario;
    property Contrato : String read fContrato write fContrato;
    property CNPJ : String read fCNPJ write fCNPJ;
    property Status : String read fStatus write fStatus;
    property CodigoCliente : String read fCodigoCliente write fCodigoCliente;
    Constructor Create;
    Destructor Destroy; override;
    function SearchProcess( value : String ): Boolean;
end;

type
  TfrmUpload_PDF = class(TForm)
    Panel1: TPanel;
    edtProcesso: TMaskEdit;
    Label1: TLabel;
    pnlDadosProcesso: TPanel;
    StaticText1: TStaticText;
    Label2: TLabel;
    Label3: TLabel;
    edtCliente: TEdit;
    edtCNPJ: TEdit;
    Label4: TLabel;
    edtDataInclusao: TEdit;
    Panel2: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtTipo: TDBLookupComboBox;
    edtSub_Tipo: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    edtNumero_Doc: TEdit;
    Label9: TLabel;
    edtObs: TEdit;
    Label10: TLabel;
    qryTipo: TQuery;
    qrySub_Tipo: TQuery;
    dtsSub_Tipo: TDataSource;
    dtsTipo: TDataSource;
    qryProcessos: TQuery;
    qryProcessosCodigo: TStringField;
    qryProcessosNumero_TR: TStringField;
    qryProcessosLocal_Inventario: TStringField;
    qryProcessosContrato: TStringField;
    qryProcessosCNPJ_CPF_COMPLETO: TStringField;
    qryProcessosRazao_Social: TStringField;
    edtCaminho: TEdit;
    btnBuscar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Bevel1: TBevel;
    Label11: TLabel;
    Panel3: TPanel;
    btnUpload: TBitBtn;
    btnFechar: TBitBtn;
    OP: TOpenDialog;
    qryParametro: TQuery;
    qryParametroNumerador_Documentos: TStringField;
    qryUpdateN: TQuery;
    qryIncDocs: TQuery;
    qryProcessosStatus: TStringField;
    qryProcessosCodImportador: TStringField;
    qryDelErro: TQuery;
    GroupBox1: TGroupBox;
    DBGrid1: TDBGrid;
    dtsArquivos: TDataSource;
    qryArquivos: TQuery;
    qryArquivosData_inclusao: TDateTimeField;
    qryArquivosNumero_Doc: TStringField;
    qryArquivosCodigo: TStringField;
    qryArquivosArquivo: TStringField;
    qryArquivosObservacoes: TStringField;
    edtDtInicial: TMaskEdit;
    edtDtFinal: TMaskEdit;
    qryTipocodigo: TStringField;
    qryTipodescricao: TStringField;
    qrySub_Tipocodigo: TStringField;
    qrySub_Tipodescricao: TStringField;
    qryDesmembramentosCheque: TQuery;
    dtsDesmembramentosCheque: TDataSource;
    qryDesmembramentosChequeProcesso: TStringField;
    qryDesmembramentosChequeDescricao: TStringField;
    qryDesmembramentosChequeReg: TIntegerField;
    pnlLancDebito: TPanel;
    Label56: TLabel;
    gbLancamentos: TGroupBox;
    dbGridLancamentos: TDBGrid;
    btnFechaPnlUpload: TBitBtn;
    pnlDesmDebito: TPanel;
    Label14: TLabel;
    GroupBox4: TGroupBox;
    btnFechaDesmDebitos: TBitBtn;
    pnlCheque: TPanel;
    Label13: TLabel;
    GroupBox3: TGroupBox;
    DBGrid2: TDBGrid;
    btnFechaCheque: TBitBtn;
    DBGrid3: TDBGrid;
    qryDesmembramentosChequeHistorico: TStringField;
    qryDesmembramentosChequeValor_Registrado: TFloatField;
    qryDesmembramentosDebito: TQuery;
    dtsDesmembramentosDebito: TDataSource;
    dtsLancamentosDebito: TDataSource;
    qryLancamentosDebito: TQuery;
    qryLancamentosDebitoData: TDateTimeField;
    qryLancamentosDebitoDescricao: TStringField;
    qryLancamentosDebitoHistorico: TStringField;
    qryLancamentosDebitoValor: TFloatField;
    qryLancamentosDebitoCodigo_Mov: TIntegerField;
    qryLancamentosDebitoConta: TStringField;
    dsConta: TDataSource;
    qrConta: TQuery;
    qrContaCodigo: TIntegerField;
    qrContaDescricao: TStringField;
    qryDesm: TQuery;
    dtsDesm: TDataSource;
    qryDesmDescricao: TStringField;
    qryDesmData: TDateTimeField;
    qryDesmHistorico: TStringField;
    qryDesmDetalhe: TStringField;
    qryDesmReg: TIntegerField;
    qryDesmValor_Registrado: TFloatField;
    qryDesmembramentosDebitoProcesso: TStringField;
    qryDesmembramentosDebitoDescricao: TStringField;
    qryDesmembramentosDebitoValor_Registrado: TFloatField;
    qryDesmembramentosDebitoReg: TAutoIncField;
    qryDesmembramentosDebitoDetalhe: TStringField;
    gbFinanceiro: TGroupBox;
    Label16: TLabel;
    SpeedButton1: TSpeedButton;
    Label12: TLabel;
    Label15: TLabel;
    dblcbContaDebito: TDBLookupComboBox;
    edtCheque: TEdit;
    btnLocalizar: TBitBtn;
    edDataDebito: TEdit;
    GroupBox2: TGroupBox;
    rbCheque: TRadioButton;
    rbDebito: TRadioButton;
    DBGrid4: TDBGrid;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtProcessoChange(Sender: TObject);
    procedure edtTipoExit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure edtCaminhoChange(Sender: TObject);
    procedure btnUploadClick(Sender: TObject);
    procedure edtNumero_DocKeyPress(Sender: TObject; var Key: Char);
    procedure edtChequeExit(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnFechaChequeClick(Sender: TObject);
    procedure btnFechaPnlUploadClick(Sender: TObject);
    procedure btnFechaDesmDebitosClick(Sender: TObject);
    procedure rbChequeEnter(Sender: TObject);
    procedure rbDebitoEnter(Sender: TObject);
    procedure DBGrid2DblClick(Sender: TObject);
    procedure edtChequeChange(Sender: TObject);
    procedure edDataDebitoChange(Sender: TObject);
    procedure dbGridLancamentosDblClick(Sender: TObject);
    procedure DBGrid3DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { FUNÇÃO PARA VERIFICAR A FAIXA DO ARQUIVO }
    function verificarFaixa(a: String): String;

    procedure HabilitaCampoCheque;

    procedure HabilitaLocalizar;
  public
    { Public declarations }
  end;

Const
  DIR_IMG = '\\msserver01\Sistemas\MS2000\Docs\';
    
var
  frmUpload_PDF: TfrmUpload_PDF;
  Processo : TProcesso;

implementation

uses U_MSCOMEX;

{$R *.DFM}

{ TProcesso }

constructor TProcesso.Create;
begin
end;

destructor TProcesso.Destroy;
begin
  inherited;
end;

procedure TfrmUpload_PDF.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmUpload_PDF := Nil;
  F_MSCOMEX.UploaddeArquivosPDF1.Enabled := true;
  Action := caFree;
end;

procedure TfrmUpload_PDF.edtProcessoChange(Sender: TObject);
begin
  //Fechando querys
  edtTipo.KeyValue := '';
  qryTipo.Close;
  qryArquivos.Close;
  edtSub_Tipo.KeyValue := '';
  qrySub_Tipo.Close;
  QryDesm.Close;
  edtCliente.Clear;
  edtCNPJ.Clear;
  edtDataInclusao.Clear;
  edtNumero_Doc.Clear;
  edtObs.Clear;
  edtCaminho.Clear;
  btnBuscar.Enabled := false;
  edtDtInicial.Clear;
  edtDtFinal.Clear;
  edtCheque.Clear;
  dblcbContaDebito.KeyValue := 0;
  edDataDebito.Clear;
  rbCheque.Checked;

  //Validando tamanho do numero do processo
  if ((Length(F_MSCOMEX.LRTrim(edtProcesso.Text)) >= 8) or (edtProcesso.Text = 'FINANC'))
   then begin
     //Instanciando a classe
     Processo := TProcesso.create;

     //Verificando se o processo existe
     if ( Processo.SearchProcess( edtProcesso.Text ) )
      then begin
        if F_MSCOMEX.AcessaPasta(edtProcesso.Text, '', frmUpload_PDF)
         then ;

        edtCNPJ.Text         := Processo.CNPJ;
        edtCliente.Text      := Processo.NomeCliente;
        edtDataInclusao.Text := FormatDateTime('dd/mm/yyyy', date);
        qryTipo.Open;

        // buscando arquivos
        qryArquivos.ParamByName('processo').Value := edtProcesso.Text;
        qryArquivos.Open;
        btnBuscar.Enabled := true;

        HabilitaCampoCheque;

        gbFinanceiro.Enabled := (v_nivel_cc = '1');
      end
      else begin
        Application.MessageBox('Processo não existe!','Informação', MB_OK+MB_ICONINFORMATION);
      end;
   end;
end;

procedure TfrmUpload_PDF.edtTipoExit(Sender: TObject);
begin
  edtSub_Tipo.KeyValue := '';
  qrySub_Tipo.Close;
  qrySub_Tipo.ParamByName('Tipo').Value := qryTipo['Codigo'];
  qrySub_Tipo.Open;
end;

function TProcesso.SearchProcess(value: String): Boolean;
begin
  fContrato         := '';
  fNumero_TR        := '';
  fProcesso         := '';
  fCNPJ             := '';
  fNomeCliente      := '';
  fLocal_Inventario := '';
  fCodigoCliente    := '';
  fStatus           := '';

  with ( frmUpload_PDF ) do
   begin
     qryProcessos.Close;
     qryProcessos.ParamByName('Processo').Value := value;
     qryProcessos.Open;

     if ( Not qryProcessos.IsEmpty )
      then begin
        //carrengado a classe
        fContrato         := qryProcessosContrato.AsString;
        fNumero_TR        := qryProcessosNumero_TR.AsString;
        fProcesso         := qryProcessosCodigo.AsString ;
        fCNPJ             := qryProcessosCNPJ_CPF_COMPLETO.AsString;
        fNomeCliente      := qryProcessosRazao_Social.AsString ;
        fLocal_Inventario := qryProcessosLocal_Inventario.AsString;
        fCodigoCliente    := qryProcessosCodImportador.AsString;
        fStatus           := qryProcessosStatus.AsString;
        Result            := true;
      end
      else Result := false;
   end;
end;

procedure TfrmUpload_PDF.SpeedButton2Click(Sender: TObject);
begin
  edtCaminho.Clear;
end;

procedure TfrmUpload_PDF.btnBuscarClick(Sender: TObject);
var
  extensao : String;
begin
  extensao := ExtractFileExt(OP.FileName);
  if ( OP.Execute ) then Begin
    if( LowerCase(extensao) = '.pdf')then
      edtCaminho.Text := OP.filename
    else begin
      edtCaminho.Clear();
      ShowMessage('Arquivo com extensão inválida. Somente extensões "PDF" são suportados!');
    End;
  end;
end;

procedure TfrmUpload_PDF.edtCaminhoChange(Sender: TObject);
begin
  btnUpload.Enabled := Not(Trim( edtCaminho.Text )= '');
end;

procedure TfrmUpload_PDF.btnUploadClick(Sender: TObject);
var
  Numerador,
  Arquivo,
  CodigoPasta,
  Origem,
  Destino : String;
  GoOn : Boolean;
begin
  if (Trim( edtTipo.Text ) = '')
   then begin
     Application.MessageBox('Campo Tipo do Documento é obrigatório!','Aviso', MB_OK+MB_ICONWARNING);
     Abort;
   end;

  if (Trim( edtSub_Tipo.Text ) = '')
   then Begin
     Application.MessageBox('Campo Sub-Tipo do Documento é obrigatório!','Aviso', MB_OK+MB_ICONWARNING);
     Abort;
   end;

  //Buscando numero na tabela parametro
  GoOn := False;
  qryParametro.Close;
  qryParametro.Open;

  //Testando numero
  if not( qryParametro.IsEmpty ) and
    ( Trim(qryParametroNumerador_Documentos.AsString) <> '' )
   then begin
     // Incrementando numerador
     Numerador := qryParametroNumerador_Documentos.AsString;
     Numerador := IntToStr(StrToInt(Numerador)+1);
     Numerador := StringOfChar('0', 8-Length(Numerador)) + Numerador;

     Arquivo := Copy('RJO',1,3) + Numerador;
     qryParametro.Close;

     //Atualizando numerador
     try
       qryUpdateN.ParamByName('NewNumero').Value := Numerador;
       qryUpdateN.ExecSQL;
       GoOn := True;
     except
       GoOn := False;
       Application.MessageBox('Erro na atualização do numerador. Upload foi CANCELADO!','Erro', MB_OK+MB_ICONWARNING);
     end;

     //Gravando na tabela de documento
     if ( GoOn )
      then begin
        try
          CodigoPasta := verificarFaixa( Arquivo );

          qryIncDocs.ParamByName( 'Codigo' ).Value       := 'RJO' + CodigoPasta;
          qryIncDocs.ParamByName( 'Arquivo' ).Value      := Arquivo;
          qryIncDocs.ParamByName( 'Pagina' ).Value       := '1';
          qryIncDocs.ParamByName( 'Importador' ).Value   := Processo.CodigoCliente;
          qryIncDocs.ParamByName( 'Processo' ).Value     := Processo.Processo;
          qryIncDocs.ParamByName( 'Tipo_Doc' ).Value     := edtTipo.KeyValue;
          qryIncDocs.ParamByName( 'Sub_Tipo_Doc' ).Value := edtSub_Tipo.KeyValue;
          qryIncDocs.ParamByName( 'Numero_Doc' ).Value   := edtNumero_Doc.Text;

          if ( edtDtInicial.Text <> '  /  /    ' )
           then qryIncDocs.ParamByName( 'Vigencia_inicial' ).AsDateTime := StrToDate( edtDtInicial.Text )
           else qryIncDocs.ParamByName( 'Vigencia_inicial' ).Value := NULL;

          if ( edtDtFinal.Text <> '  /  /    ' )
           then qryIncDocs.ParamByName( 'Vigencia_final' ).AsDateTime := StrToDate( edtDtFinal.Text )
           else qryIncDocs.ParamByName( 'Vigencia_final' ).Value := NULL;

          qryIncDocs.ParamByName( 'Observacoes' ).Value := edtObs.Text;
          qryIncDocs.ParamByName( 'Contrato' ).Value    := Processo.Contrato;
          qryIncDocs.ParamByName( 'Local' ).Value       := Processo.Local_Inventario;
          qryIncDocs.ParamByName( 'Status' ).Value      := Processo.Status;
          qryIncDocs.ParamByName( 'usuario' ).Value     := v_usuario;

          if (qryDesm.Active) and (qryDesm.RecordCount > 0)
           then qryIncDocs.ParamByName( 'Reg_Numerario' ).Value := qryDesmReg.Value
           else qryIncDocs.ParamByName( 'Reg_Numerario' ).Value := NULL;

          qryIncDocs.ExecSQL;

          GoOn := GoOn and True;
        except
          GoOn := False;
        end;
      end;

     //Copiando arquivo pdf para servidor
     if ( GoOn )
      then begin
        // Diretorio
        Origem  := OP.FileName;
        Destino := DIR_IMG + CodigoPasta +'\'+ Arquivo +'.pdf';

        if ( not DirectoryExists( ExtractFilePath( Destino ) ) )
         then ForceDirectories( ExtractFilePath( Destino ) );

        if ( FileExists( Destino ) )
         then DeleteFile( Destino );

        if Not CopyFile(PChar(Origem), PChar(Destino), true)
         then Begin
           qryDelErro.ParamByName('Codigo').Value := 'RJO' + CodigoPasta;
           qryDelErro.ParamByName('Arquivo').Value := Arquivo;
           qryDelErro.ExecSQL;
           GoOn := false;
           ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
         end;

        if ( GoOn )
         then begin
           Application.MessageBox('Upload foi realizado com sucesso!','Informação', MB_OK+MB_ICONINFORMATION);
           edtProcesso.Clear;
         end
         else Application.MessageBox('Não foi possível realizar o upload!','Erro', MB_OK+MB_ICONERROR);
      end;
   end
   else Application.MessageBox('Erro com o numerador na tabela parametros','Erro', MB_OK+MB_ICONWARNING);
end;

function TfrmUpload_PDF.verificarFaixa(a: String): String;
var
  v, d : String;
  n, f : Integer;
begin
  v := Copy(a, 4, 8);
  n := StrToInt(v);
  f := (n div 10000);

  if (n mod 10000) <> 0
   then Inc(f);

  case f of
    1..9: d       := '000'+ IntToStr(f) +'0000';
    10..99: d     := '00'+ IntToStr(f) +'0000';
    100..999: d   := '0'+ IntToStr(f) +'0000';
    1000..9999: d := ''+ IntToStr(f) +'0000';
  end;
  
  { GERANDO DIRETÓRIO DA FAIXA DOS DOCUMENTOS, CASO NÃO EXISTENTA }
  if not DirectoryExists( DIR_IMG + d )
   then CreateDir( DIR_IMG + d );
   
  Result := d; 
end;

procedure TfrmUpload_PDF.edtNumero_DocKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (edtTipo.Text = '')
   then begin
     Showmessage('Favor informar Tipo do Documento.');
     Abort;
   end;

  if ((qryTipocodigo.AsString = 'PROC') and ((qrySub_Tipocodigo.AsString = '5')or (qrySub_Tipocodigo.AsString = '3')))
   then begin
     if not (Key in ['0'..'9',#8])
      then abort;
   end;
end;

procedure TfrmUpload_PDF.edtChequeExit(Sender: TObject);
begin
  if (Trim(edtCheque.Text) <> '')
   then begin
     qryDesmembramentosCheque.Close;
     qryDesmembramentosCheque.Params[0].Value := edtCheque.Text;
     qryDesmembramentosCheque.Params[1].Value := edtProcesso.Text;
     qryDesmembramentosCheque.Open;

     if qryDesmembramentosCheque.RecordCount = 0
      then begin
        Application.MessageBox('Não existe desmembramento do processo para o cheque informado, verifique com o Financeiro.','Informação', MB_OK+MB_ICONINFORMATION);
        edtCheque.SetFocus;
      end
      else btnLocalizar.SetFocus;
   end;   
end;

procedure TfrmUpload_PDF.HabilitaCampoCheque;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT MCC.DOC                                                              ');
    QryAux.SQL.Add('   FROM MOVIMENTACAO_CONTAS_CORRENTES MCC INNER JOIN Numerarios_Processos NP ');
    QryAux.SQL.Add('     ON MCC.Codigo_Mov = NP.Codigo_mov                                       ');
    QryAux.SQL.Add('  WHERE MCC.DOC <> '''' AND MCC.Tipo = 7 AND NP.Processo = :p0               ');
    QryAux.Params[0].Value := edtProcesso.Text;
    QryAux.Open;

    if (QryAux.RecordCount > 0)
     then edtCheque.Enabled := True
     else edtCheque.Enabled := False;
  finally
    QryAux.Free;
  end;
end;

procedure TfrmUpload_PDF.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure TfrmUpload_PDF.btnLocalizarClick(Sender: TObject);
begin
  if rbCheque.Checked
   then begin
     pnlCheque.Visible := True;

   end;

  if rbDebito.Checked
   then begin
     qryLancamentosDebito.Close;
     qryLancamentosDebito.Params[0].Value := dblcbContaDebito.KeyValue;
     qryLancamentosDebito.Params[1].Value := edDataDebito.Text;
     qryLancamentosDebito.Params[2].Value := edtProcesso.Text;
     qryLancamentosDebito.Open;

     pnlLancDebito.Visible := True;
   end;
end;

procedure TfrmUpload_PDF.btnFechaChequeClick(Sender: TObject);
begin
  pnlCheque.Visible := False;
end;

procedure TfrmUpload_PDF.btnFechaPnlUploadClick(Sender: TObject);
begin
  pnlLancDebito.Visible := False;
end;

procedure TfrmUpload_PDF.btnFechaDesmDebitosClick(Sender: TObject);
begin
  pnlDesmDebito.Visible := False;
end;

procedure TfrmUpload_PDF.rbChequeEnter(Sender: TObject);
begin
  Label12.Visible   := True;
  edtCheque.Visible := True;

  btnLocalizar.Left := 322;

  Label15.Visible          := False;
  dblcbContaDebito.Visible := False;
  Label16.Visible          := False;
  edDataDebito.Visible     := False;
end;

procedure TfrmUpload_PDF.rbDebitoEnter(Sender: TObject);
begin
  qrConta.Close;
  qrConta.Open;  

  Label15.Visible          := True;
  dblcbContaDebito.Visible := True;
  Label16.Visible          := True;
  edDataDebito.Visible     := True;

  btnLocalizar.Left := 458;

  Label12.Visible   := False;
  edtCheque.Visible := False;
end;

procedure TfrmUpload_PDF.DBGrid2DblClick(Sender: TObject);
begin
  pnlCheque.Visible := False;

  qryDesm.Close;
  qryDesm.Params[0].Value := qryDesmembramentosChequeReg.AsInteger;
  qryDesm.Open;
end;

procedure TfrmUpload_PDF.HabilitaLocalizar;
begin
  if rbCheque.Checked
   then btnLocalizar.Enabled := length(Trim(edtCheque.Text)) > 0;

  if rbDebito.Checked
   then begin
     if (dblcbContaDebito.KeyValue <> 0) 
      then begin
        if (Length(edDataDebito.Text) = 10)
         then begin
           try
             StrToDate(edDataDebito.Text);

             btnLocalizar.Enabled := True;
           except
             btnLocalizar.Enabled := False;
           end;
         end
         else btnLocalizar.Enabled := False;
      end
      else btnLocalizar.Enabled := False;
   end;
end;

procedure TfrmUpload_PDF.edtChequeChange(Sender: TObject);
begin
  HabilitaLocalizar;
end;

procedure TfrmUpload_PDF.edDataDebitoChange(Sender: TObject);
begin
  HabilitaLocalizar;
end;

procedure TfrmUpload_PDF.dbGridLancamentosDblClick(Sender: TObject);
begin
  if (qryLancamentosDebito.RecordCount > 0)
   then begin
     qryDesmembramentosDebito.Close;
     qryDesmembramentosDebito.Params[0].Value := qryLancamentosDebitoCodigo_Mov.Value;
     qryDesmembramentosDebito.Params[1].Value := edtProcesso.Text;
     qryDesmembramentosDebito.Open;

     pnlDesmDebito.Visible := True;
   end;
end;

procedure TfrmUpload_PDF.DBGrid3DblClick(Sender: TObject);
begin
  pnlLancDebito.Visible := False;
  pnlDesmDebito.Visible := False;

  qryDesm.Close;
  qryDesm.Params[0].Value := qryDesmembramentosDebitoReg.Value;
  qryDesm.Open;
end;

procedure TfrmUpload_PDF.SpeedButton1Click(Sender: TObject);
begin
  edtCheque.Clear;
  edDataDebito.Clear;
  dblcbContaDebito.KeyValue := '';

  rbCheque.Checked := True;

  qrydesm.Close;
end;

end.
