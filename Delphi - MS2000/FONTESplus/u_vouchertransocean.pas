unit u_vouchertransocean;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, jpeg, ExtCtrls, Mask, Buttons, Grids, DBGrids, Db, DBTables;

type
  Tf_vouchertransocean = class(TForm)
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    Panel1: TPanel;
    b_incluir: TBitBtn;
    b_alterar: TBitBtn;
    b_salvar: TBitBtn;
    b_excluir: TBitBtn;
    b_cancelar: TBitBtn;
    edVoucher: TEdit;
    p_itens: TPanel;
    Label4: TLabel;
    Label3: TLabel;
    lblImportador: TLabel;
    Label5: TLabel;
    b_incluiritem: TBitBtn;
    DBG_itens: TDBGrid;
    edRefMS: TEdit;
    DataSource1: TDataSource;
    q_Voucher: TQuery;
    q_Aux: TQuery;
    q_Itens_Voucher: TQuery;
    DataSource2: TDataSource;
    q_VoucherCodigo: TIntegerField;
    q_VoucherDescricao: TStringField;
    q_Itens_VoucherCodigo_Voucher: TIntegerField;
    q_Itens_VoucherCodigo: TIntegerField;
    q_Itens_VoucherProcesso: TStringField;
    q_Itens_VoucherRef_Cliente: TStringField;
    q_Itens_VoucherLocal: TStringField;
    q_Itens_VoucherSaldo: TFloatField;
    q_VoucherData: TDateTimeField;
    q_Itens_VoucherTipo_Processo: TStringField;
    b_imprimir: TBitBtn;
    pnlDestinatario: TPanel;
    Label26: TLabel;
    edtDestinatario: TMaskEdit;
    btnok: TBitBtn;
    btnCancelar: TBitBtn;
    chbComplementar: TCheckBox;
    Label6: TLabel;
    gbBaixa: TGroupBox;
    Label7: TLabel;
    edReceptor: TEdit;
    Label9: TLabel;
    q_VoucherReceptor: TStringField;
    edData: TEdit;
    edRecebimento: TEdit;
    q_VoucherRecebimento: TStringField;
    procedure b_incluirClick(Sender: TObject);
    procedure b_incluiritemClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure b_cancelarClick(Sender: TObject);
    procedure b_salvarClick(Sender: TObject);
    procedure b_excluirClick(Sender: TObject);
    procedure q_VoucherAfterScroll(DataSet: TDataSet);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_itensKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure b_alterarClick(Sender: TObject);
    procedure q_Itens_VoucherSaldoGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure b_imprimirClick(Sender: TObject);
    procedure btnokClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edRefMSChange(Sender: TObject);
    procedure edDataExit(Sender: TObject);
    procedure edRecebimentoExit(Sender: TObject);
    procedure edRecebimentoKeyPress(Sender: TObject; var Key: Char);
    procedure edDataKeyPress(Sender: TObject; var Key: Char);
  private
    Inclusao  : Boolean;
    Alteracao : Boolean;

    { Private declarations }
    procedure LimpaCampos;
    procedure HabilitaCampos(Habilita: Boolean);
    procedure HabilitaBotoes(Habilita : Boolean);

    procedure AtualizaGrid;
    procedure AtualizaGridItens;

    function ValidaCampos : Boolean;

    procedure ZerarVariaveis;
  public
    { Public declarations }
  end;

var
  f_vouchertransocean: Tf_vouchertransocean;

implementation

uses U_MSCOMEX, u_relvouchertransocean;

{$R *.DFM}

procedure Tf_vouchertransocean.b_incluirClick(Sender: TObject);
begin
  LimpaCampos;

  edData.Text := DateToStr(Date);

  HabilitaCampos(True);

  Inclusao  := True;
  Alteracao := False;

  b_incluir.Enabled  := False;
  b_alterar.Enabled  := False;
  b_excluir.Enabled  := False;
  b_salvar.Enabled   := True;
  b_cancelar.Enabled := True;
end;

