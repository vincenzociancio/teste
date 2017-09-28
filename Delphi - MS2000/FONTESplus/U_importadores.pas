unit U_importadores;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  QuickRpt,QRCtrls,ComObj, FileCtrl,shellAPI;

type
  TF_importadores = class(TForm)
    dsPais: TDataSource;
    dsUF: TDataSource;
    t_Importadores: TTable;
    dsImportadores: TDataSource;
    t_TipoImport: TTable;
    dsTipoImport: TDataSource;
    pnlLocalizar: TPanel;
    Label14: TLabel;
    dblcbLoc: TDBLookupComboBox;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    pnlImport: TPanel;
    Label13: TLabel;
    cmbTipoImport: TDBLookupComboBox;
    Label15: TLabel;
    Label16: TLabel;
    edtRazao: TDBEdit;
    Label17: TLabel;
    edtCnpj: TDBEdit;
    Label18: TLabel;
    edtEnder: TDBEdit;
    Label19: TLabel;
    edtNum: TDBEdit;
    Label20: TLabel;
    edtComple: TDBEdit;
    Label21: TLabel;
    edtBairro: TDBEdit;
    Label22: TLabel;
    edtCidade: TDBEdit;
    Label23: TLabel;
    edtCep: TDBEdit;
    Label24: TLabel;
    cmbUF: TDBLookupComboBox;
    Label25: TLabel;
    edtEstado: TDBEdit;
    Label26: TLabel;
    cmbPais: TDBLookupComboBox;
    Label27: TLabel;
    edtInsc: TDBEdit;
    Bevel1: TBevel;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    q_Import: TQuery;
    dsImport: TDataSource;
    q_Localizar: TQuery;
    dsLocalizar: TDataSource;
    dsProc: TDataSource;
    t_Resp: TTable;
    dsResp: TDataSource;
    q_Pais: TQuery;
    q_Proc: TQuery;
    q_uf: TQuery;
    Panel1: TPanel;
    edtCod: TDBEdit;
    q_Teste: TQuery;
    cmbCAE: TDBLookupComboBox;
    T_CAE: TTable;
    dsCAE: TDataSource;
    Label3: TLabel;
    DBETel: TDBEdit;
    Label4: TLabel;
    qr_VerificaImportadores: TQuery;
    dbeSenhaRad: TDBEdit;
    Label5: TLabel;
    dsSenhaRadar: TDataSource;
    tbSenhaRadar: TTable;
    edtSenhaRadar: TEdit;
    p_ativo: TPanel;
    dbcbWebMS: TDBCheckBox;
    dbcbWebCli: TDBCheckBox;
    dbcbWebRec: TDBCheckBox;
    qrProcessa: TQuery;
    Q_IMPGRUPO: TQuery;
    b_repetro: TBitBtn;
    p_repetro: TPanel;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    rg_repetro: TRadioGroup;
    t_cpf: TTable;
    t_usuariosnet: TTable;
    q_usu: TQuery;
    ds_qusu: TDataSource;
    qr_VerificaImportadoresCNPJ_CPF_COMPLETO: TStringField;
    T_CAEcodigo: TStringField;
    T_CAEdescricao: TStringField;
    q_ProcImportador: TStringField;
    q_PaisCODIGO: TStringField;
    q_PaisDESCRICAO: TStringField;
    t_TipoImportCODIGO: TStringField;
    t_TipoImportDESCRICAO: TStringField;
    q_ImportCod: TIntegerField;
    t_RespEmpresa: TStringField;
    t_RespFilial: TStringField;
    t_RespImportador: TStringField;
    t_RespNome: TStringField;
    t_RespNome_completo: TStringField;
    q_TesteNome: TStringField;
    tbSenhaRadarEmpresa: TStringField;
    tbSenhaRadarFilial: TStringField;
    tbSenhaRadarCodigo: TStringField;
    tbSenhaRadarValidade: TDateTimeField;
    t_cpfNome_Completo: TStringField;
    t_cpfUsuario: TStringField;
    t_cpfSenha: TStringField;
    t_cpfEmail: TStringField;
    t_cpfNivel: TStringField;
    t_usuariosnetCGC_CPF: TStringField;
    t_usuariosnetUsuario: TStringField;
    t_usuariosnetSenha: TStringField;
    t_usuariosnetNome_Completo: TStringField;
    t_usuariosnetEmail: TStringField;
    t_usuariosnetNivel: TStringField;
    t_usuariosnetAcesso_habilitado: TSmallintField;
    q_usuCNPJ_CPF_COMPLETO: TStringField;
    q_usuCGC_CPF: TStringField;
    q_usuRazao_Social: TStringField;
    q_usuUsuario: TStringField;
    q_usuSenha: TStringField;
    q_usuNome_Completo: TStringField;
    q_usuEmail: TStringField;
    q_usuNivel: TStringField;
    q_usuAcesso_habilitado: TSmallintField;
    q_ufCodigo: TStringField;
    q_ufDescricao: TStringField;
    q_Localizarempresa: TStringField;
    q_Localizarfilial: TStringField;
    q_LocalizarCodigo: TStringField;
    q_LocalizarRazao_Social: TStringField;
    q_LocalizarCNPJ_CPF_COMPLETO: TStringField;
    Label7: TLabel;
    edtInscM: TDBEdit;
    Label8: TLabel;
    edtemail: TDBEdit;
    t_ImportadoresEmpresa: TStringField;
    t_ImportadoresFilial: TStringField;
    t_ImportadoresCodigo: TStringField;
    t_ImportadoresRazao_Social: TStringField;
    t_ImportadoresPais: TStringField;
    t_ImportadoresCNPJ_CPF_COMPLETO: TStringField;
    t_ImportadoresCGC_CPF: TStringField;
    t_ImportadoresTipo_Importador: TStringField;
    t_ImportadoresEndereco: TStringField;
    t_ImportadoresNumero: TStringField;
    t_ImportadoresComplemento: TStringField;
    t_ImportadoresBairro: TStringField;
    t_ImportadoresCidade: TStringField;
    t_ImportadoresCEP: TStringField;
    t_ImportadoresUF: TStringField;
    t_ImportadoresEstado: TStringField;
    t_ImportadoresInscricao_Estadual: TStringField;
    t_ImportadoresBanco: TStringField;
    t_ImportadoresAgencia: TStringField;
    t_ImportadoresConta_Corrente: TStringField;
    t_ImportadoresConta_Corrente_Registro: TIntegerField;
    t_ImportadoresConta_Corrente_Deposito: TIntegerField;
    t_Importadoreslink: TStringField;
    t_ImportadoresCAE: TStringField;
    t_ImportadoresTelefone: TStringField;
    t_ImportadoresAtivo: TIntegerField;
    t_ImportadoresAcesso_WEB_MS: TIntegerField;
    t_ImportadoresAcesso_WEB_CLI: TIntegerField;
    t_ImportadoresAcesso_WEB_REC: TIntegerField;
    t_ImportadoresBASE_ICMS: TIntegerField;
    t_ImportadoresMOV_REPETRO: TIntegerField;
    t_ImportadoresInscricao_Municipal: TStringField;
    t_ImportadoresEMAIL: TStringField;
    t_ImportadoresFATURA_ISS: TIntegerField;
    t_ImportadoresEMAIL_MONITORACAO: TStringField;
    grpExporta: TGroupBox;
    dbckExportar: TDBCheckBox;
    t_ImportadoresExporta_Para_Siscomex: TBooleanField;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    qrImportadores: TQuery;
    qrImportadoresRazao_Social: TStringField;
    qrImportadoresCNPJ_CPF_COMPLETO: TStringField;
    qrImportadoresCGC_CPF: TStringField;
    qrImportadoresEndereco: TStringField;
    qrImportadoresNumero: TStringField;
    qrImportadoresComplemento: TStringField;
    qrImportadoresBairro: TStringField;
    qrImportadoresCidade: TStringField;
    qrImportadoresCEP: TStringField;
    qrImportadoresUF: TStringField;
    qrImportadoresEstado: TStringField;
    qrImportadoresInscricao_Estadual: TStringField;
    qrImportadoresBanco: TStringField;
    qrImportadoresAgencia: TStringField;
    qrImportadoresConta_Corrente: TStringField;
    qrImportadoresConta_Corrente_Registro: TIntegerField;
    qrImportadoresConta_Corrente_Deposito: TIntegerField;
    qrImportadoresCAE: TStringField;
    qrImportadoresTelefone: TStringField;
    qrImportadoresAcesso_WEB_MS: TStringField;
    qrImportadoresAcesso_WEB_CLI: TStringField;
    qrImportadoresAcesso_WEB_REC: TStringField;
    qrImportadoresInscricao_Municipal: TStringField;
    qrImportadoresEMAIL: TStringField;
    Image1: TImage;
    SaveDialog4: TSaveDialog;
    btnAtivar: TBitBtn;
    btnDesativar: TBitBtn;
    Bevel5: TBevel;
    qrDesativar: TQuery;
    lblAtivo: TLabel;
    Bevel6: TBevel;
    dbgContratos: TDBGrid;
    dbgArquivos: TDBGrid;
    btnAbrir: TBitBtn;
    dscontratos_cadastrados_financeiro: TDataSource;
    Label2: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    gbVigencia: TGroupBox;
    Label11: TLabel;
    Label10: TLabel;
    btnIncluir: TBitBtn;
    btnSalvar: TBitBtn;
    qContratos: TQuery;
    qContratosnumero_contrato: TStringField;
    qContratospk_contrato: TAutoIncField;
    qContratosdata: TDateTimeField;
    qContratosnro_cliente: TStringField;
    qContratoscliente: TStringField;
    qContratoscod_importador: TStringField;
    qContratoscontato: TStringField;
    qContratosemail: TStringField;
    qContratosdata_aprovacao: TDateTimeField;
    qContratosdata_vigencia_inicial: TDateTimeField;
    qContratosdata_vigencia_final: TDateTimeField;
    qContratosobservacao: TMemoField;
    qContratosutilizacao_de_sistema: TBooleanField;
    qContratosmovimentacao_de_repetro: TBooleanField;
    qContratoUpload: TQuery;
    qContratoUploadfk_contrato: TIntegerField;
    qContratoUploadArquivo: TStringField;
    dsContratoUpload: TDataSource;
    OPdlg: TOpenDialog;
    qContrato: TQuery;
    qContratonumero_contrato: TStringField;
    qContratopk_contrato: TAutoIncField;
    qContratodata: TDateTimeField;
    qContratocliente: TStringField;
    qContratocontato: TStringField;
    qContratoemail: TStringField;
    qContratodata_aprovacao: TDateTimeField;
    qContratoobservacao: TMemoField;
    qryParametro: TQuery;
    qryParametroNumerador_Documentos: TStringField;
    qryUpdateN: TQuery;
    qInsUpload: TQuery;
    qryDelErro: TQuery;
    qNumero_Proposta: TQuery;
    qNumero_PropostaPROXIMO_CONTADOR: TIntegerField;
    qNumero_PropostaDECIMAL: TIntegerField;
    qNumero_PropostaANO_REGISTRO: TIntegerField;
    qrUpdtImportadorS: TQuery;
    pnlUpload: TPanel;
    gbUploadArquivo: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    txtUploadArquivo: TEdit;
    btnUpload: TBitBtn;
    btnCancelarContrato: TBitBtn;
    btnAlterar2: TBitBtn;
    qInsertContrato: TQuery;
    qUpdateProposta: TQuery;
    qrUpdtImportador: TQuery;
    txtContato: TEdit;
    txtVigInicial: TEdit;
    txtVigFinal: TEdit;
    txtAprovacao: TEdit;
    txtEmail: TEdit;
    cbUtilizacaoDoSistema: TCheckBox;
    cbMovimentacaoDeRepetro: TCheckBox;
    txtObs: TMemo;
    qImportadoresAgrupadosContratos: TQuery;
    qImportadoresAgrupadosContratosCodigo: TStringField;
    qImportadoresAgrupadosContratosCodigo_AGRUPADO: TStringField;
    qImportadoresAgrupadosContratosRazao_Social: TStringField;
    qImportadoresAgrupadosContratosCGC_CPF: TStringField;
    qImportadoresAgrupados: TQuery;
    qImportadoresAgrupadosCodigo: TStringField;
    qImportadoresAgrupadosRazao_Social: TStringField;
    qImportadoresAgrupadosCGC_CPF: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure t_ImportadoresAfterScroll(DataSet: TDataSet);
    procedure t_ImportadoresAfterPost(DataSet: TDataSet);
    procedure t_ImportadoresBeforeDelete(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure t_ImportadoresAfterInsert(DataSet: TDataSet);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure edtCnpjKeyPress(Sender: TObject; var Key: Char);
    procedure edtCepKeyPress(Sender: TObject; var Key: Char);
    procedure b_repetroClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure t_usuariosnetAfterPost(DataSet: TDataSet);
    Procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);
    Procedure CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer; FormatarComo : String );
    procedure btnAtivarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnDesativarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btnAbrirClick(Sender: TObject);
    procedure btnBuscarClick(Sender: TObject);
    procedure btnLimparClick(Sender: TObject);
    procedure btnUploadClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterar2Click(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure qContratosAfterScroll(DataSet: TDataSet);
    procedure btnCancelarContratoClick(Sender: TObject);
    procedure qContratosAfterOpen(DataSet: TDataSet);
   private
    { Private declarations }
    procedure AtualizarUsuariosNet(pTipo: Word; pAcesso: Boolean);
    function verificarFaixa(a: String): String;
    procedure HabilitarComponentes(blnEnabled: Boolean);
    function Retorna_Numero_Proposta: String;
    function Year( Data : TDateTime ): Integer;
    procedure Limpa_Campos;
    procedure carregar_proposta(NumeroContrato : String);

    function ValidaCampos : Boolean;

    procedure IncluiContratoVariosImportadores;

    procedure IncluiContratoImportador;

    procedure AtualizaContratoImportador;

    procedure AtivaUpload(Ativa : Boolean);

    procedure HabilitaBotoesImportador(Ativa : Boolean);

    function ImportadoresAgrupados(Importador: String): String;
  public
    { Public declarations }
  end;

const
  v_empresanome = 'MS LOG�STICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';

  AL_DIREITA  = -4152;
  AL_ESQUERDA = -4131;
  AL_CENTRO   = -4108;

  Aleft   = -4131;
  Aright  = -4152;
  ACenter = -4108;
  Ql =  #13#10;

  DIR_IMG = '\\msserver01\ContPro';

var
  F_importadores: TF_importadores;
  novo: string;
  op:integer;
  vImp:String;
  vWebCli, vWebRec: Boolean;
  excel : Variant;
  planilha_0,planilha,arqdir,arqnome,linha,expor:string;
  ColunaP:integer;
  vnome_planilha,
  dirApl,
  dir_cor,
  data,
  data_arq,
  data_temp : String;

  prazo,
  data_chegada : TDateTime;

implementation

uses U_MSCOMEX,U_relimpor,qr_etiq_repetro, u_CadastroPropostas;

{$R *.DFM}

procedure TF_importadores.AtualizarUsuariosNet(pTipo: Word; pAcesso: Boolean);
var
  vTipo, vSinal, vAcesso: String;
begin
  Case pTipo Of
    1: begin
         vTipo  := 'CLI';
         vSinal := '<';
       end;
    2: begin
         vTipo  := 'REC';
         vSinal := '=';
       end;
  else
    Exit;
  end;

  {colocado em 25/02/2011 para libera os acessos da receita}
  qrProcessa.SQL.Clear;
  qrProcessa.SQL.Text := 'update UsuariosNET set Acesso_habilitado=Importadores.Acesso_WEB_REC '
                       + ' FROM         Importadores INNER JOIN '
                       + ' UsuariosNET ON Importadores.CGC_CPF = UsuariosNET.CGC_CPF INNER JOIN '
                       + ' usuarios_beneficio_repetro ON UsuariosNET.Usuario = '
                       + ' usuarios_beneficio_repetro.Usuario '
                       + ' WHERE     (Importadores.Ativo = 1) '
                       + ' AND Importadores.Acesso_WEB_REC=1 and (UsuariosNET.Acesso_habilitado = 0) ';
  qrProcessa.ExecSQL;
end;

procedure TF_importadores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  t_TipoImport.Close;
  q_Pais.Close;
  t_Importadores.Close;

  Action := caFree;
  f_importadores := nil;
  f_mscomex.importadores1.Enabled := True;
end;

procedure TF_importadores.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_importadores.btnImprimirClick(Sender: TObject);
var
  vespacos : string;
  linha, TotalDia,
  i, y, x: integer;
begin

  { Leonardo.Alabarce 02/04/2012 ticket 1849 }
  vespacos := '                                                                                                                                          ';
  vespacos := copy( vespacos, 1, 50 );

  vnome_planilha := 'Relat�rio_de_Importadores';
  vnome_planilha := vnome_planilha+' - '+FormatDateTime( 'ddmmyyyy_hhmm', Now );

  image1.Picture.SaveToFile( 'c:\ms2000\logoms.gif' );

  data     := FormatDateTime( ' dd/mm/yyyy - hh:nn:ss ', Now );
  data_arq := FormatDateTime( ' yyyy/mm/dd - ', Now );

  System.GetDir( 0, dir_cor );

  Excel := CreateOleObject('Excel.Application');
  Excel.Application.DisplayAlerts := False;

  {$IFDEF Testando}
  Excel.Visible := True;
  {$ELSE}
  Excel.Visible := False;
  {$ENDIF}

  Excel.Workbooks.add(1);
  // todos
  Excel.Workbooks[1].Worksheets['Plan1'].Name := 'Relat�rio_de_Importadores';
  Excel.WorkSheets['Relat�rio_de_Importadores'].Select;
  Excel.WorkSheets['Relat�rio_de_Importadores'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);

  for x := 1 to 6 do
   begin
     Excel.Cells[x,1].Font.Name := 'Arial';
     Application.ProcessMessages;
   end;

  Excel.Cells[1,1].Font.Size := 12;
  Excel.cells[1,1].Font.Bold := True;
  Excel.Cells[1,1] := vespacos + 'MS2000PLUS - SISTEMA GERENCIAL ADUANEIRO';

  Excel.Cells[2,1].Font.Size := 12;
  Excel.cells[2,1].Font.Bold := True;
  Excel.Cells[2,1] := vespacos + 'Relat�rio de Importadores';

  Excel.Cells[3,1].Font.Size := 10;
  Excel.Cells[3,1] := vespacos + 'Data da Consulta: '+ FormatDateTime('dd/mm/yyyy', Date) +' Hora: '+ FormatDateTime('hh:mm:ss', Time) +'' ;
  Excel.Cells[4,1] := vespacos;

  // deixar preenchimento em branco
  for x := 1 to 50 do
   begin
     for y := 1 to 22 do
      begin
        Excel.cells[x, y].interior.Color := clWhite;
        Application.ProcessMessages;
      end;

     Application.ProcessMessages;
   end;
  //---fim todos--

   //Cabe�alho
  linha := 7;
  Celtitulo(linha, 1,'Razao Social', clNavy, ACenter, clWhite, 10, 40);
  Celtitulo(linha, 2,'CNPJ', clNavy, ACenter, clWhite, 10, 20);
  Celtitulo(linha, 3,'Endere�o', clNavy, ACenter, clWhite, 10, 36);
  Celtitulo(linha, 4,'Numero', clNavy, ACenter, clWhite, 10, 8 );
  Celtitulo(linha, 5,'Complemento', clNavy, ACenter, clWhite, 10, 20);
  Celtitulo(linha, 6,'Bairro', clNavy, ACenter, clWhite, 10, 20);
  Celtitulo(linha, 7,'Cidade', clNavy, ACenter, clWhite, 10, 15);
  Celtitulo(linha, 8,'CEP', clNavy, ACenter, clWhite, 10, 14);
  Celtitulo(linha, 9,'UF', clNavy, ACenter, clWhite, 10, 6);
  Celtitulo(linha, 10,'Estado', clNavy, ACenter, clWhite, 10, 14);
  Celtitulo(linha, 11,'Inscricao Estadual', clNavy, ACenter, clWhite, 10, 18);
  Celtitulo(linha, 12,'Banco', clNavy, ACenter, clWhite, 10, 8);
  Celtitulo(linha, 13,'Agencia', clNavy, ACenter, clWhite, 10, 10);
  Celtitulo(linha, 14,'Conta Corrente', clNavy, ACenter, clWhite, 10, 14);
  Celtitulo(linha, 15,'Conta Corrente Registro', clNavy, ACenter, clWhite, 10, 18);
  Celtitulo(linha, 16,'Conta Corrente Deposito', clNavy, ACenter, clWhite, 10, 18);
  Celtitulo(linha, 17,'CAE', clNavy, ACenter, clWhite, 10, 20);
  Celtitulo(linha, 18,'Telefone', clNavy, ACenter, clWhite, 10, 21);
  Celtitulo(linha, 19,'Acesso WEB MS', clYellow, ACenter, clNavy, 10, 18);
  Celtitulo(linha, 20,'Acesso WEB CLI', clYellow, ACenter, clNavy, 10,18);
  Celtitulo(linha, 21,'Acesso WEB REC', clYellow, ACenter, clNavy, 10,18);
  Celtitulo(linha, 22,'Inscricao Municipal', clNavy, ACenter, clWhite, 10, 20);

  //corpo
  linha := 8;

  if MessageDlg('Deseja Gerar Somente os Importadores Ativos? ', mtConfirmation,[mbYes, mbNo], 0) = mrYes
   then begin
     qrImportadores.sql.Clear;
     qrImportadores.sql.Add('SELECT Razao_Social,CNPJ_CPF_COMPLETO,CGC_CPF,Endereco,Numero,Complemento,Bairro,');
     qrImportadores.sql.Add('Cidade,CEP,UF,Estado,Inscricao_Estadual,Banco,Agencia,Conta_Corrente,');
     qrImportadores.sql.Add('Conta_Corrente_Registro,Conta_Corrente_Deposito,CAE,Telefone,');
     qrImportadores.sql.Add('case when[Acesso_WEB_MS] = 1 then ''Sim'' else ''N�o'' end  as Acesso_WEB_MS,');
     qrImportadores.sql.Add('case when[Acesso_WEB_CLI]  = 1 then ''Sim'' else ''N�o'' end  as Acesso_WEB_CLI,');
     qrImportadores.sql.Add('case when[Acesso_WEB_REC] = 1 then ''Sim'' else ''N�o'' end  as Acesso_WEB_REC,');
     qrImportadores.sql.Add('Inscricao_Municipal,EMAIL');
     qrImportadores.sql.Add('FROM Importadores');
     qrImportadores.SQL.add ('where Ativo = :ativo');
     qrImportadores.SQL.add ('order by Razao_Social');
     qrImportadores.Params[0].AsString := '1';
     qrImportadores.Open;
     qrImportadores.First;
   end
   else begin
     qrImportadores.sql.Clear;
     qrImportadores.sql.Add('SELECT Razao_Social,CNPJ_CPF_COMPLETO,CGC_CPF,Endereco,Numero,Complemento,Bairro,');
     qrImportadores.sql.Add('Cidade,CEP,UF,Estado,Inscricao_Estadual,Banco,Agencia,Conta_Corrente,');
     qrImportadores.sql.Add('Conta_Corrente_Registro,Conta_Corrente_Deposito,CAE,Telefone,');
     qrImportadores.sql.Add('case when[Acesso_WEB_MS] = 1 then ''Sim'' else ''N�o'' end  as Acesso_WEB_MS,');
     qrImportadores.sql.Add('case when[Acesso_WEB_CLI]  = 1 then ''Sim'' else ''N�o'' end  as Acesso_WEB_CLI,');
     qrImportadores.sql.Add('case when[Acesso_WEB_REC] = 1 then ''Sim'' else ''N�o'' end  as Acesso_WEB_REC,');
     qrImportadores.sql.Add('Inscricao_Municipal,EMAIL');
     qrImportadores.sql.Add('FROM Importadores');
     qrImportadores.SQL.add ('order by Razao_Social');
     qrImportadores.Open;
     qrImportadores.First;
   end;

  btnNovo.Enabled       := False;
  btnAlterar.Enabled    := False;
  btnLocalizar.Enabled  := False;
  btnImprimir.Enabled   := False;
  btnCancelar.Enabled   := False;
  btnGravar.Enabled     := False;
  btnFechar.Enabled     := False;
  b_repetro.Enabled     := False;
  edtRazao.Enabled      := False;
  edtCnpj.Enabled       := False;
  edtEnder.Enabled      := False;
  edtNum.Enabled        := False;
  edtComple.Enabled     := False;
  edtBairro.Enabled     := False;
  edtCidade.Enabled     := False;
  edtCep.Enabled        := False;
  cmbUF.Enabled         := False;
  edtEstado.Enabled     := False;
  cmbPais.Enabled       := False;
  cmbCAE.Enabled        := False;
  DBETel.Enabled        := False;
  edtInsc.Enabled       := False;
  edtInscM.Enabled      := False;
  edtemail.Enabled      := False;
  cmbTipoImport.Enabled := False;
  dbeSenhaRad.Enabled   := False;
  grpExporta.Enabled    := False;

  TotalDia := 0;

  for i:= 1 to qrImportadores.RecordCount do
   begin
     CelDetalhe(linha, 1,  qrImportadoresRazao_Social.asstring, clWhite, ALeft, clNavy, 10, 40, 'texto');
     CelDetalhe(linha, 2,  ''''+ qrImportadoresCNPJ_CPF_COMPLETO.AsString, clWhite, ALeft, clNavy, 10, 20, 'texto');
     CelDetalhe(linha, 3,  qrImportadoresEndereco.asstring, clWhite, ALeft, clNavy, 10, 36, 'texto');
     CelDetalhe(linha, 4,  qrImportadoresNumero.asstring, clWhite, ALeft, clNavy, 10, 8, 'texto');
     CelDetalhe(linha, 5,  qrImportadoresComplemento.AsString, clWhite, ALeft, clNavy, 10, 20, 'texto');
     CelDetalhe(linha, 6,  qrImportadoresBairro.AsString, clWhite, ALeft, clNavy, 10, 20, 'texto');
     CelDetalhe(linha, 7,  qrImportadoresCidade.asstring, clWhite, ALeft, clNavy, 10, 15, 'texto');
     CelDetalhe(linha, 8,  qrImportadoresCEP.asstring, clWhite, ALeft, clNavy, 10, 14, 'texto');
     CelDetalhe(linha, 9,  qrImportadoresUF.asstring, clWhite, ALeft, clNavy, 10, 6, 'texto');
     CelDetalhe(linha, 10, qrImportadoresEstado.asstring, clWhite, ALeft, clNavy, 10, 14, 'texto');
     CelDetalhe(linha, 11, qrImportadoresInscricao_Estadual.asstring, clWhite, ALeft, clNavy, 10, 18, 'texto');
     CelDetalhe(linha, 12, qrImportadoresBanco.asstring, clWhite, ALeft, clNavy, 10, 8, 'texto');
     CelDetalhe(linha, 13, qrImportadoresAgencia.asstring, clWhite, ALeft, clNavy, 10, 10, 'texto');
     CelDetalhe(linha, 14, qrImportadoresConta_Corrente.asstring, clWhite, ALeft, clNavy, 10, 14, 'texto');
     CelDetalhe(linha, 15, qrImportadoresConta_Corrente_Registro.AsString, clWhite, ACenter, clNavy, 10, 18, 'texto');
     CelDetalhe(linha, 16, qrImportadoresConta_Corrente_Deposito.asstring, clWhite, ACenter, clNavy, 10, 18, 'texto');
     CelDetalhe(linha, 17, qrImportadoresCAE.asstring, clWhite, ACenter, clNavy, 10, 20, 'texto');
     CelDetalhe(linha, 18, qrImportadoresTelefone.asstring, clWhite, ALeft, clNavy, 10, 21, 'texto');
     CelDetalhe(linha, 19, qrImportadoresAcesso_WEB_MS.asstring, clWhite, ACenter, clNavy, 10, 18, 'texto');
     CelDetalhe(linha, 20, qrImportadoresAcesso_WEB_CLI.asstring, clWhite, ACenter, clNavy, 10, 18, 'texto');
     CelDetalhe(linha, 21, qrImportadoresAcesso_WEB_REC.asstring, clWhite, ACenter, clNavy, 10, 18, 'texto');
     CelDetalhe(linha, 22, qrImportadoresInscricao_Municipal.asstring, clWhite, ALeft, clNavy, 10, 20, 'texto');

     qrImportadores.Next;
     inc( linha, 1 );
     Application.ProcessMessages;
   end;// fim do for

        //--
  if SaveDialog4.Execute
   then begin
     if FileExists(SaveDialog4.FileName)
      then if MessageDlg(Format('Voc� deseja salvar esse arquivo?', [SaveDialog4.FileName]),mtConfirmation, mbYesNoCancel, 0) <> idYes
            then Exit;

     Excel.Workbooks[1].SaveAs(SaveDialog4.FileName );
     // Enviar emeail
     {$IFDEF Testando}
     //N�o faz nada
     {$ELSE}
     Excel.Quit;
     Excel := unassigned;
     {$ENDIF}
     btnNovo.Enabled      := True;
     btnAlterar.Enabled   := True;
     btnLocalizar.Enabled := True;
     btnImprimir.Enabled  := True;
     btnCancelar.Enabled  := False;
     btnGravar.Enabled    := False;
     btnFechar.Enabled    := True;
     b_repetro.Enabled    := True;
     p_ativo.Enabled      := False;
     grpExporta.Enabled   := False;

     edtRazao.Enabled  := False;
     edtCnpj.Enabled   := False;
     edtEnder.Enabled  := False;
     edtNum.Enabled    := False;
     edtComple.Enabled := False;
     edtBairro.Enabled := False;
     edtCidade.Enabled := False;
     edtCep.Enabled    := False;
     cmbUF.Enabled     := False;
     edtEstado.Enabled := False;
     cmbPais.Enabled   := False;
     DBETel.Enabled    := False;
     cmbCAE.Enabled    := False;
     edtInsc.Enabled   := False;
     edtInscM.Enabled  := False;
     edtemail.Enabled  := false;

     cmbTipoImport.Enabled := False;
     edtSenhaRadar.Visible := False;
     dbeSenhaRad.Enabled   := True;
     dbeSenhaRad.Visible   := True;
     edtSenhaRadar.Text    := '';

     qrImportadores.Close;
   end;
  //FIM------------------------------------------------------------------------
end;

procedure TF_importadores.btnNovoClick(Sender: TObject);
begin
  dbeSenhaRad.Enabled   := False;
  dbeSenhaRad.Visible   := False;
  edtSenhaRadar.Visible := True;
  T_importadores.Append;

  t_importadoresativo.asinteger          := 0;
  t_ImportadoresAcesso_WEB_MS.asinteger  := 1;
  t_ImportadoresAcesso_WEB_CLI.asinteger := 1;
  t_ImportadoresAcesso_WEB_REC.asinteger := 1;

  p_ativo.Enabled := ((v_Inativa_Cliente = 1)  or (v_nivel = '0'));

  btnNovo.Enabled       := False;
  btnAlterar.Enabled    := False;
  btnLocalizar.Enabled  := False;
  btnImprimir.Enabled   := False;
  btnCancelar.Enabled   := True;
  btnGravar.Enabled     := True;
  btnFechar.Enabled     := True;
  b_repetro.Enabled     := True;
  edtRazao.Enabled      := True;
  edtCnpj.Enabled       := True;
  edtEnder.Enabled      := True;
  edtNum.Enabled        := True;
  edtComple.Enabled     := True;
  edtBairro.Enabled     := True;
  edtCidade.Enabled     := True;
  edtCep.Enabled        := True;
  cmbUF.Enabled         := True;
  edtEstado.Enabled     := True;
  cmbPais.Enabled       := True;
  cmbCAE.Enabled        := True;
  DBETel.Enabled        := True;
  edtInsc.Enabled       := True;
  edtInscM.Enabled      := True;
  edtemail.Enabled      := True;
  cmbTipoImport.Enabled := True;
  dbeSenhaRad.Enabled   := True;
  grpExporta.Enabled    := true;
  edtRazao.SetFocus;

  op := 1;
end;

procedure TF_importadores.btnExcluirClick(Sender: TObject);
begin
  q_Proc.Params[0].AsString := t_ImportadoresCodigo.AsString;
  q_Proc.Open;

  if q_Proc.RecordCount <> 0
   then MessageDlg('Existem Processos com este Importador. N�o pode ser exclu�do!', mtInformation,[mbOk], 0)
   else if MessageDlg('Confirma exclus�o deste Importador?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
         then begin
           while not t_Resp.Eof do
             t_Resp.Delete;
             t_Importadores.Delete;
             MessageDlg('Importador exclu�do!', mtInformation,[mbOk], 0);
         end;
  q_Proc.Close;
  btnNovo.SetFocus;
end;

procedure TF_importadores.btnAlterarClick(Sender: TObject);
begin
  btnNovo.Enabled      := False;
  btnAlterar.Enabled   := False;
  btnLocalizar.Enabled := False;
  btnImprimir.Enabled  := False;
  btnCancelar.Enabled  := True;
  btnGravar.Enabled    := True;

  edtRazao.Enabled      := True;
  edtEnder.Enabled      := True;
  edtNum.Enabled        := True;
  edtComple.Enabled     := True;
  edtBairro.Enabled     := True;
  edtCidade.Enabled     := True;
  edtCep.Enabled        := True;
  cmbUF.Enabled         := True;
  edtEstado.Enabled     := True;
  cmbPais.Enabled       := True;
  cmbCAE.Enabled        := True;
  DBETel.Enabled        := True;
  edtInsc.Enabled       := True;
  edtInscM.Enabled      := True;
  edtemail.Enabled      := True;
  grpExporta.Enabled    := true;
  edtCnpj.Enabled       := True;
  cmbTipoImport.Enabled := True;
  dbeSenhaRad.Enabled   := True;

  vWebCli := t_ImportadoresAcesso_WEB_CLI.Asinteger = 1;
  vWebRec := t_ImportadoresAcesso_WEB_REC.Asinteger = 1;

  t_Importadores.Edit;

  p_ativo.Enabled := ((v_Inativa_Cliente = 1) or (v_nivel = '0'));
  edtRazao.SetFocus;
  op := 2;
end;

procedure TF_importadores.btnGravarClick(Sender: TObject);
var
  i : integer;
begin
  if edtRazao.Text = ''
   then begin
     MessageDlg('Digite a Raz�o Social do Importador!', mtInformation,[mbOk], 0);
     edtRazao.SetFocus;
     Exit;
   end;

  if edtCnpj.Text = ''
   then begin
     MessageDlg('Digite o CNPJ do Importador!', mtInformation,[mbOk], 0);
     edtCnpj.SetFocus;
     Exit;
   end;

  qr_VerificaImportadores.Params[0].AsString := edtCnpj.Text;
  qr_VerificaImportadores.Open;

  if qr_VerificaImportadores.RecordCount <> 0
   then begin
     if vIMP <> edtCnpj.Text
      then begin
        MessageDlg('Importador j� Cadastrado!', mtWarning,[mbOk], 0);
        edtCnpj.SetFocus;
        qr_VerificaImportadores.Close;
        Exit;
      end;
   end;

  qr_VerificaImportadores.Close;

  if op = 1
   then begin
     novo := '1';
     Q_Import.Open;

     if Q_Import.RecordCount <> 0
      then novo := IntToStr(StrToInt(Q_ImportCod.AsString) + 1);

     Q_Import.Close;

     edtCod.Text := novo;

     t_ImportadoresCodigo.AsString  := novo;
     t_ImportadoresCgc_cpf.AsString := t_ImportadoresCnpj_cpf_completo.AsString;
     t_ImportadoresEmpresa.AsString := v_empresa;
     t_ImportadoresFilial.AsString  := v_filial;
     t_Importadores.Post;

     tbsenharadar.Edit;
     tbSenhaRadarCodigo.AsString   := t_ImportadoresCodigo.AsString;
     tbSenhaRadarEmpresa.AsString  := t_ImportadoresEmpresa.AsString;
     tbSenhaRadarFilial.AsString   := t_ImportadoresFilial.AsString;
     tbSenhaRadarValidade.AsString := edtSenhaRadar.Text;
     edtSenhaRadar.Visible         := False;

     dbeSenhaRad.Enabled := True;
     dbeSenhaRad.Visible := True;
     edtSenhaRadar.Text  := '';
     MessageDlg('Importador incluido com sucesso!', mtInformation,[mbOk], 0);
   end
   else begin
     t_Importadores.Post;

     if vWebCli <> ( t_ImportadoresAcesso_WEB_CLI.Asinteger = 1 )
      then AtualizarUsuariosNet(1, ( t_ImportadoresAcesso_WEB_CLI.Asinteger = 1 ));

     if vWebRec <> ( t_ImportadoresAcesso_WEB_REC.Asinteger = 1 )
      then AtualizarUsuariosNet(2, ( t_ImportadoresAcesso_WEB_REC.Asinteger = 1 ));

     MessageDlg('Altera��o do Importador feita com sucesso!', mtInformation,[mbOk], 0);
   end;

  edtRazao.Enabled  := False;
  edtCnpj.Enabled   := False;
  edtEnder.Enabled  := False;
  edtNum.Enabled    := False;
  edtComple.Enabled := False;
  edtBairro.Enabled := False;
  edtCidade.Enabled := False;
  edtCep.Enabled    := False;
  cmbUF.Enabled     := False;
  edtEstado.Enabled := False;
  cmbPais.Enabled   := False;
  DBETel.Enabled    := False;
  cmbCAE.Enabled    := False;
  edtInsc.Enabled   := False;
  edtInscM.Enabled  := False;
  edtemail.Enabled  := false;

  cmbTipoImport.Enabled := False;
  dbeSenhaRad.Enabled   := False;

  btnNovo.Enabled      := True;
  btnAlterar.Enabled   := True;
  btnLocalizar.Enabled := True;
  btnImprimir.Enabled  := True;
  btnCancelar.Enabled  := False;
  btnGravar.Enabled    := False;
  p_ativo.Enabled      := False;
  grpExporta.Enabled   := False;

  btnNovo.SetFocus;
end;

procedure TF_importadores.btnCancelarClick(Sender: TObject);
begin
  T_importadores.Cancel;
  tbSenhaRadar.Cancel;

  btnNovo.Enabled      := True;
  btnAlterar.Enabled   := True;
  btnLocalizar.Enabled := True;
  btnImprimir.Enabled  := True;
  btnCancelar.Enabled  := False;
  btnGravar.Enabled    := False;
  p_ativo.Enabled      := False;
  grpExporta.Enabled   := False;

  edtRazao.Enabled  := False;
  edtCnpj.Enabled   := False;
  edtEnder.Enabled  := False;
  edtNum.Enabled    := False;
  edtComple.Enabled := False;
  edtBairro.Enabled := False;
  edtCidade.Enabled := False;
  edtCep.Enabled    := False;
  cmbUF.Enabled     := False;
  edtEstado.Enabled := False;
  cmbPais.Enabled   := False;
  DBETel.Enabled    := False;
  cmbCAE.Enabled    := False;
  edtInsc.Enabled   := False;
  edtInscM.Enabled  := False;
  edtemail.Enabled  := false;

  cmbTipoImport.Enabled := False;

  edtSenhaRadar.Visible := False;
  dbeSenhaRad.Enabled   := True;
  dbeSenhaRad.Visible   := True;
  edtSenhaRadar.Text    := '';

  btnNovo.SetFocus;
end;

procedure TF_importadores.btnLocalizarClick(Sender: TObject);
begin
  pnlLocalizar.Top  := 15;
  pnlLocalizar.Left := 96;
  pnlLocalizar.Visible := True;
  pnlImport.Enabled    := False;
  dblcbLoc.DataSource  := dsLocalizar;
  q_Localizar.Open;
  edtLocalizar.SetFocus;
end;

procedure TF_importadores.btnOKClick(Sender: TObject);
begin
  pnlLocalizar.Visible := False;
  pnlImport.Enabled    := True;
  dblcbLoc.DataSource  := nil;
  q_Localizar.Close;
  edtLocalizar.Text := '';
  carregar_proposta('');  
end;

procedure TF_importadores.edtLocalizarChange(Sender: TObject);
begin
  q_Localizar.Filter := 'Razao_Social = '''+ uppercase(edtLocalizar.Text) +'*''';

  if edtLocalizar.Text = ''
   then q_Localizar.Filtered := False
   else q_Localizar.Filtered := True;
end;

procedure TF_importadores.t_ImportadoresAfterScroll(DataSet: TDataSet);
begin
  carregar_proposta('');  

  if (t_ImportadoresAtivo.AsInteger = 1)
   then begin
     lblAtivo.Caption    := 'Ativo';
     lblAtivo.Font.Color := clLime;
   end
   else begin
     lblAtivo.Caption    := 'Inativo';
     lblAtivo.Font.Color := clRed;
   end;
end;

procedure TF_importadores.t_ImportadoresAfterPost(DataSet: TDataSet);
begin
  logusu('P','Alterou dados do Importador: '+T_importadoresRazao_Social.asstring);

  if (not t_importadoresativo.asinteger=1)
   then logusu('P','Alterou Importador Inativo: '+T_importadoresRazao_Social.asstring);
   
  Q_IMPGRUPO.ExecSQL;
end;

procedure TF_importadores.t_ImportadoresBeforeDelete(DataSet: TDataSet);
begin
  logusu('E','Excluiu o Importador: '+T_importadoresRazao_Social.asstring);
end;

procedure TF_importadores.FormCreate(Sender: TObject);
begin
  edtSenhaRadar.Left := 8;
  t_Importadores.Open;
  tbSenhaRadar.Open;
  q_Pais.Open;
  q_UF.Open;
  t_TipoImport.Open;
  t_CAE.Open;
  carregar_proposta('');

  btnNovo.Enabled    := ((v_Inativa_Cliente = 1) or (v_nivel = '0') or (v_usuario='IRENE'));
  btnAlterar.Enabled := ((v_Inativa_Cliente = 1) or (v_nivel = '0') or (v_usuario='IRENE'));
  b_repetro.Enabled  := ((v_Inativa_Cliente = 1) or (v_nivel = '0'));
end;

procedure TF_importadores.t_ImportadoresAfterInsert(DataSet: TDataSet);
begin
  vIMP := t_ImportadoresCNPJ_CPF_COMPLETO.AsString;
end;

procedure TF_importadores.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if t_Importadores.State In [dsInsert, dsEdit]
   then Begin
     MessageDlg('O Fornecedor est� em edi��o!', mtWarning, [mbOk], 0);
     CanClose := False;
   end
   else CanClose := True;
end;

procedure TF_importadores.edtCnpjKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key In ['0'..'9',#8])
   then Key := #0;
end;

procedure TF_importadores.edtCepKeyPress(Sender: TObject; var Key: Char);
begin
  if Not(Key In ['0'..'9','-',#8])
   then Key := #0;
end;

procedure TF_importadores.b_repetroClick(Sender: TObject);
begin
  p_repetro.Top     := 15;
  p_repetro.Left    := 96;
  p_repetro.visible := true;
end;

procedure TF_importadores.BitBtn4Click(Sender: TObject);
begin
  p_repetro.visible := false;
end;

procedure TF_importadores.BitBtn3Click(Sender: TObject);
var
  I, J: Integer;
  qsenha, QDITEC, QDITEC2 : string;
begin
  QDITEC := '%';
  QDITEC2 := 'DITEC';
  //gerar senhas
  if rg_repetro.ItemIndex = 0
   then begin
     t_cpf.Open;
     t_usuariosnet.open;
     Randomize;
     t_cpf.first;

     while not t_cpf.eof do
      begin
        if not t_usuariosnet.findkey([t_importadorescgc_cpf.asstring,t_cpfusuario.asstring])
         then begin
           qsenha := '';

           for J := 1 to 6 do
            begin
              I := random(255);

              while ((I < 48) or (I > 57) and (I < 97) or (I > 122)) do
               begin
                 I := random(255);
               end;

              qsenha := qsenha + CHR(I);
            end;

           try
             t_usuariosnet.append;
             t_usuariosnetCGC_CPF.asstring       := t_importadorescgc_cpf.asstring;
             t_usuariosnetUsuario.asstring       := t_cpfusuario.asstring;
             t_usuariosnetSenha.asstring         := qsenha;
             t_usuariosnetNome_Completo.asstring := t_cpfnome_completo.asstring;
             t_usuariosnetNivel.asstring         := '3';
             t_usuariosnet.post;
           except
             on E:Exception do
              begin
                SHOWMESSAGE(e.Message);
              end;
           end;
         end;
        t_cpf.next;
      end;

     t_cpf.close;
     t_usuariosnet.close;
     logusu('P','Processou senhas Repetro do Importador: '+T_importadoresRazao_Social.asstring);
     Showmessage(v_usuario+', as senhas foram criadas.');
   end;

  //gerar etiquetas
  if rg_repetro.ItemIndex = 1
   then begin
     if MessageDlg(v_usuario+', deseja gerar apenas para DITEC?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        QDITEC := 'DITEC';
        QDITEC2 := 'nao';
      end;

     q_usu.close;
     q_usu.Params[0].asstring := t_importadoresCNPJ_CPF_COMPLETO.asstring;
     q_usu.Params[1].asstring := QDITEC;
     q_usu.Params[2].asstring := QDITEC2;
     q_usu.Open;

     if not Assigned(qrlabel_repetro)
      then Application.CreateForm(Tqrlabel_repetro, qrlabel_repetro);

     qrlabel_repetro.QuickRep1.Preview;//  .Previous;
   end;

  //gerar folha senha
  if rg_repetro.ItemIndex = 2
   then begin
     if MessageDlg(v_usuario+', deseja gerar apenas para DITEC?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        QDITEC  := 'DITEC';
        QDITEC2 := 'nao';
      end;

     q_usu.close;
     q_usu.Params[0].asstring := t_importadoresCNPJ_CPF_COMPLETO.asstring;
     q_usu.Params[1].asstring := QDITEC;
     q_usu.Params[2].asstring := QDITEC2;
     q_usu.Open;

     if not Assigned(qrlabel_repetro)
      then Application.CreateForm(Tqrlabel_repetro, qrlabel_repetro);

     qrlabel_repetro.QuickRep2.Preview;//  .Previous;
   end;

  //gerar termo
  if rg_repetro.ItemIndex = 3
   then begin
     if MessageDlg(v_usuario+', deseja gerar apenas para DITEC?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
      then begin
        if not Assigned(qrlabel_repetro)
         then Application.CreateForm(Tqrlabel_repetro, qrlabel_repetro);

        qrlabel_repetro.QuickRep4.Preview;//  .Previous;
      end
      else begin
        if not Assigned(qrlabel_repetro)
         then Application.CreateForm(Tqrlabel_repetro, qrlabel_repetro);

        qrlabel_repetro.QuickRep3.Preview;//  .Previous;
      end;
   end;
end;

procedure TF_importadores.t_usuariosnetAfterPost(DataSet: TDataSet);
begin
  logusu('P','Alterou usuarionet senhas do Importador: '+T_importadoresRazao_Social.asstring+'-'+T_usuariosnetusuario.asstring);
end;

procedure TF_importadores.CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer; FormatarComo : string );
begin
  if ( CTitulo <> '' )
   then Excel.cells[linha, coluna] := CTitulo
   else Excel.cells[linha, coluna] := ' ';

  Excel.cells[linha, coluna].interior.Color      := CColor;
  Excel.cells[linha, coluna].Font.Color          := FColor;
  Excel.cells[linha, coluna].Font.Size           := FSize;
  Excel.cells[linha, coluna].HorizontalAlignment := CAlign;
  Excel.cells[linha, coluna].Borders.Weight      := 2;
  Excel.cells[linha, coluna].Borders.LineStyle   := 1;
  Excel.Columns[coluna].ColumnWidth              := COLSize;

  if ( FormatarComo = 'texto' )
   then Excel.cells[linha, coluna].NumberFormat := '@';

  if ( FormatarComo = 'data' )
   then Excel.cells[linha, coluna].NumberFormat := 'd\/m\/aaaa';
end;

Procedure TF_importadores.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
begin
  Excel.cells[linha, coluna]                     := CTitulo;
  Excel.cells[linha, coluna].interior.Color      := CColor;
  Excel.cells[linha, coluna].Font.Color          := FCOLOR;
  Excel.cells[linha, coluna].Font.Size           := FSize;
  Excel.cells[linha, coluna].Font.Bold           := True;
  Excel.cells[linha, coluna].HorizontalAlignment := CAlign;
  Excel.Columns[coluna].ColumnWidth              := COLSize;
  Excel.cells[linha, coluna].Font.Name           := 'Arial';
end;


procedure TF_importadores.btnAtivarClick(Sender: TObject);
begin
  if Assigned(frmCadastroPropostas)
   then frmCadastroPropostas.Show
   else F_MSCOMEX.Contratos3Click(Sender);
end;

procedure TF_importadores.FormShow(Sender: TObject);
begin
  if v_usuario = 'DUDA'
   then begin
     btnDesativar.Enabled := True;
     btnAtivar.Enabled    := True;
   end
   else begin
     btnDesativar.Enabled := False;
     btnAtivar.Enabled    := False;
   end;

end;

procedure TF_importadores.btnDesativarClick(Sender: TObject);
begin
  qrDesativar.Close;
  qrDesativar.ParamByName('pCodigo').Value := edtCod.Text;
  qrDesativar.ExecSQL;

  t_Importadores.Refresh;
end;

procedure TF_importadores.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure TF_importadores.btnAbrirClick(Sender: TObject);
Var
 Pdir : pchar ;
begin
  nome := '\\msserver01\ContPro\'+ qContratoUploadArquivo.AsString +'.pdf';
  GetMem(Pdir,256);
  StrPCopy(Pdir,nome);

  if FileExists(nome)
   then begin
     ShellExecute(0,nil, Pchar(nome),nil,Pdir,SW_NORMAL);
     FreeMem(Pdir,256);
   end
   else ShowMessage('O arquivo n�o foi localizado.');
end;

procedure TF_importadores.btnBuscarClick(Sender: TObject);
begin
  if (OPdlg.Execute)
   then txtUploadArquivo.Text := OPdlg.filename;
end;

procedure TF_importadores.btnLimparClick(Sender: TObject);
begin
  txtUploadArquivo.clear;
end;

procedure TF_importadores.btnUploadClick(Sender: TObject);
var
  Numerador,
  Arquivo,
  CodigoPasta,
  Origem,
  Destino, Importadores : String;
  GoOn : Boolean;
begin
  if (Trim(txtUploadArquivo.Text) = '')
   then begin
     Application.MessageBox('Favor selecionar um arquivo para Upload.','Aten��o',MB_ICONWARNING);
     Exit;
   end;

  if MessageDlg('Esse arquivo ser� associado ao contrato '+qContratosnumero_contrato.AsString+', confirma o upload ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
   then begin
      with qContrato do
      begin
        Close;
        ParamByName('pContrato').asString := qContratospk_contrato.AsString;//N_Contrato;
        Open;
      end;

      //Buscando numero na tabela parametro
      GoOn := False;
      qryParametro.Close;
      qryParametro.Open;

      //Testando numero
      if not( qryParametro.IsEmpty ) and
        ( Trim(qryParametroNumerador_Documentos.AsString) <> '' )
       then begin
         //Incrementando numerador
         Numerador := qryParametroNumerador_Documentos.AsString;
         Numerador := IntToStr(StrToInt(Numerador)+1);
         Numerador := StringOfChar('0', 8-Length(Numerador)) + Numerador;
         Arquivo   := Copy('RJO',1,3) + Numerador;
         qryParametro.Close;

         //Atualizando numerador
         try
           qryUpdateN.ParamByName('NewNumero').Value := Numerador;
           qryUpdateN.ExecSQL;
           GoOn := True;
         except
           GoOn := False;
           Application.MessageBox('Erro na atualiza��o do numerador. Upload foi CANCELADO!','Erro', MB_OK+MB_ICONWARNING);
         end;

         //Gravando na tabela contratos_cadastrados_upload
         if ( GoOn )
          then begin
            try
              CodigoPasta := verificarFaixa(Arquivo);
              {Obs: o C�digo da pasta era uma id�ia louca que tive, surto, kkkkkk mas abortei
              Ent�o para n�o reestruturar a tabela deixei, ou seja n�o serve para nada rsrs, foi mal kkk.}

              {Importadores := '';

              qImportadoresAgrupadosContratos.Params[0].Value := qContratosnumero_contrato.Value;
              qImportadoresAgrupadosContratos.Open;

              qImportadoresAgrupadosContratos.First;

              while not qImportadoresAgrupadosContratos.Eof do
               begin
                 if Importadores = ''
                  then Importadores := '- ' + qImportadoresAgrupadosContratosCodigo.AsString + ' - ' + qImportadoresAgrupadosContratosRazao_Social.AsString + ' - ' + qImportadoresAgrupadosContratosCGC_CPF.AsString
                  else Importadores := Importadores + #13#10 + '- ' + qImportadoresAgrupadosContratosCodigo.AsString + ' - ' + qImportadoresAgrupadosContratosRazao_Social.AsString + ' - ' + qImportadoresAgrupadosContratosCGC_CPF.AsString;

                 qImportadoresAgrupadosContratos.Next;
               end;

              if qImportadoresAgrupadosContratos.RecordCount > 1
               then begin
                 if MessageDlg('Esse mesmo contrato est� associado aos seguintes importadores: '+#13#10+#13#10+Importadores+#13#10+#13#10+'Deseja fazer o upload desse arquivo para todos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
                  then begin
                    qImportadoresAgrupadosContratos.First;

                    while not qImportadoresAgrupadosContratos.Eof do
                     begin
                       qContratos.Close;
                       qContratos.ParamByName('pImp').asString := qImportadoresAgrupadosContratosCodigo.AsString;
                       qContratos.Open;

                       qInsUpload.Close;
                       qInsUpload.ParamByName('pCodigo').Value      := 'RJO' + CodigoPasta;
                       qInsUpload.ParamByName('pfk_contrato').Value := qContratospk_contrato.value;
                       qInsUpload.ParamByName('pArquivo').Value     := Arquivo;
                       qInsUpload.ExecSQL;

                       qImportadoresAgrupadosContratos.Next;
                     end;
                  end
                  else begin
                    qInsUpload.ParamByName('pCodigo').Value      := 'RJO' + CodigoPasta;
                    qInsUpload.ParamByName('pfk_contrato').Value := qContratospk_contrato.value;
                    qInsUpload.ParamByName('pArquivo').Value     := Arquivo;
                    qInsUpload.ExecSQL;
                  end;
               end
               else begin}
                 qInsUpload.ParamByName('pCodigo').Value      := 'RJO' + CodigoPasta;
                 qInsUpload.ParamByName('pfk_contrato').Value := qContratospk_contrato.value;
                 qInsUpload.ParamByName('pArquivo').Value     := Arquivo;
                 qInsUpload.ExecSQL;
               //end;  

              GoOn := GoOn and True;
            except
              GoOn := False;
            end;
          end;

         //Copiando arquivo pdf para servidor
         if( GoOn )
          then begin
            //Diretorio
            Origem := OPdlg.FileName;
            Destino := DIR_IMG + '\'+ Arquivo +'.pdf';
            if (not DirectoryExists( ExtractFilePath( Destino )))
             then ForceDirectories( ExtractFilePath( Destino ));

            if (FileExists( Destino ))
             then DeleteFile( Destino );

            if not CopyFile(PChar(Origem), PChar(Destino), true)
             then begin
               qryDelErro.ParamByName('pfk_contrato').Value := '';
               qryDelErro.ParamByName('pArquivo').Value     := Arquivo;
               qryDelErro.ParamByName('pCodigo').Value      := 'RJO' + CodigoPasta;
               qryDelErro.ExecSQL;
               GoOn := false;
               ShowMessage('Erro ao copiar ' + Origem + ' para ' + Destino);
             end;

            if (GoOn)
             then begin
               Application.MessageBox('Upload foi Realizado com Sucesso!','Informa��o', MB_OK+MB_ICONINFORMATION);

               logusu('I','Realizou upload para contrato: '+ N_Contrato + ' , Arquivo: '+ Arquivo );

               qContratoUpload.Close;
               qContratoUpload.ParamByName('pkContrato').asString := qContratospk_contrato.AsString;
               qContratoUpload.Open;
             end
             else Application.MessageBox('N�o foi poss�vel Realizar o Upload!','Erro', MB_OK+MB_ICONERROR);
          end;
       end
       else Application.MessageBox('Erro com o numerador na tabela parametros','Erro', MB_OK+MB_ICONWARNING);

     LimpaQuery := False;

     AtivaUpload(False);

     HabilitarComponentes(False);

     HabilitaBotoesImportador(True);
   end;
end;

procedure TF_importadores.HabilitarComponentes(blnEnabled: Boolean);
begin
  {Caixas de Texto para inser��o}
  txtContato.Enabled              := blnEnabled;
  txtEmail.Enabled                := blnEnabled;
  txtAprovacao.Enabled            := blnEnabled;
  gbVigencia.Enabled              := blnEnabled;
  cbUtilizacaoDoSistema.Enabled   := blnEnabled;
  cbMovimentacaoDeRepetro.Enabled := blnEnabled;
  txtObs.Enabled                  := blnEnabled;

  btnSalvar.Enabled           := blnEnabled;
  btnCancelarContrato.Enabled := blnEnabled;

  dbgContratos.Enabled := True;
  btnAbrir.Enabled     := True;

  btnIncluir.Enabled      := not blnEnabled;
  btnAlterar2.Enabled     := not blnEnabled;
end;

function TF_importadores.Retorna_Numero_Proposta: String;
var
  vCont : integer;
begin
  with qNumero_Proposta do
   begin
     Close;
     Open;
   end;

  {Quando virar o ano reinicia o contador}
  if qNumero_PropostaANO_REGISTRO.Value <> Year(Now)
   then result := '00001/'+copy(inttostr(Year(Now)), 3, 2)
   else begin
     vCont := qNumero_PropostaDecimal.value;

     case vCont  of
       1 : result := '0000' + qNumero_PropostaPROXIMO_CONTADOR.AsString + '/' + copy(qNumero_PropostaANO_REGISTRO.AsString, 3,2);
       2 : result := '000' + qNumero_PropostaPROXIMO_CONTADOR.AsString + '/' + copy(qNumero_PropostaANO_REGISTRO.AsString, 3, 2);
       3 : result := '00' + qNumero_PropostaPROXIMO_CONTADOR.AsString + '/' + copy(qNumero_PropostaANO_REGISTRO.AsString, 3, 2);
       4 : result := '0' + qNumero_PropostaPROXIMO_CONTADOR.AsString + '/' + copy(qNumero_PropostaANO_REGISTRO.AsString, 3, 2);
       5 :
           begin
             if qNumero_PropostaPROXIMO_CONTADOR.AsString = '100000'
              then showmessage('Por favor, entre em contato com o sistema houve um estouro no contador e a opera��o foi cancelada.')
              else result := qNumero_PropostaPROXIMO_CONTADOR.AsString + '/' + copy(qNumero_PropostaANO_REGISTRO.AsString, 3, 2);
           end;
     end;
   end;

  N_Contrato := result;
end;

function TF_importadores.verificarFaixa(a: String): String;
var
  v, d: String;
  n, f: Integer;
begin
  v := Copy(a, 4, 8);
  n := StrToInt(v);
  f := (n div 10000);

  if (n mod 10000) <> 0
   then Inc(f);

  case f of
    1..9: d       := '000' + IntToStr(f) + '0000';
    10..99: d     := '00'  + IntToStr(f) + '0000';
    100..999: d   := '0'   + IntToStr(f) + '0000';
    1000..9999: d := ''    + IntToStr(f) + '0000';
  end;

  { GERANDO DIRET�RIO DA FAIXA DOS DOCUMENTOS, CASO N�O EXISTENTA }
  if Not DirectoryExists( DIR_IMG + d )
   then CreateDir( DIR_IMG + d );
   
  Result := d;
end;


function TF_importadores.Year(Data: TDateTime): Integer;
var
  Dia,Mes,Ano:Word;
begin
  DecodeDate(Data,Ano,Mes,Dia);

  Result := Ano;
end;

procedure TF_importadores.btnIncluirClick(Sender: TObject);
begin
  vOper := 'I';

  HabilitaBotoesImportador(False);

  HabilitarComponentes(True);

  Limpa_Campos;

  AtivaUpload(False);

  txtContato.setFocus;
end;
procedure TF_importadores.Limpa_Campos;
begin
  txtContato.clear;
  txtVigInicial.Text := '';
  txtVigFinal.Text   := '';
  txtAprovacao.text  := '';
  txtEmail.clear;
  txtObs.Text := '';
  cbUtilizacaoDoSistema.Checked   := False;
  cbMovimentacaoDeRepetro.Checked := False;

  txtUploadArquivo.Clear;
end;

procedure TF_importadores.btnAlterar2Click(Sender: TObject);
begin
  vOper := 'A';

  HabilitaBotoesImportador(False);

  HabilitarComponentes(True);

  AtivaUpload(True)
end;

procedure TF_importadores.btnSalvarClick(Sender: TObject);
var
  Importadores : String;
  RealizaUpload : Boolean;
begin
  if ValidaCampos
   then begin
      RealizaUpload := False;

      if vOper = 'I'
       then begin
         qImportadoresAgrupados.Close;
         qImportadoresAgrupados.Params[0].Value := ImportadoresAgrupados(t_ImportadoresCodigo.Value);
         qImportadoresAgrupados.Open;

         qImportadoresAgrupados.First;

         while not qImportadoresAgrupados.Eof do
          begin
            if Importadores = ''
             then Importadores := '- ' + qImportadoresAgrupadosCodigo.AsString + ' - ' + qImportadoresAgrupadosRazao_Social.AsString + ' - ' + qImportadoresAgrupadosCGC_CPF.AsString
             else Importadores := Importadores + #13#10 + '- ' + qImportadoresAgrupadosCodigo.AsString + ' - ' + qImportadoresAgrupadosRazao_Social.AsString + ' - ' + qImportadoresAgrupadosCGC_CPF.AsString;

            qImportadoresAgrupados.Next;
          end;

         if qImportadoresAgrupados.RecordCount > 1
          then begin
            if MessageDlg('Esse importador est� associado a um grupo com os seguintes importadores vinculados: '+#13#10+#13#10+Importadores+#13#10+#13#10+'Deseja cadastrar essa proposta para todos ?', mtConfirmation, [mbYes, mbNo], 0) = mrYes
             then begin
               qImportadoresAgrupados.First;

               IncluiContratoVariosImportadores;

               logusu('I','Incluiu proposta N�, ' + N_Contrato);
             end
             else begin
               IncluiContratoImportador;

               logusu('I','Incluiu proposta N�, ' + N_Contrato);
             end;
          end
          else begin
            IncluiContratoImportador;

            logusu('I','Incluiu proposta N�, ' + N_Contrato);
          end;

         carregar_proposta(N_Contrato);

         HabilitarComponentes(False);

         txtUploadArquivo.clear;

         if MessageDlg('Contrato registrado com sucesso. Deseja realizar upload do arquivo ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
          then begin
            RealizaUpload := True;

            AtivaUpload(RealizaUpload);

            carregar_proposta(N_Contrato);
          end
          else AtivaUpload(False);
       end
       else begin
         AtualizaContratoImportador;

         HabilitarComponentes(False);

         logusu('A','Alterou proposta N�, ' + N_Contrato );

         txtUploadArquivo.clear;

         if MessageDlg('Contrato atualizado com sucesso. Deseja realizar upload do arquivo ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes
          then begin
            RealizaUpload := True;

            AtivaUpload(RealizaUpload);
          end
          else AtivaUpload(False);
       end;

      if (not RealizaUpload)
       then begin
         HabilitaBotoesImportador(True);

         dbgContratos.Enabled := True;

         vOper := '';
       end
       else btnAlterar2Click(btnAlterar2);
   end;
end;

procedure TF_importadores.carregar_proposta(NumeroContrato : String);
begin
  qContratos.Close;
  qContratoUpload.Close;

  qContratos.ParamByName('pImp').asString := t_ImportadoresCodigo.AsString;
  qContratos.Open;

  if NumeroContrato <> ''
   then qContratos.Locate('numero_contrato',NumeroContrato,[]);

  txtContato.text                 := qContratoscontato.text;
  txtVigInicial.text              := qContratosdata_vigencia_inicial.AsString;
  txtVigFinal.text                := qContratosdata_vigencia_final.AsString;
  txtAprovacao.Text               := qContratosdata_aprovacao.AsString;
  txtEmail.text                   := qContratosemail.Value;
  cbUtilizacaoDoSistema.Checked   := qContratosutilizacao_de_sistema.Value;
  cbMovimentacaoDeRepetro.Checked := qContratosmovimentacao_de_repetro.Value;
  txtObs.Lines.Text               := qContratosobservacao.Value;

  if qContratospk_contrato.AsString <> ''
   then begin
     qContratoUpload.ParamByName('pkContrato').asString := qContratospk_contrato.AsString;
     qContratoUpload.Open;
   end;

  pnlUpload.Visible := qContratos.RecordCount <> 0;
end;

procedure TF_importadores.qContratosAfterScroll(DataSet: TDataSet);
begin
  qContratoUpload.Close;

  txtContato.text                 := qContratoscontato.text;
  txtVigInicial.text              := qContratosdata_vigencia_inicial.AsString;
  txtVigFinal.text                := qContratosdata_vigencia_final.AsString;
  txtAprovacao.Text               := qContratosdata_aprovacao.AsString;
  txtEmail.text                   := qContratosemail.Value;
  cbUtilizacaoDoSistema.Checked   := qContratosutilizacao_de_sistema.Value;
  cbMovimentacaoDeRepetro.Checked := qContratosmovimentacao_de_repetro.Value;
  txtObs.Lines.Text               := qContratosobservacao.Value;

  if qContratospk_contrato.AsString <> ''
   then begin
     qContratoUpload.ParamByName('pkContrato').asString := qContratospk_contrato.AsString;
     qContratoUpload.Open;
   end;

  pnlUpload.Visible := qContratos.RecordCount <> 0;
end;

procedure TF_importadores.btnCancelarContratoClick(Sender: TObject);
begin
  btnSalvar.Enabled := False;

  HabilitarComponentes(False);

  AtivaUpload(False);

  HabilitaBotoesImportador(True);

  vOper := '';
end;

procedure TF_importadores.IncluiContratoImportador;
begin
  try
    qInsertContrato.ParamByName('numero_contrato').asString := Retorna_Numero_Proposta;
    qInsertContrato.ParamByName('nro_cliente').asString     := '';
    qInsertContrato.ParamByName('cliente').asString         := t_ImportadoresRazao_Social.Value;
    qInsertContrato.ParamByName('cod_importador').asString  := t_ImportadoresCodigo.Value;
    qInsertContrato.ParamByName('contato').asString         := txtContato.Text;
    qInsertContrato.ParamByName('email').asString           := txtEmail.text;
    qInsertContrato.ParamByName('data').asDatetime          := Date();

    if txtVigInicial.Text <> ''
     then qInsertContrato.ParamByName('data_vigencia_inicial').asDatetime := StrToDate(txtVigInicial.Text);

    if txtVigFinal.Text <> ''
     then qInsertContrato.ParamByName('data_vigencia_final').asDatetime := StrToDate(txtVigFinal.Text);

    if txtAprovacao.Text <> ''
     then qInsertContrato.ParamByName('data_aprovacao').Value := StrToDateTime(txtAprovacao.Text);

    qInsertContrato.ParamByName('observacao').Value              := txtObs.text;
    qInsertContrato.ParamByName('utilizacao_de_sistema').value   := cbUtilizacaoDoSistema.Checked;
    qInsertContrato.ParamByName('movimentacao_de_repetro').Value := cbMovimentacaoDeRepetro.Checked;

    qInsertContrato.ExecSQL;
  except
    on EConvertError do
     begin
       ShowMessage ('Ocorreu um erro na inser��o do registro.');
       Abort;
     end;
  end;
end;

procedure TF_importadores.IncluiContratoVariosImportadores;
var
  NumeroProposta : String;
begin
  NumeroProposta := Retorna_Numero_Proposta;

  while not qImportadoresAgrupados.Eof do
   begin
     try
       qInsertContrato.ParamByName('numero_contrato').asString := NumeroProposta;
       qInsertContrato.ParamByName('nro_cliente').asString     := '';
       qInsertContrato.ParamByName('cliente').asString         := qImportadoresAgrupadosRazao_Social.Value;
       qInsertContrato.ParamByName('cod_importador').asString  := qImportadoresAgrupadosCodigo.Value;
       qInsertContrato.ParamByName('contato').asString         := txtContato.Text;
       qInsertContrato.ParamByName('email').asString           := txtEmail.text;
       qInsertContrato.ParamByName('data').asDatetime          := Date();

       if txtVigInicial.Text <> ''
        then qInsertContrato.ParamByName('data_vigencia_inicial').asDatetime := StrToDate(txtVigInicial.Text);

       if txtVigFinal.Text <> ''
        then qInsertContrato.ParamByName('data_vigencia_final').asDatetime := StrToDate(txtVigFinal.Text);

       if txtAprovacao.Text <> ''
        then qInsertContrato.ParamByName('data_aprovacao').Value := StrToDateTime(txtAprovacao.Text);

       qInsertContrato.ParamByName('observacao').Value              := txtObs.text;
       qInsertContrato.ParamByName('utilizacao_de_sistema').value   := cbUtilizacaoDoSistema.Checked;
       qInsertContrato.ParamByName('movimentacao_de_repetro').Value := cbMovimentacaoDeRepetro.Checked;
       qInsertContrato.ExecSQL;

       qImportadoresAgrupados.Next;
     except
       on EConvertError do
        begin
          ShowMessage ('Ocorreu um erro na inser��o do registro.');
          Abort;
        end;
     end;
   end;
end;

procedure TF_importadores.AtualizaContratoImportador;
begin
  try
    qUpdateProposta.Close;
    qUpdateProposta.ParamByName('contato').value                 := txtContato.text;
    qUpdateProposta.ParamByName('email').value                   := txtEmail.text;
    qUpdateProposta.ParamByName('observacao').value              := txtObs.text;
    qUpdateProposta.ParamByName('utilizacao_de_sistema').value   := cbUtilizacaoDoSistema.Checked;
    qUpdateProposta.ParamByName('movimentacao_de_repetro').value := cbMovimentacaoDeRepetro.Checked;
    qUpdateProposta.ParamByName('pk_contrato').value             := qContratospk_contrato.Value;

    if txtVigInicial.Text <> ''
     then qUpdateProposta.ParamByName('data_vigencia_inicial').asDatetime := StrToDate(txtVigInicial.Text);

    if txtVigFinal.Text <> ''
     then qUpdateProposta.ParamByName('data_vigencia_final').asDatetime := StrToDate(txtVigFinal.Text);

    if txtAprovacao.Text <> ''
     then qUpdateProposta.ParamByName('data_aprovacao').Value := StrToDateTime(txtAprovacao.Text);

    qUpdateProposta.ExecSQL;
  except
    on EConvertError do
     begin
       ShowMessage ('Ocorreu um erro na atualiza��o do registro.');
       carregar_proposta('');
       HabilitarComponentes(False);
       Abort;
     end;
  end;
end;

function TF_importadores.ValidaCampos : Boolean;
begin
  Result := True;

  if (Trim(txtContato.Text) = '')
   then begin
     ShowMessage('Por favor, informe um contato.');
     txtContato.setFocus;
     Result := False;
     Exit;
   end;

  if (Trim(txtVigInicial.Text) <> '')
   then begin
     try
       StrToDate(txtVigInicial.Text);
     except
     on EConvertError do
       begin
         ShowMessage ('Por favor, informe uma data de vig�ncia inicial v�lida.');
         txtVigInicial.Text := datetostr(Date);
         txtVigInicial.setFocus;
         Result := False;         
         Exit;
       end;
     end;
   end;

  if (Trim(txtVigFinal.Text) <> '')
   then begin
     try
       StrToDate(txtVigFinal.Text);
     except
     on EConvertError do
       begin
         ShowMessage ('Por favor, informe uma data de vig�ncia final v�lida.');
         txtVigFinal.Text := datetostr(Date);
         txtVigFinal.setFocus;
         Result := False;
         Exit;
       end;
     end;
   end;

  if (Trim(txtAprovacao.Text) <> '')
   then begin
     try
       StrToDateTime(txtAprovacao.Text);
     except
      on EConvertError do
       begin
         ShowMessage ('Por favor, informe a data de aprova��o v�lida.');
         txtAprovacao.Text := datetostr(Date);
         txtAprovacao.setFocus;
         Result := False;         
         Exit;
       end;
     end;
   end;
end;

procedure TF_importadores.AtivaUpload(Ativa : Boolean);
begin
  gbUploadArquivo.Enabled := Ativa;
end;

procedure TF_importadores.HabilitaBotoesImportador(Ativa: Boolean);
begin
  btnNovo.Enabled       := Ativa;
  btnAlterar.Enabled    := Ativa;

  btnLocalizar.Enabled  := Ativa;
  btnImprimir.Enabled   := Ativa;
  b_repetro.Enabled     := Ativa;
end;

procedure TF_importadores.qContratosAfterOpen(DataSet: TDataSet);
begin
  btnAlterar2.Enabled := (qContratos.RecordCount > 0);
end;

function TF_importadores.ImportadoresAgrupados(Importador: String) : String;
var
  QryAux : TQuery;
begin
  try
    QryAux := TQuery.Create(nil);
    QryAux.DatabaseName := 'DBNMSCOMEX';

    QryAux.SQL.Clear;
    QryAux.SQL.Add('SELECT Codigo_Agrupado FROM IMPORTADORES_AGRUPADOS WHERE Codigo = :Codigo ');
    QryAux.ParamByName('Codigo').AsString := Importador;
    QryAux.Open;

    if QryAux.FieldByName('Codigo_Agrupado').AsString = '0000'
     then Result := ''
     else Result := QryAux.FieldByName('Codigo_Agrupado').AsString;
  finally
    QryAux.Free;
  end;
end;

end.

