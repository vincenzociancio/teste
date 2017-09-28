unit u_proTraCla;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ExtCtrls, Db, DBTables, DBCtrls, Grids, DBGrids, Buttons,
  ActnList;

type
  TF_proTraCla = class(TForm)
    pnlPrincipal: TPanel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label44: TLabel;
    Label171: TLabel;
    pnlTop: TPanel;
    Label26: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    pnlBaixo: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    btnSair: TBitBtn;
    dbGrdItens: TDBGrid;
    qrItens: TQuery;
    dsQItens: TDataSource;
    tbItens: TTable;
    dsItens: TDataSource;
    dbEdtPag: TDBEdit;
    qrNCM: TQuery;
    dsNCM: TDataSource;
    Label1: TLabel;
    qrDelTributacao: TQuery;
    Label2: TLabel;
    edtFatura: TEdit;
    tbItensEmpresa: TStringField;
    tbItensFilial: TStringField;
    tbItensProcesso: TStringField;
    tbItensFatura: TStringField;
    tbItensSequencial: TStringField;
    tbItensPagina: TStringField;
    tbItensProduto: TStringField;
    tbItensDescricao_Produto: TStringField;
    tbItensFabricante: TStringField;
    tbItensNCM: TStringField;
    tbItensUnidade: TStringField;
    tbItensUnidade_Medida_Estat: TStringField;
    tbItensDestaque_NCM: TStringField;
    tbItensNALADI: TStringField;
    tbItensReferencia: TStringField;
    tbItensNumero_serie: TStringField;
    tbItensReferencia_projeto: TStringField;
    tbItensPO: TStringField;
    tbItensSeqpo: TStringField;
    tbItensQuantidade: TFloatField;
    tbItensValorUnitrio: TFloatField;
    tbItensValorTotal: TFloatField;
    tbItensPesoUnitrio: TFloatField;
    tbItensPeso_Unitario_Acertado: TFloatField;
    tbItensPesoTotal: TFloatField;
    tbItensPeso_Total_Acertado: TFloatField;
    tbItensSaldo_Tributavel: TFloatField;
    tbItensRateio_Acrescimos: TFloatField;
    tbItensRateio_Deducoes: TFloatField;
    tbItensRateio_Embalagem: TFloatField;
    tbItensRateio_Frete_Interno_imp: TFloatField;
    tbItensRateio_Seguro_Interno: TFloatField;
    tbItensRateio_outras_import: TFloatField;
    tbItensRateio_startup: TFloatField;
    tbItensRateio_jurosfin: TFloatField;
    tbItensRateio_montagem: TFloatField;
    tbItensRateio_Frete_Interno_exp: TFloatField;
    tbItensRateio_carga_exp: TFloatField;
    tbItensRateio_outras_export: TFloatField;
    tbItensRateio_frete_fatura: TFloatField;
    tbItensRateio_seguro_fatura: TFloatField;
    tbItensRateio_carga_imp: TFloatField;
    tbItensRateio_Despesas_ate_FOB: TFloatField;
    tbItensRateio_Frete_prepaid: TFloatField;
    tbItensRateio_Frete_collect: TFloatField;
    tbItensRateio_Frete_ternac: TFloatField;
    tbItensRateio_Seguro: TFloatField;
    tbItensValor_Aduaneiro: TFloatField;
    tbItensValor_mercadoria: TFloatField;
    tbItensVMLE: TFloatField;
    tbItensBase_Calc_II: TFloatField;
    tbItensAcresc_reduc_Valaduan: TFloatField;
    tbItensCOD_SIT: TStringField;
    tbItensCNPJ: TStringField;
    tbItensFiel_nome: TStringField;
    tbItensFiel_cpf: TStringField;
    tbItensContrato: TStringField;
    tbItensLocal_Inventario: TStringField;
    dbEdtSeq: TDBEdit;
    dbEdtDesc: TDBEdit;
    dbEdtNALADI: TDBEdit;
    Label3: TLabel;
    dbLcbUniMedEstat: TDBLookupComboBox;
    dbLcbNCM: TDBLookupComboBox;
    qrUniMedEstat: TQuery;
    dsUniMedEstat: TDataSource;
    qrUniMedEstatCODIGO: TStringField;
    qrUniMedEstatDESCRICAO: TStringField;
    qrUniMedEstatABREV: TStringField;
    qrProdutos: TQuery;
    dbEdtDestaque: TDBEdit;
    dbEdtProduto: TDBEdit;
    qrProdutosEmpresa: TStringField;
    qrProdutosFilial: TStringField;
    qrProdutosCdigo: TStringField;
    qrProdutosNCM: TStringField;
    qrProdutosImportador: TStringField;
    qrProdutosFabricante: TStringField;
    qrProdutosUnidade: TStringField;
    qrProdutosPesoUnitrio: TFloatField;
    qrProdutosValorUnitrio: TFloatField;
    qrProdutosMoeda: TStringField;
    qrProdutosUnidade_Medida_Estat: TStringField;
    qrProdutosDestaque_NCM: TStringField;
    qrProdutosNALADI: TStringField;
    qrProdutosDescI: TMemoField;
    alAtuValor: TActionList;
    memoDesc: TMemo;
    acAlterarProduto: TAction;
    tbIncProd: TTable;
    tbIncProdEmpresa: TStringField;
    tbIncProdFilial: TStringField;
    tbIncProdCdigo: TStringField;
    tbIncProdDescrio: TMemoField;
    tbIncProdNCM: TStringField;
    tbIncProdImportador: TStringField;
    tbIncProdFabricante: TStringField;
    tbIncProdUnidade: TStringField;
    tbIncProdPesoUnitrio: TFloatField;
    tbIncProdValorUnitrio: TFloatField;
    tbIncProdMoeda: TStringField;
    tbIncProdUnidade_Medida_Estat: TStringField;
    tbIncProdDestaque_NCM: TStringField;
    tbIncProdNALADI: TStringField;
    qrNCMCODIGO: TStringField;
    qrNCMDESCRICAO: TStringField;
    qrNCMUNIDADE_MEDIDA: TStringField;
    dbEdtNCM: TDBEdit;
    Label6: TLabel;
    dbEdtDescIng: TDBEdit;
    memoDescIng: TMemo;
    tbItensDescricao_Produto_Ing: TStringField;
    tbIncProdDescrio_Ing: TMemoField;
    qrProdutosDescIng: TMemoField;
    qrItensEmpresa: TStringField;
    qrItensFilial: TStringField;
    qrItensProcesso: TStringField;
    qrItensFatura: TStringField;
    qrItensSequencial: TStringField;
    qrItensPagina: TStringField;
    qrItensProduto: TStringField;
    qrItensDescricao_Produto: TStringField;
    qrItensDescricao_Produto_Ing: TStringField;
    qrItensNCM: TStringField;
    qrItensUnidade_Medida_Estat: TStringField;
    qrItensDestaque_NCM: TStringField;
    qrItensNALADI: TStringField;
    tbprodlog: TTable;
    tbprodlogEmpresa: TStringField;
    tbprodlogFilial: TStringField;
    tbprodlogCdigo: TStringField;
    tbprodlogDATA_INCLUSAO: TDateTimeField;
    tbprodlogUsuario_INCLUSAO: TStringField;
    tbprodlogDATA_ULTIMA_ALTERACAO: TDateTimeField;
    tbprodlogUsuario_ALTERACAO: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure qrItensAfterOpen(DataSet: TDataSet);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure qrItensAfterScroll(DataSet: TDataSet);
    procedure tbItensAfterEdit(DataSet: TDataSet);
    procedure memoDescKeyPress(Sender: TObject; var Key: Char);
    procedure memoDescExit(Sender: TObject);
    procedure dbEdtDescEnter(Sender: TObject);
    procedure acAlterarProdutoExecute(Sender: TObject);
    procedure tbIncProdAfterPost(DataSet: TDataSet);
    procedure dbEdtProdutoKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtDescKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbNCMKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtDestaqueKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtNALADIKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbUniMedEstatKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbNCMExit(Sender: TObject);
    procedure dbEdtNCMKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtDescIngEnter(Sender: TObject);
    procedure dbEdtDescIngKeyPress(Sender: TObject; var Key: Char);
    procedure memoDescIngExit(Sender: TObject);
    procedure memoDescIngKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   F_proTraCla: TF_proTraCla;
   vEmp, vFil, vPro, vFat, vImp, vProd: String;
   qItem: String;

