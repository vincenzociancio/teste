unit u_uploaddocumentos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask,
  FileCtrl, shellAPI;

const
  DIR_IMG = '\\msserver01\Sistemas\MS2000\Docs\';
  VAZIO   = '';  

type
  Tf_uploaddocumentos = class(TForm)
    ds_contascorrentes: TDataSource;
    q_cc: TQuery;
    q_ccEmpresa: TStringField;
    q_ccFilial: TStringField;
    q_ccCodigo: TAutoIncField;
    q_ccBanco_Caixa: TStringField;
    q_ccDescricao: TStringField;
    q_ccBanco: TStringField;
    q_ccAgencia: TStringField;
    q_ccConta_Corrente: TStringField;
    q_ccSaldo: TFloatField;
    q_ccNivel: TStringField;
    q_ccData: TDateTimeField;
    q_ccQEMPRESA: TStringField;
    q_ccQFILIAL: TStringField;
    DBG_CC: TDBGrid;
    Panel3: TPanel;
    Panel4: TPanel;
    DBGrid1: TDBGrid;
    ds_qmov: TDataSource;
    q_mov: TQuery;
    q_movEmpresa: TStringField;
    q_movFilial: TStringField;
    q_movCodigo: TIntegerField;
    q_movData: TDateTimeField;
    q_movTipo: TIntegerField;
    q_movDescricao: TStringField;
    q_movDoc: TStringField;
    q_movHistorico: TStringField;
    q_movValor: TFloatField;
    q_movCliente: TStringField;
    q_movCodigo_Mov: TAutoIncField;
    q_movCodigo_SOLREG: TStringField;
    t_contascorrentes: TTable;
    t_contascorrentesEmpresa: TStringField;
    t_contascorrentesFilial: TStringField;
    t_contascorrentesCodigo: TAutoIncField;
    t_contascorrentesBanco_Caixa: TStringField;
    t_contascorrentesDescricao: TStringField;
    t_contascorrentesBanco: TStringField;
    t_contascorrentesAgencia: TStringField;
    t_contascorrentesConta_Corrente: TStringField;
    t_contascorrentesSaldo: TFloatField;
    t_contascorrentesNivel: TStringField;
    t_contascorrentesData: TDateTimeField;
    t_contascorrentesEmpresacc: TStringField;
    t_contascorrentesFilialcc: TStringField;
    t_contascorrentesASCAA: TSmallintField;
    p_desmdeb: TPanel;
    Label10: TLabel;
    Panel11: TPanel;
    DBGrid5: TDBGrid;
    Panel12: TPanel;
    p_contasp: TPanel;
    Label41: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    DBGrid7: TDBGrid;
    b_okcp: TBitBtn;
    b_fechacp: TBitBtn;
    e_valorapagar: TEdit;
    DBLookupComboBox2: TDBLookupComboBox;
    e_detcp: TEdit;
    Panel16: TPanel;
    Label53: TLabel;
    e_contasp: TEdit;
    ds_qdebitos: TDataSource;
    q_debitos: TQuery;
    q_debitosEmpresa: TStringField;
    q_debitosFilial: TStringField;
    q_debitosProcesso: TStringField;
    q_debitosREG: TAutoIncField;
    q_debitosNumerario: TStringField;
    q_debitosUsuario_Previsao: TStringField;
    q_debitosData_Previsao: TDateTimeField;
    q_debitosValor_Previsao: TFloatField;
    q_debitosPrevisao_solicitada: TStringField;
    q_debitosOk_Previsao_financeiro: TStringField;
    q_debitosUsuario_Financeiro: TStringField;
    q_debitosData_Registro: TDateTimeField;
    q_debitosValor_Registrado: TFloatField;
    q_debitosValor_Contabilizado: TFloatField;
    q_debitosContabilizado: TStringField;
    q_debitosUsuario_Contablizado: TStringField;
    q_debitosConta_Corrente: TIntegerField;
    q_debitosCodigo_mov: TIntegerField;
    q_debitosDetalhe: TStringField;
    q_debitosDescricao: TStringField;
    q_debitosSaldo: TFloatField;
    q_debitosRazao_Social: TStringField;
    q_debitosArquivo: TStringField;
    btnPdfDeb: TBitBtn;
    b_fechadesmdeb: TBitBtn;
    qryIncDocs: TQuery;
    qryUpdateN: TQuery;
    qryDelErro: TQuery;
    OP: TOpenDialog;
    qryArquivos: TQuery;
    qryArquivosNumero_Doc: TStringField;
    qryArquivosCodigo: TStringField;
    qryArquivosArquivo: TStringField;
    qryArquivosObservacoes: TStringField;
    ds_Arquivos: TDataSource;
    pnlUploadPdf: TPanel;
    Label56: TLabel;
    Label55: TLabel;
    btnBuscar: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label57: TLabel;
    GroupBox2: TGroupBox;
    lblPdfs: TLabel;
    DBGrid13: TDBGrid;
    edtCaminho: TEdit;
    btnUpload: TBitBtn;
    btnFechaPnlUpload: TBitBtn;
    edtNumero_Documento: TEdit;
    btnExcluirPdf: TBitBtn;
    qryArquivosData_Inclusao: TDateTimeField;
    qryParametro: TQuery;
    qryParametroNumerador_Documentos: TStringField;
    q_debitosCodigo: TStringField;
    q_debitosContrato: TStringField;
    q_debitosLocal_Inventario: TStringField;
    btnLocalizar: TBitBtn;
    b_filtrar: TBitBtn;
    p_filtrar: TPanel;
    Label48: TLabel;
    b_aplicarfiltro: TBitBtn;
    b_cancelafiltro: TBitBtn;
    GroupBox1: TGroupBox;
    Label47: TLabel;
    Label49: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    me_datafinal: TMaskEdit;
    me_datainicial: TMaskEdit;
    me_valorfinal: TEdit;
    me_valorinicial: TEdit;
    dblcTpLancamento: TDBLookupComboBox;
    Label54: TLabel;
    sbLimpaTpLancamento: TBitBtn;
    ds_lancamentof: TDataSource;
    t_lancamentof: TTable;
    t_lancamentofCodigo: TAutoIncField;
    t_lancamentofDescricao: TStringField;
    t_lancamentofPositivo: TSmallintField;
    btnLocalizarValor: TBitBtn;
    p_locdesmembra: TPanel;
    Label3: TLabel;
    GroupBox3: TGroupBox;
    Label6: TLabel;
    edValor: TEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormActivate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure q_ccAfterScroll(DataSet: TDataSet);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure b_fechadesmdebClick(Sender: TObject);
    procedure btnUploadClick(Sender: TObject);
    procedure DBGrid5DblClick(Sender: TObject);
    procedure btnFechaPnlUploadClick(Sender: TObject);
    procedure btnPdfDebClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure btnExcluirPdfClick(Sender: TObject);
    procedure edtCaminhoChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_aplicarfiltroClick(Sender: TObject);
    procedure b_filtrarClick(Sender: TObject);
    procedure b_cancelafiltroClick(Sender: TObject);
    procedure sbLimpaTpLancamentoClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnLocalizarValorClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure edValorKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

    { FUNÇÃO PARA VERIFICAR A FAIXA DO ARQUIVO }
    function verificarFaixa(a: String): String;

    procedure AtualizaGridLancamentos;

    procedure AtualizaGridArquivos;

    procedure AtualizaGridDesmembramento;

    function VerificaEPreencheTipoESubTipoDocumentos : Boolean;

    procedure BuscaCodigoMovimentacao(Doc, Historico, Valor: String);
  public
    QtdMovimentacoes, Posicao : Integer;
    Movimentacao : array [1..20000] of string;

    procedure b_oklocClick(Sender: TObject);
    { Public declarations }
  end;

