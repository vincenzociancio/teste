unit U_Patrimonio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Grids, DBGrids, Buttons, ExtCtrls, DBCtrls, Mask;

type
  TF_Patrimonio = class(TForm)
    dsPatrimonio: TDataSource;
    qrPatri: TQuery;
    pnlLoc: TPanel;
    rgLoc: TRadioGroup;
    edtLoc: TEdit;
    btnOkLoc: TBitBtn;
    pnlPrinc: TPanel;
    pnlFiltrar: TPanel;
    btnOkFiltrar: TBitBtn;
    dblcbFilTipo: TDBLookupComboBox;
    dblcbFilSub: TDBLookupComboBox;
    dblcbFilSetor: TDBLookupComboBox;
    dblcbFilUsu: TDBLookupComboBox;
    dblcbFilFornec: TDBLookupComboBox;
    dblcbFilStatus: TDBLookupComboBox;
    edtValDe: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    edtValAte: TEdit;
    cbTipo: TCheckBox;
    cbSub: TCheckBox;
    cbSetor: TCheckBox;
    cbUsu: TCheckBox;
    cbVal: TCheckBox;
    cbFornec: TCheckBox;
    cbStatus: TCheckBox;
    btnCancFiltrar: TBitBtn;
    qrTipo: TQuery;
    dsTipo: TDataSource;
    qrSetor: TQuery;
    qrUsuario: TQuery;
    qrFornec: TQuery;
    qrStatus: TQuery;
    dsSub: TDataSource;
    dsSetor: TDataSource;
    dsUsuario: TDataSource;
    dsFornec: TDataSource;
    dsStatus: TDataSource;
    tbSub: TTable;
    qrDelPatri: TQuery;
    pnlIncluir: TPanel;
    btnOkInc: TBitBtn;
    dbLcbTipo: TDBLookupComboBox;
    dbLcbSub: TDBLookupComboBox;
    dbLcbSetor: TDBLookupComboBox;
    dbLcbUser: TDBLookupComboBox;
    dbLcbFornec: TDBLookupComboBox;
    dbLcbStatus: TDBLookupComboBox;
    btnCancInc: TBitBtn;
    Label7: TLabel;
    Label8: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    pnlAlterar: TPanel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    btnOkAlt: TBitBtn;
    dbLcbTipoAlt: TDBLookupComboBox;
    dbLcbSubAlt: TDBLookupComboBox;
    dbLcbSetorAlt: TDBLookupComboBox;
    dbLcbUserAlt: TDBLookupComboBox;
    dbLcbFornecAlt: TDBLookupComboBox;
    dbLcbStatusAlt: TDBLookupComboBox;
    btnCancAlt: TBitBtn;
    pnlMenu: TPanel;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnLocalizar: TBitBtn;
    btnFiltrar: TBitBtn;
    btnRelatorio: TBitBtn;
    btnSair: TBitBtn;
    btnCancLoc: TBitBtn;
    tbPatri: TTable;
    dsTPatrimonio: TDataSource;
    dbEdtPlaquetaAlt: TDBEdit;
    dbEdtDescAlt: TDBEdit;
    dbEdtNSerieAlt: TDBEdit;
    dbEdtValAlt: TDBEdit;
    dbEdtNFEntradaAlt: TDBEdit;
    edtTot: TEdit;
    Label18: TLabel;
    Panel3: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel4: TPanel;
    Panel6: TPanel;
    mmFiltro: TMemo;
    Panel5: TPanel;
    dbGrdPatri: TDBGrid;
    dbEdtPlaqueta: TDBEdit;
    dbEdtDesc: TDBEdit;
    dbEdtNSerie: TDBEdit;
    dbEdtVal: TDBEdit;
    dbEdtNF: TDBEdit;
    qrUltiPatri: TQuery;
    dbmemPatri: TDBMemo;
    Label1: TLabel;
    DBMemo1: TDBMemo;
    Label2: TLabel;
    pnlImprime: TPanel;
    rgImp: TRadioGroup;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel8: TPanel;
    sbLimpaUtil: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label19: TLabel;
    dbEdtPlaquetaAlt2: TDBEdit;
    qrPatriObs: TMemoField;
    qrPatriEmpresa: TStringField;
    qrPatriFilial: TStringField;
    qrPatriPlaqueta: TStringField;
    qrPatriPlaqueta2: TStringField;
    qrPatriDescI: TStringField;
    qrPatriDescII: TStringField;
    qrPatriDescIII: TStringField;
    qrPatriDescIV: TStringField;
    qrPatriUsuario: TStringField;
    qrPatriNome_Completo: TStringField;
    qrPatriNserie: TStringField;
    qrPatriValor: TFloatField;
    qrPatriRazao_Social: TStringField;
    qrPatriNfiscal_entrada: TStringField;
    qrPatriIP: TStringField;
    qrPatriPREDE: TStringField;
    qrPatriDescV: TStringField;
    qrPatridetalhe: TStringField;
    tbSubTipo_patrimonio: TStringField;
    tbSubcodigo: TStringField;
    tbSubDescricao: TStringField;
    tbPatriEmpresa: TStringField;
    tbPatriFilial: TStringField;
    tbPatriPlaqueta: TStringField;
    tbPatriDescricao: TStringField;
    tbPatriTipo_Patrimonio: TStringField;
    tbPatriSub_Tipo_Patrimonio: TStringField;
    tbPatriSetor: TStringField;
    tbPatriUsuario: TStringField;
    tbPatriNserie: TStringField;
    tbPatriValor: TFloatField;
    tbPatriFornecedor: TStringField;
    tbPatriNfiscal_entrada: TStringField;
    tbPatriIP: TStringField;
    tbPatriPREDE: TStringField;
    tbPatriStatus_Patrimonio: TStringField;
    tbPatriOBS: TMemoField;
    tbPatriDetalhe: TStringField;
    tbPatriPlaqueta2: TStringField;
    qrTipocodigo: TStringField;
    qrTipodescricao: TStringField;
    qrSetorcodigo: TStringField;
    qrSetordescricao: TStringField;
    qrUsuarioEmpresa: TStringField;
    qrUsuarioFilial: TStringField;
    qrUsuarioUsuario: TStringField;
    qrUsuarioSenha: TStringField;
    qrUsuarioNome_Completo: TStringField;
    qrUsuarioDiretorio_SISCOMEX: TStringField;
    qrUsuarioNivel: TStringField;
    qrUsuarioNivel_ccorrente: TStringField;
    qrUsuarioData_validade_senha: TDateTimeField;
    qrUsuarioEmail: TStringField;
    qrUsuarioEmail_Sol_Num: TSmallintField;
    qrUsuarioEmail_aviso_oper: TSmallintField;
    qrUsuarioEmail_aviso_finan: TSmallintField;
    qrUsuarioEmail_aviso_diretoria: TSmallintField;
    qrUsuarioEmail_aviso_sistema: TSmallintField;
    qrUsuarioDistribui_processo: TSmallintField;
    qrUsuarioAbre_processos: TSmallintField;
    qrUsuarioEdita_eventos: TSmallintField;
    qrUsuarioDigitalizador: TSmallintField;
    qrUsuarioTraduz_Classifica: TSmallintField;
    qrUsuarioInativa_Cliente: TSmallintField;
    qrUsuarioEdita_cliente_inativo: TSmallintField;
    qrUsuarioFecha_Processo: TSmallintField;
    qrUsuarioEdita_Processo_Fechado: TSmallintField;
    qrUsuarioAcessa_Patrimonio: TSmallintField;
    qrUsuarioSupervisor: TStringField;
    qrUsuarioAcessa_PARAFAT: TSmallintField;
    qrUsuarioDesconto_Faturamento: TSmallintField;
    qrUsuarioResponsavel: TSmallintField;
    qrUsuarioDistribui_processoC: TSmallintField;
    qrUsuarioResponsavelC: TSmallintField;
    qrUsuarioSupervisorC: TStringField;
    qrUsuarioSetor: TStringField;
    qrFornecEmpresa: TStringField;
    qrFornecFilial: TStringField;
    qrFornecCodigo: TStringField;
    qrFornecRazao_Social: TStringField;
    qrFornecPais: TStringField;
    qrFornecCNPJ_CPF_COMPLETO: TStringField;
    qrFornecCGC_CPF: TStringField;
    qrFornecTipo_Importador: TStringField;
    qrFornecEndereco: TStringField;
    qrFornecNumero: TStringField;
    qrFornecComplemento: TStringField;
    qrFornecBairro: TStringField;
    qrFornecCidade: TStringField;
    qrFornecCEP: TStringField;
    qrFornecUF: TStringField;
    qrFornecEstado: TStringField;
    qrFornecInscricao_Estadual: TStringField;
    qrFornecBanco: TStringField;
    qrFornecAgencia: TStringField;
    qrFornecConta_Corrente: TStringField;
    qrFornecConta_Corrente_Registro: TIntegerField;
    qrFornecConta_Corrente_Deposito: TIntegerField;
    qrFornecTelefone: TStringField;
    qrStatuscodigo: TStringField;
    qrStatusdescricao: TStringField;
    qrUltiPatriPatri: TFloatField;
    qrSub: TQuery;
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOkLocClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure dblcbFilTipoEnter(Sender: TObject);
    procedure dblcbFilSubEnter(Sender: TObject);
    procedure dblcbFilSetorEnter(Sender: TObject);
    procedure dblcbFilUsuEnter(Sender: TObject);
    procedure edtValDeEnter(Sender: TObject);
    procedure dblcbFilFornecEnter(Sender: TObject);
    procedure dblcbFilStatusEnter(Sender: TObject);
    procedure btnOkFiltrarClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnCancFiltrarClick(Sender: TObject);
    procedure dblcbFilTipoExit(Sender: TObject);
    procedure dblcbFilSubExit(Sender: TObject);
    procedure dblcbFilSetorExit(Sender: TObject);
    procedure dblcbFilUsuExit(Sender: TObject);
    procedure edtValDeExit(Sender: TObject);
    procedure dblcbFilFornecExit(Sender: TObject);
    procedure dblcbFilStatusExit(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnCancIncClick(Sender: TObject);
    procedure btnOkIncClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancAltClick(Sender: TObject);
    procedure btnOkAltClick(Sender: TObject);
    procedure btnRelatorioClick(Sender: TObject);
    procedure btnCancLocClick(Sender: TObject);
    procedure qrPatriAfterOpen(DataSet: TDataSet);
    procedure edtValDeKeyPress(Sender: TObject; var Key: Char);
    procedure edtValAteKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbTipoClick(Sender: TObject);
    procedure dbEdtValKeyPress(Sender: TObject; var Key: Char);
    procedure dbEdtPlaquetaKeyPress(Sender: TObject; var Key: Char);
    procedure dbLcbTipoAltClick(Sender: TObject);
    procedure cbTipoClick(Sender: TObject);
    procedure dblcbFilTipoClick(Sender: TObject);
    procedure sbLimpaProcuradorClick(Sender: TObject);
    procedure tbPatriAfterPost(DataSet: TDataSet);
    procedure tbPatriBeforeDelete(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure tbPatriBeforePost(DataSet: TDataSet);
    procedure sbLimpaUtilClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure dbEdtPlaquetaAlt2Exit(Sender: TObject);
    procedure dbEdtPlaquetaExit(Sender: TObject);
    procedure dsTipoDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_Patrimonio: TF_Patrimonio;

implementation

uses U_MSCOMEX, U_RelPatrimonio, u_RelPatrimonioSint,
  U_RelPatrimonio_ind;

var
   sqlAux: String;
   vEmp,vFil: String;

{$R *.DFM}

procedure TF_Patrimonio.btnLocalizarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     pnlPrinc.Enabled := False;
     With pnlLoc Do Begin
         Top := (Self.Height-Height) div 2;
         Left := (Self.Width-Width) div 2;
         Visible := True;
     End;
     rgLoc.SetFocus;
     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.btnOkLocClick(Sender: TObject);
var
   campo: String;
   order: String;
   campo2: String;

begin
     Screen.Cursor := crHourGlass;
     campo2:='';

     Case rgLoc.ItemIndex Of
        0: Begin
           campo := 'Plaqueta';
           order := 'P.Plaqueta';
           campo2 := 'Plaqueta2';
       End;
        1: Begin
           campo := 'DescI';
           order := 'P.descricao'
       End;
        2: Begin
           campo := 'DescII';
           order := 'TP.descricao, STP.Descricao'
       End;
        3: Begin
           campo := 'DescIII';
           order := 'TP.descricao, STP.Descricao'
       End;
        4: Begin
           campo := 'DescIV';
           order := 'S.descricao, TP.descricao, STP.Descricao'
       End;
        5: Begin
           campo := 'Nome_Completo';
           order := 'U.Nome_Completo, S.descricao, TP.descricao, STP.Descricao'
       End;
        6: Begin
           campo := 'Nserie';
           order := 'P.Nserie, S.descricao, TP.descricao, STP.Descricao'
       End;
        7: Begin
           campo := 'Valor';
           order := 'P.Valor, S.descricao, TP.descricao, STP.Descricao'
       End;
        8: Begin
           campo := 'Razão Social';
           order := 'F.[Razão Social], S.descricao, TP.descricao, STP.Descricao'
       End;
        9: Begin
           campo := 'Nfiscal_entrada';
           order := 'P.Nfiscal_entrada, S.descricao, TP.descricao, STP.Descricao'
       End;
     End;

     With qrPatri Do Begin
         Close;
         SQL.Strings[3] := sqlAux;
         Open;
     End;

     If qrPatri.Locate(campo, edtLoc.Text, [loPartialKey]) Then Begin
        pnlLoc.Visible := False;
        pnlPrinc.Enabled := True;
     End
     Else begin
        if campo2<>'' then begin
          If qrPatri.Locate(campo2, edtLoc.Text, [loPartialKey]) Then Begin
          pnlLoc.Visible := False;
          pnlPrinc.Enabled := True;
          End
          else
           MessageDlg('Parâmetro solicitado não foi localizado.', mtInformation,[mbOk], 0);
        end
        else
        MessageDlg('Parâmetro solicitado não foi localizado.', mtInformation,[mbOk], 0);
     end;

     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.btnFiltrarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     pnlPrinc.Enabled := False;
     With pnlFiltrar Do Begin
         Height := 417;
         Width := 369;
         Top := (Self.Height-Height) div 2;
         Left := (Self.Width-Width) div 2;
         Visible := True;
     End;
     qrTipo.Open;
     tbSub.Open;
     qrSetor.Open;
     qrUsuario.Open;
     qrFornec.Open;
     qrStatus.Open;
     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.dblcbFilTipoEnter(Sender: TObject);
begin
     cbTipo.Checked := True;
end;

procedure TF_Patrimonio.dblcbFilSubEnter(Sender: TObject);
begin
     cbSub.Checked := True;
     If Not cbTipo.Checked Then
        tbSub.MasterSource := nil
     Else
        tbSub.MasterSource := dsTipo;
end;

procedure TF_Patrimonio.dblcbFilSetorEnter(Sender: TObject);
begin
     cbSetor.Checked := True;
end;

procedure TF_Patrimonio.dblcbFilUsuEnter(Sender: TObject);
begin
     cbUsu.Checked := True;
end;

procedure TF_Patrimonio.edtValDeEnter(Sender: TObject);
begin
     cbVal.Checked := True;
end;

procedure TF_Patrimonio.dblcbFilFornecEnter(Sender: TObject);
begin
     cbFornec.Checked := True;
end;

procedure TF_Patrimonio.dblcbFilStatusEnter(Sender: TObject);
begin
     cbStatus.Checked := True;
end;

procedure TF_Patrimonio.btnOkFiltrarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;

     With qrPatri Do Begin
         Close;
         SQL.Strings[3] := sqlAux;
     End;

     mmFiltro.Clear;
     mmFiltro.Lines.Append('PATRIMÔNIOS FILTRADOS POR:');
     sqlAux := '';
     If cbSetor.Checked AND (dblcbFilSetor.Text <> '') Then Begin
        sqlAux := sqlAux + 'AND S.Descricao = "'+dblcbFilSetor.Text+'" ';
        mmFiltro.Lines.Append('SETOR: '+dblcbFilSetor.Text);
     End
     Else cbSetor.Checked := False;
     dbGrdPatri.Columns[1].Visible := (Not cbSetor.Checked);

     If cbTipo.Checked AND (dblcbFilTipo.Text <> '') Then Begin
        sqlAux := sqlAux + 'AND TP.Descricao = "'+dblcbFilTipo.Text+'" ';
        mmFiltro.Lines.Append('TIPO: '+dblcbFilTipo.Text);
     End
     Else cbTipo.Checked := False;
     dbGrdPatri.Columns[2].Visible := (Not cbTipo.Checked);

     If cbSub.Checked AND (dblcbFilSub.Text <> '') Then Begin
        sqlAux := sqlAux + 'AND STP.Descricao = "'+dblcbFilSub.Text+'" ';
        mmFiltro.Lines.Append('SUB TIPO: '+dblcbFilSub.Text);
     End
     Else cbSub.Checked := False;
     dbGrdPatri.Columns[3].Visible := (Not cbSub.Checked);

     If cbUsu.Checked AND (dblcbFilUsu.Text <> '') Then Begin
        sqlAux := sqlAux + 'AND U.Nome_Completo = "'+dblcbFilUsu.Text+'" ';
        mmFiltro.Lines.Append('USUÁRIO: '+dblcbFilUsu.Text);
     End
     Else cbUsu.Checked := False;
     dbGrdPatri.Columns[5].Visible := (Not cbUsu.Checked);

     If cbVal.Checked AND ((edtValDe.Text <> '') OR (edtValAte.Text <> '')) Then Begin
        If edtValDe.Text <> '' Then
           sqlAux := sqlAux + 'AND P.Valor >= '+edtValDe.Text+' ';
        If edtValAte.Text <> '' Then
           sqlAux := sqlAux + 'AND P.Valor <= '+edtValAte.Text+' ';
        mmFiltro.Lines.Append('VALOR DE: '+edtValDe.Text+' ATÉ: '+edtValAte.Text);
     End
     Else cbVal.Checked := False;

     If cbFornec.Checked AND (dblcbFilFornec.Text <> '') Then Begin
        sqlAux := sqlAux + 'AND F.[Razão Social] = "'+dblcbFilFornec.Text+'" ';
        mmFiltro.Lines.Append('FORNECEDOR: '+dblcbFilFornec.Text);
     End
     Else cbFornec.Checked := False;
     dbGrdPatri.Columns[8].Visible := (Not cbFornec.Checked);

     If cbStatus.Checked AND (dblcbFilStatus.Text <> '') Then Begin
        sqlAux := sqlAux + 'AND SP.Descricao = "'+dblcbFilStatus.Text+'" ';
        mmFiltro.Lines.Append('STATUS: '+dblcbFilStatus.Text);
     End
     Else cbStatus.Checked := False;
     dbGrdPatri.Columns[12].Visible := (Not cbStatus.Checked);

     If sqlAux <> '' Then
        qrPatri.SQL.Strings[3] := sqlAux
     Else
        qrPatri.SQL.Strings[3] := '';

     qrPatri.Open;

     If qrPatri.RecordCount = 0 Then begin
        MessageDlg('Não foram encontrados registros com os filtros solicitados!', mtInformation, [mbOk], 0);
        Exit;
     End;

     qrTipo.Close;
     tbSub.Close;
     qrSetor.Close;
     qrUsuario.Close;
     qrFornec.Close;
     qrStatus.Close;

     mmFiltro.Visible := True;
     pnlFiltrar.Visible := False;
     pnlPrinc.Enabled := True;

     dbGrdPatri.SetFocus;
     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


  {   h := Height;
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
     width := w;  }
end;

procedure TF_Patrimonio.FormClose(Sender: TObject;
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
  F_Patrimonio := Nil;
  f_mscomex.Patrimnio1.Enabled := True;
end;

procedure TF_Patrimonio.FormCreate(Sender: TObject);
begin
     pnlFiltrar.Height := 417;
     pnlLoc.Height := 257;
     pnlIncluir.Height := 400;
     pnlAlterar.Height := 400;

     pnlMenu.Left := Trunc((Width-pnlMenu.Width)/2);
     vEmp := F_MSComex.t_parametrosEmpresa.AsString;
     vFil := F_MSComex.t_parametrosFilial.AsString;
     With qrPatri Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;
     With qrUltiPatri Do Begin
        { Params[0].AsString := vEmp;
         Params[1].AsString := vFil;}
     End;

     qrTipo.Open;
     tbSub.Open;
     qrSetor.Open;
     qrUsuario.Open;
     qrFornec.Open;
     qrStatus.Open;
     
     if tbPatri.state = dsInactive then tbPatri.open;

end;

procedure TF_Patrimonio.btnCancFiltrarClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;

     cbSetor.Checked := False;
     cbTipo.Checked := False;
     cbSub.Checked := False;
     cbUsu.Checked := False;
     cbVal.Checked := False;
     cbFornec.Checked := False;
     cbStatus.Checked := False;

{     qrTipo.Close;
     tbSub.Close;
     qrSetor.Close;
     qrUsuario.Close;
     qrFornec.Close;
     qrStatus.Close;
 }
     With qrPatri Do Begin
         Close;
         SQL.Strings[3] := '';
         Open;
     End;

     mmFiltro.Clear;
     mmFiltro.Visible := False;
     pnlFiltrar.Visible := False;
     pnlPrinc.Enabled := True;
     With dbGrdPatri Do Begin
         Columns[1].Visible := True;
         Columns[2].Visible := True;
         Columns[3].Visible := True;
         Columns[5].Visible := True;
         Columns[8].Visible := True;
         Columns[12].Visible := True;
         SetFocus;
     End;
     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.dblcbFilTipoExit(Sender: TObject);
begin
     If dblcbFilTipo.Text = '' Then cbTipo.Checked := False;
end;

procedure TF_Patrimonio.dblcbFilSubExit(Sender: TObject);
begin
     If dblcbFilSub.Text = '' Then cbSub.Checked := False;
end;

procedure TF_Patrimonio.dblcbFilSetorExit(Sender: TObject);
begin
     If dblcbFilSetor.Text = '' Then cbSetor.Checked := False;
end;

procedure TF_Patrimonio.dblcbFilUsuExit(Sender: TObject);
begin
     If dblcbFilUsu.Text = '' Then cbUsu.Checked := False;
end;

procedure TF_Patrimonio.edtValDeExit(Sender: TObject);
begin
     If (edtValDe.Text = '') AND (edtValAte.Text = '') Then cbVal.Checked := False;
end;

procedure TF_Patrimonio.dblcbFilFornecExit(Sender: TObject);
begin
     If dblcbFilFornec.Text = '' Then cbFornec.Checked := False;
end;

procedure TF_Patrimonio.dblcbFilStatusExit(Sender: TObject);
begin
     If dblcbFilStatus.Text = '' Then cbStatus.Checked := False;
end;

procedure TF_Patrimonio.btnExcluirClick(Sender: TObject);
begin
     If MessageDlg('Confirma a exclusão do patrimônio?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
        Exit;

     Screen.Cursor := crHourGlass;
     With qrDelPatri Do Begin
         SQL.Clear;
         SQL.Add('DELETE FROM Patrimonio ');
         SQL.Add('WHERE Empresa = "'+ vEmp +'" ');
         SQL.Add('AND Filial = "'+ vFil +'" ');
         SQL.Add('AND Plaqueta = "'+qrPatriPlaqueta.AsString+'" ');
         ExecSQL;
         logusu('E','Excluiu dados do Patrimônio.'+ qrPatriDescI.AsString + ' - '+ qrPatriPlaqueta.AsString);
     End;

     MessageDlg('Patrimônio excluído com sucesso.', mtInformation, [mbOk], 0);
     With qrPatri Do Begin
         Close;
         SQL.Strings[3] := '';
         Open;
     End;
     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.btnIncluirClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;

     pnlPrinc.Enabled := False;
     pnlIncluir.Visible := True;
     dbEdtDesc.SetFocus;
     With pnlIncluir Do Begin
         Top := (Self.Height-Height) div 2;
         Left := (Self.Width-Width) div 2;
     End;

    { With qrPatri Do Begin
         Close;
         SQL.Strings[3] := '';
         Open;
     End;
    { qrTipo.Open;
     tbSub.Open;
     qrSetor.Open;
     qrUsuario.Open;
     qrFornec.Open;
     qrStatus.Open;

     With tbPatri Do Begin
         Filtered := False;
         Open;
         Append;
     End;
     }
     //qrUltiPatri.Open;
     //Case Length(qrUltiPatriPatri.AsString) Of
     ///    1: tbPatriPlaqueta.Text := '000' + qrUltiPatriPatri.AsString;
     //    2: tbPatriPlaqueta.Text := '00' + qrUltiPatriPatri.AsString;
     //    3: tbPatriPlaqueta.Text := '0' + qrUltiPatriPatri.AsString;
     //    4: tbPatriPlaqueta.Text := qrUltiPatriPatri.AsString;
    //     Else tbPatriPlaqueta.Text := '0001';
    // End;
    // qrUltiPatri.Close;

     tbPatri.Append;
     dbEdtPlaqueta.setfocus();
     tbPatriTipo_Patrimonio.AsString := qrTipocodigo.AsString;
     tbPatriStatus_Patrimonio.AsString := '0';

     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.btnCancIncClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     tbPatri.Cancel;

{     qrTipo.Close;
     tbSub.Close;
     qrSetor.Close;
     qrUsuario.Close;
     qrFornec.Close;
     qrStatus.Close;
 }
     With qrPatri Do Begin
         Close;
         If mmFiltro.Visible Then
            SQL.Strings[3] := sqlAux
         Else
            SQL.Strings[3] := '';
         Open;
     End;
//     tbPatri.Close;

     pnlIncluir.Visible := False;
     pnlPrinc.Enabled := True;
     dbGrdPatri.SetFocus;
     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.btnOkIncClick(Sender: TObject);
var vPatri: String;

begin
     If dbEdtPlaqueta.Text = '' Then Begin
        MessageDlg('O campo "Patrimônio" está em branco!', mtWarning, [mbOk], 0);
        Exit;
     End;
     dbEdtDesc.Text := Trim(dbEdtDesc.Text);
     If dbEdtDesc.Text = '' Then Begin
        MessageDlg('O campo "Descrição" está em branco!', mtWarning, [mbOk], 0);
        Exit;
     End;
//     If dbLcbUser.Text = '' Then Begin
//        MessageDlg('O campo usuário está em branco!', mtWarning, [mbOk], 0);
//        Exit;
//     End;
     If tbPatriFornecedor.AsString = '' Then Begin
        MessageDlg('O campo fornecedor está vazio!', mtWarning, [mbOk], 0);
        Exit;
     End;
     If qrFornecCodigo.AsString = null Then Begin
        MessageDlg('O campo fornecedor está em branco!', mtWarning, [mbOk], 0);
        Exit;
     End;
     If qrPatri.Locate('Plaqueta',dbEdtPlaqueta.Text,[]) Then Begin
        MessageDlg('Patrimônio já existente!', mtInformation, [mbOk], 0);
        Exit;
     End;
     If qrPatri.Locate('Plaqueta2',dbEdtPlaqueta.Text,[]) Then Begin
        MessageDlg('Patrimônio já existente!', mtInformation, [mbOk], 0);
        Exit;
     End;

     Screen.Cursor := crHourGlass;

     vPatri := tbPatriPlaqueta.AsString;
     tbPatriEmpresa.AsString := vEmp;
     tbPatriFilial.AsString := vFil;
     tbPatriplaqueta2.asstring := dbEdtPlaqueta.Text;
     tbPatri.Post;
     MessageDlg('Patrimônio incluído com sucesso.', mtInformation, [mbOk], 0);
//     tbPatri.Close;

{     qrTipo.Close;
     tbSub.Close;
     qrSetor.Close;
     qrUsuario.Close;
     qrFornec.Close;
     qrStatus.Close;
 }
     With qrPatri Do Begin
         Close;
         If mmFiltro.Visible Then
            SQL.Strings[3] := sqlAux
         Else
            SQL.Strings[3] := '';
         Open;
         Locate('Plaqueta', vPatri, []);
     End;

     pnlIncluir.Visible := False;
     pnlPrinc.Enabled := True;
     dbGrdPatri.SetFocus;

     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.btnAlterarClick(Sender: TObject);
var vPatri: String;

begin
     Screen.Cursor := crHourGlass;

     pnlPrinc.Enabled := False;
     pnlAlterar.Visible := True;
     dbEdtDescAlt.SetFocus;
     With pnlAlterar Do Begin
         Top := (Self.Height-Height) div 2;
         Left := (Self.Width-Width) div 2;
     End;

     vPatri := qrPatriPlaqueta.AsString;
 {    With qrPatri Do Begin
         Close;
         SQL.Strings[3] := 'AND Plaqueta <> "'+ vPatri +'" ';
         Open;
     End;

{     qrTipo.Open;
     tbSub.Open;
     qrSetor.Open;
     qrUsuario.Open;
     qrFornec.Open;
     qrStatus.Open;
 
     With tbPatri Do Begin
         Filter := 'Plaqueta = '''+ vPatri +''' ';
         Filtered := True;
         Open;
         Edit;
     End;   }

     tbPatri.Edit;

     dbLcbSubAlt.KeyField := '';
     dbLcbSubAlt.KeyField := 'codigo';

     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.btnCancAltClick(Sender: TObject);
begin
     Screen.Cursor := crHourGlass;
     tbPatri.Cancel;

{     qrTipo.Close;
     tbSub.Close;
     qrSetor.Close;
     qrUsuario.Close;
     qrFornec.Close;
     qrStatus.Close;

     With qrPatri Do Begin
         Close;
         If mmFiltro.Visible Then
            SQL.Strings[3] := sqlAux
         Else
            SQL.Strings[3] := '';
         Open;
         Locate('Plaqueta', tbPatriPlaqueta.AsString, []);
     End; }
//     tbPatri.Close;

     pnlAlterar.Visible := False;
     pnlPrinc.Enabled := True;
     dbGrdPatri.SetFocus;
     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.btnOkAltClick(Sender: TObject);
var vPatri: String;

begin
     If dbEdtPlaquetaAlt.Text = '' Then Begin
        MessageDlg('O campo "Patrimônio" está em branco!', mtWarning, [mbOk], 0);
        Exit;
     End;
     If dbEdtPlaquetaAlt2.Text = '' Then Begin
        MessageDlg('O campo "Patrimônio NOVO" está em branco!', mtWarning, [mbOk], 0);
        If MessageDlg('Confirma Patrimônio NOVO = SN?', mtInformation, [mbYes, mbNo], 0) = mrYes Then begin
           tbPatri.edit;
           tbPatriPlaqueta2.AsString := 'SN';
           end
        else Exit;
     End;
     dbEdtDescAlt.Text := Trim(dbEdtDescAlt.Text);
     If dbEdtDescAlt.Text = '' Then Begin
        MessageDlg('O campo "Descrição" está em branco!', mtWarning, [mbOk], 0);
        Exit;
     End;
//     If dbLcbUser.Text = '' Then Begin
//        MessageDlg('O campo usuário está em branco!', mtWarning, [mbOk], 0);
//        Exit;
//     End;

     {vPatri := tbPatriPlaqueta2.AsString;
     if vPatri<>'SN' then begin
     If qrPatri.Locate('Plaqueta2', vPatri, []) Then Begin
        MessageDlg('Patrimônio Novo já existente!', mtInformation, [mbOk], 0);
        Exit;
     End;

     If qrPatri.Locate('Plaqueta', vPatri, []) Then Begin
        MessageDlg('Patrimônio Novo já existente!', mtInformation, [mbOk], 0);
        Exit;
     End;
     end;

     vPatri := tbPatriPlaqueta.AsString;

     If qrPatri.Locate('Plaqueta', vPatri, []) Then Begin
        MessageDlg('Patrimônio já existente!', mtInformation, [mbOk], 0);
        Exit;
     End;
     }

     Screen.Cursor := crHourGlass;

     tbPatri.Post;
     MessageDlg('Patrimônio alterado com sucesso.', mtInformation, [mbOk], 0);
   //  tbPatri.Close;

{     qrTipo.Close;
     tbSub.Close;
     qrSetor.Close;
     qrUsuario.Close;
     qrFornec.Close;
     qrStatus.Close;

     With qrPatri Do Begin
         Close;
         If mmFiltro.Visible Then
            SQL.Strings[3] := sqlAux
         Else
            SQL.Strings[3] := '';
         Open;
        qrPatri.Locate('Plaqueta', vPatri, []);
     End;
 }
     vPatri := tbPatriPlaqueta.AsString;
     qrPatri.CLOSE;
     qrPatri.OPEN;
     qrPatri.Locate('Plaqueta', vPatri, []);

     pnlAlterar.Visible := False;
     pnlPrinc.Enabled := True;
     dbGrdPatri.SetFocus;

     Screen.Cursor := crDefault;
end;

procedure TF_Patrimonio.btnRelatorioClick(Sender: TObject);
begin
     With pnlImprime Do Begin
         Height := 140;
         Width := 273;
         Top := (Self.Height-Height) div 2;
         Left := (Self.Width-Width) div 2;
         Visible := True;
     End;

     rgImp.SetFocus;
     pnlPrinc.Enabled := False;
end;

procedure TF_Patrimonio.btnCancLocClick(Sender: TObject);
begin
     edtLoc.Text := '';
     pnlLoc.Visible := False;
     pnlPrinc.Enabled := True;
     qrPatri.First;
end;

procedure TF_Patrimonio.qrPatriAfterOpen(DataSet: TDataSet);
begin
     edtTot.Text := IntToStr(qrPatri.RecordCount);
end;

procedure TF_Patrimonio.edtValDeKeyPress(Sender: TObject; var Key: Char);
begin
     If Not(Key In ['0'..'9',',','.',#8]) Then
        Key := #0;
     If Key = '.' Then  Key := ',';
     If (Key = ',') AND (Pos(',', edtValDe.Text) > 0) Then
        Key := #0;
end;

procedure TF_Patrimonio.edtValAteKeyPress(Sender: TObject; var Key: Char);
begin
     If Not(Key In ['0'..'9',',','.',#8]) Then
        Key := #0;
     If Key = '.' Then  Key := ',';
     If (Key = ',') AND (Pos(',', edtValAte.Text) > 0) Then
        Key := #0;
end;

procedure TF_Patrimonio.dbLcbTipoClick(Sender: TObject);
begin
     If tbPatri.State In [dsInsert, dsEdit] Then
        tbPatriSub_Tipo_Patrimonio.AsString := tbSubcodigo.AsString;
end;

procedure TF_Patrimonio.dbEdtValKeyPress(Sender: TObject; var Key: Char);
begin
     If Not(Key In ['0'..'9',',','.',#8]) Then
        Key := #0;
     If Key = '.' Then  Key := ',';
     If (Key = ',') AND (Pos(',', dbEdtVal.Text) > 0) Then
        Key := #0;
end;

procedure TF_Patrimonio.dbEdtPlaquetaKeyPress(Sender: TObject;
  var Key: Char);
begin
     If Not(Key In ['0'..'9',#8]) Then
        Key := #0;
end;

procedure TF_Patrimonio.dbLcbTipoAltClick(Sender: TObject);
begin
     If tbPatri.State In [dsInsert, dsEdit] Then
        tbPatriSub_Tipo_Patrimonio.AsString := tbSubcodigo.AsString;
end;

procedure TF_Patrimonio.cbTipoClick(Sender: TObject);
begin
     If Not cbTipo.Checked Then
        tbSub.MasterSource := nil
     Else
        tbSub.MasterSource := dsTipo;
end;

procedure TF_Patrimonio.dblcbFilTipoClick(Sender: TObject);
begin
     dblcbFilSub.KeyField := '';
     dblcbFilSub.KeyField := 'codigo';
end;

procedure TF_Patrimonio.sbLimpaProcuradorClick(Sender: TObject);
begin
     tbPatriUsuario.Clear;
end;

procedure TF_Patrimonio.tbPatriAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou o Patrimônio.' + tbPatriDescricao.AsString +' - '+ tbPatriPlaqueta.AsString);
end;

procedure TF_Patrimonio.tbPatriBeforeDelete(DataSet: TDataSet);
begin
     logusu('P','Apagou o Patrimônio: '+  tbPatriDescricao.AsString +' - '+ tbPatriPlaqueta.AsString);
end;

procedure TF_Patrimonio.BitBtn1Click(Sender: TObject);
begin
     Case rgImp.ItemIndex Of
         0: Begin
            If Not Assigned(F_relPatrimonioSint) Then Application.CreateForm(TF_relPatrimonioSint, F_relPatrimonioSint);
            F_relPatrimonioSint.Preview;
         End;
         1: Begin
            If MessageDlg('Imprimir observações?', mtInformation, [mbYes, mbNo], 0) = mrYes Then Begin
              btnRelatorio.Tag := 1;
              If Not Assigned(F_RelPatrimonio) Then Application.CreateForm(TF_RelPatrimonio, F_RelPatrimonio);
              F_RelPatrimonio.qrPatrimonio.Preview;
            End
            Else Begin
                btnRelatorio.Tag := 0;
                If Not Assigned(F_RelPatrimonio) Then Application.CreateForm(TF_RelPatrimonio, F_RelPatrimonio);
                F_RelPatrimonio.qrPatrimonio.Preview;
            End;
         End;
         2: Begin
            btnRelatorio.Tag := 1;
            If Not Assigned(F_RelPatrimonio_ind) Then Application.CreateForm(TF_RelPatrimonio_ind, F_RelPatrimonio_ind);
            F_RelPatrimonio_ind.qrPatrimonio_ind.Preview;
         End;
     End;
end;

procedure TF_Patrimonio.BitBtn2Click(Sender: TObject);
begin
     pnlImprime.Visible := False;
     pnlPrinc.Enabled := True;
     qrPatri.First;
end;

procedure TF_Patrimonio.tbPatriBeforePost(DataSet: TDataSet);
begin
tbpatriobs.asstring := tbpatriobs.asstring+chr(13)+datetostr(date())+' - '+v_nomecompleto+' - confirmou';
end;

procedure TF_Patrimonio.sbLimpaUtilClick(Sender: TObject);
begin
   tbPatriTipo_patrimonio.AsString := '';
end;

procedure TF_Patrimonio.SpeedButton1Click(Sender: TObject);
begin
   tbPatrisetor.AsString := '';
end;

procedure TF_Patrimonio.SpeedButton2Click(Sender: TObject);
begin
    tbPatriusuario.AsString := '';
end;

procedure TF_Patrimonio.SpeedButton3Click(Sender: TObject);
begin
   tbPatrisub_tipo_patrimonio.AsString := '';
end;

procedure TF_Patrimonio.dbEdtPlaquetaAlt2Exit(Sender: TObject);
begin
     dbEdtPlaquetaAlt2.text := copy('000000'+dbEdtPlaquetaAlt2.text,length('000000'+dbEdtPlaquetaAlt2.text)-5,6);
end;

procedure TF_Patrimonio.dbEdtPlaquetaExit(Sender: TObject);
begin
     dbEdtPlaqueta.text := copy('000000'+dbEdtPlaqueta.text,length('000000'+dbEdtPlaqueta.text)-5,6);
end;

procedure TF_Patrimonio.dsTipoDataChange(Sender: TObject; Field: TField);
begin
qrSub.close();
  qrSub.ParamByName('tipo_patrimonio').AsString :=
        qrTipoCodigo.AsString;
qrSub.open();
end;

end.