implementation

uses U_MSCOMEX, u_profaturas, U_produtos;

{$R *.DFM}

procedure TF_proTraCla.FormActivate(Sender: TObject);
begin
     Left := 0;
     Top  := 0;
end;

procedure TF_proTraCla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     If F_proFaturas <> nil Then
        With F_proFaturas Do Begin
            pnlTop.Enabled := True;
            pnlPrincipal.Enabled := True;
            pnlBaixo.Enabled := True;
            btnTraCla.Enabled := True;
            Show;
        End;

     F_proTraCla := Nil;
     Action := caFree;
end;

procedure TF_proTraCla.FormCreate(Sender: TObject);
begin
     vEmp := F_proFaturas.tbFaturasEmpresa.AsString;
     vFil := F_proFaturas.tbFaturasFilial.AsString;
     vPro := F_proFaturas.tbFaturasProcesso.AsString;
     vFat := F_proFaturas.tbFaturasCodigo.AsString;
     vImp := F_proFaturas.qrProcessosImportador.AsString;

     me_nossaref.Text := vPro;
     edtFatura.Text := vFat;
     l_cliente.Caption := F_proFaturas.l_cliente.Caption;
     memoDesc.Height := 59;
     memoDescIng.Height := 59;

     With qrNCM Do Begin
         Close;  Open;
     End;
     With qrUniMedEstat Do Begin
         Close;  Open;
     End;

     tbItens.Open;
     With qrItens Do Begin
         Close;
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
         Open;
     End;

     With qrProdutos Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
     End;

     With qrDelTributacao Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Params[2].AsString := vPro;
         Params[3].AsString := vFat;
     End;
