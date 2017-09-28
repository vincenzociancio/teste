unit u_atosconce;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls;

type
  Tf_atosconce = class(TForm)
    T_parametros: TTable;
    T_atosconce: TTable;
    T_atosimp: TTable;
    T_atotipo: TTable;
    T_impor: TTable;
    ds_parametros: TDataSource;
    ds_atosconce: TDataSource;
    ds_atosimp: TDataSource;
    ds_tipoato: TDataSource;
    ds_impor: TDataSource;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    b_novo: TBitBtn;
    b_grava: TBitBtn;
    b_exclui: TBitBtn;
    b_fecha: TBitBtn;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Panel2: TPanel;
    Label9: TLabel;
    DBGrid2: TDBGrid;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit10: TDBEdit;
    Label12: TLabel;
    DBEdit11: TDBEdit;
    Label13: TLabel;
    DBEdit12: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    t_moeda: TTable;
    ds_moeda: TDataSource;
    DBLookupComboBox1: TDBLookupComboBox;
    q_benef: TQuery;
    ds_qbenef: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    b_novobene: TBitBtn;
    b_gravabene: TBitBtn;
    b_excluibene: TBitBtn;
    Panel3: TPanel;
    Label16: TLabel;
    DBGrid3: TDBGrid;
    t_sub: TTable;
    ds_sub: TDataSource;
    DBEdit4: TDBEdit;
    DBEdit8: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    Label14: TLabel;
    DBEdit9: TDBEdit;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    T_parametrosNumerador_Processos: TStringField;
    T_parametrosNumerador_Documentos: TStringField;
    T_parametrosEndereco_ftp: TStringField;
    T_parametrosUsuario_ftp: TStringField;
    T_parametrosSenha_ftp: TStringField;
    T_parametrosHost: TStringField;
    T_parametrosVersao: TStringField;
    T_parametroskeycrypt: TStringField;
    T_parametrosHost_smtp: TStringField;
    T_parametrosPorta_smtp: TSmallintField;
    T_parametrosUsuario_smtp: TStringField;
    T_parametrosSenha_smtp: TStringField;
    T_parametrosNumerador_Transmittal: TStringField;
    T_parametrosPATH_SERVER: TStringField;
    T_parametrosAliq_PIS_PASEP: TFloatField;
    T_parametrosAliq_COFINS: TFloatField;
    T_parametrosAliq_ICMS: TFloatField;
    T_parametrosAliq_ICMS_EXTRA: TFloatField;
    T_parametrosNumerador_Sol_Cheques: TStringField;
    T_parametrosNumerador_Sol_Reg: TStringField;
    T_parametrosNumerador_Sol_Tracla: TStringField;
    T_atosconceEmpresa: TStringField;
    T_atosconceFilial: TStringField;
    T_atosconceNumero: TStringField;
    T_atosconceDescricao: TStringField;
    T_atosconceVigencia_inicial: TDateTimeField;
    T_atosconceVigencia_final: TDateTimeField;
    T_atosconceMoeda: TStringField;
    T_atosconceValor_imp: TFloatField;
    T_atosconceValor_impc: TFloatField;
    T_atosconceValor_imps: TFloatField;
    T_atosconceValor_exp: TFloatField;
    T_atosconceSaldo: TFloatField;
    T_atosconceSaldoC: TFloatField;
    T_atosconceSaldoS: TFloatField;
    T_atosimpEmpresa: TStringField;
    T_atosimpFilial: TStringField;
    T_atosimpNumero: TStringField;
    T_atosimpImportador: TStringField;
    T_atosimpTipo: TStringField;
    T_atosimpPercentual: TFloatField;
    T_atosimpValor_imp: TFloatField;
    T_atosimpValor_impc: TFloatField;
    T_atosimpValor_imps: TFloatField;
    T_atosimpValor_exp: TFloatField;
    T_atosimpSaldo: TFloatField;
    T_atotipocodigo: TStringField;
    T_atotipodescricao: TStringField;
    T_imporEmpresa: TStringField;
    T_imporFilial: TStringField;
    T_imporCodigo: TStringField;
    T_imporRazao_Social: TStringField;
    T_imporPais: TStringField;
    T_imporCNPJ_CPF_COMPLETO: TStringField;
    T_imporCGC_CPF: TStringField;
    T_imporTipo_Importador: TStringField;
    T_imporEndereco: TStringField;
    T_imporNumero: TStringField;
    T_imporComplemento: TStringField;
    T_imporBairro: TStringField;
    T_imporCidade: TStringField;
    T_imporCEP: TStringField;
    T_imporUF: TStringField;
    T_imporEstado: TStringField;
    T_imporInscricao_Estadual: TStringField;
    T_imporBanco: TStringField;
    T_imporAgencia: TStringField;
    T_imporConta_Corrente: TStringField;
    T_imporConta_Corrente_Registro: TIntegerField;
    T_imporConta_Corrente_Deposito: TIntegerField;
    T_imporlink: TStringField;
    T_imporCAE: TStringField;
    T_imporTelefone: TStringField;
    T_imporAtivo: TSmallintField;
    T_imporAcesso_WEB_MS: TSmallintField;
    T_imporAcesso_WEB_CLI: TSmallintField;
    T_imporAcesso_WEB_REC: TSmallintField;
    T_imporBASE_ICMS: TSmallintField;
    q_benefNumero: TStringField;
    q_benefRazao_Social: TStringField;
    q_benefdescricao: TStringField;
    q_benefPercentual: TFloatField;
    q_benefValor_imp: TFloatField;
    q_benefValor_impc: TFloatField;
    q_benefValor_imps: TFloatField;
    q_benefValor_exp: TFloatField;
    q_benefSaldo: TFloatField;
    q_benefFilial: TStringField;
    q_benefEmpresa: TStringField;
    q_benefImportador: TStringField;
    t_moedaCODIGO: TStringField;
    t_moedaDESCRICAO: TStringField;
    t_subEmpresa: TStringField;
    t_subFilial: TStringField;
    t_subNumero: TStringField;
    t_subImportador: TStringField;
    t_subCNPJ_CPF_COMPLETO: TStringField;
    t_subRazao_Social: TStringField;
    t_subValor_imp: TFloatField;
    t_subValor_impc: TFloatField;
    t_subValor_imps: TFloatField;
    t_subValor_exp: TFloatField;
    t_subSaldo: TFloatField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid2Enter(Sender: TObject);
    procedure b_novoClick(Sender: TObject);
    procedure b_gravaClick(Sender: TObject);
    procedure b_excluiClick(Sender: TObject);
    procedure b_fechaClick(Sender: TObject);
    procedure T_atosconceAfterScroll(DataSet: TDataSet);
    procedure b_novobeneClick(Sender: TObject);
    procedure b_gravabeneClick(Sender: TObject);
    procedure b_excluibeneClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_atosconce: Tf_atosconce;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_atosconce.FormActivate(Sender: TObject);