var
  f_uploaddocumentos: Tf_uploaddocumentos;
  qdataini, qdatafin, qvalorini, qvalorfin, qimportador : string;
  qtplanc : integer;
  nome : string;
  Tipo_Doc     : string;
  Sub_Tipo_Doc : string;

implementation

Uses U_MSCOMEX, u_localizarlancamentos;

{$R *.DFM}

procedure Tf_uploaddocumentos.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_uploaddocumentos.FormShow(Sender: TObject);
begin
  q_cc.open;

  t_lancamentof.Filter   := '((CODIGO = 2) OR (CODIGO = 7) OR (CODIGO = 5))';
  t_lancamentof.Filtered := True;
  t_lancamentof.open;
end;

procedure Tf_uploaddocumentos.q_ccAfterScroll(DataSet: TDataSet);
begin
  AtualizaGridLancamentos;
end;

procedure Tf_uploaddocumentos.DBGrid1DblClick(Sender: TObject);
begin
  AtualizaGridDesmembramento;

  if q_debitos.RecordCount > 0
   then p_desmdeb.Visible := True
   else Application.MessageBox('Este lançamento não possui desmembramento.','Aviso',MB_ICONWARNING);
end;

procedure Tf_uploaddocumentos.b_fechadesmdebClick(Sender: TObject);
begin
  p_desmdeb.visible := false;

  q_debitos.Close;
