unit u_followcomercial;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, DBGrids, ExtCtrls, DBCtrls, Buttons, Mask, Db, DBTables;///, qrexport,QREXTRA;

type
  Tf_followcomercial = class(TForm)
    pnlTop: TPanel;
    q_Controle: TQuery;
    dsControle: TDataSource;
    t_Follow: TTable;
    q_Follow: TQuery;
    dsFollow: TDataSource;
    pnlPrincipal: TPanel;
    Panel2: TPanel;
    dbgControle: TDBGrid;
    Panel6: TPanel;
    btnFiltrar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnFollow: TBitBtn;
    btnImprimir: TBitBtn;
    btnSair: TBitBtn;
    edtTot: TEdit;
    pnlFollow: TPanel;
    Panel9: TPanel;
    Panel10: TPanel;
    btnFechar: TBitBtn;
    dbgFollow: TDBGrid;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    pnlEdicao: TPanel;
    Panel3: TPanel;
    Panel7: TPanel;
    dbmDesc: TDBMemo;
    dbmDescIng: TDBMemo;
    Label8: TLabel;
    Label9: TLabel;
    dsFol: TDataSource;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnNovo: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    pnlFiltrar: TPanel;
    Label6: TLabel;
    Panel4: TPanel;
    cbCli: TCheckBox;
    edtProc: TEdit;
    Panel5: TPanel;
    btnOKFilt: TBitBtn;
    btnCanFil: TBitBtn;
    rgProc: TRadioGroup;
    gbPeriodo: TGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    mePerDe: TMaskEdit;
    mePerAte: TMaskEdit;
    q_Import: TQuery;
    dsImport: TDataSource;
    pnlLocalizar: TPanel;
    Label10: TLabel;
    Panel1: TPanel;
    edtLoc: TEdit;
    Panel8: TPanel;
    btnOKLoc: TBitBtn;
    btnCanLoc: TBitBtn;
    dbgCli: TDBGrid;
    mmFiltro: TMemo;
    cb_tipopro: TCheckBox;
    q_ControleEmpresa: TStringField;
    q_ControleFilial: TStringField;
    q_ControleImportador: TStringField;
    q_ControleCodigo: TStringField;
    q_ControleTipoDec: TStringField;
    q_ControleNumerodoccarga: TStringField;
    q_ControleNumeromaster: TStringField;
    q_ControleSiglaII: TStringField;
    q_ControleSiglaIII: TStringField;
    q_ControleSiglaI: TStringField;
    q_ControleLocal: TStringField;
    q_ControlePeso_Bruto: TFloatField;
    q_ControleData_Chegada_URF_Cheg: TDateTimeField;
    q_ControleValor_FOB: TFloatField;
    q_ControleValor_FOBC: TFloatField;
    q_ControleDT_REGISTRO_DI: TStringField;
    q_ControleDT_REGISTRO_DIC: TStringField;
    q_ControleNR_DECLARACAO_IMP: TStringField;
    q_ControleNR_DECLARACAO_IMPC: TStringField;
    q_ControleDT_DESEMBARACO: TDateTimeField;
    q_ControleDT_DESEMBARACOC: TDateTimeField;
    q_ControleNumDias: TFloatField;
    q_ControleNumDiasC: TFloatField;
    q_ControleDiasVencido: TFloatField;
    q_FollowEmpresa: TStringField;
    q_FollowFilial: TStringField;
    q_FollowProcesso: TStringField;
    q_FollowSequencial: TAutoIncField;
    q_FollowDescricao: TStringField;
    q_FollowDescricao_ing: TStringField;
    q_FollowData: TDateTimeField;
    q_FollowHora: TDateTimeField;
    q_FollowUsuario: TStringField;
    t_FollowEmpresa: TStringField;
    t_FollowFilial: TStringField;
    t_FollowProcesso: TStringField;
    t_FollowSequencial: TAutoIncField;
    t_FollowDescricao: TStringField;
    t_FollowDescricao_ing: TStringField;
    t_FollowData: TDateTimeField;
    t_FollowHora: TDateTimeField;
    t_FollowUsuario: TStringField;
    q_ImportCodigo: TStringField;
    q_ImportRazao_Social: TStringField;
    q_ImportCNPJ_CPF_COMPLETO: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure q_ControleAfterOpen(DataSet: TDataSet);
    procedure btnFollowClick(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure q_FollowAfterOpen(DataSet: TDataSet);
    procedure btnGravarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFiltrarClick(Sender: TObject);
    procedure cbCliClick(Sender: TObject);
    procedure rgProcClick(Sender: TObject);
    procedure btnOKFiltClick(Sender: TObject);
    procedure btnCanFilClick(Sender: TObject);
    procedure mePerDeChange(Sender: TObject);
    procedure mePerAteChange(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnOKLocClick(Sender: TObject);
    procedure btnCanLocClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure t_FollowBeforeDelete(DataSet: TDataSet);
    procedure t_FollowAfterPost(DataSet: TDataSet);
    procedure q_Controle_MudaSQL();
    procedure q_Follow_MudaSQL();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_followcomercial: Tf_followcomercial;
  filt : array of array[1..2] of String;

implementation

uses U_MSCOMEX, u_relfollowcomercAguard,
     u_relfollowcomercDesemb;

{$R *.DFM}

procedure Tf_followcomercial.FormActivate(Sender: TObject);
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
     width := w;   }
end;

procedure Tf_followcomercial.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     q_Controle.Close;

     Action := caFree;
     f_followcomercial := nil;
///     f_mscomex.FollowComercial1.Enabled := True;
end;

procedure Tf_followcomercial.FormCreate(Sender: TObject);
begin
     q_Controle_MudaSQL();
     q_Controle.Open;
end;

procedure Tf_followcomercial.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure Tf_followcomercial.q_ControleAfterOpen(DataSet: TDataSet);
begin
     edtTot.Text := IntToStr(q_Controle.RecordCount);
end;

procedure Tf_followcomercial.btnFollowClick(Sender: TObject);
begin
     pnlPrincipal.Enabled := False;
     q_Follow_MudaSQL();
     q_Follow.Params[0].AsString := q_ControleCodigo.AsString;
     q_Follow.Open;
     with pnlFollow do begin
         Left := 50;
         Top  := 50;
         Visible := True;
     end;
     dbgFollow.SetFocus;
end;

procedure Tf_followcomercial.btnFecharClick(Sender: TObject);
begin
     q_Follow.Close;
     pnlFollow.Visible := False;
     pnlPrincipal.Enabled := True;
     dbgControle.SetFocus;
end;

procedure Tf_followcomercial.btnNovoClick(Sender: TObject);
begin
     pnlFollow.Enabled := False;
     with pnlEdicao do begin
         Left := 105;
         Top  := 100;
         Visible := True;
     end;
     with t_Follow do begin
         Open;
         if RecordCount > 0 then
            Tag := 1
         else
            Tag := 3;
         Insert;
     end;
     dbmDesc.SetFocus;
end;

procedure Tf_followcomercial.btnAlterarClick(Sender: TObject);
begin
     pnlFollow.Enabled := False;
     with pnlEdicao do begin
         Left := 105;
         Top  := 100;
         Visible := True;
     end;
     with t_Follow do begin
         Open;
//         FindKey([q_FollowSequencial.AsString]);
         Filter := 'Sequencial = '+q_FollowSequencial.AsString;
         Filtered := True;
         Tag := 2;
         Edit;
     end;
     dbmDesc.SetFocus;
end;

procedure Tf_followcomercial.q_FollowAfterOpen(DataSet: TDataSet);
begin
     if q_Follow.RecordCount <> 0 then begin
        btnAlterar.Enabled := True;
        btnExcluir.Enabled := True;
     end
     else begin
        btnAlterar.Enabled := False;
        btnExcluir.Enabled := False;
     end;
end;

procedure Tf_followcomercial.btnGravarClick(Sender: TObject);
begin
     dbmDesc.Text := Trim(dbmDesc.Text);
     if dbmDesc.Text = '' then begin
        MessageDlg('Digite a Descricao do Follow Comercial!', mtInformation,[mbOk], 0);
        dbmDesc.SetFocus;
     end
     else begin
        if t_Follow.Tag <> 2 then begin
           t_FollowEmpresa.AsString  := q_ControleEmpresa.AsString;
           t_FollowFilial.AsString   := q_ControleFilial.AsString;
           t_FollowProcesso.AsString := q_ControleCodigo.AsString;
           t_FollowData.AsDateTime   := Date;
           t_FollowHora.AsDateTime   := Time;
           t_FollowUsuario.AsString  := v_usuario;
        end;

        with t_Follow do begin
            Post;
            Close;
        end;
        with q_Follow do begin
            Close;
            Open;
        end;


        t_Follow.Tag := 0;
        pnlEdicao.Visible := False;
        pnlFollow.Enabled := True;
        dbgFollow.SetFocus;
     end;
end;

procedure Tf_followcomercial.btnCancelarClick(Sender: TObject);
begin
     with t_Follow do begin
         Cancel;
         Tag := 0;
         Close;
     end;
     pnlEdicao.Visible := False;
     pnlFollow.Enabled := True;
     dbgFollow.SetFocus;
end;

procedure Tf_followcomercial.btnExcluirClick(Sender: TObject);
begin
     if MessageDlg('Confirma exclusão deste item do Follow Comercial?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
        t_Follow.Open;
        t_Follow.Delete;
        ShowMessage('Item do Follow Comercial excluído!');
        t_Follow.Close;
        q_Follow.Close;
        q_Follow_MudaSQL();
        q_Follow.Open;
     end;
     dbgFollow.SetFocus;
end;

procedure Tf_followcomercial.btnFiltrarClick(Sender: TObject);
begin
     with dbgControle do begin
         Columns[6].Visible  := True;
         Columns[15].Visible := True;
         Columns[16].Visible := True;
         Columns[17].Visible := True;
         Columns[18].Visible := True;
         Columns[19].Visible := True;
     end;
     q_Import.Open;

     pnlPrincipal.Enabled := False;
     with pnlFiltrar do begin
         Left := 150;
         Top  := 35;
         Visible := True;
     end;
     cbCli.SetFocus;
end;

procedure Tf_followcomercial.cbCliClick(Sender: TObject);
begin
     if cbCli.Checked then
        dbgCli.Enabled := False
     else
        dbgCli.Enabled := True;
end;

procedure Tf_followcomercial.rgProcClick(Sender: TObject);
begin
     if rgProc.ItemIndex = 0 then
        gbPeriodo.Enabled := True
     else
        gbPeriodo.Enabled := False;
end;

procedure Tf_followcomercial.btnOKFiltClick(Sender: TObject);
var
   filtro: String;
   PerDe, PerAte: String;
   i: Integer;
begin
     mmFiltro.Text := 'PROCESSOS FILTRADOS POR:';
     filtro := 'Empresa = ''1'' ';
     if not cbCli.Checked then
        if dbgCli.SelectedRows.Count <= 0 then begin
           ShowMessage('Selecione um Cliente');
           dbgCli.SetFocus;
           Exit;
        end
        else
           with dbgCli.DataSource.DataSet do begin
               SetLength(filt,dbgCli.SelectedRows.Count);
               GotoBookmark(Pointer(dbgCli.SelectedRows.Items[0]));
               filtro := filtro + 'AND (Importador = '''+dbgCli.Fields[0].AsString+''' ';
               mmFiltro.Text := mmFiltro.Text+#13#10+'CLIENTES:';
               mmFiltro.Text := mmFiltro.Text+#13#10#9+dbgCli.Fields[1].AsString;
               filt[0,1] := dbgCli.Fields[0].AsString;
               filt[0,2] := dbgCli.Fields[1].AsString;
               for i:=1 to dbgCli.SelectedRows.Count-1 do begin
                   GotoBookmark(Pointer(dbgCli.SelectedRows.Items[i]));
                   filtro := filtro + 'OR Importador = '''+dbgCli.Fields[0].AsString+''' ';
                   mmFiltro.Text := mmFiltro.Text+#13#10#9+dbgCli.Fields[1].AsString;
                   filt[i,1] := dbgCli.Fields[0].AsString;
                   filt[i,2] := dbgCli.Fields[1].AsString;
               end;
               filtro := filtro + ') ';
           end;

     if rgProc.ItemIndex = 1 then begin
        mmFiltro.Lines[0] := 'PROCESSOS AGUARDANDO DESEMBARACO:';
        filtro := filtro + 'AND ( ( (TipoDec = 12) AND '
                         + '((DT_DESEMBARACO <= ''01/01/1900'') OR (DT_DESEMBARACOC <= ''01/01/1900'')) ) '
                         + 'OR ((TipoDec <> 12) AND (DT_DESEMBARACO <= ''01/01/1900'')) ) ';
        with dbgControle do begin
            Columns[6].Visible  := False;
            Columns[15].Visible := False;
            Columns[16].Visible := False;
            Columns[17].Visible := False;
            Columns[18].Visible := False;
        end;
     end
     else begin
        mmFiltro.Lines[0] := 'PROCESSOS DESEMBARACADOS POR PERÍODO:';
        mmFiltro.Text := mmFiltro.Text+#13#10+'PERÍODO:'+#13#10;
        if mePerDe.Text = '  /  /    ' then
           PerDe := '01/01/1900'
        else begin
           mePerDe.Text := FormatDateTime('dd/mm/yyyy',StrToDate(mePerDe.Text));
           PerDe := mePerDe.Text;
           mmFiltro.Text := mmFiltro.Text+#9+'DE: '+mePerDe.Text;
        end;

        if mePerAte.Text = '  /  /    ' then
           PerAte := '31/12/2099'
        else begin
           mePerAte.Text := FormatDateTime('dd/mm/yyyy',StrToDate(mePerAte.Text));
           PerAte := mePerAte.Text;
           mmFiltro.Text := mmFiltro.Text+#9+'ATÉ: '+mePerAte.Text;
        end;

        filtro := filtro + 'AND ( ((DT_DESEMBARACO >= '''+PerDe+''') '
                         + 'AND (DT_DESEMBARACO <= '''+PerAte+''')) '
                         + 'OR ((DT_DESEMBARACOC >= '''+PerDe+''') '
                         + 'AND (DT_DESEMBARACOC <= '''+PerAte+''')) ) ';

        dbgControle.Columns[19].Visible := False;
     end;

     edtProc.Text := Trim(edtProc.Text);
     if edtProc.Text <> '' then begin
        filtro := filtro + 'AND [Codigo] = '''+Trim(edtProc.Text)+''' ';
        mmFiltro.Text := mmFiltro.Text+#13#10+'PROCESSO: '+edtProc.Text;
     end;

     /// alterado Marcos / 23/07/2002
     q_controle.close;
     q_controle.SQL.Clear;
     if cb_tipopro.checked then begin

        q_controle.sql.Add('SELECT P.Empresa, P.Filial, P.Importador, P.Codigo, P.Tipo_Declaracao AS TipoDec, CP.Numerodoccarga, ');
        q_controle.sql.Add('CP.Numeromaster, LI.SIGLA AS SiglaII, TVT.SIGLA AS SiglaIII, TTD.SIGLA AS SiglaI, CP.Local, CP.Peso_Bruto, ');
        q_controle.sql.Add('CP.Data_Chegada_URF_Cheg, P.Valor_FOB*PTC.Taxa_conversao AS Valor_FOB, P.Valor_FOBC*PTC.Taxa_conversaoc AS Valor_FOBC, ');

        if tipoBanco = 1 then begin
          q_controle.sql.Add('P.DT_REGISTRO_DI, P.DT_REGISTRO_DIC, P.NR_DECLARACAO_IMP, P.NR_DECLARACAO_IMPC, P.DT_DESEMBARACO, P.DT_DESEMBARACOC, CAST(DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,P.DT_DESEMBARACO)AS REAL) AS NumDias, ');
          q_controle.sql.Add('CAST(DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,P.DT_DESEMBARACOC)AS REAL) AS NumDiasC, CAST(DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,GETDATE())AS REAL) AS DiasVencido ');
        end
        else begin
          q_controle.sql.Add('P.DT_REGISTRO_DI, P.DT_REGISTRO_DIC, P.NR_DECLARACAO_IMP, P.NR_DECLARACAO_IMPC, P.DT_DESEMBARACO, P.DT_DESEMBARACOC, P.DT_DESEMBARACO-CP.Data_Chegada_URF_Cheg AS NumDias, ');
          q_controle.sql.Add('P.DT_DESEMBARACOC-CP.Data_Chegada_URF_Cheg AS NumDiasC, Date()-CP.Data_Chegada_URF_Cheg AS DiasVencido ');
        end;

        q_controle.sql.Add('FROM ((Parametros AS PA LEFT JOIN ((((Importadores AS I LEFT JOIN Processos AS P ON (I.Empresa = P.Empresa) ');
        q_controle.sql.Add('AND (I.Filial = P.Filial) AND (I.Codigo = P.Importador)) LEFT JOIN Conhecimento_Processo AS CP ON (P.Empresa = CP.Empresa) ');
        q_controle.sql.Add('AND (P.Filial = CP.Filial) AND (P.Codigo = CP.Processo)) LEFT JOIN TAB_VIA_TRANSPORTE AS TVT ON CP.Via = TVT.Codigo) LEFT JOIN ');
        q_controle.sql.Add('TAB_TIPO_DECLARACAO AS TTD ON P.Tipo_Declaracao = TTD.Codigo) ON (PA.Filial = I.Filial) AND (PA.Empresa = I.Empresa)) LEFT JOIN ');
        q_controle.sql.Add('Processos_Taxas_Conversao AS PTC ON (P.Empresa = PTC.Empresa) AND (P.Filial = PTC.Filial) AND (P.Codigo = PTC.Processo)) LEFT JOIN ');
        q_controle.sql.Add('Locais_Inventario AS LI ON (P.Local_Inventario = LI.Local) AND (P.Contrato = LI.Contrato) AND (P.Importador = LI.Importador) AND ');
        q_controle.sql.Add('(P.Filial = LI.Filial) AND (P.Empresa = LI.Empresa)');
        q_controle.sql.Add('WHERE (((P.Tipo)="1" Or (P.Tipo)="11" Or (P.Tipo)="12" Or (P.Tipo)="13") AND ((PTC.Moeda)="220")) ');
        if tipoBanco = 1 then
          q_controle.sql.Add('ORDER BY DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,GETDATE()), P.DT_DESEMBARACO, P.DT_DESEMBARACOC, P.Codigo ')
        else
          q_controle.sql.Add('ORDER BY Date()-CP.Data_Chegada_URF_Cheg, P.DT_DESEMBARACO, P.DT_DESEMBARACOC, P.Codigo ');

{ original
SELECT P.Empresa, P.Filial, P.Importador, P.Código, P.Tipo_Declaração AS TipoDec, CP.Numerodoccarga, CP.Numeromaster, LI.SIGLA AS SiglaII, TVT.SIGLA AS SiglaIII, TTD.SIGLA AS SiglaI, CP.Local, CP.Peso_Bruto, CP.Data_Chegada_URF_Cheg, P.Valor_FOB*PTC.Taxa_conversao AS Valor_FOB, P.Valor_FOBC*PTC.Taxa_conversaoc AS Valor_FOBC, P.DT_REGISTRO_DI, P.DT_REGISTRO_DIC, P.NR_DECLARACAO_IMP, P.NR_DECLARACAO_IMPC, P.DT_DESEMBARACO, P.DT_DESEMBARACOC, P.DT_DESEMBARACO-CP.Data_Chegada_URF_Cheg AS NumDias, P.DT_DESEMBARACOC-CP.Data_Chegada_URF_Cheg AS NumDiasC, Date()-CP.Data_Chegada_URF_Cheg AS DiasVencido
FROM ((Parametros AS PA LEFT JOIN ((((Importadores AS I LEFT JOIN Processos AS P ON (I.Empresa = P.Empresa) AND (I.Filial = P.Filial) AND (I.Codigo = P.Importador)) LEFT JOIN Conhecimento_Processo AS CP ON (P.Empresa = CP.Empresa) AND (P.Filial = CP.Filial) AND (P.Código = CP.Processo)) LEFT JOIN TAB_VIA_TRANSPORTE AS TVT ON CP.Via = TVT.Codigo) LEFT JOIN TAB_TIPO_DECLARACAO AS TTD ON P.Tipo_Declaração = TTD.Codigo) ON (PA.Filial = I.Filial) AND (PA.Empresa = I.Empresa)) LEFT JOIN Processos_Taxas_Conversao AS PTC ON (P.Empresa = PTC.Empresa) AND (P.Filial = PTC.Filial) AND (P.Código = PTC.Processo)) LEFT JOIN Locais_Inventario AS LI ON (P.Local_Inventario = LI.Local) AND (P.Contrato = LI.Contrato) AND (P.Importador = LI.Importador) AND (P.Filial = LI.Filial) AND (P.Empresa = LI.Empresa)
WHERE (((P.Tipo)="1" Or (P.Tipo)="11" Or (P.Tipo)="12" Or (P.Tipo)="13") AND ((PTC.Moeda)="220"))
ORDER BY Date()-CP.Data_Chegada_URF_Cheg, P.DT_DESEMBARACO, P.DT_DESEMBARACOC, P.Código

}

     end

     else begin
          q_controle.sql.Add('SELECT P.Empresa, P.Filial, P.Importador, P.Codigo, P.Tipo_Declaracao AS TipoDec, CP.Numerodoccarga, ');
          q_controle.sql.Add('CP.Numeromaster, LI.SIGLA AS SiglaII, TVT.SIGLA AS SiglaIII, TTD.SIGLA AS SiglaI, CP.Local, CP.Peso_Bruto, ');
          q_controle.sql.Add('CP.Data_Chegada_URF_Cheg, P.Valor_FOB*PTC.Taxa_conversao AS Valor_FOB, P.Valor_FOBC*PTC.Taxa_conversaoc AS Valor_FOBC, ');
          if tipoBanco = 1 then begin
            q_controle.sql.Add('P.DT_REGISTRO_DI, P.DT_REGISTRO_DIC, P.NR_DECLARACAO_IMP, P.NR_DECLARACAO_IMPC, P.DT_DESEMBARACO, P.DT_DESEMBARACOC, CAST(DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,P.DT_DESEMBARACO)AS REAL) AS NumDias, ');
            q_controle.sql.Add('CAST(DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,P.DT_DESEMBARACOC)AS REAL) AS NumDiasC, CAST(DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,GETDATE())AS REAL) AS DiasVencido ');
          end
          else begin
            q_controle.sql.Add('P.DT_REGISTRO_DI, P.DT_REGISTRO_DIC, P.NR_DECLARACAO_IMP, P.NR_DECLARACAO_IMPC, P.DT_DESEMBARACO, P.DT_DESEMBARACOC, P.DT_DESEMBARACO-CP.Data_Chegada_URF_Cheg AS NumDias, ');
            q_controle.sql.Add('P.DT_DESEMBARACOC-CP.Data_Chegada_URF_Cheg AS NumDiasC, Date()-CP.Data_Chegada_URF_Cheg AS DiasVencido ');
          end;

          q_controle.sql.Add('FROM ((Parametros AS PA LEFT JOIN ((((Importadores AS I LEFT JOIN Processos AS P ON (I.Empresa = P.Empresa) ');
          q_controle.sql.Add('AND (I.Filial = P.Filial) AND (I.Codigo = P.Importador)) LEFT JOIN Conhecimento_Processo AS CP ON (P.Empresa = CP.Empresa) ');
          q_controle.sql.Add('AND (P.Filial = CP.Filial) AND (P.Codigo = CP.Processo)) LEFT JOIN TAB_VIA_TRANSPORTE AS TVT ON CP.Via = TVT.Codigo) LEFT JOIN ');
          q_controle.sql.Add('TAB_TIPO_DECLARACAO AS TTD ON P.Tipo_Declaracao = TTD.Codigo) ON (PA.Filial = I.Filial) AND (PA.Empresa = I.Empresa)) LEFT JOIN ');
          q_controle.sql.Add('Processos_Taxas_Conversao AS PTC ON (P.Empresa = PTC.Empresa) AND (P.Filial = PTC.Filial) AND (P.Codigo = PTC.Processo)) LEFT JOIN ');
          q_controle.sql.Add('Locais_Inventario AS LI ON (P.Local_Inventario = LI.Local) AND (P.Contrato = LI.Contrato) AND (P.Importador = LI.Importador) AND ');
          q_controle.sql.Add('(P.Filial = LI.Filial) AND (P.Empresa = LI.Empresa)');
////          q_controle.sql.Add('WHERE (((PTC.Moeda)="220"))');
          if tipoBanco = 1 then
            q_controle.sql.Add('ORDER BY DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,GETDATE()), P.DT_DESEMBARACO, P.DT_DESEMBARACOC, P.Codigo ')
          else
            q_controle.sql.Add('ORDER BY Date()-CP.Data_Chegada_URF_Cheg, P.DT_DESEMBARACO, P.DT_DESEMBARACOC, P.Codigo ');

     end;
     q_controle.open;

     q_Controle.Filter := filtro;
     q_Controle.Filtered := True;

     q_Import.Close;

     mmFiltro.Visible := True;
     pnlFiltrar.Visible := False;
     pnlPrincipal.Enabled := True;
     if q_Controle.RecordCount = 0 then begin
        btnLocalizar.Enabled := False;
        btnFollow.Enabled    := False;
        btnImprimir.Enabled  := False;
     end
     else begin
        btnLocalizar.Enabled := True;
        btnFollow.Enabled    := True;
        btnImprimir.Enabled  := True;
     end;
     edtTot.Text := IntToStr(q_Controle.RecordCount);
     dbgControle.SetFocus;
end;

procedure Tf_followcomercial.btnCanFilClick(Sender: TObject);
begin
     mePerDe.Clear;
     mePerAte.Clear;
     edtProc.Clear;
     rgProc.ItemIndex := 0;
     gbPeriodo.Enabled := True;
     cbCli.Checked := False;

     q_Import.Close;
     q_Controle.Filtered := False;

     mmFiltro.Clear;
     mmFiltro.Visible := False;
     pnlFiltrar.Visible   := False;
     pnlPrincipal.Enabled := True;
     btnImprimir.Enabled  := False;
     edtTot.Text := IntToStr(q_Controle.RecordCount);
     dbgControle.SetFocus;
end;

procedure Tf_followcomercial.mePerDeChange(Sender: TObject);
begin
     if mePerDe.Text = '  /  /    ' then
        mePerDe.Clear;
end;

procedure Tf_followcomercial.mePerAteChange(Sender: TObject);
begin
     if mePerAte.Text = '  /  /    ' then
        mePerAte.Clear;
end;

procedure Tf_followcomercial.btnLocalizarClick(Sender: TObject);
begin
     pnlPrincipal.Enabled := False;
     with pnlLocalizar do begin
         Left := 230;
         Top  := 110;
         Visible := True;
     end;
     edtLoc.SetFocus;
end;

procedure Tf_followcomercial.btnOKLocClick(Sender: TObject);
begin
     q_Controle.Locate('Codigo',Trim(edtLoc.Text),[loPartialKey]);
     pnlLocalizar.Visible := False;
     pnlPrincipal.Enabled := True;
     dbgControle.SetFocus;
end;

procedure Tf_followcomercial.btnCanLocClick(Sender: TObject);
begin
     edtLoc.Clear;
     pnlLocalizar.Visible := False;
     pnlPrincipal.Enabled := True;
     dbgControle.SetFocus;
end;

procedure Tf_followcomercial.btnImprimirClick(Sender: TObject);

begin
     if rgProc.ItemIndex = 0 then begin
        if not Assigned(QR_FollowComercDesemb) then Application.CreateForm(TQR_FollowComercDesemb, QR_FollowComercDesemb);
        QR_FollowComercDesemb.Preview;
     end
     else begin
        if not Assigned(QR_FollowComercAguard) then Application.CreateForm(TQR_FollowComercAguard, QR_FollowComercAguard);
        QR_FollowComercAguard.Preview;
{
        ///Exportando para XLS:
        AExportFilter := TQRCommaSeparatedFilter.Create('C:\MS2000\REPORT.xls');

        if MessageDlg('Confirma geração da planilha "C:\MS2000\REPORT.xls" ?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then
//        QR_FollowComercAguard.ExportToFilter(TQRXLSFilter.Create('c:\teste.xls'));
        QR_FollowComercAguard.ExportToFilter(AExportFilter);
 }
     end;
end;

procedure Tf_followcomercial.t_FollowBeforeDelete(DataSet: TDataSet);
begin

     with f_mscomex do begin
         logusu('E','Excluiu o Item do Follow Up Comercial: PROCESSO: '+t_FollowProcesso.AsString+' SEQ: '+t_FollowSequencial.AsString);
     end;
end;

procedure Tf_followcomercial.t_FollowAfterPost(DataSet: TDataSet);
begin
     if t_Follow.Tag <> 3 then

     with f_mscomex do begin
         logusu('P','Alterou dados do Follow Up Comercial: PROCESSO: '+t_FollowProcesso.AsString+' SEQ: '+t_FollowSequencial.AsString);
     end;
end;

procedure Tf_followcomercial.q_Controle_MudaSQL();
begin
  q_Controle.SQL.clear;
  q_Controle.sql.Add('SELECT P.Empresa, P.Filial, P.Importador, P.Codigo, P.Tipo_Declaracao AS TipoDec, CP.Numerodoccarga, CP.Numeromaster, LI.SIGLA AS SiglaII, TVT.SIGLA AS SiglaIII, TTD.SIGLA AS SiglaI, CP.Local, CP.Peso_Bruto, CP.Data_Chegada_URF_Cheg, ');
  q_Controle.sql.Add('P.Valor_FOB*PTC.Taxa_conversao AS Valor_FOB, P.Valor_FOBC*PTC.Taxa_conversaoc AS Valor_FOBC, P.DT_REGISTRO_DI, P.DT_REGISTRO_DIC, P.NR_DECLARACAO_IMP, P.NR_DECLARACAO_IMPC, P.DT_DESEMBARACO, P.DT_DESEMBARACOC, ');
  q_Controle.sql.Add('CAST(DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,P.DT_DESEMBARACO)AS REAL) AS NumDias, CAST(DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,P.DT_DESEMBARACOC)AS REAL) AS NumDiasC, CAST(DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,GETDATE())AS REAL) AS DiasVencido ');
  q_Controle.sql.Add('FROM ((Parametros AS PA LEFT JOIN ((((Importadores AS I LEFT JOIN Processos AS P ON (I.Empresa = P.Empresa) AND (I.Filial = P.Filial) AND (I.Codigo = P.Importador)) LEFT JOIN Conhecimento_Processo AS CP ON (P.Empresa = CP.Empresa) AND ');
  q_Controle.sql.Add('(P.Filial = CP.Filial) AND (P.Codigo = CP.Processo)) LEFT JOIN TAB_VIA_TRANSPORTE AS TVT ON CP.Via = TVT.Codigo) LEFT JOIN TAB_TIPO_DECLARACAO AS TTD ON P.Tipo_Declaracao = TTD.Codigo) ON (PA.Filial = I.Filial) AND (PA.Empresa = I.Empresa)) ');
  q_Controle.sql.Add('LEFT JOIN Processos_Taxas_Conversao AS PTC ON (P.Empresa = PTC.Empresa) AND (P.Filial = PTC.Filial) AND (P.Codigo = PTC.Processo)) LEFT JOIN Locais_Inventario AS LI ON (P.Local_Inventario = LI.Local) AND (P.Contrato = LI.Contrato) ');
  q_Controle.sql.Add('AND (P.Importador = LI.Importador) AND (P.Filial = LI.Filial) AND (P.Empresa = LI.Empresa) ');
  q_Controle.sql.Add('WHERE (((P.Tipo)="1" Or (P.Tipo)="11" Or (P.Tipo)="12" Or (P.Tipo)="13") AND ((PTC.Moeda)="220")) ');
  q_Controle.sql.Add('ORDER BY DATEDIFF(DAY,CP.Data_Chegada_URF_Cheg,GETDATE()), P.DT_DESEMBARACO, P.DT_DESEMBARACOC, P.Codigo ');
end;

procedure Tf_followcomercial.q_Follow_MudaSQL();
begin
  q_Follow.SQL.Clear;
  q_Follow.sql.add('SELECT F.Empresa, F.Filial, F.Processo, F.Sequencial, F.Descricao, F.Descricao_ing, F.Data, F.Hora, F.Usuario ');
  q_Follow.sql.add('FROM Parametros AS P INNER JOIN Followup_comercial AS F ON P.Filial = F.Filial AND P.Empresa = F.Empresa ');
  q_Follow.sql.add('WHERE Processo = :proc ');
  q_Follow.sql.add('ORDER BY CAST(F.Sequencial as real) ');
  q_Follow.Params[0].DataType := ftString;
end;

end.
