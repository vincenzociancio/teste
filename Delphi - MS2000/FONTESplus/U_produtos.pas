unit U_produtos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ExtCtrls, Buttons,
  QuickRpt,QRCtrls, Clipbrd;

type
  TF_Produtos = class(TForm)
    dsProdutos: TDataSource;
    pnlLocProdutos: TPanel;
    L_busca: TLabel;
    dbGrdProdutos: TDBGrid;
    btnLocProOk: TBitBtn;
    qrLocProdutos: TQuery;
    dsLocProdutos: TDataSource;
    dsFabricantes: TDataSource;
    dsImportadores: TDataSource;
    dsMoedas: TDataSource;
    dsNCM: TDataSource;
    dsUniMedEstat: TDataSource;
    meLocProdutos: TMaskEdit;
    qrLocFabricantes: TQuery;
    dsLocFabricantes: TDataSource;
    pnlLocFabricantes: TPanel;
    Label13: TLabel;
    btnLocFabCanc: TBitBtn;
    btnLocFabOk: TBitBtn;
    dbGrdFabricantes: TDBGrid;
    meLocFabricantes: TMaskEdit;
    pnlLocIMportadores: TPanel;
    Label14: TLabel;
    btnLocImpCanc: TBitBtn;
    btnLocImpOk: TBitBtn;
    dbGrdImportadores: TDBGrid;
    meLocImportadores: TMaskEdit;
    qrLocImportadores: TQuery;
    dsLocImportadores: TDataSource;
    pnlLocNCM: TPanel;
    Label15: TLabel;
    btnLocNCMCanc: TBitBtn;
    btnLocNCMOk: TBitBtn;
    dbGrdNCM: TDBGrid;
    meLocNCM: TMaskEdit;
    qrLocNCM: TQuery;
    dsLocNCM: TDataSource;
    pnlLocUniMedEstat: TPanel;
    Label16: TLabel;
    btnLocUniMedEstatCanc: TBitBtn;
    btnLocUniMedEstatOk: TBitBtn;
    dbGrdUniMedEstat: TDBGrid;
    meLocUniMedEstat: TMaskEdit;
    qrLocUniMedEstat: TQuery;
    dsLocUniMedEstat: TDataSource;
    pnlLocUniMed: TPanel;
    Label17: TLabel;
    btnLocUniMedCanc: TBitBtn;
    btnLocUniMedOk: TBitBtn;
    dbGrdUniMed: TDBGrid;
    meLocUniMed: TMaskEdit;
    pnlLocMoedas: TPanel;
    Label18: TLabel;
    btnLocMoeCanc: TBitBtn;
    btnLocMoeOk: TBitBtn;
    dbGrdMoedas: TDBGrid;
    meLocMoedas: TMaskEdit;
    dsItensFatura: TDataSource;
    pnlPrincipal: TPanel;
    Label12: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    sbLocFabric: TSpeedButton;
    sbLocImport: TSpeedButton;
    sbLocNCM: TSpeedButton;
    sbLocUniMedEstat: TSpeedButton;
    sbLocUniMed: TSpeedButton;
    Label3: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Label42: TLabel;
    Label4: TLabel;
    pnlMenu: TPanel;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnFechar: TBitBtn;
    qrLocUniMed: TQuery;
    dsLocUniMed: TDataSource;
    qrFabricantes: TQuery;
    qrImportadores: TQuery;
    qrNCM: TQuery;
    qrUniMedEstat: TQuery;
    qrUniMed: TQuery;
    qrMoedas: TQuery;
    dsUniMed: TDataSource;
    Panel2: TPanel;
    btnLocProCanc: TBitBtn;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    pnlVerNCM: TPanel;
    dbGrdVerNCM: TDBGrid;
    btnOk: TBitBtn;
    Panel10: TPanel;
    qrItensFatura: TQuery;
    btnFiltrarProd: TBitBtn;
    Label19: TLabel;
    Memo1: TMemo;
    Shape1: TShape;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label9: TLabel;
    p_rodape: TPanel;
    Label10: TLabel;
    DBMemo1: TDBMemo;
    Label11: TLabel;
    DBMemo2: TDBMemo;
    qrItensFaturaEmpresa: TStringField;
    qrItensFaturaFilial: TStringField;
    qrItensFaturaProcesso: TStringField;
    qrItensFaturaFatura: TStringField;
    qrItensFaturaSequencial: TStringField;
    qrItensFaturaProduto: TStringField;
    qrLocImportadoresEmpresa: TStringField;
    qrLocImportadoresFilial: TStringField;
    qrLocImportadoresCodigo: TStringField;
    qrLocImportadoresRazao_Social: TStringField;
    qrLocImportadoresPais: TStringField;
    qrLocImportadoresCNPJ_CPF_COMPLETO: TStringField;
    qrLocImportadoresCGC_CPF: TStringField;
    qrLocImportadoresTipo_Importador: TStringField;
    qrLocImportadoresEndereco: TStringField;
    qrLocImportadoresNumero: TStringField;
    qrLocImportadoresComplemento: TStringField;
    qrLocImportadoresBairro: TStringField;
    qrLocImportadoresCidade: TStringField;
    qrLocImportadoresCEP: TStringField;
    qrLocImportadoresUF: TStringField;
    qrLocImportadoresEstado: TStringField;
    qrLocImportadoresInscricao_Estadual: TStringField;
    qrLocImportadoresBanco: TStringField;
    qrLocImportadoresAgencia: TStringField;
    qrLocImportadoresConta_Corrente: TStringField;
    qrLocImportadoresConta_Corrente_Registro: TIntegerField;
    qrLocImportadoresConta_Corrente_Deposito: TIntegerField;
    qrLocImportadoreslink: TStringField;
    qrLocImportadoresCAE: TStringField;
    qrLocImportadoresTelefone: TStringField;
    qrLocImportadoresAtivo: TSmallintField;
    qrLocImportadoresAcesso_WEB_MS: TSmallintField;
    qrLocImportadoresAcesso_WEB_CLI: TSmallintField;
    qrLocImportadoresAcesso_WEB_REC: TSmallintField;
    qrLocImportadoresBASE_ICMS: TSmallintField;
    qrLocNCMCODIGO: TStringField;
    qrLocNCMDESCRICAO: TStringField;
    qrLocNCMUNIDADE_MEDIDA: TStringField;
    qrLocUniMedEstatCODIGO: TStringField;
    qrLocUniMedEstatDESCRICAO: TStringField;
    qrLocUniMedCODIGO: TStringField;
    qrLocUniMedDESCRICAO: TStringField;
    qrImportadoresEmpresa: TStringField;
    qrImportadoresFilial: TStringField;
    qrImportadoresCodigo: TStringField;
    qrImportadoresRazao_Social: TStringField;
    qrFabricantesCodigo: TStringField;
    qrFabricantesRazao_Social: TStringField;
    qrUniMedEstatCODIGO: TStringField;
    qrUniMedEstatDESCRICAO: TStringField;
    qrMoedasCODIGO: TStringField;
    qrMoedasDESCRICAO: TStringField;
    qrUniMedCODIGO: TStringField;
    qrUniMedDESCRICAO: TStringField;
    qrLocFabricantesEmpresa: TStringField;
    qrLocFabricantesFilial: TStringField;
    qrLocFabricantesCodigo: TStringField;
    qrLocFabricantesRazao_Social: TStringField;
    qrLocFabricantesendereco: TStringField;
    qrLocFabricantescidade: TStringField;
    qrProdutos: TQuery;
    q_itensup: TQuery;
    me_codigo: TMaskEdit;
    me_partnumber: TMaskEdit;
    me_importador: TMaskEdit;
    me_fabricante: TMaskEdit;
    me_ncm: TMaskEdit;
    me_unidadee: TMaskEdit;
    me_unidade: TMaskEdit;
    me_destaque: TMaskEdit;
    me_naladi: TMaskEdit;
    memo_port: TMemo;
    memo_ing: TMemo;
    dbg_importadores: TDBGrid;
    dbg_fabricantes: TDBGrid;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    qlocpart: TQuery;
    qlocpartImportador: TStringField;
    qlocpartFabricante: TStringField;
    qlocpartPART_NUMBER: TStringField;
    q_inc: TQuery;
    q_incqreg: TIntegerField;
    qrNCMCODIGO: TStringField;
    qrNCMDESCRICAO: TStringField;
    qrNCMUNIDADE_MEDIDA: TStringField;
    qrProdutosREG: TAutoIncField;
    qrProdutosImportador: TStringField;
    qrProdutosFabricante: TStringField;
    qrProdutosCODIGO: TStringField;
    qrProdutosPART_NUMBER: TStringField;
    qrProdutosDescricao: TMemoField;
    qrProdutosDescricao_ing: TMemoField;
    qrProdutosNCM: TStringField;
    qrProdutosDestaque_NCM: TStringField;
    qrProdutosNALADI: TStringField;
    qrProdutosUnidade: TStringField;
    qrProdutosUnidade_Medida_Estat: TStringField;
    qrProdutosDATA_INCLUSAO: TDateTimeField;
    qrProdutosUsuario_INCLUSAO: TStringField;
    qrProdutosDATA_ULTIMA_ALTERACAO: TDateTimeField;
    qrProdutosUsuario_ALTERACAO: TStringField;
    qrProdutosRevisado: TIntegerField;
    qrProdutosRevisao_Data: TDateTimeField;
    qrProdutosRevisao_Usuario: TStringField;
    qrProdutosRevisao_OBS: TMemoField;
    qrLocProdutosREG: TAutoIncField;
    qrLocProdutosCODIGO: TStringField;
    qrLocProdutosPART_NUMBER: TStringField;
    qrLocProdutosDescricao: TMemoField;
    qrLocProdutosDescricao_ing: TMemoField;
    qrLocProdutosNCM: TStringField;
    qrLocProdutosDestaque_NCM: TStringField;
    qrLocProdutosNALADI: TStringField;
    qrLocProdutosUnidade: TStringField;
    qrLocProdutosUnidade_Medida_Estat: TStringField;
    qrLocProdutosDATA_INCLUSAO: TDateTimeField;
    qrLocProdutosUsuario_INCLUSAO: TStringField;
    qrLocProdutosDATA_ULTIMA_ALTERACAO: TDateTimeField;
    qrLocProdutosUsuario_ALTERACAO: TStringField;
    qrLocProdutosRevisado: TIntegerField;
    qrLocProdutosRevisao_Data: TDateTimeField;
    qrLocProdutosRevisao_Usuario: TStringField;
    qrLocProdutosRevisao_OBS: TMemoField;
    qrLocProdutosImportador: TStringField;
    qrLocProdutosFabricante: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnLocProOkClick(Sender: TObject);
    procedure btnLocFabOkClick(Sender: TObject);
    procedure btnLocFabCancClick(Sender: TObject);
    procedure meLocFabricantesChange(Sender: TObject);
    procedure btnLocImpOkClick(Sender: TObject);
    procedure btnLocImpCancClick(Sender: TObject);
    procedure meLocImportadoresChange(Sender: TObject);
    procedure meLocNCMChange(Sender: TObject);
    procedure btnLocNCMCancClick(Sender: TObject);
    procedure btnLocNCMOkClick(Sender: TObject);
    procedure meLocUniMedEstatChange(Sender: TObject);
    procedure btnLocUniMedEstatCancClick(Sender: TObject);
    procedure btnLocUniMedEstatOkClick(Sender: TObject);
    procedure meLocUniMedChange(Sender: TObject);
    procedure btnLocUniMedCancClick(Sender: TObject);
    procedure btnLocUniMedOkClick(Sender: TObject);
    procedure btnLocMoeCancClick(Sender: TObject);
    procedure btnLocMoeOkClick(Sender: TObject);
    procedure tbProdutosAfterInsert(DataSet: TDataSet);
    procedure btnImprimirClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure sbLocFabricClick(Sender: TObject);
    procedure sbLocImportClick(Sender: TObject);
    procedure sbLocNCMClick(Sender: TObject);
    procedure sbLocUniMedEstatClick(Sender: TObject);
    procedure sbLocUniMedClick(Sender: TObject);
    procedure sbLocMoedaClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnLocProCancClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure qrLocFabricantesAfterOpen(DataSet: TDataSet);
    procedure qrLocImportadoresAfterOpen(DataSet: TDataSet);
    procedure qrLocUniMedEstatAfterOpen(DataSet: TDataSet);
    procedure qrLocUniMedAfterOpen(DataSet: TDataSet);
    procedure btnFiltrarProdClick(Sender: TObject);
    procedure dbMemoDescIngKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtPesoKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtValorKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtNCMExit(Sender: TObject);
    procedure qrFabricantesAfterScroll(DataSet: TDataSet);
    procedure qrNCMAfterScroll(DataSet: TDataSet);
    procedure qrUniMedEstatAfterScroll(DataSet: TDataSet);
    procedure qrUniMedAfterScroll(DataSet: TDataSet);
    procedure me_unidadeeExit(Sender: TObject);
    procedure me_unidadeExit(Sender: TObject);
    procedure me_importadorChange(Sender: TObject);
    procedure me_fabricanteChange(Sender: TObject);
    procedure qrImportadoresAfterScroll(DataSet: TDataSet);
    procedure me_ncmChange(Sender: TObject);
    procedure qrProdutosAfterOpen(DataSet: TDataSet);
    procedure dbg_importadoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbg_fabricantesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure me_ncmKeyPress(Sender: TObject; var Key: Char);
    procedure memo_portKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure memo_ingKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure me_codigoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure me_partnumberKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   F_Produtos: TF_Produtos;
   codprod, novo: string;
   achou,prodnovo: Boolean;
   conta: Integer;