end;

procedure Tf_uploaddocumentos.btnUploadClick(Sender: TObject);
var
  Numerador, Arquivo, CodigoPasta, Origem, Destino, Extensao : String;
  GoOn : Boolean;
  Qtd_Caracteres : Integer;
begin
  //Buscando numero na tabela parametro
  GoOn := False;

  qryParametro.Close;
  qryParametro.Open;

  //Testando numero
  if not(qryParametro.IsEmpty) and
     (Trim(qryParametroNumerador_Documentos.AsString) <> '' )
   then begin
     // Incrementando numerador
     Numerador := qryParametroNumerador_Documentos.AsString;
     Numerador := IntToStr(StrToInt(Numerador)+1);
     Numerador := StringOfChar('0', 8-Length(Numerador)) + Numerador;

     Arquivo := Copy('RJO',1,3) + Numerador;

     qryParametro.Close;

     //Atualizando Numerador
     try
       qryUpdateN.ParamByName('NewNumero').Value := Numerador;
       qryUpdateN.ExecSQL;
       GoOn := True;
     except
       GoOn := False;
       Application.MessageBox('Erro na atualização do numerador. Upload foi CANCELADO!','Erro', MB_OK+MB_ICONWARNING);
     end;

     // Gravando na tabela de documento
     if (GoOn)
      then begin
        try
          CodigoPasta := verificarFaixa(Arquivo);

          qryIncDocs.ParamByName('Codigo').Value           := 'RJO' + CodigoPasta;
          qryIncDocs.ParamByName('Arquivo').Value          := Arquivo;
          qryIncDocs.ParamByName('Pagina').Value           := '1';
          qryIncDocs.ParamByName('Data_Envio').Value       := Date();
          qryIncDocs.ParamByName('Importador').Value       := q_debitosCodigo.Value;
          qryIncDocs.ParamByName('Processo').Value         := q_debitosProcesso.Value;
          qryIncDocs.ParamByName('Conta_Corrente').Value   := q_debitosConta_Corrente.Value;
          qryIncDocs.ParamByName('Tipo_Doc').Value         := Tipo_Doc;
          qryIncDocs.ParamByName('Sub_Tipo_Doc').Value     := Sub_Tipo_Doc;
          qryIncDocs.ParamByName('Numero_Doc').Value       := edtNumero_Documento.Text;
          qryIncDocs.ParamByName('Vigencia_inicial').Value := NULL;
          qryIncDocs.ParamByName('Vigencia_final').Value   := NULL;
          qryIncDocs.ParamByName('Pdf').Value              := 1;
          qryIncDocs.ParamByName('Observacoes').Value      := NULL;
          qryIncDocs.ParamByName('Status').Value           := 0;
          qryIncDocs.ParamByName('usuario').Value          := v_usuario;
          qryIncDocs.ParamByName('Reg_Numerario').Value    := q_debitosREG.Value;
          qryIncDocs.ParamByName('Contrato').Value         := q_debitosContrato.Value;
          qryIncDocs.ParamByName('Local').Value            := q_debitosLocal_Inventario.Value;
          qryIncDocs.ExecSQL;

          GoOn := GoOn and True;
        except
          GoOn := False;
        end;
      end;

     //Copiando arquivo pdf para servidor
     if( GoOn )
      then begin
        //Diretorio
        Origem  := OP.FileName;

        Qtd_Caracteres := length(Origem);

        Extensao := Copy(Origem,Qtd_Caracteres-3,4);

        if (Extensao = '.jpg')
         then Destino := DIR_IMG + CodigoPasta +'\'+ Arquivo +'.jpg'
         else Destino := DIR_IMG + CodigoPasta +'\'+ Arquivo +'.pdf';

        if (not DirectoryExists(ExtractFilePath(Destino)))
         then ForceDirectories(ExtractFilePath(Destino));

        if (FileExists(Destino))
         then DeleteFile(Destino);

        if not CopyFile(PChar(Origem), PChar(Destino), true)
         then Begin
           qryDelErro.ParamByName('Codigo').Value  := 'RJO' + CodigoPasta;
           qryDelErro.ParamByName('Arquivo').Value := Arquivo;
           qryDelErro.ExecSQL;
           GoOn := false;
           ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
         end;

        if (GoOn)
         then begin
           Application.MessageBox('Upload realizado com sucesso!','Informação', MB_OK+MB_ICONINFORMATION);
           AtualizaGridArquivos;
           AtualizaGridDesmembramento;
           edtNumero_Documento.Clear;
           edtCaminho.Clear;
         end
         else Application.MessageBox('Não foi possível realizar o upload!','Erro', MB_OK+MB_ICONERROR);
      end;
   end
   else Application.MessageBox('Erro com o numerador na tabela parametros','Erro', MB_OK+MB_ICONWARNING);