end;

procedure TF_proTraCla.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
     If tbItens.State In [dsInsert, dsEdit] Then Begin
        MessageDlg('O Item da Fatura está em edição!', mtInformation,[mbOk], 0);
        CanClose := False;
     End
     Else
        CanClose := True;
end;

procedure TF_proTraCla.qrItensAfterOpen(DataSet: TDataSet);
begin
     dbGrdItens.Enabled := True;

     dbEdtDesc.Enabled := False;
     dbEdtDescIng.Enabled := False;
     memoDesc.Visible := False;
     memoDescIng.Visible := False;
     dbEdtNCM.Enabled := False;
     dbLcbNCM.Enabled := False;
     dbEdtDestaque.Enabled := False;
     dbEdtNALADI.Enabled := False;
     dbLcbUniMedEstat.Enabled := False;

     If qrItens.RecordCount <> 0 Then Begin
        btnAlterar.Enabled := True;
        If tbItens.State = dsInactive Then tbItens.Open;
     End
     Else Begin
        tbItens.Close;
        btnAlterar.Enabled := False;
     End;
     btnSalvar.Enabled := False;
     btnCancelar.Enabled := False;
     btnSair.Enabled := True;
end;

procedure TF_proTraCla.btnAlterarClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then begin

 //if (f_profaturas.qrprocessosqresp.asstring = v_usuario) or (v_nivel<='7') then begin


     With qrProdutos Do Begin
         Params[2].AsString := dbEdtProduto.Text;
         Open;
         If RecordCount <> 0 Then Begin
            memoDesc.Text := Trim(qrProdutosDescI.AsString);
            memoDescIng.Text := Trim(qrProdutosDescIng.AsString);
         End
         Else Begin
            memoDesc.Clear;
            memoDescIng.Clear;
         End;
         Close;
         Params[2].AsString := '';
     End;

     tbItens.Edit;

     dbEdtDesc.Enabled := True;
     dbEdtDescIng.Enabled := True;
     dbEdtNCM.Enabled := True;
     dbLcbNCM.Enabled := True;
     dbEdtDestaque.Enabled := True;
     dbEdtNALADI.Enabled := True;
     dbLcbUniMedEstat.Enabled := True;
     btnSalvar.Enabled := True;

     dbEdtDesc.SetFocus
end

else begin
     Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;

end;

procedure TF_proTraCla.btnSalvarClick(Sender: TObject);
var
   vDescItem, vDescItemIng: String;
   vNCM, vDestaque, vNALADI, vUnidade: String;