procedure Tf_vouchertransocean.HabilitaCampos(Habilita: Boolean);
begin
  edVoucher.Enabled     := Habilita;
  edData.Enabled        := Habilita;
  edRecebimento.Enabled := Habilita;
  edReceptor.Enabled    := Habilita; 

  if Habilita
   then edVoucher.SetFocus;
end;

procedure Tf_vouchertransocean.LimpaCampos;
begin
  edVoucher.Clear;
  edData.Clear;
  edRecebimento.Clear;
  edReceptor.Clear;
end;

procedure Tf_vouchertransocean.b_incluiritemClick(Sender: TObject);
begin
  if q_VoucherCodigo.AsString <> ''
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('INSERT INTO Voucher_Transocean_Itens ');
     q_Aux.SQL.Add('      (Codigo_Voucher                ');
     q_Aux.SQL.Add('      ,Processo                      ');
     q_Aux.SQL.Add('      ,Tipo_Processo                 ');     
     q_Aux.SQL.Add('      ,Ref_Cliente                   ');
     q_Aux.SQL.Add('      ,Local                         ');
     q_Aux.SQL.Add('      ,Saldo)                        ');

     if not chbComplementar.Checked
      then begin
        q_Aux.SQL.Add(' (SELECT ' + q_VoucherCodigo.AsString + ', ');
        q_Aux.SQL.Add('         P.Codigo,         ');
        q_Aux.SQL.Add('         TP.DESCRICAO,     ');
        q_Aux.SQL.Add('         P.Codigo_Cliente, ');
        q_Aux.SQL.Add('         LI.Descricao,     ');
        q_Aux.SQL.Add('         (((SELECT ISNULL(SUM(VALOR_REGISTRADO),0) FROM NUMERARIOS_PROCESSOS WHERE PROCESSO = P.CODIGO) - (SELECT ISNULL(SUM(Valor),0) FROM CREDITOS_PROCESSOS WHERE PROCESSO = P.CODIGO))*-1) AS SALDO ');
        q_Aux.SQL.Add('    FROM Processos P INNER JOIN Tipos_de_Processos TP      ');
        q_Aux.SQL.Add('      ON P.Tipo = TP.CODIGO LEFT JOIN Locais_Inventario LI ');
        q_Aux.SQL.Add('      ON P.Importador       = LI.Importador AND            ');
        q_Aux.SQL.Add('         P.Contrato         = LI.Contrato   AND            ');
        q_Aux.SQL.Add('         P.Local_Inventario = LI.Local                     ');
        q_Aux.SQL.Add('   WHERE P.Codigo = :pREFMS)                               ');

        q_Aux.ParamByName('pREFMS').Value := edRefMS.Text;

        try
          q_Aux.ExecSQL;

          logusu('P','Incluiu Processo ' + edRefMS.Text + ' ao Voucher Transocean ' + q_VoucherCodigo.AsString);
        except
          Application.MessageBox('Erro na gravação dos Dados','Erro',MB_ICONERROR);
          Abort;
        end;
      end
      else begin
        q_Aux.SQL.Add(' (SELECT ' + q_VoucherCodigo.AsString + ', ');
        q_Aux.SQL.Add('         P.Codigo,         ');
        q_Aux.SQL.Add('         TP.DESCRICAO,     ');
        q_Aux.SQL.Add('         P.Codigo_Cliente, ');
        q_Aux.SQL.Add('         LI.Descricao,     ');
        q_Aux.SQL.Add('         ((SELECT ISNULL(SUM(VALOR_REGISTRADO),0) FROM NUMERARIOS_PROCESSOS WHERE Despesa_Cobrada = 0 AND PROCESSO = P.Codigo AND REG > (SELECT REG FROM Numerarios_Processos WHERE Numerario = ''ISS'' AND Processo = P.Codigo))*-1) AS SALDO ');
        q_Aux.SQL.Add('    FROM Processos P INNER JOIN Tipos_de_Processos TP         ');
        q_Aux.SQL.Add('      ON P.Tipo = TP.CODIGO LEFT JOIN Locais_Inventario LI    ');
        q_Aux.SQL.Add('      ON P.Importador       = LI.Importador AND               ');
        q_Aux.SQL.Add('         P.Contrato         = LI.Contrato   AND               ');
        q_Aux.SQL.Add('         P.Local_Inventario = LI.Local                        ');
        q_Aux.SQL.Add('   WHERE P.Codigo = :pREFMS)                                  ');

        q_Aux.ParamByName('pREFMS').Value := edRefMS.Text;

        try
          q_Aux.ExecSQL;

          logusu('P','Incluiu Complementar do Processo ' + edRefMS.Text + ' ao Voucher Transocean ' + q_VoucherCodigo.AsString);
        except
          Application.MessageBox('Erro na gravação dos Dados','Erro',MB_ICONERROR);
          Abort;
        end;
      end;
      
     AtualizaGridItens;

     edRefMS.Clear;
     edRefMS.SetFocus;
   end;