implementation

uses U_MSCOMEX, U_relexpor, U_exportadores;

{$R *.DFM}

procedure TF_Produtos.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     f_mscomex.produtos1.Enabled := True;
     f_Produtos := Nil;
     Action := caFree;
end;

procedure TF_Produtos.btnLocProOkClick(Sender: TObject);
begin
//     tbProdutos.Locate('Código',qrLocProdutosCdigo.AsString,[]);
//     tbProdutos.FindKey([qrLocProdutosreg.Asinteger]);

     qrprodutos.close;
     qrprodutos.Params[0].Asinteger := qrLocProdutosreg.Asinteger;
     qrprodutos.open;

     pnlLocProdutos.Visible := False;
     pnlMenu.Enabled := True;
     btnAlterar.SetFocus;
end;

procedure TF_Produtos.btnLocFabOkClick(Sender: TObject);
begin
     pnlLocFabricantes.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;
     me_fabricante.text :=  qrLocFabricantesCodigo.AsString;
     qrfabricantes.Locate('codigo',me_fabricante.text,[]);
//     dbLcbImportador.SetFocus;

end;

procedure TF_Produtos.btnLocFabCancClick(Sender: TObject);
begin
     pnlLocFabricantes.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;

end;

procedure TF_Produtos.meLocFabricantesChange(Sender: TObject);
begin
     With qrLocFabricantes Do Begin
         Close;
         if tipoBanco = 1 then begin
           Params[2].AsString := '%'+ meLocFabricantes.Text +'%';
           Params[3].AsString := '%'+ meLocFabricantes.Text +'%';
         end
         else begin
           Params[2].AsString := '*'+ meLocFabricantes.Text +'*';
           Params[3].AsString := '*'+ meLocFabricantes.Text +'*';
         end;
         Open;
     End;