begin
f_atosconce.left := 0;
f_atosconce.top  := 0;
end;

procedure Tf_atosconce.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
action := cafree;
f_atosconce := nil;
f_mscomex.AtosConcessorios1.enabled := true;

end;

procedure Tf_atosconce.DBGrid2Enter(Sender: TObject);
begin
t_atosimp.first;
while not t_atosimp.eof do begin
      t_atosimp.edit;
      t_atosimpvalor_imp.asfloat := (t_atosconcevalor_imp.asfloat*(t_atosimppercentual.asfloat/100));
      t_atosimpvalor_exp.asfloat := (t_atosconcevalor_exp.asfloat*(t_atosimppercentual.asfloat/100));        
      t_atosimp.post;
      t_atosimp.next;
end;
end;

procedure Tf_atosconce.b_novoClick(Sender: TObject);
begin
t_atosconce.append;
end;

procedure Tf_atosconce.b_gravaClick(Sender: TObject);
begin
t_atosconce.edit;
t_atosconcevalor_imp.asfloat := (t_atosconcevalor_impc.asfloat+t_atosconcevalor_imps.asfloat); 
if t_atosconce.state = dsedit then t_atosconce.post;
end;

procedure Tf_atosconce.b_excluiClick(Sender: TObject);
begin
t_atosconce.delete;
end;

procedure Tf_atosconce.b_fechaClick(Sender: TObject);
begin
f_atosconce.close;
end;

procedure Tf_atosconce.T_atosconceAfterScroll(DataSet: TDataSet);
begin
q_benef.close;
q_benef.params[0].asstring := t_atosconcenumero.asstring;
q_benef.open;
end;

procedure Tf_atosconce.b_novobeneClick(Sender: TObject);
begin
q_benef.close;
if t_atosimp.state <> dsinsert then t_atosimp.append
else t_atosimp.edit;
t_atosimpempresa.asstring := t_atosconceempresa.asstring;
t_atosimpfilial.asstring := t_atosconcefilial.asstring;
t_atosimpnumero.asstring := t_atosconcenumero.asstring;

end;

procedure Tf_atosconce.b_gravabeneClick(Sender: TObject);
begin
t_atosimp.edit;

t_atosimpvalor_imp.asfloat := (t_atosimpvalor_impc.asfloat+t_atosimpvalor_imps.asfloat);

t_atosimpempresa.asstring := t_atosconceempresa.asstring;
t_atosimpfilial.asstring := t_atosconcefilial.asstring;
t_atosimpnumero.asstring := t_atosconcenumero.asstring;

   t_atosimp.post;
   q_benef.close;
   q_benef.open;

end;

procedure Tf_atosconce.b_excluibeneClick(Sender: TObject);
begin
t_atosimp.delete;
   q_benef.close;
   q_benef.open;

end;

procedure Tf_atosconce.FormCreate(Sender: TObject);
begin
  T_parametros.open;
  T_atosconce.open;
  T_atosimp.open;
  T_atotipo.open;
  T_impor.open;
  t_moeda.open;
  t_sub.open;
end;

end.
