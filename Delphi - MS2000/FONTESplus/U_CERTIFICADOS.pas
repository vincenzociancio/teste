unit U_certificados;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBTables, Buttons, Mask, DBCtrls, ComCtrls, Db, Grids, DBGrids,
  StdCtrls, ExtCtrls;

type
  TF_Certificados = class(TForm)
    pnlPrincipal: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Bevel1: TBevel;
    cmbTipo: TDBLookupComboBox;
    btnNovo: TBitBtn;
    btnExcluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnGravar: TBitBtn;
    btnCancelar: TBitBtn;
    btnLocalizar: TBitBtn;
    btnImprime: TBitBtn;
    btnFecha: TBitBtn;
    pnlLocalizar: TPanel;
    Label26: TLabel;
    L_busca: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    btnOK: TBitBtn;
    edtLocalizar: TEdit;
    DBGrid1: TDBGrid;
    T_parametros: TTable;
    T_parametrosEmpresa: TStringField;
    T_parametrosFilial: TStringField;
    DS_parametros: TDataSource;
    T_Importadores: TTable;
    T_Contratos: TTable;
    T_Locais: TTable;
    T_Tipo: TTable;
    DS_Importadores: TDataSource;
    DS_Contratos: TDataSource;
    DS_Locais: TDataSource;
    DS_Tipo: TDataSource;
    T_Certificados: TTable;
    DS_Certificados: TDataSource;
    Label1: TLabel;
    edtObs: TDBEdit;
    Q_Localizar: TQuery;
    DS_Localizar: TDataSource;
    cmbImport: TDBLookupComboBox;
    cmbContrato: TDBLookupComboBox;
    Label16: TLabel;
    Label17: TLabel;
    cmbLocal: TDBLookupComboBox;
    Label13: TLabel;
    Label22: TLabel;
    T_ImportadoresEmpresa: TStringField;
    T_ImportadoresFilial: TStringField;
    T_ImportadoresCodigo: TStringField;
    T_ImportadoresRazoSocial: TStringField;
    edtCertificado: TDBEdit;
    T_CertificadosEmpresa: TStringField;
    T_CertificadosFilial: TStringField;
    T_CertificadosImportador: TStringField;
    T_CertificadosContrato: TStringField;
    T_CertificadosLocal: TStringField;
    T_Certificadosreg: TAutoIncField;
    T_CertificadosTipo: TStringField;
    T_CertificadosVigencia_inicial: TDateTimeField;
    T_CertificadosVigencia_final: TDateTimeField;
    T_CertificadosObservacoes: TStringField;
    edtImport: TEdit;
    edtContrato: TEdit;
    edtLocal: TEdit;
    T_ContratosEmpresa: TStringField;
    T_ContratosFilial: TStringField;
    T_ContratosImportador: TStringField;
    T_ContratosContrato: TStringField;
    T_ContratosDescricao: TStringField;
    T_ContratosVigencia_inicial: TDateTimeField;
    T_ContratosVigencia_final: TDateTimeField;
    T_ContratosTipo: TStringField;
    T_LocaisEmpresa: TStringField;
    T_LocaisFilial: TStringField;
    T_LocaisImportador: TStringField;
    T_LocaisContrato: TStringField;
    T_LocaisLocal: TStringField;
    T_LocaisDescricao: TStringField;
    T_LocaisTipo_local: TStringField;
    T_LocaisProcesso_Adm: TStringField;
    T_LocaisCNPJ: TStringField;
    T_LocaisUnidade_Jur: TStringField;
    T_LocaisFiel_nome: TStringField;
    T_LocaisFiel_cpf: TStringField;
    Label15: TLabel;
    Label2: TLabel;
    calInicial: TMonthCalendar;
    edtInicial: TEdit;
    calFinal: TMonthCalendar;
    Q_LocalizarRazao: TStringField;
    Q_LocalizarDescCon: TStringField;
    Q_LocalizarDescLoc: TStringField;
    Q_LocalizarObs: TStringField;
    Q_LocalizarVigIni: TDateField;
    Q_LocalizarVigFin: TDateField;
    Q_LocalizarReg: TAutoIncField;
    edtFinal: TEdit;
    procedure btnFechaClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure T_CertificadosAfterScroll(DataSet: TDataSet);
    procedure T_CertificadosImportadorChange(Sender: TField);
    procedure T_CertificadosContratoChange(Sender: TField);
    procedure T_ImportadoresAfterOpen(DataSet: TDataSet);
    procedure T_ContratosAfterOpen(DataSet: TDataSet);
    procedure T_LocaisAfterOpen(DataSet: TDataSet);
    procedure edtImportChange(Sender: TObject);
    procedure edtContratoChange(Sender: TObject);
    procedure edtLocalChange(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnLocalizarClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure calInicialClick(Sender: TObject);
    procedure calInicialGetMonthInfo(Sender: TObject; Month: Cardinal;
      var MonthBoldInfo: Cardinal);
    procedure edtInicialEnter(Sender: TObject);
    procedure edtInicialExit(Sender: TObject);
    procedure edtInicialChange(Sender: TObject);
    procedure edtFinalChange(Sender: TObject);
    procedure edtFinalEnter(Sender: TObject);
    procedure edtFinalExit(Sender: TObject);
    procedure calFinalClick(Sender: TObject);
    procedure calFinalGetMonthInfo(Sender: TObject; Month: Cardinal;
      var MonthBoldInfo: Cardinal);
    procedure btnOKClick(Sender: TObject);
    procedure edtLocalizarChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
   F_Certificados: TF_Certificados;
   op:integer;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_Certificados.btnFechaClick(Sender: TObject);
begin
     Close;
end;

procedure TF_Certificados.btnNovoClick(Sender: TObject);
begin
     T_Certificados.Insert;
     btnNovo.Enabled:=False;
     btnExcluir.Enabled:=False;
     btnAlterar.Enabled:=False;
     btnLocalizar.Enabled:=False;
     btnCancelar.Enabled:=True;
     btnGravar.Enabled:=True;
     cmbTipo.Enabled:=True;
     edtInicial.Enabled:=True;
     edtInicial.Clear;
     edtFinal.Enabled:=True;
     edtFinal.Clear;
     edtImport.Enabled:=True;
     edtImport.Clear;
     cmbImport.Enabled:=True;
     edtContrato.Enabled:=True;
     edtContrato.Clear;
     cmbContrato.Enabled:=True;
     edtLocal.Enabled:=True;
     edtLocal.Clear;
     cmbLocal.Enabled:=True;
     edtObs.Enabled:=True;
     cmbTipo.SetFocus;
     op:=1;
end;

procedure TF_Certificados.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     action := cafree;
     f_certificados := nil;
     f_mscomex.vencimentos1.enabled := true;
end;

procedure TF_Certificados.T_CertificadosAfterScroll(DataSet: TDataSet);
begin
     if T_CertificadosVigencia_Inicial.IsNull then
        begin
          edtInicial.Clear;
          calInicial.Date:=Date;
        end
     else
        begin
          calInicial.Date:=T_CertificadosVigencia_Inicial.Value;
        end;
     if T_CertificadosVigencia_Final.IsNull then
       begin
          edtFinal.Clear;
          calFinal.Date:=Date;
       end
     else
       begin
          calFinal.Date:=T_CertificadosVigencia_Final.Value;
       end;
//     T_Importadores.FindKey([t_parametrosempresa.asstring,t_parametrosfilial.asstring,Q_CertificadoCodigo.asstring]);
end;

procedure TF_Certificados.T_CertificadosImportadorChange(Sender: TField);
begin
     if T_Certificados.State in [dsInsert,dsEdit] then
       begin
         T_CertificadosContrato.Clear;
         edtContrato.Clear;
         T_CertificadosLocal.Clear;
         edtLocal.Clear;
       end;
end;

procedure TF_Certificados.T_CertificadosContratoChange(Sender: TField);
begin
     if T_Certificados.State in [dsInsert,dsEdit] then
       begin
         T_CertificadosLocal.Clear;
         edtLocal.Clear;
       end;
end;

procedure TF_Certificados.T_ImportadoresAfterOpen(DataSet: TDataSet);
begin
     cmbContrato.ListField:='';
     edtImport.Text:=T_ImportadoresCodigo.AsString;
     cmbContrato.ListField:='Descricao';
end;

procedure TF_Certificados.T_ContratosAfterOpen(DataSet: TDataSet);
begin
     cmbLocal.ListField:='';
     edtContrato.Text:=T_ContratosContrato.AsString;
     cmbLocal.ListField:='Descricao';
end;

procedure TF_Certificados.T_LocaisAfterOpen(DataSet: TDataSet);
begin
     edtLocal.Text:=T_LocaisLocal.AsString;
end;

procedure TF_Certificados.edtImportChange(Sender: TObject);
begin
     if T_Certificados.State in [dsInsert,dsEdit] then
       T_CertificadosImportador.AsString:=edtImport.Text;
end;

procedure TF_Certificados.edtContratoChange(Sender: TObject);
begin
     if T_Certificados.State in [dsInsert,dsEdit] then
       T_CertificadosContrato.AsString:=edtContrato.Text;
end;

procedure TF_Certificados.edtLocalChange(Sender: TObject);
begin
     if T_Certificados.State in [dsInsert,dsEdit] then
       T_CertificadosLocal.AsString:=edtLocal.Text;
end;

procedure TF_Certificados.btnAlterarClick(Sender: TObject);
begin
     T_Certificados.Edit;
     btnNovo.Enabled:=False;
     btnExcluir.Enabled:=False;
     btnAlterar.Enabled:=False;
     btnLocalizar.Enabled:=False;
     btnCancelar.Enabled:=True;
     btnGravar.Enabled:=True;
     cmbTipo.Enabled:=True;
     edtInicial.Enabled:=True;
     edtFinal.Enabled:=True;
     edtImport.Enabled:=True;
     cmbImport.Enabled:=True;
     edtContrato.Enabled:=True;
     cmbContrato.Enabled:=True;
     edtLocal.Enabled:=True;
     cmbLocal.Enabled:=True;
     edtObs.Enabled:=True;
     cmbTipo.SetFocus;
     op:=2;
end;

procedure TF_Certificados.btnExcluirClick(Sender: TObject);
begin
        if MessageDlg('Confirma exclusão deste Certificado?', mtConfirmation,[mbYes, mbNo], 0) = mrYes then begin
           T_Certificados.Delete;
           MessageDlg('Certificado excluído!', mtInformation,[mbOk], 0);
        end;
        btnNovo.SetFocus;
end;

procedure TF_Certificados.btnCancelarClick(Sender: TObject);
begin
     T_Certificados.Cancel;
     btnNovo.Enabled:=True;
     btnExcluir.Enabled:=True;
     btnAlterar.Enabled:=True;
     btnLocalizar.Enabled:=True;
     btnCancelar.Enabled:=False;
     btnGravar.Enabled:=False;
     edtObs.Enabled:=False;
     edtInicial.Enabled:=False;
     edtFinal.Enabled:=False;
     edtImport.Enabled:=False;
     cmbImport.Enabled:=False;
     edtContrato.Enabled:=False;
     cmbContrato.Enabled:=False;
     edtLocal.Enabled:=False;
     cmbLocal.Enabled:=False;
     cmbTipo.Enabled:=False;
     btnNovo.SetFocus;
end;

procedure TF_Certificados.btnLocalizarClick(Sender: TObject);
begin
        pnlLocalizar.Top:=4;
        pnlLocalizar.Left:=96;
        pnlLocalizar.Visible:=True;
        pnlPrincipal.Enabled:=False;
        edtLocalizar.SetFocus;
end;

procedure TF_Certificados.btnGravarClick(Sender: TObject);
begin
  try
     if op = 1 Then
       begin
         T_CertificadosEmpresa.AsString := T_ParametrosEmpresa.AsString;
         T_CertificadosFilial.AsString  := T_ParametrosFilial.AsString;
         T_Certificados.Post;
         MessageDlg('Certificado incluido com sucesso!', mtInformation,[mbOk], 0);
       end
     else
       begin
         T_Certificados.Post;
         MessageDlg('Alteração do Certificado feita com sucesso!', mtInformation,[mbOk], 0);
       end;
     btnNovo.Enabled:=True;
     btnExcluir.Enabled:=True;
     btnAlterar.Enabled:=True;
     btnLocalizar.Enabled:=True;
     btnCancelar.Enabled:=False;
     btnGravar.Enabled:=False;
     cmbTipo.Enabled:=False;
     edtInicial.Enabled:=False;
     edtFinal.Enabled:=False;
     edtImport.Enabled:=False;
     cmbImport.Enabled:=False;
     edtContrato.Enabled:=False;
     cmbContrato.Enabled:=False;
     edtLocal.Enabled:=False;
     cmbLocal.Enabled:=False;
     edtObs.Enabled:=False;
     btnNovo.SetFocus;
  except
     if cmbImport.Text = '' then
        cmbImport.SetFocus
     else
       if cmbContrato.Text = '' then
          cmbContrato.SetFocus
       else
         if cmbLocal.Text = '' then
            cmbLocal.SetFocus;
     MessageDlg('Dados incompletos!', mtInformation,[mbOk], 0);
  end;
end;

procedure TF_Certificados.calInicialClick(Sender: TObject);
begin
     edtInicial.Text:=DateToStr(calInicial.Date);
end;

procedure TF_Certificados.calInicialGetMonthInfo(Sender: TObject;
  Month: Cardinal; var MonthBoldInfo: Cardinal);
begin
     edtInicial.Text:=DateToStr(calInicial.Date);
end;

procedure TF_Certificados.edtInicialEnter(Sender: TObject);
begin
     calInicial.Visible:=True;
end;

procedure TF_Certificados.edtInicialExit(Sender: TObject);
begin
 if T_Certificados.State in [dsInsert,dsEdit] then
   begin
     if (edtInicial.Text <> '') and (length(edtInicial.Text) < 10) then
       try
          calInicial.Date:=StrToDate(edtInicial.Text);
          edtInicial.Text:=DateToStr(calInicial.Date);
          T_CertificadosVigencia_Inicial.Value:=StrToDate(edtInicial.Text);
          calInicial.Visible:=False;
          calFinal.Date:=calInicial.Date;
          if (edtFinal.Text <> '') and (StrToDate(edtInicial.Text) > StrToDate(edtFinal.Text)) then
            edtFinal.Clear;
       except
          MessageDlg('Digite uma data para a Vigência Inicial válida!', mtInformation,[mbOk], 0);
          edtInicial.SetFocus;
       end
     else
       begin
         T_CertificadosVigencia_Inicial.AsString:=edtInicial.Text;
         calInicial.Visible:=False;
         calFinal.Date:=calInicial.Date;
         if edtInicial.Text = '' then
           begin
             cmbImport.SetFocus;
             edtFinal.Clear;
             T_CertificadosVigencia_Final.Clear;
           end
         else
           if (edtFinal.Text <> '') and (StrToDate(edtInicial.Text) > StrToDate(edtFinal.Text)) then
             begin
               edtFinal.Clear;
               T_CertificadosVigencia_Final.Clear;
             end;
       end;
   end;
end;

procedure TF_Certificados.edtInicialChange(Sender: TObject);
begin
   if T_Certificados.State in [dsInsert,dsEdit] then
     if length(edtInicial.Text) = 10 then
       begin
         try
            calInicial.Date:=StrToDate(edtInicial.Text);
            T_CertificadosVigencia_Inicial.Value:=calInicial.Date;
         except
            MessageDlg('Digite uma data para a Vigência Inicial válida!', mtInformation,[mbOk], 0);
            T_CertificadosVigencia_Inicial.Value:=calInicial.Date;
         end;
       end
end;

procedure TF_Certificados.edtFinalChange(Sender: TObject);
begin
 if T_Certificados.State in [dsInsert,dsEdit] then
   begin
     if length(edtFinal.Text) = 10 then
       begin
         try
            if (edtInicial.Text <> '') then
              begin
                if StrToDate(edtInicial.Text) <= StrToDate(edtFinal.Text) then
                  calFinal.Date:=StrToDate(edtFinal.Text)
                else
                  begin
                    calFinal.Date:=calInicial.Date;
                    MessageDlg('Data da Vigência Inicial é inferior a Final!', mtInformation,[mbOk], 0);
                    edtFinal.Text:=DateToStr(calFinal.Date);
                  end;
                T_CertificadosVigencia_Final.Value:=calFinal.Date;
              end;
         except
            MessageDlg('Digite uma data para a Vigência Final válida!', mtInformation,[mbOk], 0);
            T_CertificadosVigencia_Final.AsString:='';
         end;
       end;
   end;
end;

procedure TF_Certificados.edtFinalEnter(Sender: TObject);
begin
     calFinal.Visible:=True;
end;

procedure TF_Certificados.edtFinalExit(Sender: TObject);
begin
 if T_Certificados.State in [dsInsert,dsEdit] then
   if edtInicial.Text = '' then
     begin
       MessageDlg('Digite uma data para a Vigência Inicial!', mtInformation,[mbOk], 0);
       calFinal.Visible:=False;
       edtInicial.SetFocus;
       edtFinal.Clear;
     end
   else
     if (edtFinal.Text <> '') and (length(edtFinal.Text) < 10) then
       try
          calFinal.Date:=StrToDate(edtFinal.Text);
          edtFinal.Text:=DateToStr(calFinal.Date);
          T_CertificadosVigencia_Final.Value:=StrToDate(edtFinal.Text);
          calFinal.Visible:=False;
       except
          MessageDlg('Digite uma data para a Vigência Final válida!', mtInformation,[mbOk], 0);
          edtFinal.SetFocus;
       end
     else
       begin
         calFinal.Visible:=False;
         T_CertificadosVigencia_Final.AsString:=edtFinal.Text;
       end;
end;

procedure TF_Certificados.calFinalClick(Sender: TObject);
begin
     edtFinal.Text:=DateToStr(calFinal.Date);
end;

procedure TF_Certificados.calFinalGetMonthInfo(Sender: TObject;
  Month: Cardinal; var MonthBoldInfo: Cardinal);
begin
     edtFinal.Text:=DateToStr(calFinal.Date);
end;

procedure TF_Certificados.btnOKClick(Sender: TObject);
begin
        pnlLocalizar.Visible:=False;
        pnlPrincipal.Enabled:=True;
        btnNovo.SetFocus;
end;

procedure TF_Certificados.edtLocalizarChange(Sender: TObject);
begin
     Q_Localizar.Close;
     Q_Localizar.SQL.Clear;
     Q_Localizar.SQL.Add('SELECT C.reg As Reg, I.[Razão Social] As Razao, Con.Descricao As DescCon, ');
     Q_Localizar.SQL.Add('L.Descricao As DescLoc, C.Observacoes As Obs, ');
     Q_Localizar.SQL.Add('C.Vigencia_inicial As VigIni, C.Vigencia_final As VigFin ');
     Q_Localizar.SQL.Add('FROM Contratos Con INNER JOIN (Importadores I INNER JOIN (Locais_Inventario L ');
     Q_Localizar.SQL.Add('INNER JOIN Certificados C ON (L.Local = C.Local) AND ');
     Q_Localizar.SQL.Add('(L.Contrato = C.Contrato) AND ');
     Q_Localizar.SQL.Add('(L.Importador = C.Importador) AND ');
     Q_Localizar.SQL.Add('(L.Filial = C.Filial) AND ');
     Q_Localizar.SQL.Add('(L.Empresa = C.Empresa)) ON ');
     Q_Localizar.SQL.Add('(I.Codigo = C.Importador) AND ');
     Q_Localizar.SQL.Add('(I.Filial = C.Filial) AND ');
     Q_Localizar.SQL.Add('(I.Empresa = C.Empresa)) ON ');
     Q_Localizar.SQL.Add('(Con.Contrato = C.Contrato) AND ');
     Q_Localizar.SQL.Add('(Con.Importador = C.Importador) AND ');
     Q_Localizar.SQL.Add('(Con.Filial = C.Filial) AND ');
     Q_Localizar.SQL.Add('(Con.Empresa = C.Empresa) AND ');
     Q_Localizar.SQL.Add('(Con.Empresa = C.Empresa) ');
     Q_Localizar.SQL.Add('WHERE C.Empresa = "'+T_parametrosempresa.AsString+'" ');
     Q_Localizar.SQL.Add('AND C.Filial = "'+T_parametrosfilial.AsString+'" ');
     if edtLocalizar.Text <> '' Then
       Q_Localizar.SQL.Add('AND I.[Razão Social] Like "*' +edtLocalizar.Text+ '*" ');
     Q_Localizar.SQL.Add('ORDER BY I.[Razão Social]');
     Q_Localizar.ExecSQL;
     Q_Localizar.Active := true;
end;

procedure TF_Certificados.FormActivate(Sender: TObject);
begin
     F_Certificados.Left := 0;
     F_Certificados.top  := 0;
end;

end.