end;

procedure TF_Produtos.btnLocImpOkClick(Sender: TObject);
begin
     pnlLocImportadores.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;
     me_importador.text :=  qrLocImportadoresCodigo.AsString;
     qrimportadores.Locate('codigo',me_importador.text,[]);
     
end;

procedure TF_Produtos.btnLocImpCancClick(Sender: TObject);
begin
     pnlLocImportadores.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;
//     dbLcbImportador.SetFocus;
end;

procedure TF_Produtos.meLocImportadoresChange(Sender: TObject);
begin
    qrLocImportadores.CLOSE;
    qrLocImportadores.Params[2].AsString := '%'+ meLocImportadores.Text +'%';
    qrLocImportadores.Params[3].AsString := '%'+ meLocImportadores.Text +'%';
    qrLocImportadores.Open;

end;

procedure TF_Produtos.meLocNCMChange(Sender: TObject);
begin

      qrLocNCM.Close;
      qrLocNCM.Params[0].AsString := '%'+ meLocNCM.Text +'%';
      qrLocNCM.Params[1].AsString := '%'+ meLocNCM.Text +'%';
      qrLocNCM.Open;

end;

procedure TF_Produtos.btnLocNCMCancClick(Sender: TObject);
begin
     pnlLocNCM.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;

end;

procedure TF_Produtos.btnLocNCMOkClick(Sender: TObject);
begin
     pnlLocNCM.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;
     me_ncm.text := qrLocNCMCodigo.AsString;
     //qrncm.Locate('codigo',me_ncm.text,[]);
     me_ncmChange(F_Produtos);

end;

procedure TF_Produtos.meLocUniMedEstatChange(Sender: TObject);
begin
     With qrLocUniMedEstat Do Begin
         Close;
         if TipoBanco = 1 then begin
           Params[0].AsString := '%'+ meLocUniMedEstat.Text +'%';
           Params[1].AsString := '%'+ meLocUniMedEstat.Text +'%';
         end
         else begin
           Params[0].AsString := '*'+ meLocUniMedEstat.Text +'*';
           Params[1].AsString := '*'+ meLocUniMedEstat.Text +'*';
         end;
         Open;
     End;
end;

procedure TF_Produtos.btnLocUniMedEstatCancClick(Sender: TObject);
begin
     pnlLocUniMedEstat.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;

end;

procedure TF_Produtos.btnLocUniMedEstatOkClick(Sender: TObject);
begin
     pnlLocUniMedEstat.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;

     me_unidadee.text := qrLocUniMedEstatCodigo.AsString;
qrunimedestat.Locate('codigo',me_unidadee.text,[]);

end;

procedure TF_Produtos.meLocUniMedChange(Sender: TObject);
begin
     With qrLocUniMed Do Begin
         Close;
         if TipoBanco = 1 then begin
           Params[0].AsString := '%'+ meLocUniMed.Text +'%';
           Params[1].AsString := '%'+ meLocUniMed.Text +'%';
         end
         else begin
           Params[0].AsString := '*'+ meLocUniMed.Text +'*';
           Params[1].AsString := '*'+ meLocUniMed.Text +'*';
         end;
         Open;
     End;
end;

procedure TF_Produtos.btnLocUniMedCancClick(Sender: TObject);
begin
     pnlLocUniMed.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;

end;

procedure TF_Produtos.btnLocUniMedOkClick(Sender: TObject);
begin
     pnlLocUniMed.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;
     me_unidade.Text := qrLocUniMedCodigo.AsString;
     qrunimed.Locate('codigo',me_unidade.text,[]);
end;