end;

procedure Tf_vouchertransocean.AtualizaGrid;
begin
  q_Voucher.Close;
  q_Voucher.Open;
end;

procedure Tf_vouchertransocean.AtualizaGridItens;
begin
  q_Itens_Voucher.Close;
  q_Itens_Voucher.ParamByName('pCodigo_Voucher').Value := q_VoucherCodigo.AsString;
  q_Itens_Voucher.Open;
end;

procedure Tf_vouchertransocean.FormCreate(Sender: TObject);
begin
  AtualizaGrid;
end;

procedure Tf_vouchertransocean.b_cancelarClick(Sender: TObject);
begin
  ZerarVariaveis;

  HabilitaBotoes(True);

  HabilitaCampos(False);
end;

procedure Tf_vouchertransocean.HabilitaBotoes(Habilita: Boolean);
begin
  b_incluir.Enabled  := Habilita;
  b_alterar.Enabled  := Habilita;
  b_excluir.Enabled  := Habilita;
  b_salvar.Enabled   := not Habilita;
  b_cancelar.Enabled := not Habilita;
end;

procedure Tf_vouchertransocean.b_salvarClick(Sender: TObject);
begin
  if ValidaCampos
   then begin
     HabilitaCampos(False);

     if Inclusao
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('INSERT INTO Voucher_Transocean VALUES (:p0,:p1,:p2,:p3)');
        q_Aux.Params[0].Value := edVoucher.Text;
        q_Aux.Params[1].Value := StrToDate(edData.Text);

        if (Trim(edRecebimento.Text) <> '')
         then q_Aux.Params[2].Value := edRecebimento.Text
         else q_Aux.Params[2].Value := '';

        q_Aux.Params[3].Value := edReceptor.Text;
      end;

     if Alteracao
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('UPDATE Voucher_Transocean SET DESCRICAO = :p0, DATA = :p1, RECEBIMENTO = :p2, RECEPTOR = :p3 WHERE CODIGO = :p4');
        q_Aux.Params[0].Value := edVoucher.Text;
        q_Aux.Params[1].Value := StrToDate(edData.Text);

        if (Trim(edRecebimento.Text) <> '')
         then q_Aux.Params[2].Value := edRecebimento.Text
         else q_Aux.Params[2].Value := '';

        q_Aux.Params[3].Value := edReceptor.Text;
        q_Aux.Params[4].Value := q_VoucherCodigo.AsInteger;
      end;

     try
       q_Aux.ExecSQL;

       if Inclusao
        then logusu('P','Incluiu Voucher Transocean ' + q_VoucherCodigo.AsString)
        else logusu('P','Alterou Voucher Transocean ' + q_VoucherCodigo.AsString);
     except
       ZerarVariaveis;
       Application.MessageBox('Erro na gravação dos Dados','Erro',MB_ICONERROR);
       Abort;
     end;

     AtualizaGrid;
     ZerarVariaveis;
     HabilitaBotoes(True);
   end;
end;

