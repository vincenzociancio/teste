unit U_conato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, Buttons;

type
  Tf_conato = class(TForm)
    T_parametros: TTable;
    T_atos: TTable;
    ds_parametros: TDataSource;
    ds_atos: TDataSource;
    T_moeda: TTable;
    ds_moeda: TDataSource;
    Panel1: TPanel;
    Label8: TLabel;
    Label3: TLabel;
    DBEdit8: TDBEdit;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label9: TLabel;
    DBG_importa: TDBGrid;
    Label10: TLabel;
    DBG_tot: TDBGrid;
    Q_importa: TQuery;
    ds_qimporta: TDataSource;
    Q_total: TQuery;
    ds_qtotal: TDataSource;
    DBEdit3: TDBEdit;
    DBGrid1: TDBGrid;
    BitBtn1: TBitBtn;
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
    T_atosEmpresa: TStringField;
    T_atosFilial: TStringField;
    T_atosNumero: TStringField;
    T_atosDescricao: TStringField;
    T_atosVigencia_inicial: TDateTimeField;
    T_atosVigencia_final: TDateTimeField;
    T_atosMoeda: TStringField;
    T_atosValor_imp: TFloatField;
    T_atosValor_impc: TFloatField;
    T_atosValor_imps: TFloatField;
    T_atosValor_exp: TFloatField;
    T_atosSaldo: TFloatField;
    T_atosSaldoC: TFloatField;
    T_atosSaldoS: TFloatField;
    T_moedaCODIGO: TStringField;
    T_moedaDESCRICAO: TStringField;
    Q_totalAto_Concessorio: TStringField;
    Q_totalRazao_Social: TStringField;
    Q_totaldescricao: TStringField;
    Q_totalValor_imp: TFloatField;
    Q_totalSomaDeValor_Aduaneiro: TFloatField;
    Q_totalqsaldo: TFloatField;
    Q_importaAto_Concessorio: TStringField;
    Q_importaProduto: TStringField;
    Q_importaqdesc: TStringField;
    Q_importaNCM: TStringField;
    Q_importaQuantidade: TFloatField;
    Q_importaValor_Aduaneiro: TFloatField;
    q_atos_update: TQuery;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBC_num_atoChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid1ColumnMoved(Sender: TObject; FromIndex,
      ToIndex: Integer);
    procedure Panel1Enter(Sender: TObject);
    procedure T_atosBeforeScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_conato: Tf_conato;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_conato.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

{     h := Height;
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

procedure Tf_conato.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action := cafree;
f_conato := nil;
//f_mscomex.AtosConcessrios1.enabled := true;

end;

procedure Tf_conato.DBC_num_atoChange(Sender: TObject);
var osaldo:real;
begin
        q_importa.Close;
        Q_importa.sql.Clear;
        if tipoBanco = 1 then
                Q_importa.sql.add('SELECT Tributacao_Item_Fatura.Ato_Concessorio, ItensFaturas.Produto, cast(substring(ItensFaturas.Descricao_Produto,1,255) as varchar(255)) as qdesc, ItensFaturas.NCM, Tributacao_Item_Fatura.Quantidade, ItensFaturas.Valor_Aduaneiro ')
        else
                Q_importa.sql.add('SELECT Tributacao_Item_Fatura.Ato_Concessorio, ItensFaturas.Produto, mid(ItensFaturas.Descricao_Produto,1,255) as qdesc, ItensFaturas.NCM, Tributacao_Item_Fatura.Quantidade, ItensFaturas.Valor_Aduaneiro ');

        Q_importa.sql.add('FROM ((((Tributacao_Item_Fatura INNER JOIN ItensFaturas ON (Tributacao_Item_Fatura.Sequencial_Item = ItensFaturas.Sequencial) AND (Tributacao_Item_Fatura.Fatura = ItensFaturas.Fatura) AND (Tributacao_Item_Fatura.Processo = ItensFaturas.Processo) ');
        Q_importa.sql.add('AND (Tributacao_Item_Fatura.Filial = ItensFaturas.Filial) AND (Tributacao_Item_Fatura.Empresa = ItensFaturas.Empresa)) ');
        Q_importa.sql.add('INNER JOIN Processos ON (Tributacao_Item_Fatura.Processo = Processos.Codigo) AND (Tributacao_Item_Fatura.Filial = Processos.Filial) AND (Tributacao_Item_Fatura.Empresa = Processos.Empresa)) ');
        Q_importa.sql.add('INNER JOIN Importadores ON (Processos.Importador = Importadores.Codigo) AND (Processos.Filial = Importadores.Filial) AND (Processos.Empresa = Importadores.Empresa)) ');
        Q_importa.sql.add('INNER JOIN Atos_Importador ON (Tributacao_Item_Fatura.Ato_Concessorio = Atos_Importador.Numero) AND (Processos.Importador = Atos_Importador.Importador) AND (Processos.Filial = Atos_Importador.Filial) ');
        Q_importa.sql.add('AND (Processos.Empresa = Atos_Importador.Empresa)) INNER JOIN Atos_tipos_benefic ON Atos_Importador.Tipo = Atos_tipos_benefic.codigo ');

        if tipoBanco = 1 then
                Q_importa.sql.add('GROUP BY Tributacao_Item_Fatura.Ato_Concessorio, ItensFaturas.Produto, cast(substring(ItensFaturas.Descricao_Produto,1,255) as varchar(255)), ItensFaturas.NCM, Tributacao_Item_Fatura.Quantidade, ItensFaturas.Valor_Aduaneiro ')
        else
                Q_importa.sql.add('GROUP BY Tributacao_Item_Fatura.Ato_Concessorio, ItensFaturas.Produto, mid(ItensFaturas.Descricao_Produto,1,255), ItensFaturas.NCM, Tributacao_Item_Fatura.Quantidade, ItensFaturas.Valor_Aduaneiro ');

        Q_importa.sql.add('HAVING (((Tributacao_Item_Fatura.Ato_Concessorio)=:ato));');

        Q_importa.Params[0].AsString := t_atosnumero.asstring;
        Q_importa.ExecSQL;
        Q_importa.active := true;
        q_total.close;
        Q_total.Params[0].AsString := t_atosnumero.asstring;
        Q_total.ExecSQL;
        Q_total.active := true;
        q_total.first;
        osaldo := 0;/////t_atosvalor_imp.asfloat;
        while not q_total.eof do begin
                osaldo := (osaldo+q_totalqsaldo.asfloat);
                q_total.next;
        end;
        
        q_atos_update.close;
        q_atos_update.Params[0].asfloat := osaldo;
        q_atos_update.params[1].asstring := t_atosnumero.asstring;
        q_atos_update.ExecSQL;
        {t_atos.edit;
        t_atossaldo.asfloat := osaldo;
        t_atos.post;}
end;

procedure Tf_conato.FormCreate(Sender: TObject);
begin
t_parametros.open;
t_atos.open;
t_moeda.open;

end;

procedure Tf_conato.DBGrid1ColumnMoved(Sender: TObject; FromIndex,
  ToIndex: Integer);
begin
q_importa.Close;
q_total.close;

end;

procedure Tf_conato.Panel1Enter(Sender: TObject);
begin
q_importa.Close;
q_total.close;

end;

procedure Tf_conato.T_atosBeforeScroll(DataSet: TDataSet);
begin
q_importa.Close;
q_total.close;

end;

end.
