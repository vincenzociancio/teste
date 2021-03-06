unit u_ATAereo;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, Mask, Db, DBTables;

type
  TfrmATAereo = class(TForm)
    pnlPrincipal: TPanel;
    btnFechar: TBitBtn;
    pnlTop: TPanel;
    Label26: TLabel;
    ME_nossaref: TMaskEdit;
    pnlConteudo: TPanel;
    Label1: TLabel;
    txtAcresc: TEdit;
    btnGravar: TBitBtn;
    qrProcessos: TQuery;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosdecl: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosCliente: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosendereco: TStringField;
    qrProcessosmun: TStringField;
    qrProcessosUF: TStringField;
    qrProcessosCEP: TStringField;
    qrProcessosinsc: TStringField;
    qrProcessosValor_FOB: TFloatField;
    qrProcessosValor_CIF: TFloatField;
    qrProcessosValor_FOBC: TFloatField;
    qrProcessosValor_CIFC: TFloatField;
    qrProcessosII: TFloatField;
    qrProcessosIPI: TFloatField;
    qrProcessosTaxa_SISCOMEX: TFloatField;
    qrProcessosIIc: TFloatField;
    qrProcessosIPIc: TFloatField;
    qrProcessosTaxa_SISCOMEXc: TFloatField;
    qrProcessosNR_DECLARACAO_IMP: TStringField;
    qrProcessosNR_DECLARACAO_IMPC: TStringField;
    qrProcessosURF_chegada: TStringField;
    qrProcessosData_Chegada_URF_Cheg: TDateTimeField;
    qrProcessosDT_DESEMBARACO: TDateTimeField;
    qrProcessosURF_Despacho: TStringField;
    qrProcessosFechado: TIntegerField;
    qrProcessosAtivo: TIntegerField;
    qrProcessosImportador: TStringField;
    qrProcessosPag_proporcional: TIntegerField;
    qrProcessosResponsavel_Empresa: TStringField;
    qrProcessosResponsavel_EmpresaC: TStringField;
    qrProcessosBASE_ICMS: TIntegerField;
    qrProcessosTR_IMPRESSOES: TIntegerField;
    qrProcessosTR_IMPRESSOES_FECP: TIntegerField;
    qrProcessosNOMESUPER: TStringField;
    qrProcessosSENHASUPER: TStringField;
    qrProcessosTipo: TStringField;
    qVerificaATAereo: TQuery;
    qVerificaATAereoprocesso: TStringField;
    qVerificaATAereovalor: TFloatField;
    qOper: TQuery;
    lblValorICMS: TLabel;
    optAliq: TRadioGroup;
    lblFECP: TLabel;
    lblICMS13: TLabel;
    qVerificaATAereoAliq: TSmallintField;
    procedure btnFecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ME_nossarefChange(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure calculaICMS;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmATAereo: TfrmATAereo;
  vOper : Integer;
implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TfrmATAereo.btnFecharClick(Sender: TObject);
begin
Close;
end;

procedure TfrmATAereo.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
     frmATAereo := nil;
     f_mscomex.AcrscimoICMSATAreo1.enabled := true;
end;

procedure TfrmATAereo.FormShow(Sender: TObject);
begin
        ME_nossaref.setFocus;
        pnlConteudo.Visible:= false;
        vOper :=0;
        calculaICMS;
end;

procedure TfrmATAereo.ME_nossarefChange(Sender: TObject);
begin
     If Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8 Then
        Exit;
     If (IsClosedProcess( me_nossaref.Text, frmATAereo)) Then
       Abort;
     //--
     Screen.Cursor := crHourGlass;
     qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
     qrProcessos.Close;
     qrProcessos.Open;


    If ( Not qrProcessos.IsEmpty ) Then
    Begin
        if qrProcessosFechado.Value = 1 then
        begin
            ShowMessage('Processo fechado n�o ser� poss�vel informar valores para o ATA�reo.');
            Exit;
        end;

        if qrProcessosTipo.value <> '11' then
        begin
            ShowMessage('Esta opera��o � suportada somente por processos do tipo A�reo.');
            Exit;
        end;

        if (qrProcessosDT_DESEMBARACO.IsNull) then
        begin
            ShowMessage('Esta opera��o � suportada somente para processos desembara�ados.');
            Exit;
        end;
        if (qrProcessosURF_chegada.AsString <> '0717700') and (qrProcessosURF_chegada.AsString <> '0710203') then
        begin
            {Obs: O Rochael recomendou abortar o procedimento por seguran�a, quando houver URF de chegada diferente do RJ,
            pois outros estados trabalham com outras al�quotas.}
            ShowMessage('Aten�ao! URF de Chegada diferente do Rio de Janeiro.Opera��o cancelada.');
            Exit;
        end;
        if F_MSCOMEX.AcessaPasta(me_nossaref.Text, qrProcessosTipo.AsString, frmATAereo)
         then pnlPrincipal.Enabled := True;

        pnlConteudo.Visible := True;
        //verifica se existe valor a ser informado
        with qVerificaATAereo do
        begin
            ParamByName('pProcesso').value:=ME_nossaref.text;
            Close;
            Open;
        end;
        If ( Not qVerificaATAereo.IsEmpty ) Then
        begin
            txtAcresc.Text:=FloatToStr(qVerificaATAereovalor.Value);
            btnGravar.Enabled:=False;
            optAliq.ItemIndex:= qVerificaATAereoAliq.Value;
            txtAcresc.text:=qVerificaATAereovalor.asString;
            txtAcresc.Enabled:=False;
        end
        else
        begin
//            btnAlterar.Enabled:=False;
            btnGravar.Enabled:=True;
            optAliq.ItemIndex:= -1;
            txtAcresc.Enabled:=True;
            txtAcresc.setFocus;
        end;

//        txtAcresc.text :=  valor preenchido
        //se n�o
{        txtAcresc.Text :='';
        txtAcresc.SetFocus;}
        {Manipula o painel }
         calculaICMS;
    end;
end;

procedure TfrmATAereo.btnGravarClick(Sender: TObject);
var
  valor : Real;
begin
    if optAliq.ItemIndex = -1 then
    begin
        ShowMessage('Por favor, informe a al�quota.');
        Exit;
    end;    
    //Validar a entrada do valor
    try
       valor := strToFloat(txtAcresc.text);
    except
        Showmessage('Por favor, informe um valor v�lido.');
        txtAcresc.SetFocus;
        Exit;
    end;
    {Inserir}
    if vOper = 0 then
    begin
        try
          qOper.SQL.Clear;
          qOper.SQL.Add('INSERT INTO Acresc_ATAereo([processo],[valor], [Aliq]) VALUES(:processo, :valor, :Aliq)');
          qOper.ParamByName('processo').asString := ME_nossaref.text;
          qOper.ParamByName('valor').asFloat := valor;
          qOper.ParamByName('Aliq').AsSmallInt := optAliq.ItemIndex;          
          qOper.ExecSQL;

          ShowMessage('Valor do acr�scimo inserido com sucesso.');
        except
          showmessage('Ocorreu um erro ao inserir os valores do acr�scimo.');
          Exit;
        end;
    end;
    btnGravar.Enabled:=false;
    txtAcresc.setFocus;
    calculaICMS;
end;

procedure TfrmATAereo.calculaICMS;
var
   ATAereo, BC, ICMS, Aliq, FECP, ICMS13 : Real;
begin
   if txtAcresc.Text <> '' then
   begin
       try    
           lblValorICMS.Visible:=True;
           case optAliq.ItemIndex of
               0 : begin
                         {C�lculo 1.5 %}
                         Aliq :=1.5;
                         ATAereo:=strToFloat(txtAcresc.Text);
                         BC := ATAereo/((100-Aliq)/100);
                         ICMS := BC*(Aliq/100);

                         lblValorICMS.Caption:='Valor Total ICMS : R$ '+FloatToStrf(ICMS, fffixed, 11,3);
                   end;
               1 : begin
                         {C�lculo 3 %}
                         Aliq :=3;
                         ATAereo:=strToFloat(txtAcresc.Text);
                         BC := ATAereo/((100-Aliq)/100);
                         ICMS := BC*(Aliq/100);

                         lblValorICMS.Caption:='Valor Total ICMS : R$ '+FloatToStrf(ICMS, fffixed, 11,3);
                   end;
               2 : begin
                         {C�lculo total}
                         Aliq :=14;
                         ATAereo:=strToFloat(txtAcresc.Text);
                         BC := ATAereo/((100-Aliq)/100);
                         ICMS := BC*(Aliq/100);

                         {C�lculo 13}
                        { Aliq :=13;
                         ATAereo:=strToFloat(txtAcresc.Text);
                         BC := ATAereo/((100-Aliq)/100);
                         ICMS13 := BC*(Aliq/100);}
                         ICMS13 := (ICMS/14)*13;


//                         FECP :=ICMS-ICMS13;
                         FECP :=ICMS/14;

                         lblValorICMS.Caption:='Total ICMS : R$ '+FloatToStrf(ICMS, fffixed, 11,3);
                         lblFECP.Visible := True;
                         lblFECP.Caption := 'FECP : R$ '+FloatToStrf(FECP, fffixed, 11,3);
                         lblICMS13.Visible := True;
                         lblICMS13.Caption := 'ICMS : R$ '+FloatToStrf(ICMS13, fffixed, 11,3);
                   end;

           end;
       except
           Exit;
       end;
   end
   else
      lblValorICMS.Visible:=False;
end;

procedure TfrmATAereo.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
   CanClose := True;
end;

end.