procedure Tf_vouchertransocean.b_excluirClick(Sender: TObject);
begin
  if Application.MessageBox('Confirma a exclusão da Voucher ?','Confirmação',MB_YESNO+MB_ICONQUESTION) = IDYES
   then begin
     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('SELECT CODIGO FROM Voucher_Transocean WHERE CODIGO = :p0');
     q_Aux.Params[0].Value := q_VoucherCodigo.AsInteger;
     q_Aux.Open;

     if q_Aux.RecordCount >= 1
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('DELETE Voucher_Transocean_Itens WHERE CODIGO_VOUCHER = :p0');
        q_Aux.Params[0].Value := q_VoucherCodigo.AsInteger;

        try
         q_Aux.ExecSQL;
        except
         Application.MessageBox('Erro na exclusão dos Dados','Erro',MB_ICONERROR);
         AtualizaGrid;
         Abort;
        end;
      end;

     q_Aux.SQL.Clear;
     q_Aux.SQL.Add('DELETE Voucher_Transocean WHERE CODIGO = :p0');
     q_Aux.Params[0].Value := q_VoucherCodigo.AsInteger;

     try
      q_Aux.ExecSQL;

      if Inclusao
       then logusu('P','Excluiu Voucher Transocean ' + q_VoucherCodigo.AsString);
     except
      Application.MessageBox('Erro na exclusão dos Dados','Erro',MB_ICONERROR);
      AtualizaGrid;
      Abort;
     end;

     LimpaCampos;

     AtualizaGrid;
     AtualizaGridItens;
   end; 
end;

procedure Tf_vouchertransocean.q_VoucherAfterScroll(DataSet: TDataSet);
begin
  if q_Voucher.RecordCount > 0
   then begin
     edVoucher.Text     := q_VoucherDescricao.AsString;
     edData.Text        := DateTimeToStr(q_VoucherData.AsDateTime);
     edRecebimento.Text := q_VoucherRecebimento.AsString;
     edReceptor.Text    := q_VoucherReceptor.AsString;
   end
   else LimpaCampos;

  AtualizaGridItens;
end;