end;

procedure Tf_uploaddocumentos.DBGrid5DblClick(Sender: TObject);
var
  QryAux : TQuery;
  Pdir : pchar;
begin
  if (q_debitosArquivo.Value = 'SIM')
   then begin
     QryAux := TQuery.Create(nil);
     QryAux.DatabaseName := 'DBNMSCOMEX';

     try
       QryAux.Close;
       QryAux.SQL.Clear;
       QryAux.Params.Clear;
       QryAux.SQL.Add(' SELECT CODIGO, ARQUIVO, PDF            ');
       QryAux.SQL.Add('   FROM DOCUMENTOS                      ');
       QryAux.SQL.Add('  WHERE REG_NUMERARIO = :p0             ');
       QryAux.Params[0].Value := q_debitosREG.Value;
       QryAux.Open;

       if QryAux.RecordCount > 0
        then begin
          if QryAux.Fields[2].AsInteger = 1
           then nome := DIR_IMG + Copy(QryAux.Fields[0].AsString,4,11) + '\' + QryAux.Fields[1].AsString + '.pdf'
           else nome := DIR_IMG + verificarFaixa(QryAux.Fields[0].AsString) + '\' + QryAux.Fields[1].AsString + '.jpg';

          GetMem(Pdir,256);
          StrPCopy(Pdir,nome);

          if FileExists(nome)
           then begin
             ShellExecute(0,nil, Pchar(nome),nil,Pdir,SW_NORMAL);
             FreeMem(Pdir,256);
           end
           else ShowMessage('Arquivo não localizado.');
        end
        else ShowMessage('Arquivo não localizado.');
     finally
       QryAux.Free;
     end;
   end
   else ShowMessage('Não existe arquivo associado a esse desmembramento, favor verificar.');
end;

procedure Tf_uploaddocumentos.btnFechaPnlUploadClick(Sender: TObject);
begin
  qryArquivos.Close;

  pnlUploadPdf.Visible := False;
end;

procedure Tf_uploaddocumentos.AtualizaGridArquivos;
begin
  qryArquivos.Close;
  qryArquivos.SQL.Clear;
  qryArquivos.Params.Clear;  
  qryArquivos.SQL.Add('SELECT DATA_INCLUSAO,                 ');
  qryArquivos.SQL.Add('       NUMERO_DOC,                    ');
  qryArquivos.SQL.Add('       CODIGO,                        ');
  qryArquivos.SQL.Add('       ARQUIVO,                       ');
  qryArquivos.SQL.Add('       OBSERVACOES                    ');
  qryArquivos.SQL.Add('  FROM DOCUMENTOS                     ');
  qryArquivos.SQL.Add(' WHERE PROCESSO      = :PROCESSO      ');
  qryArquivos.SQL.Add('   AND REG_NUMERARIO = :REG_NUMERARIO ');
  qryArquivos.Params[0].Value := q_debitosProcesso.Value;
  qryArquivos.Params[1].Value := q_debitosREG.Value;
  qryArquivos.Open;

  btnExcluirPdf.Enabled := qryArquivos.RecordCount > 0;
end;

function Tf_uploaddocumentos.verificarFaixa(a: String): String;
var
  v, d : String;
  n, f : Integer;
