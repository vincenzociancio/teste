unit U_RelContrato;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, QuickRpt, Qrctrls, ExtCtrls, StdCtrls, jpeg;

type
  Tf_RelContrato = class(TForm)
    qrContrato: TQuickRep;
    titulo: TQRBand;
    qrl_sistema: TQRLabel;
    qrlVersao: TQRLabel;
    qrl_titulo: TQRLabel;
    QRi_logo: TQRImage;
    qrdbtCod: TQRDBText;
    qrdbtCred: TQRDBText;
    ghbCabec: TQRBand;
    qrsdLocal: TQRSubDetail;
    dsCont: TDataSource;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    t_Local: TTable;
    dsLocal: TDataSource;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    qrbCont: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText2: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText3: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText6: TQRDBText;
    dsTipoCont: TDataSource;
    dsTipoLocal: TDataSource;
    t_TipoCont: TTable;
    t_TipoLocal: TTable;
    t_LocalEmpresa: TStringField;
    t_LocalFilial: TStringField;
    t_LocalImportador: TStringField;
    t_LocalContrato: TStringField;
    t_LocalLocal: TStringField;
    t_LocalDescricao: TStringField;
    t_LocalTipo_local: TStringField;
    t_LocalProcesso_Adm: TStringField;
    t_LocalCNPJ: TStringField;
    t_LocalUnidade_Jur: TStringField;
    t_LocalFiel_nome: TStringField;
    t_LocalFiel_cpf: TStringField;
    t_LocalSIGLA: TStringField;
    t_LocalAtivo: TSmallintField;
    t_TipoContCodigo: TStringField;
    t_TipoContDescricao: TStringField;
    t_TipoLocalCodigo: TStringField;
    t_TipoLocalDescricao: TStringField;
    qr_Contratos: TQuery;
    qr_ContratosEmpresa: TStringField;
    qr_ContratosFilial: TStringField;
    qr_ContratosImportador: TStringField;
    qr_ContratosContrato: TStringField;
    qr_ContratosDescricao: TStringField;
    qr_ContratosVigencia_inicial: TDateTimeField;
    qr_ContratosVigencia_final: TDateTimeField;
    qr_ContratosTipo: TStringField;
    qr_ContratosData_Baixa: TDateTimeField;
    qr_ContratosData_prorrogacao: TDateTimeField;
    qr_ContratosRepetro: TIntegerField;
    qr_ContratosAtivo: TIntegerField;
    QRLabel16: TQRLabel;
    qr_Contratosdesc_reg_fundamento: TStringField;
    qrlAtivos: TQRLabel;
    qrl_desc_reg_fundamento: TQRLabel;
    qrlAtivosLocal: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    qrlAtivoContrato: TQRLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure qrContratoAfterPreview(Sender: TObject);
    procedure qrbContBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_RelContrato: Tf_RelContrato;

implementation

uses U_MSCOMEX, U_contratos;

{$R *.DFM}

procedure Tf_RelContrato.FormCreate(Sender: TObject);
begin
     qrlVersao.Caption := v_versao;
     with qr_Contratos do
     begin
        close;
        sql.Clear;
        sql.add('select cont.Empresa, cont.Filial, cont.Importador, cont.Contrato, cont.Descricao, ');
        sql.add('cont.Vigencia_inicial,cont.Vigencia_final, cont.Tipo, cont.Data_Baixa, cont.Data_prorrogacao, ');
        sql.add('cont.Repetro, cont.Ativo, reg_fun.Descricao as desc_reg_fundamento ');
        sql.add('from Contratos as cont ');
        sql.add('left outer join TAB_REGIME_FUNDAMENTO as reg_fun on cont.Cod_Regime_Fundamento = reg_fun.Codigo ');
        sql.add('where Empresa =:pEmpresa ');
        sql.add('and Filial =:pFilial ');
        sql.add('and Importador =:pImportador ');
        {Verifica se selecionou um filtro}
        if f_contratos.rdg_Filtra_Ativos.ItemIndex <> 2 then
        begin

                if f_contratos.rdg_Filtra_Ativos.ItemIndex = 0 then
                begin
                //Filtro Ativo
                        sql.add('and Ativo = 1');
                        qrlAtivos.Caption:='SOMENTE ATIVOS';
                end
                else
                begin
                //Filtro Inativo
                        sql.add('and Ativo = 0');
                        qrlAtivos.Caption:='SOMENTE NÃO ATIVOS';
                end;
        end
        else
           qrlAtivos.Caption:='TODOS ATIVOS E NÃO ATIVOS';
        ParamByName('pEmpresa').AsString:=f_contratos.t_ContratosEmpresa.AsString;
        ParamByName('pFilial').AsString:=f_contratos.t_ContratosFilial.AsString;
        ParamByName('pImportador').AsString:=f_contratos.t_ContratosImportador.AsString;
        open;
     end;
//     t_Cont.Open;
     t_Local.Open;
     t_TipoCont.Open;
     t_TipoLocal.Open;
      qrl_desc_reg_fundamento.Caption:=qr_Contratosdesc_reg_fundamento.Text;
end;

procedure Tf_RelContrato.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     t_TipoLocal.Close;
     t_TipoCont.Close;
     t_Local.Close;
//     t_Cont.Close;
     qr_Contratos.close;

     Action := caFree;
     F_RelContrato := nil;
end;

procedure Tf_RelContrato.qrContratoAfterPreview(Sender: TObject);
begin
     Close;
end;

procedure Tf_RelContrato.qrbContBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     if qr_Contratosdesc_reg_fundamento.IsNull then
            qrl_desc_reg_fundamento.Caption:=' - '
     else
            qrl_desc_reg_fundamento.Caption:=qr_Contratosdesc_reg_fundamento.Text;


     if qr_ContratosAtivo.Value = 0 then
        qrlAtivoContrato.Caption:='Não'
     else
        qrlAtivoContrato.Caption:='Sim';
     if t_LocalAtivo.Value = 0 then
        qrlAtivosLocal.Caption:='Não'
     else
        qrlAtivosLocal.Caption:='Sim';
end;

end.