procedure TF_Produtos.btnLocMoeCancClick(Sender: TObject);
begin
     pnlLocMoedas.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;

end;

procedure TF_Produtos.btnLocMoeOkClick(Sender: TObject);
begin
     pnlLocMoedas.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;


end;

procedure TF_Produtos.tbProdutosAfterInsert(DataSet: TDataSet);
begin
     With f_mscomex Do Begin
//         logusu('I','Incluiu produto: '+tbProdutosCdigo.AsString);
     End;
end;

procedure TF_Produtos.btnImprimirClick(Sender: TObject);
begin
     If Not Assigned (QR_exportadores) Then Application.CreateForm(TQR_exportadores, QR_exportadores);
     QR_exportadores.q_Export.open;
     QR_exportadores.Preview;
end;

procedure TF_Produtos.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TF_Produtos.btnLocalizarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     With pnlLocProdutos Do Begin
         Top  := 8;
         Left := 64;
         Height := 361;
         width := 649;
         Visible := True;
     End;
     pnlMenu.Enabled := False;
     {With qrLocProdutos Do Begin
         Close;
         Params[0].AsString := v_empresa;
         Params[1].AsString := v_filial;
     End;}
     meLocProdutos.SetFocus;
     Screen.Cursor := crDefault;
end;

procedure TF_Produtos.btnNovoClick(Sender: TObject);
begin
  // tbProdutos.refresh();
  // tbProdutos.Append;

  codprod  := '';
  prodnovo := true;

  btnNovo.Enabled := False;
  btnAlterar.Enabled := False;
  btnExcluir.Enabled := False;
  btnLocalizar.Enabled := False;
  btnFechar.Enabled := False;
  btnCancelar.Enabled := True;
  btnGravar.Enabled := True;

  pnlPrincipal.Enabled := True;

  //qrimportadores.close;

  me_importador.text := '';//qrimportadorescodigo.asstring;
  me_fabricante.text := '';//qrfabricantescodigo.asstring;
  me_codigo.text     := '';
  me_partnumber.text := '';

  memo_port.Clear;
  memo_ing.clear;

  me_ncm.text := '';
  me_destaque.text := '';

  me_naladi.text := '';

  me_unidade.text := '';
  me_unidadee.text := '';

  //me_ncm.text := qrncmcodigo.asstring;

  //me_unidadee.text := qrUniMedEstatcodigo.asstring;
  //me_unidade.text := qrunimedcodigo.asstring;

  me_importador.setfocus;

end;