procedure Tf_vouchertransocean.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure Tf_vouchertransocean.FormClose(Sender: TObject;
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
  f_vouchertransocean := nil;
  F_MSCOMEX.VoucherTransocean1.Enabled := True;
end;

procedure Tf_vouchertransocean.DBG_itensKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if (Key = vk_delete)
   then begin
     if q_Itens_VoucherProcesso.AsString <> ''
      then begin
        q_Aux.SQL.Clear;
        q_Aux.SQL.Add('DELETE FROM Voucher_Transocean_Itens WHERE CODIGO_VOUCHER =:pVoucher AND PROCESSO =:pRefms AND CODIGO =:pCodigo ');
        q_Aux.ParamByName('pVoucher').Value := q_VoucherCodigo.AsInteger;
        q_Aux.ParamByName('pRefms').Value   := q_Itens_VoucherProcesso.AsString;
        q_Aux.ParamByName('pCodigo').Value  := q_Itens_VoucherCodigo.AsInteger;

        try
          q_Aux.ExecSQL;

          logusu('P','Excluiu Processo ' + edRefMS.Text + ' do Voucher Transocean ' + q_VoucherCodigo.AsString);
        except
          Application.MessageBox('Erro na gravação dos Dados','Erro',MB_ICONERROR);
          Abort;
        end;

        AtualizaGridItens;

        edRefMS.Clear;
        edRefMS.SetFocus;
      end;
   end;
end;

procedure Tf_vouchertransocean.b_alterarClick(Sender: TObject);
begin
  HabilitaCampos(True);

  Inclusao  := False;
  Alteracao := True;

  b_incluir.Enabled  := False;
  b_alterar.Enabled  := False;
  b_excluir.Enabled  := False;
  b_salvar.Enabled   := True;  
  b_cancelar.Enabled := True;
end;

procedure Tf_vouchertransocean.q_Itens_VoucherSaldoGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := FormatFloat('0.00',q_Itens_VoucherSaldo.AsFloat*-1);
end;

procedure Tf_vouchertransocean.b_imprimirClick(Sender: TObject);
begin
  pnlDestinatario.Visible := True;

  edtDestinatario.Clear;
  edtDestinatario.SetFocus;
end;

procedure Tf_vouchertransocean.btnokClick(Sender: TObject);
begin
  if not Assigned(f_relvouchertransocean)
   then Application.CreateForm(Tf_relvouchertransocean, f_relvouchertransocean);

  f_relvouchertransocean.QRL_NOMECOMPLETO.Caption := v_nomecompleto;
  f_relvouchertransocean.QRL_DESTINATARIO.Caption := edtDestinatario.Text;

  pnlDestinatario.Visible := False;

  edtDestinatario.Clear;

  f_relvouchertransocean.Preview;
end;

procedure Tf_vouchertransocean.btnCancelarClick(Sender: TObject);
begin
  edtDestinatario.Clear;

  pnlDestinatario.Visible := False;
end;

procedure Tf_vouchertransocean.edRefMSChange(Sender: TObject);
begin
  if (Length(edRefMS.Text) = 8)
   then begin
     try
       q_Aux.SQL.Clear;
       q_Aux.SQL.Add(' SELECT I.Razao_Social                         ');
       q_Aux.SQL.Add('   FROM Processos P INNER JOIN Importadores I  ');
       q_Aux.SQL.Add('     ON P.Empresa    = I.Empresa AND           ');
       q_Aux.SQL.Add('        P.Filial     = I.Filial  AND           ');
       q_Aux.SQL.Add('        P.Importador = I.Codigo                ');
       q_Aux.SQL.Add('  WHERE P.Importador IN (''2'',''53'',''239'',''273'',''274'',''275'',''276'',''277'',''367'') ');
       q_Aux.SQL.Add('    AND P.Codigo = :pRef_MS                    ');
       q_Aux.Params[0].Value := edRefMS.Text;
       q_Aux.Open;

       b_incluiritem.Enabled := q_Aux.RecordCount = 1;

       if q_Aux.RecordCount > 0
        then begin
         lblImportador.Caption := q_Aux.FieldByName('RAZAO_SOCIAL').AsString;
         b_incluiritem.SetFocus;
        end;
     finally
       q_Aux.Close;
     end;
   end
   else begin
     lblImportador.Caption := '';
     b_incluiritem.Enabled := False;
   end;
end;

procedure Tf_vouchertransocean.edDataExit(Sender: TObject);
begin
  try
    StrtoDate(edData.Text);
  except
    edData.Clear;
  end;
end;

procedure Tf_vouchertransocean.edRecebimentoExit(Sender: TObject);
begin
  try
    StrtoDate(edRecebimento.Text);
  except
    edRecebimento.Clear; 
  end;
end;

procedure Tf_vouchertransocean.edRecebimentoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9','/',#8])
   then Key := #0;
end;

procedure Tf_vouchertransocean.edDataKeyPress(Sender: TObject;
  var Key: Char);
begin
  if not (Key in ['0'..'9','/',#8])
   then Key := #0;
end;

procedure Tf_vouchertransocean.ZerarVariaveis;
begin
  Inclusao  := False;
  Alteracao := False;
end;

function Tf_vouchertransocean.ValidaCampos: Boolean;
begin
  Result := True;

  if (Trim(edVoucher.Text) = '')
   then begin
     Application.MessageBox('Favor informar o Voucher.','Alerta',MB_ICONWARNING);
     edVoucher.SetFocus;
     Result := False;
     Exit;
   end;  

  try
    if (edData.Text <> '  /  /    ')
     then StrToDate(edData.Text);
  except
    Application.MessageBox('Data inválida!','Alerta',MB_ICONWARNING);
    edData.SetFocus;
    Result := False;
    Exit;
  end;

  try
    if (edRecebimento.Text <> '')
     then StrToDate(edRecebimento.Text);
  except
    Application.MessageBox('Data de Recebimento inválida!','Alerta',MB_ICONWARNING);
    edRecebimento.SetFocus;
    Result := False;
    Exit;
  end;
end;

end.