begin
  v := Copy(a, 4, 8);
  n := StrToInt(v);
  f := (n div 10000);

  if (n mod 10000) <> 0
   then Inc(f);

  case f Of
    1..9: d := '000'+ IntToStr(f) +'0000';
    10..99: d := '00'+ IntToStr(f) +'0000';
    100..999: d := '0'+ IntToStr(f) +'0000';
    1000..9999: d := ''+ IntToStr(f) +'0000';
  end;

  { GERANDO DIRETÓRIO DA FAIXA DOS DOCUMENTOS, CASO NÃO EXISTENTA }
  if not DirectoryExists( DIR_IMG + d )
   then CreateDir( DIR_IMG + d );

  Result := d;
end;

procedure Tf_uploaddocumentos.btnPdfDebClick(Sender: TObject);
begin
  if VerificaEPreencheTipoESubTipoDocumentos
   then begin
     AtualizaGridArquivos;

     edtCaminho.Clear;

     edtNumero_Documento.Clear;

     pnlUploadPdf.Visible := True;
   end;
end;

procedure Tf_uploaddocumentos.btnBuscarClick(Sender: TObject);
begin
  if (OP.Execute)
   then edtCaminho.Text := OP.filename;
end;

procedure Tf_uploaddocumentos.SpeedButton2Click(Sender: TObject);
begin
  edtCaminho.Clear;
end;

procedure Tf_uploaddocumentos.btnExcluirPdfClick(Sender: TObject);
var
  QryAux : TQuery;