procedure TF_Produtos.btnExcluirClick(Sender: TObject);
var qsql:string;
begin
     Screen.Cursor := crHourGlass;
     With qrItensFatura Do Begin
         Close;
         Params[0].AsString := v_empresa;
         Params[1].AsString := v_filial;
         Params[2].AsString := me_codigo.text;
         Open;
     End;
     If qrItensFatura.RecordCount <> 0 Then Begin
        MessageDlg('Produto não pode ser excluído! Exitem Itens de Fatura com este Produto.', mtInformation,[mbOk], 0);
        Screen.Cursor := crDefault;
        Exit;
     End;

     If MessageDlg('Confirma exclusão deste Produto?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then Begin
        //tbProdutos.Delete;
        //tbProdutos.refresh();

        QSQL := 'DELETE FROM PRODUTOSNEW ';
        QSQL := QSQL+' WHERE REG='+qrprodutosreg.asstring;

        q_itensUP.SQL.Clear;
        q_itensUP.SQL.Add(qsql);
        q_itensUP.ExecSQL;

        logusu('E','Excluiu produto: '+qrProdutosCodigo.AsString);
        MessageDlg(v_usuario+', Produto excluído!', mtInformation,[mbOk], 0);

        qrprodutos.close;
        qrprodutos.Params[0].Asinteger := 1;
        qrprodutos.open;
        
     End;
     Screen.Cursor := crDefault;
end;

procedure TF_Produtos.btnAlterarClick(Sender: TObject);
begin

     codprod := qrProdutosCODIGO.AsString;

     prodnovo := false;

     btnNovo.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnLocalizar.Enabled := False;
     btnFechar.Enabled := False;
     btnCancelar.Enabled := True;
     btnGravar.Enabled := True;

     pnlPrincipal.Enabled := True;

   me_Importador.SetFocus;

end;

procedure TF_Produtos.btnCancelarClick(Sender: TObject);
//var qreg:integer;
begin 
  //qreg := qrprodutosreg.asinteger;

  If MessageDlg('Confirma cancelamento?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then Begin
    //     tbProdutos.Cancel;
    //     tbProdutos.refresh();

    //     dbLcbImportador.Enabled := True;
    sbLocImport.Enabled := True;
    btnNovo.Enabled := True;
    btnAlterar.Enabled := True;
    btnExcluir.Enabled := True;
    btnLocalizar.Enabled := True;
    btnFechar.Enabled := True;
    btnCancelar.Enabled := False;
    btnGravar.Enabled := False;

    pnlPrincipal.Enabled := False;
    //     dbEdtCodigo.Enabled := True;
    qrprodutos.close;
    qrprodutos.open;
    btnNovo.SetFocus;
  end;
end;

procedure TF_Produtos.btnGravarClick(Sender: TObject);
var qsql:string;
qreg:integer;
begin

   qrncm.Close;
   qrncm.Params[0].AsString := '%'+ me_ncm.text +'%';
   qrncm.Open;

if not qrncm.Locate('CODIGO',me_ncm.text,[]) then begin
   Showmessage(v_usuario+', Favor verificar, NCM NÃO ENCONTRADA!');
   me_ncm.SETFOCUS;
   exit;
end;

     if prodnovo then begin
        qlocpart.Close;
        qlocpart.Params[0].AsString := me_importador.Text;
        qlocpart.Params[1].AsString := me_fabricante.Text;
        qlocpart.Params[2].AsString := me_partnumber.Text;
        qlocpart.Params[3].AsString := me_codigo.Text;
        qlocpart.Open;
        if qlocpart.RecordCount>0 then begin
           Showmessage(v_usuario+', Favor verificar, já existe este Importador+Fabricante+Código do Produto+Part Number');
           exit;
        end;

     end;

     If me_Importador.Text = '' Then Begin
        MessageDlg('Informe o Importador do Produto!', mtWarning, [mbOk], 0);
        me_Importador.SetFocus;
        Exit;
     End;

     If me_Fabricante.Text = '' Then Begin
        MessageDlg('Informe o Fabricante do Produto!', mtWarning, [mbOk], 0);
        me_Fabricante.SetFocus;
        Exit;
     End;


     If me_Codigo.Text = '' Then Begin
        MessageDlg('Informe o Código do Produto!', mtWarning, [mbOk], 0);
        me_Codigo.SetFocus;
        Exit;
     End;

     If (trim(memo_port.Text) = '') and (trim(memo_ing.text) = '') Then Begin
        MessageDlg('A Descrição do Produto em Português e Inglês não podem estar em branco simultanemente!', mtWarning, [mbOk], 0);
        memo_port.SetFocus;
        Exit;
     End;


     If (me_NCM.Text = '') Then Begin
        MessageDlg('Código do NCM inválido!', mtWarning, [mbOk], 0);
        me_NCM.SetFocus;
        Exit;
     End;

     me_Destaque.text := Trim(me_Destaque.Text);
     me_Naladi.text   := Trim(me_Naladi.Text);

     memo_port.text := StringReplace(memo_port.text,CHR(34),CHR(39)+CHR(39),[rfReplaceAll]);
     memo_ing.text  := StringReplace(memo_ing.text,CHR(34),CHR(39)+CHR(39),[rfReplaceAll]);

if prodnovo then begin

{qsql := ' INSERT INTO [Produtosnew] ';
qsql := qsql +' ([Importador] ';
qsql := qsql +',[Fabricante] ';
qsql := qsql +'           ,[CODIGO] ';
qsql := qsql +'           ,[PART_NUMBER] ';
qsql := qsql +'           ,[Descricao] ';
qsql := qsql +'           ,[Descricao_ing] ';
qsql := qsql +'           ,[NCM] ';
qsql := qsql +'           ,[Destaque_NCM] ';
qsql := qsql +'           ,[NALADI] ';
qsql := qsql +'           ,[Unidade] ';
qsql := qsql +'           ,[Unidade_Medida_Estat] ';
qsql := qsql +'           ,[DATA_INCLUSAO] ';
qsql := qsql +'           ,[Usuario_INCLUSAO] ';
qsql := qsql +'           ,[DATA_ULTIMA_ALTERACAO] ';
qsql := qsql +'           ,[Usuario_ALTERACAO]) ';
//qsql := qsql +'           ,[Revisado] ';
//qsql := qsql +'           ,[Revisao_Data] ';
//qsql := qsql +'           ,[Revisao_Usuario] ';
//qsql := qsql +'           ,[Revisao_OBS]) ';
qsql := qsql +'      VALUES ';
qsql := qsql +' ('+QUOTEDSTR(me_importador.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(me_fabricante.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(me_codigo.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(me_partnumber.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(memo_port.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(memo_ing.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(me_ncm.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(me_destaque.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(me_naladi.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(me_unidade.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(me_unidadee.text)+' ';
qsql := qsql +' ,'+QUOTEDSTR(FormatDateTime('dd"/"mm"/"yyyy',Date()))+' ';
qsql := qsql +' ,'+QUOTEDSTR(v_usuario)+'';
qsql := qsql +' ,'+QUOTEDSTR(FormatDateTime('dd"/"mm"/"yyyy',Date()))+' ';
qsql := qsql +' ,'+QUOTEDSTR(v_usuario)+')';  }

//showmessage(qsql);
  {
    q_itensUP.SQL.Clear;
    q_itensUP.SQL.Add(qsql);
    q_itensUP.SQL.SaveToFile('C:\ArquivoProduto.txt');
    q_itensUP.ExecSQL;}
   {Leandro Serra - 27/12/2011 Ticket 1336}
    with q_itensUP do
    begin
         close;
         ParamByName('pImportador').Value :=  me_importador.text;
         ParamByName('pFabricante').Value :=  me_fabricante.text;
         ParamByName('pCODIGO').Value :=  me_codigo.text;//StringReplace(me_codigo.text, '"', 'p',[rfReplaceAll]);
         ParamByName('pPART_NUMBER').Value := me_partnumber.text;
         ParamByName('pDescricao').AsMemo :=   memo_port.text;
         ParamByName('pDescricao_ing').asMemo :=  memo_ing.text;
         ParamByName('pNCM').Value :=   me_ncm.text;
         ParamByName('pDestaque_NCM').Value := me_destaque.text;
         ParamByName('pNALADI').Value :=  me_naladi.text;
         ParamByName('pUnidade').Value :=  me_unidade.text;
         ParamByName('pUnidade_Medida_Estat').Value := me_unidadee.text;
         ParamByName('pDATA_INCLUSAO').Value :=  FormatDateTime('dd"/"mm"/"yyyy',Date());
         ParamByName('pUsuario_INCLUSAO').Value :=  v_usuario;
         ParamByName('pDATA_ULTIMA_ALTERACAO').Value := FormatDateTime('dd"/"mm"/"yyyy',Date());
         ParamByName('pUsuario_ALTERACAO').Value := v_usuario;
         //SQL.SaveToFile('C:\ArquivoProduto.txt');
         ExecSQL;
    end;
    {Fim  Ticket 1336}

    q_inc.close;
    q_inc.open;
    qreg := q_incqreg.asinteger;

    logusu('P','Incluiu produto: '+me_codigo.text);
    MessageDlg(v_usuario+', Produto incluído!', mtInformation,[mbOk], 0);


end
else begin /// alteração



qsql := 'UPDATE Produtosnew set ';
qsql := qsql+' [Importador] ='+ QUOTEDSTR(me_importador.text)+'';
qsql := qsql+'       ,[Fabricante] ='+ QUOTEDSTR(me_fabricante.text)+'';
qsql := qsql+'       ,[CODIGO] ='+ QUOTEDSTR(me_codigo.text)+'';
qsql := qsql+'       ,[PART_NUMBER] ='+ QUOTEDSTR(me_partnumber.text)+'';
qsql := qsql+'       ,[Descricao] = '+ QUOTEDSTR(memo_port.text)+' ';
qsql := qsql+'       ,[Descricao_ing] = '+ QUOTEDSTR(memo_ing.text) +' ';
qsql := qsql+'       ,[NCM] ='+ QUOTEDSTR(me_ncm.text)+'';
qsql := qsql+'       ,[Destaque_NCM] ='+ QUOTEDSTR(me_destaque.text)+'';
qsql := qsql+'       ,[NALADI] ='+ QUOTEDSTR(me_naladi.text)+'';
qsql := qsql+'       ,[Unidade] ='+ QUOTEDSTR(me_unidade.text)+'';
qsql := qsql+'       ,[Unidade_Medida_Estat] = '+ QUOTEDSTR(me_unidadee.text)+'';
//qsql := qsql+'       ,[DATA_INCLUSAO] ="'+FormatDateTime('dd"/"mm"/"yyyy',Date())+'"';
//qsql := qsql+'       ,[Usuario_INCLUSAO] ="'+ v_usuario+'"';
qsql := qsql+'       ,[DATA_ULTIMA_ALTERACAO] ='+QUOTEDSTR(FormatDateTime('dd"/"mm"/"yyyy',Date()))+'';
qsql := qsql+'       ,[Usuario_ALTERACAO] ='+ QUOTEDSTR(v_usuario)+'';
//qsql := qsql+'       ,[Revisado] = <Revisado, int,>
//qsql := qsql+'       ,[Revisao_Data] = <Revisao_Data, datetime,>
//qsql := qsql+'       ,[Revisao_Usuario] = <Revisao_Usuario, varchar(10),>
//qsql := qsql+'       ,[Revisao_OBS] = <Revisao_OBS, varchar,>
qsql := qsql+'  WHERE REG='+qrprodutosreg.asstring;

//showmessage(qsql);
//memo_port.text := qsql;

    q_itensUP.SQL.Clear;
    q_itensUP.SQL.Add(qsql);
    q_itensUP.ExecSQL;

    qreg := qrprodutosreg.asinteger;

    logusu('P','Alterou produto: '+me_codigo.text);
    MessageDlg(v_usuario+', Produto alterado!', mtInformation,[mbOk], 0);

end;

     qrprodutos.close;
     qrprodutos.Params[0].Asinteger := qreg;
     qrprodutos.open;


     Screen.Cursor := crHourGlass;
     btnNovo.Enabled := True;
     btnAlterar.Enabled := True;
     btnExcluir.Enabled := True;
     btnLocalizar.Enabled := True;
     btnFechar.Enabled := True;
     btnCancelar.Enabled := False;
     btnGravar.Enabled := False;

     pnlPrincipal.Enabled := False;
     me_Codigo.Enabled := True;
     btnNovo.SetFocus;
     Screen.Cursor := crDefault;

end;

procedure TF_Produtos.sbLocFabricClick(Sender: TObject);
begin
     With pnlLocFabricantes Do Begin
         Top  := 40;
         Left := 36;
         Height := 241;
         Visible := True;
         width := 640;
     End;
     pnlPrincipal.Enabled := False;
     pnlMenu.Enabled := False;
     With qrLocFabricantes Do Begin
         Close;
     //    Params[0].AsString := v_empresa;
     //    Params[1].AsString := v_filial;
         Open;
     End;
     meLocFabricantes.SetFocus;
end;

procedure TF_Produtos.sbLocImportClick(Sender: TObject);
begin
     With pnlLocImportadores Do Begin
         Top  := 40;
         Left := 36;
         Height := 241;
         WIDTH := 640;
         Visible := True;
     End;
     pnlPrincipal.Enabled := False;
     pnlMenu.Enabled := False;
     With qrLocImportadores Do Begin
         Close;
         Open;
     End;
     meLocImportadores.SetFocus;
end;

procedure TF_Produtos.sbLocNCMClick(Sender: TObject);
begin
     With pnlLocNCM Do Begin
         Top  := 40;
         Left := 36;
         Height := 241;
         Visible := True;
         width := 640;
     End;
     pnlPrincipal.Enabled := False;
     pnlMenu.Enabled := False;
     With qrLocNCM Do Begin
         Close;
         Open;
     End;
     meLocNCM.SetFocus;
end;

procedure TF_Produtos.sbLocUniMedEstatClick(Sender: TObject);
begin
     With pnlLocUniMedEstat Do Begin
         Top  := 40;
         Left := 36;
         Height := 241;
         Visible := True;
     End;
     pnlPrincipal.Enabled := False;
     pnlMenu.Enabled := False;
     With qrLocUniMedEstat Do Begin
         Close;  Open;
     End;
     meLocUniMedEstat.SetFocus;
end;

procedure TF_Produtos.sbLocUniMedClick(Sender: TObject);
begin
     With pnlLocUniMed Do Begin
         Top  := 40;
         Left := 36;
         Height := 241;
         Visible := True;
     End;
     pnlPrincipal.Enabled := False;
     pnlMenu.Enabled := False;
     With qrLocUniMed Do Begin
         Close;  Open;
     End;
     meLocUniMed.SetFocus;
end;

procedure TF_Produtos.sbLocMoedaClick(Sender: TObject);
begin
     With pnlLocMoedas Do Begin
         Top  := 40;
         Left := 36;
         Height := 241;
         Visible := True;
     End;
     pnlPrincipal.Enabled := False;
     pnlMenu.Enabled := False;
end;

procedure TF_Produtos.FormCreate(Sender: TObject);
begin
  qrImportadores.open;
  qrFabricantes.open;
  qrNCM.Close;
  qrNCM.open;
  qrUniMedEstat.open;
  qrUniMed.open;
  qrMoedas.open;
  qrprodutos.open;
end;

procedure TF_Produtos.btnLocProCancClick(Sender: TObject);
begin
  pnlLocProdutos.Visible := False;
  pnlMenu.Enabled := True;
  btnAlterar.SetFocus;
end;

procedure TF_Produtos.btnOkClick(Sender: TObject);
begin
     pnlVerNCM.Visible := False;
     pnlPrincipal.Enabled := True;
     pnlMenu.Enabled := True;
end;

procedure TF_Produtos.qrLocFabricantesAfterOpen(DataSet: TDataSet);
begin
     {If qrLocFabricantes.RecordCount = 0 Then
        btnLocFabOk.Enabled := False
     Else
        btnLocFabOk.Enabled := True;}
end;

procedure TF_Produtos.qrLocImportadoresAfterOpen(DataSet: TDataSet);
begin
     If qrLocImportadores.RecordCount = 0 Then
        btnLocImpOk.Enabled := False
     Else
        btnLocImpOk.Enabled := True;
end;

procedure TF_Produtos.qrLocUniMedEstatAfterOpen(DataSet: TDataSet);
begin
     If qrLocUniMedEstat.RecordCount = 0 Then
        btnLocUniMedEstatOk.Enabled := False
     Else
        btnLocUniMedEstatOk.Enabled := True;
end;

procedure TF_Produtos.qrLocUniMedAfterOpen(DataSet: TDataSet);
begin
     If qrLocUniMed.RecordCount = 0 Then
        btnLocUniMedOk.Enabled := False
     Else
        btnLocUniMedOk.Enabled := True;
end;

procedure TF_Produtos.btnFiltrarProdClick(Sender: TObject);
begin
  If Length(meLocProdutos.Text) > 3 Then begin
    Screen.Cursor := crHourGlass;
    qrLocProdutos.close;
    qrLocProdutos.Params[0].AsString := '%'+ meLocProdutos.Text +'%';
    qrLocProdutos.Params[1].AsString := '%'+ meLocProdutos.Text +'%';
    qrLocProdutos.Params[2].AsString := '%'+ meLocProdutos.Text +'%';
    qrLocProdutos.Params[3].AsString := '%'+ meLocProdutos.Text +'%';
    qrLocProdutos.Open;
    Screen.Cursor := crDefault;
  end
  else begin
    showmessage('Favor informar uma palavra com no mínimo 3 letras!');
  end;
end;

procedure TF_Produtos.dbMemoDescIngKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then Begin
        ShowMessage('Para pular de linha preencha com espaços!');
        Key := #0;
     End;
end;

procedure TF_Produtos.dbEdtPesoKeyPress(Sender: TObject; var Key: Char);
begin
     If Not(Key In ['0'..'9',',','.',#8]) Then
        Key := #0;
     If Key = '.' Then  Key := ',';
end;

procedure TF_Produtos.dbEdtValorKeyPress(Sender: TObject; var Key: Char);
begin
     If Not(Key In ['0'..'9',',','.',#8]) Then
        Key := #0;
     If Key = '.' Then  Key := ',';
end;


procedure TF_Produtos.dbEdtNCMExit(Sender: TObject);
begin

qrProdutosUnidade_Medida_Estat.AsString := qrNCMUnidade_Medida.AsString;

end;


procedure TF_Produtos.qrFabricantesAfterScroll(DataSet: TDataSet);
begin
me_fabricante.text := qrfabricantescodigo.asstring;
end;

procedure TF_Produtos.qrNCMAfterScroll(DataSet: TDataSet);
begin
//me_ncm.text := qrncmcodigo.asstring;
me_unidadee.text := qrNCMUnidade_Medida.AsString;
end;

procedure TF_Produtos.qrUniMedEstatAfterScroll(DataSet: TDataSet);
begin
me_unidadee.text := qrUniMedEstatcodigo.asstring;
end;

procedure TF_Produtos.qrUniMedAfterScroll(DataSet: TDataSet);
begin
me_unidade.text := qrunimedcodigo.asstring;
end;

procedure TF_Produtos.me_unidadeeExit(Sender: TObject);
begin
qrunimedestat.Locate('codigo',me_unidadee.text,[]);
end;

procedure TF_Produtos.me_unidadeExit(Sender: TObject);
begin
qrunimed.Locate('codigo',me_unidade.text,[]);
end;

procedure TF_Produtos.me_importadorChange(Sender: TObject);
begin
qrimportadores.Locate('codigo',me_importador.text,[]);
end;

procedure TF_Produtos.me_fabricanteChange(Sender: TObject);
begin
qrfabricantes.Locate('codigo',me_fabricante.text,[]);
end;

procedure TF_Produtos.qrImportadoresAfterScroll(DataSet: TDataSet);
begin
me_importador.text := qrimportadorescodigo.asstring;
end;

procedure TF_Produtos.me_ncmChange(Sender: TObject);
begin

If Length(me_ncm.text) <> 8 Then BEGIN
qrncm.Close;
Exit;
end;
      qrncm.Close;
      qrncm.Params[0].AsString := '%'+ me_ncm.text +'%';
      qrncm.Open;

      if not qrncm.Locate('CODIGO',me_ncm.text,[]) then begin
         Showmessage(v_usuario+', Favor verificar, NCM NÃO ENCONTRADA!');
         me_ncm.SetFocus;
         exit;
      end;
end;

procedure TF_Produtos.qrProdutosAfterOpen(DataSet: TDataSet);
begin
  me_importador.text := qrprodutosimportador.asstring;
  me_fabricante.text := qrProdutosFabricante.asstring;
  me_codigo.text     := qrprodutoscodigo.asstring;
  me_partnumber.text := qrprodutospart_number.asstring;

  memo_port.Text := qrprodutosdescricao.asstring;
  memo_ing.Text := qrprodutosdescricao_ing.asstring;

  me_ncm.text :=     qrProdutosNCM.asstring;
  me_destaque.text := qrProdutosDestaque_NCM.asstring;

  me_naladi.text := qrProdutosNALADI.asstring;

  me_unidade.text := qrProdutosUnidade.asstring;
  me_unidadee.text := qrProdutosUnidade_Medida_Estat.asstring;

  p_rodape.caption := 'INCLUSÃO: '+qrProdutosdata_inclusao.asstring+'/'+qrProdutosusuario_inclusao.asstring+
                      '  -  ALTERAÇÃO: '+qrProdutosdata_ULTIMA_ALTERACAO.asstring+'/'+qrProdutosusuario_ALTERACAO.asstring;


  qrimportadores.Locate('codigo',me_importador.text,[]);
  qrfabricantes.Locate('codigo',me_fabricante.text,[]);
  qrNCM.Close;
  qrNCM.open;
  qrNCM.Locate('codigo',me_NCM.text,[]);
  qrUNIMEDESTAT.Locate('codigo',me_unidadee.text,[]);
  qrunimed.Locate('codigo',me_unidade.text,[]);
end;

procedure TF_Produtos.dbg_importadoresKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  IF (Key = vk_TAB) THEN begin
    qrimportadores.MoveBy(-1);
    me_fabricante.setfocus;
  end;
end;

procedure TF_Produtos.dbg_fabricantesKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
IF (Key = vk_TAB) THEN begin
   qrfabricantes.MoveBy(-1);
   me_codigo.setfocus;
end;
end;

procedure TF_Produtos.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF (Key = vk_TAB) THEN begin
   qrncm.MoveBy(-1);
   me_destaque.setfocus;
end;
end;

procedure TF_Produtos.DBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
IF (Key = vk_TAB) THEN begin
   qrunimedestat.MoveBy(-1);
   me_unidade.setfocus;
end;
end;

procedure TF_Produtos.me_ncmKeyPress(Sender: TObject; var Key: Char);
begin
    If Not(Key In ['0'..'9',#8]) Then Begin
       Key := #0;
     End;
end;

procedure TF_Produtos.memo_portKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if v_usuario = 'FCARVALHO' then exit;
  if v_usuario = 'LSILVA' then exit;
  if v_usuario = 'TFREITAS' then exit;
  if v_usuario = 'DOUGLAS' then exit;
  if v_usuario = 'ACARVALHO' then exit;
  if v_usuario = 'ROCHAEL' then exit;
  if v_usuario = 'JNETO' then exit;
  if v_usuario = 'FPAZ' then exit;
  if v_usuario = 'NSOUSA' then exit;
  if v_usuario = 'GABRIEL' then exit;
  if v_usuario = 'DMELLO' then exit;
  if v_usuario = 'AMONTEIRO' then exit;
  if v_usuario = 'VRODRIGUES' then exit;
  if v_usuario = 'PMURY' then exit;
  if v_usuario = 'REINALDO' then exit;
  if v_usuario = 'FLAYBER' then exit;
  if v_usuario = 'LCAMARGO' then exit;
  if v_usuario = 'ILDEBERTO' then exit;
  if v_usuario = 'JOSEJR' then exit;
  if v_usuario = 'TCUNHA' then exit;
  if v_usuario = 'MOLIVEIRA' then exit;
  if v_usuario = 'MSANTOS' then exit;  

  if ((ssCtrl in Shift) AND (Key = ord('V'))) then
  begin
      if Clipboard.HasFormat(CF_TEXT) then ClipBoard.Clear;
      memo_port.SelText :='Digite o texto.';
      Key := 0;
  end;
end;

procedure TF_Produtos.memo_ingKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if v_usuario = 'FCARVALHO' then exit;
  if v_usuario = 'LSILVA' then exit;
  if v_usuario = 'TFREITAS' then exit;
  if v_usuario = 'DOUGLAS' then exit;
  if v_usuario = 'ACARVALHO' then exit;
  if v_usuario = 'ROCHAEL' then exit;
  if v_usuario = 'JNETO' then exit;
  if v_usuario = 'FPAZ' then exit;
  if v_usuario = 'NSOUSA' then exit;
  if v_usuario = 'GABRIEL' then exit;
  if v_usuario = 'DMELLO' then exit;
  if v_usuario = 'AMONTEIRO' then exit;
  if v_usuario = 'VRODRIGUES' then exit;
  if v_usuario = 'PMURY' then exit;
  if v_usuario = 'REINALDO' then exit;
  if v_usuario = 'FLAYBER' then exit;
  if v_usuario = 'LCAMARGO' then exit;
  if v_usuario = 'ILDEBERTO' then exit;
  if v_usuario = 'JOSEJR' then exit;
  if v_usuario = 'TCUNHA' then exit;
  if v_usuario = 'MOLIVEIRA' then exit;
  if v_usuario = 'MSANTOS' then exit;    

  if ((ssCtrl in Shift) AND (Key = ord('V'))) then
  begin
      if Clipboard.HasFormat(CF_TEXT) then ClipBoard.Clear;
      memo_ing.SelText :='Digite o texto.';
      Key := 0;
  end;
end;

procedure TF_Produtos.me_codigoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if v_usuario = 'FCARVALHO' then exit;
  if v_usuario = 'LSILVA' then exit;
  if v_usuario = 'TFREITAS' then exit;
  if v_usuario = 'DOUGLAS' then exit;
  if v_usuario = 'ACARVALHO' then exit;
  if v_usuario = 'ROCHAEL' then exit;
  if v_usuario = 'JNETO' then exit;
  if v_usuario = 'FPAZ' then exit;
  if v_usuario = 'NSOUSA' then exit;
  if v_usuario = 'GABRIEL' then exit;
  if v_usuario = 'DMELLO' then exit;
  if v_usuario = 'AMONTEIRO' then exit;
  if v_usuario = 'VRODRIGUES' then exit;
  if v_usuario = 'PMURY' then exit;
  if v_usuario = 'REINALDO' then exit;
  if v_usuario = 'FLAYBER' then exit;
  if v_usuario = 'LCAMARGO' then exit;
  if v_usuario = 'ILDEBERTO' then exit;
  if v_usuario = 'JOSEJR' then exit;
  if v_usuario = 'TCUNHA' then exit;
  if v_usuario = 'MOLIVEIRA' then exit;
  if v_usuario = 'MSANTOS' then exit;    

  if ((ssCtrl in Shift) AND (Key = ord('V'))) then
  begin
      if Clipboard.HasFormat(CF_TEXT) then ClipBoard.Clear;
      me_codigo.SelText :='Digite o texto.';
      Key := 0;
  end;
end;

procedure TF_Produtos.me_partnumberKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if v_usuario = 'FCARVALHO' then exit;
  if v_usuario = 'LSILVA' then exit;
  if v_usuario = 'TFREITAS' then exit;
  if v_usuario = 'DOUGLAS' then exit;
  if v_usuario = 'ACARVALHO' then exit;
  if v_usuario = 'ROCHAEL' then exit;
  if v_usuario = 'JNETO' then exit;
  if v_usuario = 'FPAZ' then exit;
  if v_usuario = 'NSOUSA' then exit;
  if v_usuario = 'GABRIEL' then exit;
  if v_usuario = 'DMELLO' then exit;
  if v_usuario = 'AMONTEIRO' then exit;
  if v_usuario = 'VRODRIGUES' then exit;
  if v_usuario = 'PMURY' then exit;
  if v_usuario = 'REINALDO' then exit;
  if v_usuario = 'FLAYBER' then exit;
  if v_usuario = 'LCAMARGO' then exit;
  if v_usuario = 'ILDEBERTO' then exit;
  if v_usuario = 'JOSEJR' then exit;
  if v_usuario = 'TCUNHA' then exit;
  if v_usuario = 'MOLIVEIRA' then exit;
  if v_usuario = 'MSANTOS' then exit;  

  if ((ssCtrl in Shift) AND (Key = ord('V'))) then
  begin
      if Clipboard.HasFormat(CF_TEXT) then ClipBoard.Clear;
      me_partnumber.SelText :='Digite o texto.';
      Key := 0;
  end;
end;

end.