begin
     qItem := tbItensSequencial.AsString;

     tbItensDescricao_Produto.AsString := Trim(dbEdtDesc.Text);
     If dbEdtDesc.Text = '' Then Begin
        ShowMessage('A Descrição do Produto em Português não pode estar em branco!');
        dbEdtDesc.SetFocus;
        Exit;
     End;
     tbItensDescricao_Produto_Ing.AsString := Trim(dbEdtDescIng.Text);
     If dbEdtDescIng.Text = '' Then Begin
        ShowMessage('A Descrição do Produto em Inglês não pode estar em branco!');
        dbEdtDescIng.SetFocus;
        Exit;
     End;
     If dbEdtNCM.Text = '' Then Begin
        ShowMessage('O NCM não pode estar em branco!');
        dbEdtNCM.SetFocus;
        Exit;
     End
     Else If dbLcbNCM.Text = '' Then Begin
        ShowMessage('Código do NCM inválido!');
        dbEdtNCM.SetFocus;
        Exit;
     End;
     tbItensDestaque_NCM.AsString := Trim(dbEdtDestaque.Text);
     tbItensNALADI.AsString := Trim(dbEdtNALADI.Text);
     tbItensSaldo_Tributavel.AsString := tbItensQuantidade.AsString;

     vDescItem := tbItensDescricao_Produto.AsString;
     vDescItemIng := tbItensDescricao_Produto_Ing.AsString;
     vNCM := tbItensNCM.AsString;
     vDestaque := tbItensDestaque_NCM.AsString;
     vNALADI := tbItensNALADI.AsString;
     vUnidade := tbItensUnidade_Medida_Estat.AsString;

     Screen.Cursor := crHourGlass;

     { SALVANDO O ITEM }
     logusu('P','Alterou o Item (Tradução/Classificação): '+qItem+', da Fatura: '+vFat+', do Processo: '+vPro);
     Try
        acAlterarProduto.Execute;
        tbItens.Post;
     Except
        MessageDlg('Erro na gravação do Item da Fatura!', mtWarning, [mbOk], 0);
        dbEdtDesc.SetFocus;
        Screen.Cursor := crDefault;
        Exit;
     End;

     With qrItens Do Begin
         Filter := 'Produto = '''+ dbEdtProduto.Text +''' AND Sequencial <> '''+ qItem +''' ';
         Filtered := True;
         If RecordCount <> 0 Then
            If MessageDlg('Deseja Traduzir e Classificar todos os itens dessa fatura com mesmo código de produto?', mtConfirmation, [mbYes,mbNo], 0) = mrYes Then
               While Not Eof Do Begin
                    tbItens.Edit;
                    tbItensDescricao_Produto.AsString := vDescItem;
                    tbItensDescricao_Produto_Ing.AsString := vDescItemIng;
                    tbItensNCM.AsString := vNCM;
                    tbItensDestaque_NCM.AsString := vDestaque;
                    tbItensNALADI.AsString := vNALADI;
                    tbItensUnidade_Medida_Estat.AsString := vUnidade;
                    tbItensSaldo_Tributavel.AsString := tbItensQuantidade.AsString;
                    tbItens.Post;
                    With qrDelTributacao Do Begin
                        Params[4].AsString := tbItensSequencial.AsString;
                        ExecSQL;
                    End;
                    Next;
               End;
         Filter := '';
         Filtered := False;
     End;

     With qrDelTributacao Do Begin
         Params[4].AsString := qItem;
         ExecSQL;
     End;

     With qrItens Do Begin
         Close;
         Open;
         Locate('Sequencial',qItem,[]);
     End;

     dbGrdItens.SetFocus;
     Screen.Cursor := crDefault;
end;

procedure TF_proTraCla.btnCancelarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;

     tbItens.Cancel;
     qrItens.Locate('Sequencial', qrItensSequencial.AsString, []);

     dbGrdItens.SetFocus;
     Screen.Cursor := crDefault;
end;

procedure TF_proTraCla.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TF_proTraCla.qrItensAfterScroll(DataSet: TDataSet);
begin
     tbItens.FindKey([vEmp,vFil,vPro,vFat,qrItensSequencial.AsString]);
end;

procedure TF_proTraCla.tbItensAfterEdit(DataSet: TDataSet);
begin
     dbGrdItens.Enabled := False;
     btnAlterar.Enabled := False;
     btnSair.Enabled := False;
     btnCancelar.Enabled := True;
end;

procedure TF_proTraCla.memoDescKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then Begin
        ShowMessage('Para pular de linha preencha com espaços!');
        Key := #0;
     End;
end;

procedure TF_proTraCla.memoDescExit(Sender: TObject);
begin
     If tbItens.State In [dsInsert, dsEdit] Then
        tbItensDescricao_Produto.AsString := memoDesc.Text;
     memoDesc.Visible := False;
     dbEdtDesc.Enabled := True;
end;

procedure TF_proTraCla.dbEdtDescEnter(Sender: TObject);
begin
     dbEdtDesc.Enabled := False;
     memoDesc.Visible := True;
     memoDesc.SetFocus;
end;

procedure TF_proTraCla.acAlterarProdutoExecute(Sender: TObject);
var alteraprod:Boolean;
begin
alteraprod := false;
  Try
     tbIncProd.Open;

     tbIncProd.FindKey([vEmp,vFil,dbEdtProduto.Text]);
     If MessageDlg(v_usuario+', ATENÇÃO!!! Foi alterado o Item da Fatura! Deseja que estas alterações sejam efetuadas no CADASTRO DE PRODUTOS ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then begin
           tbIncProd.Edit;
           alteraprod := true;

     tbIncProdDescrio.AsString := memoDesc.Text;
     tbIncProdDescrio_Ing.AsString := memoDescIng.Text;
     tbIncProdNCM.AsString := tbItensNCM.AsString;
     tbIncProdDestaque_NCM.AsString := tbItensDestaque_NCM.AsString;
     tbIncProdNALADI.AsString := tbItensNALADI.AsString;
     tbIncProdUnidade_Medida_Estat.AsString := tbItensUnidade_Medida_Estat.AsString;

     tbIncProd.Post;
     end;

  Except
     On E: Exception Do Begin
        MessageDlg('Erro na alteração do produto:' +#13+#10+ E.message, mtError,[mbOk], 0);
        tbIncProd.Cancel;
     End;
  End;
  tbIncProd.Close;

  tbprodlog.open;
  if tbprodlog.FindKey([vEmp,vFil,dbEdtProduto.Text]) then begin
    if alteraprod then begin
       tbprodlog.edit;
       tbprodlogDATA_ULTIMA_ALTERACAO.asdatetime := date();
       tbprodlogUsuario_ALTERACAO.asstring := v_usuario;
       tbprodlog.post;
     end;
  end
  else begin
     tbprodlog.append;
     tbprodlogEmpresa.asstring := vEmp;
     tbprodlogFilial.asstring := vFil;
     tbprodlogCdigo.asstring :=  dbEdtProduto.Text;
     tbprodlogDATA_INCLUSAO.asdatetime := date();
     tbprodlogUsuario_INCLUSAO.asstring := v_usuario;
     tbprodlogDATA_ULTIMA_ALTERACAO.asdatetime := date();
     tbprodlogUsuario_ALTERACAO.asstring := v_usuario;
     tbprodlog.post;
  end;
  tbprodlog.close;


end;

procedure TF_proTraCla.tbIncProdAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou o produto (Tradução/Classificação): '+tbIncProdCdigo.AsString);
end;

procedure TF_proTraCla.dbEdtProdutoKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then dbEdtProduto.OnExit(Sender);
end;

procedure TF_proTraCla.dbEdtDescKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then dbEdtDescIng.SetFocus;
end;

procedure TF_proTraCla.dbLcbNCMKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then dbEdtDestaque.SetFocus;
end;

procedure TF_proTraCla.dbEdtDestaqueKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then dbEdtNALADI.SetFocus;
end;

procedure TF_proTraCla.dbEdtNALADIKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then dbLcbUniMedEstat.SetFocus;
end;

procedure TF_proTraCla.dbLcbUniMedEstatKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Key = #13 Then btnSalvar.SetFocus;
end;

procedure TF_proTraCla.dbLcbNCMExit(Sender: TObject);
begin
     If tbItens.State In [dsInsert, dsEdit] Then
        tbItensUnidade_Medida_Estat.AsString := qrNCMUNIDADE_MEDIDA.AsString;
end;

procedure TF_proTraCla.dbEdtNCMKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then dbLcbNCM.SetFocus;
end;

procedure TF_proTraCla.dbEdtDescIngEnter(Sender: TObject);
begin
     dbEdtDescIng.Enabled := False;
     memoDescIng.Visible := True;
     memoDescIng.SetFocus;
end;

procedure TF_proTraCla.dbEdtDescIngKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then dbEdtNCM.SetFocus;
end;

procedure TF_proTraCla.memoDescIngExit(Sender: TObject);
begin
     If tbItens.State In [dsInsert, dsEdit] Then
        tbItensDescricao_Produto_Ing.AsString := memoDescIng.Text;
     memoDescIng.Visible := False;
     dbEdtDescIng.Enabled := True;
end;

procedure TF_proTraCla.memoDescIngKeyPress(Sender: TObject; var Key: Char);
begin
     If Key = #13 Then Begin
        ShowMessage('Para pular de linha preencha com espaços!');
        Key := #0;
     End;
end;

end.