begin
  if Application.MessageBox('Deseja realmente excluir esse Arquivo desse saldo ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
   then begin
     QryAux := TQuery.Create(nil);
     QryAux.DatabaseName := 'DBNMSCOMEX';

     try
       if (Trim(qryArquivosArquivo.AsString) <> '')
        then begin
          QryAux.Close;
          QryAux.SQL.Clear;
          QryAux.SQL.Add(' DELETE DOCUMENTOS    ');
          QryAux.SQL.Add('  WHERE PDF = 1       ');
          QryAux.SQL.Add('    AND ARQUIVO = :p0 ');
          QryAux.Params[0].Value := qryArquivosArquivo.AsString;
          QryAux.ExecSQL;
        end;
     finally
       QryAux.Free;

       AtualizaGridArquivos;

       AtualizaGridDesmembramento; 
     end;
   end;
end;

procedure Tf_uploaddocumentos.edtCaminhoChange(Sender: TObject);
begin
  btnUpload.Enabled := Not(Trim(edtCaminho.Text) = '');
end;

function Tf_uploaddocumentos.VerificaEPreencheTipoESubTipoDocumentos : Boolean;
var
  QryAux : TQuery;
begin
  QryAux := TQuery.Create(nil);
  QryAux.DatabaseName := 'DBNMSCOMEX';

  try
    Tipo_Doc     := '';
    Sub_Tipo_Doc := '';

    QryAux.Close;
    QryAux.SQL.Clear;
    QryAux.SQL.Add(' SELECT COD_TP_DOCUMENTOS, COD_SUB_TP_DOCUMENTOS ');
    QryAux.SQL.Add('   FROM ASSOCIACAO_NUMERARIO_DOCUMENTO           ');
    QryAux.SQL.Add('  WHERE COD_TP_NUMERARIOS = :p0                  ');
    QryAux.Params[0].Value := q_debitosNumerario.Value;

    QryAux.Open;

    if (QryAux.RecordCount > 0)
     then begin
       if (Trim(QryAux.Fields[0].Value) <> '') and (Trim(QryAux.Fields[1].Value) <> '')
        then begin
          Tipo_Doc     := QryAux.Fields[0].Value;
          Sub_Tipo_Doc := QryAux.Fields[1].Value;
          Result       := True;
        end
        else begin
          Application.MessageBox('Este tipo de Numerário não possui Documentos e/ou Sub Tipo Documentos associados.','Aviso',MB_ICONWARNING);
          Result := False;
        end;
     end
     else begin
       Application.MessageBox('Este tipo de Numerário não possui Documentos e/ou Sub Tipo Documentos associados.','Aviso',MB_ICONWARNING);
       Result := False;
     end;  
  finally
    QryAux.Free;
  end;
end;

procedure Tf_uploaddocumentos.AtualizaGridDesmembramento;
begin
  q_debitos.Close;
  q_debitos.params[0].asstring := q_movCodigo.AsString;
  q_debitos.params[1].asstring := q_movCodigo_Mov.AsString;
  q_debitos.open;
end;

procedure Tf_uploaddocumentos.FormClose(Sender: TObject;
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
  f_uploaddocumentos := nil;
  f_mscomex.UploaddeDocumentos1.Enabled := True;
end;

procedure Tf_uploaddocumentos.b_aplicarfiltroClick(Sender: TObject);
begin
  if (me_datainicial.text <> '  /  /    ')
   then qdataini := me_datainicial.text
   else qdataini := '01/08/2012';

  if (me_datafinal.text <> '  /  /    ')
   then qdatafin := me_datafinal.text
   else qdatafin := '31/12/2050';

  if (me_valorinicial.Text <> '')
   then qvalorini := me_valorinicial.Text
   else qvalorini := '';

  if (me_valorfinal.Text <> '')
   then qvalorfin := me_valorfinal.Text
   else qvalorfin := '';

  if (dblcTpLancamento.Text <> '')
   then qtplanc := dblcTpLancamento.KeyValue
   else qtplanc := 0;   

  p_filtrar.visible := false;

  AtualizaGridLancamentos;
end;
                                               
procedure Tf_uploaddocumentos.AtualizaGridLancamentos;
begin
  q_mov.Close;
  q_mov.SQL.Clear;
  q_mov.SQL.Add(' SELECT Movimentacao_Contas_Correntes.Empresa, Movimentacao_Contas_Correntes.Filial, Movimentacao_Contas_Correntes.Codigo, Movimentacao_Contas_Correntes.Data, Movimentacao_Contas_Correntes.Tipo, Tipos_Lancamento_Ccorrente.Descricao,              ');
  q_mov.SQL.Add('        Movimentacao_Contas_Correntes.Doc, Movimentacao_Contas_Correntes.Historico, Movimentacao_Contas_Correntes.Valor, Movimentacao_Contas_Correntes.Cliente, Movimentacao_Contas_Correntes.Codigo_Mov, Movimentacao_Contas_Correntes.Codigo_SOLREG ');
  q_mov.SQL.Add('   FROM Movimentacao_Contas_Correntes LEFT JOIN Tipos_Lancamento_Ccorrente                                                                                                                                                                            ');
  q_mov.SQL.Add('     ON Movimentacao_Contas_Correntes.Tipo = Tipos_Lancamento_Ccorrente.Codigo                                                                                                                                                                        ');
  q_mov.SQL.Add('  WHERE Tipos_Lancamento_Ccorrente.Codigo IN (''2'',''7'',''5'')                                                                                                                                                                                      ');

  if (q_ccCodigo.asinteger > 0)
   then begin
     q_mov.SQL.Add('   AND Movimentacao_Contas_Correntes.Codigo = :QCONTA ');
     q_mov.ParamByName('QCONTA').AsInteger := q_ccCodigo.Value;
   end;

  if (qdataini <> '')
   then begin
     q_mov.SQL.Add('   AND Movimentacao_Contas_Correntes.Data >= :qdataini ');
     q_mov.ParamByName('qdataini').asdatetime := strtodate(qdataini);
   end;

  if (qdatafin <> '')
   then begin
     q_mov.SQL.Add('   AND Movimentacao_Contas_Correntes.Data <= :qdatafin ');
     q_mov.ParamByName('qdatafin').asdatetime := strtodate(qdatafin);
   end;

  if (qvalorini <> '')
   then begin
     q_mov.SQL.Add('   AND CAST(Movimentacao_Contas_Correntes.Valor AS MONEY) <= :qvalorini ');
     q_mov.ParamByName('qvalorini').AsFloat := StrToFloat(qvalorini);
   end;

  if (qvalorfin <> '')
   then begin
     q_mov.SQL.Add('   AND CAST(Movimentacao_Contas_Correntes.Valor AS MONEY) >= :qvalorfin ');
     q_mov.ParamByName('qvalorfin').AsFloat := StrToFloat(qvalorfin);
   end;

  if (qtplanc > 0)
   then begin
     q_mov.SQL.Add('   AND Movimentacao_Contas_Correntes.Tipo = :qtplanc ');
     q_mov.ParamByName('qtplanc').Value := qtplanc;
   end;

  q_mov.SQL.Add(' ORDER BY Movimentacao_Contas_Correntes.Data DESC, Movimentacao_Contas_Correntes.Codigo_Mov DESC; ');
  q_mov.open;
end;

procedure Tf_uploaddocumentos.b_filtrarClick(Sender: TObject);
begin
  p_filtrar.top     := 134;
  p_filtrar.left    := 226;
  p_filtrar.width   := 289;
  p_filtrar.height  := 237;
  p_filtrar.visible := true;
end;

procedure Tf_uploaddocumentos.b_cancelafiltroClick(Sender: TObject);
begin
  p_filtrar.Visible := False;
end;

procedure Tf_uploaddocumentos.sbLimpaTpLancamentoClick(Sender: TObject);
begin
  dblcTpLancamento.KeyValue := 0;
end;

procedure Tf_uploaddocumentos.btnLocalizarClick(Sender: TObject);
begin
  try
    if not Assigned(f_localizarlancamentos)
     then begin
       f_localizarlancamentos := Tf_localizarlancamentos.Create(Self);
       f_localizarlancamentos.Show;
     end
     else f_localizarlancamentos.Show;
  finally
    f_localizarlancamentos.Show;
  end;
end;

procedure Tf_uploaddocumentos.b_oklocClick(Sender: TObject);
begin
  if (f_localizarlancamentos.rg_localiza.itemindex = 0)
   then begin
     try
       if not q_mov.locate('data',strtodate(f_localizarlancamentos.e_chave.text),[])
        then showmessage('Parâmetro solicitado não foi localizado.');
     except
       showmessage('Parâmetro solicitado não foi localizado.');
     end;
   end;

  if (f_localizarlancamentos.rg_localiza.itemindex = 1)
   then begin
     try
       if (Trim(f_localizarlancamentos.e_chave.text) <> '')
        then begin
          BuscaCodigoMovimentacao(f_localizarlancamentos.e_chave.text,VAZIO,VAZIO);

          Posicao := 1;

          if Movimentacao[Posicao] <> ''
           then begin
             f_localizarlancamentos.btnProximo.Enabled := QtdMovimentacoes > 1;

             q_mov.locate('codigo_mov',Movimentacao[Posicao],[]);
           end
           else showmessage('Parâmetro solicitado não foi localizado.');
        end
        else showmessage('Parâmetro solicitado não foi localizado.');
     except
       showmessage('Parâmetro solicitado não foi localizado.');
     end;      
   end;

  if (f_localizarlancamentos.rg_localiza.itemindex = 2)
   then begin
     try
       if (Trim(f_localizarlancamentos.e_chave.text) <> '')
        then begin
          BuscaCodigoMovimentacao(VAZIO,f_localizarlancamentos.e_chave.text,VAZIO);

          Posicao := 1;

          if Movimentacao[Posicao] <> ''
           then begin
             f_localizarlancamentos.btnProximo.Enabled := QtdMovimentacoes > 1;

             q_mov.locate('codigo_mov',Movimentacao[Posicao],[]);
           end
           else showmessage('Parâmetro solicitado não foi localizado.');
        end
        else showmessage('Parâmetro solicitado não foi localizado.');
     except
       showmessage('Parâmetro solicitado não foi localizado.');
     end;
   end;

  if (f_localizarlancamentos.rg_localiza.itemindex = 3)
   then begin
     try
       StrToFloat(f_localizarlancamentos.e_chave.text);

       if (Trim(f_localizarlancamentos.e_chave.text) <> '')
        then begin
          BuscaCodigoMovimentacao(VAZIO,VAZIO,f_localizarlancamentos.e_chave.text);

          Posicao := 1;

          if Movimentacao[Posicao] <> ''
           then begin
             f_localizarlancamentos.btnProximo.Enabled := QtdMovimentacoes > 1;

             q_mov.locate('codigo_mov',Movimentacao[Posicao],[]);
           end
           else showmessage('Parâmetro solicitado não foi localizado.');
        end
        else showmessage('Parâmetro solicitado não foi localizado.');
     except
       showmessage('Parâmetro solicitado não foi localizado.');
     end;
   end;
end;

procedure Tf_uploaddocumentos.BuscaCodigoMovimentacao(Doc, Historico,
  Valor: String);

  procedure LimpaArray;
  var
    i : Integer;
  begin
    for i := 1 to 20000 do
     begin
       Movimentacao[i] := '';
     end;
  end;

var
  q_Aux2 : TQuery;
  a : Integer;
begin
  q_Aux2 := TQuery.Create(nil);
  q_Aux2.DatabaseName := 'DBNMSCOMEX';

  q_Aux2.SQL.Clear;
  q_Aux2.SQL.Add('SELECT MCC.CODIGO_MOV                    ');
  q_Aux2.SQL.Add('  FROM MOVIMENTACAO_CONTAS_CORRENTES MCC ');
  q_Aux2.SQL.Add(' WHERE MCC.TIPO IN (''2'',''5'',''7'')   ');
  q_Aux2.SQL.Add('   AND MCC.CODIGO = :pCodigo             ');

  q_Aux2.ParamByName('pCodigo').Value := q_movCodigo.AsString;

  if (qdataini <> '')
   then begin
     q_Aux2.SQL.Add(' AND MCC.Data >= :pDataIni ');
     q_Aux2.ParamByName('pDataIni').Value := strtodate(qdataini);
   end;

  if (qdatafin <> '')
   then begin
     q_Aux2.SQL.Add(' AND MCC.Data <= :pDataFin ');
     q_Aux2.ParamByName('pDataFin').Value := strtodate(qdatafin);
   end;

  if (qvalorini <> '')
   then begin
     q_Aux2.SQL.Add('   AND CAST(MCC.Valor AS MONEY) <= :pValorini ');
     q_Aux2.ParamByName('pValorini').Value := StrToFloat(qvalorini);
   end;

  if (qvalorfin <> '')
   then begin
     q_Aux2.SQL.Add('   AND CAST(MCC.Valor AS MONEY) >= :pValorfin ');
     q_Aux2.ParamByName('pValorfin').Value := StrToFloat(qvalorfin);
   end;

  if (qtplanc > 0)
   then begin
     q_Aux2.SQL.Add('   AND MCC.Tipo = :pTplanc ');
     q_Aux2.ParamByName('pTplanc').Value := qtplanc;
   end;

  try
    if (Doc <> VAZIO)
     then begin
       q_Aux2.SQL.Add(' AND MCC.DOC LIKE :pDoc ');
       q_Aux2.ParamByName('pDoc').Value := Doc + '%';
     end
     else if (Historico <> VAZIO)
           then begin
             q_Aux2.SQL.Add(' AND MCC.HISTORICO LIKE :pHistorico ');
             q_Aux2.ParamByName('pHistorico').Value := '%' + Historico + '%';
           end
           else if (Valor <> VAZIO)
                 then begin
                   q_Aux2.SQL.Add(' AND MCC.VALOR = :pValor ');
                   q_Aux2.ParamByName('pValor').Value := StrToFloat(Valor);
                 end;

    q_Aux2.SQL.Add(' ORDER BY MCC.DATA DESC, MCC.CODIGO_MOV DESC ');
    q_Aux2.Open;

    LimpaArray;

    QtdMovimentacoes := q_Aux2.RecordCount;

    a := 1;

    if q_Aux2.RecordCount > 0
     then begin
       q_Aux2.First;

       while not q_Aux2.Eof do
        begin
          Movimentacao[a] := q_Aux2.Fields[0].AsString;

          q_Aux2.Next;
          a := a + 1;
        end;
     end;
  finally
    FreeAndNil(q_Aux2);
  end;
end;

procedure Tf_uploaddocumentos.BitBtn1Click(Sender: TObject);
begin
  if (Trim(edValor.Text) <> '')
   then begin
     try
       if not q_debitos.locate('Valor_Registrado',StrToFloat(edValor.text),[])
        then showmessage('Parâmetro solicitado não foi localizado.')
        else begin
          edValor.Clear;

          p_locdesmembra.Visible := False;
        end;
     except
       showmessage('Parâmetro solicitado não foi localizado.');
     end;
   end;
end;

procedure Tf_uploaddocumentos.btnLocalizarValorClick(Sender: TObject);
begin
  p_locdesmembra.Visible := True;

  edValor.SetFocus;
end;

procedure Tf_uploaddocumentos.BitBtn2Click(Sender: TObject);
begin
  edValor.Clear;

  p_locdesmembra.Visible := False;
end;

procedure Tf_uploaddocumentos.edValorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9',',','-',#8])
   then Key := #0;
end;

end.
