unit u_ConsumoDeEnergia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, Buttons, Grids, Db, DBTables;

type
  TfrmConsumoDeEnergia = class(TForm)
    StringGrid1: TStringGrid;
    StringGrid2: TStringGrid;
    StringGrid3: TStringGrid;
    StringGrid4: TStringGrid;
    StringGrid5: TStringGrid;
    qConsumoDeEnergia: TQuery;
    qConsumoDeEnergiapk_id: TAutoIncField;
    qConsumoDeEnergiaano: TIntegerField;
    qConsumoDeEnergiames: TIntegerField;
    qConsumoDeEnergiaconta_luz_cs: TFloatField;
    qConsumoDeEnergiaconta_lus_dg: TFloatField;
    qConsumoDeEnergiaefetivo_mensal: TIntegerField;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnSair: TBitBtn;
    btnSalvar: TBitBtn;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    qRetornaMes: TQuery;
    qInsereConsumo: TQuery;
    qAlteraConsumo: TQuery;
    qRetornaMesPK_ID: TAutoIncField;
    qRetornaMesAno: TIntegerField;
    qRetornaMesMes: TIntegerField;
    qRetornaMesConta_Luz_CS: TFloatField;
    qRetornaMesConta_Lus_DG: TFloatField;
    qRetornaMesEfetivo_Mensal: TIntegerField;
    btnCancelar: TBitBtn;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    txtAno: TEdit;
    txtMes: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    txtContaCS: TEdit;
    txtContaDG: TEdit;
    txtEfetivo: TEdit;
    qConsumoPorMes: TQuery;
    qConsumoPorMesPK_ID: TAutoIncField;
    qConsumoPorMesAno: TIntegerField;
    qConsumoPorMesMes: TIntegerField;
    qConsumoPorMesConta_Luz_CS: TFloatField;
    qConsumoPorMesConta_Lus_DG: TFloatField;
    qConsumoPorMesEfetivo_Mensal: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure txtAnoChange(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    function Year(Data: TDateTime): Integer;
    function Month(Data: TDateTime): Integer;
    procedure CarregaListGrids;
    procedure FocusGrid1(i : Integer);
    procedure HabilitarTexto(Hab : Boolean);
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsumoDeEnergia: TfrmConsumoDeEnergia;
  vOper : String;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TfrmConsumoDeEnergia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     Action := caFree;
     frmConsumoDeEnergia := Nil;
     f_mscomex.ConsumodeEnergia1.Enabled := True;
end;

procedure TfrmConsumoDeEnergia.CarregaListGrids();
var
  i, j : integer;

begin
    {Prepara as células Cabeçalho}
     with StringGrid1 do
     begin
       Cells[0,0] := 'Jan';
       Cells[1,0] := 'Fev';
       Cells[2,0] := 'Mar';
       Cells[3,0] := 'Abr';
       Cells[4,0] := 'Mai';
       Cells[5,0] := 'Jun';
       Cells[6,0] := 'Jul';
       Cells[7,0] := 'Ago';
       Cells[8,0] := 'Set';
       Cells[9,0] := 'Out';
       Cells[10,0] := 'Nov';
       Cells[11,0] := 'Dez';
     end;

     with StringGrid2 do
     begin
       Cells[0,0] := 'Jan';
       Cells[1,0] := 'Fev';
       Cells[2,0] := 'Mar';
       Cells[3,0] := 'Abr';
       Cells[4,0] := 'Mai';
       Cells[5,0] := 'Jun';
       Cells[6,0] := 'Jul';
       Cells[7,0] := 'Ago';
       Cells[8,0] := 'Set';
       Cells[9,0] := 'Out';
       Cells[10,0] := 'Nov';
       Cells[11,0] := 'Dez';
     end;

     with StringGrid3 do
     begin
       Cells[0,0] := 'Jan';
       Cells[1,0] := 'Fev';
       Cells[2,0] := 'Mar';
       Cells[3,0] := 'Abr';
       Cells[4,0] := 'Mai';
       Cells[5,0] := 'Jun';
       Cells[6,0] := 'Jul';
       Cells[7,0] := 'Ago';
       Cells[8,0] := 'Set';
       Cells[9,0] := 'Out';
       Cells[10,0] := 'Nov';
       Cells[11,0] := 'Dez';
     end;

     with StringGrid4 do
     begin
       Cells[0,0] := 'Jan';
       Cells[1,0] := 'Fev';
       Cells[2,0] := 'Mar';
       Cells[3,0] := 'Abr';
       Cells[4,0] := 'Mai';
       Cells[5,0] := 'Jun';
       Cells[6,0] := 'Jul';
       Cells[7,0] := 'Ago';
       Cells[8,0] := 'Set';
       Cells[9,0] := 'Out';
       Cells[10,0] := 'Nov';
       Cells[11,0] := 'Dez';
     end;

     with StringGrid5 do
     begin
       Cells[0,0] := 'Jan';
       Cells[1,0] := 'Fev';
       Cells[2,0] := 'Mar';
       Cells[3,0] := 'Abr';
       Cells[4,0] := 'Mai';
       Cells[5,0] := 'Jun';
       Cells[6,0] := 'Jul';
       Cells[7,0] := 'Ago';
       Cells[8,0] := 'Set';
       Cells[9,0] := 'Out';
       Cells[10,0] := 'Nov';
       Cells[11,0] := 'Dez';
     end;

     {----------------------------------------------} 
     {-----------------Células Valores--------------}
     {Foi mal troquei o z pelo s kkkkkkkkkkkkkkkk errei na digitação rsrsrsrs}
     While Not qConsumoDeEnergia.Eof Do
     Begin
         with StringGrid1 do
         begin
           case qConsumoDeEnergiames.Value of
                 1  :        Cells[0,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value) ;
                 2  :        Cells[1,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
                 3  :        Cells[2,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
                 4  :        Cells[3,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
                 5  :        Cells[4,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
                 6  :        Cells[5,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
                 7  :        Cells[6,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
                 8  :        Cells[7,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
                 9  :        Cells[8,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
                 10 :        Cells[9,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
                 11 :        Cells[10,1] := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
                 12 :        Cells[11,1] := FormatFloat('0.##', qConsumoDeEnergiaconta_luz_cs.Value);
           end;
         end;
         qConsumoDeEnergia.Next;
     End;
     qConsumoDeEnergia.First;
     While Not qConsumoDeEnergia.Eof Do
     Begin
         with StringGrid2 do
         begin
           case qConsumoDeEnergiames.Value of
                 1  :        Cells[0,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value) ;
                 2  :        Cells[1,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
                 3  :        Cells[2,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
                 4  :        Cells[3,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
                 5  :        Cells[4,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
                 6  :        Cells[5,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
                 7  :        Cells[6,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
                 8  :        Cells[7,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
                 9  :        Cells[8,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
                 10 :        Cells[9,1]  := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
                 11 :        Cells[10,1] := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
                 12 :        Cells[11,1] := FormatFloat('0.##', qConsumoDeEnergiaconta_lus_dg.Value);
           end;
         end;
         qConsumoDeEnergia.Next;
     End;

     qConsumoDeEnergia.First;
     While Not qConsumoDeEnergia.Eof Do
     Begin
         with StringGrid3 do
         begin
           case qConsumoDeEnergiames.Value of
                 1  :        Cells[0,1]  := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value)) ;
                 2  :        Cells[1,1]  := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
                 3  :        Cells[2,1]  := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
                 4  :        Cells[3,1]  := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
                 5  :        Cells[4,1]  := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
                 6  :        Cells[5,1]  := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
                 7  :        Cells[6,1]  := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
                 8  :        Cells[7,1]  := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
                 9  :        Cells[8,1]  := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
                 10 :        Cells[9,1]  := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
                 11 :        Cells[10,1] := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
                 12 :        Cells[11,1] := FormatFloat('0.##', (qConsumoDeEnergiaconta_luz_cs.Value) + (qConsumoDeEnergiaconta_lus_dg.Value));
           end;
         end;
         qConsumoDeEnergia.Next;
     End;

     qConsumoDeEnergia.First;
     While Not qConsumoDeEnergia.Eof Do
     Begin
         with StringGrid4 do
         begin
           case qConsumoDeEnergiames.Value of
                 1  :        Cells[0,1]  := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 2  :        Cells[1,1]  := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 3  :        Cells[2,1]  := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 4  :        Cells[3,1]  := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 5  :        Cells[4,1]  := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 6  :        Cells[5,1]  := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 7  :        Cells[6,1]  := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 8  :        Cells[7,1]  := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 9  :        Cells[8,1]  := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 10 :        Cells[9,1]  := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 11 :        Cells[10,1] := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
                 12 :        Cells[11,1] := IntToStr(qConsumoDeEnergiaefetivo_mensal.Value);
           end;
         end;
         qConsumoDeEnergia.Next;
     End;


     qConsumoDeEnergia.First;
     While Not qConsumoDeEnergia.Eof Do
     Begin
         with StringGrid5 do
         begin
           case qConsumoDeEnergiames.Value of
                 1  :        Cells[0,1]  := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                 2  :        Cells[1,1]  := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                 3  :        Cells[2,1]  := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                 4  :        Cells[3,1]  := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                 5  :        Cells[4,1]  := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                 6  :        Cells[5,1]  := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                 7  :        try
                                Cells[6,1]  := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                             except
                                Cells[6,1]  := '0';
                             end;   
                 8  :        try
                                Cells[7,1]  := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                             except
                                Cells[7,1]  := '0';
                             end;
                 9  :        try
                                Cells[8,1]  := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                             except
                                Cells[8,1]  := '0';
                             end;   
                 10 :        Cells[9,1]  := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                 11 :        Cells[10,1] := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
                 12 :        Cells[11,1] := FormatFloat('0.##',((qConsumoDeEnergiaconta_luz_cs.AsFloat) + (qConsumoDeEnergiaconta_lus_dg.asFloat))/(qConsumoDeEnergiaefetivo_mensal.asFloat));
           end;
         end;
         qConsumoDeEnergia.Next;
     End;
end;

procedure TfrmConsumoDeEnergia.FormActivate(Sender: TObject);
begin
   with qConsumoDeEnergia do
   begin
       Close;
       ParamByName('pAno').value := year(Date);
       Open;
   end;

   {Verifica se existe informações para o mês corrente}
   with qRetornaMes do
   begin
       Close;
       ParamByName('pAno').value := year(Date);
       ParamByName('pMes').value := Month(Date);
       Open;
       if recordcount > 0 then
       begin
         txtAno.text:=qRetornaMesAno.AsString;
         txtMes.text:=qRetornaMesMes.AsString;
         txtContaCS.text:=qRetornaMesConta_Luz_CS.asstring;
         txtContaDG.text:=qRetornaMesConta_Lus_DG.AsString;
         txtEfetivo.text:=qRetornaMesEfetivo_Mensal.AsString;
         btnIncluir.Enabled:=False;
         btnAlterar.Enabled:=True;
         btnAlterar.setFocus;
       end
       else
       begin
         txtAno.text:= intToStr(year(Date));
         txtMes.text:= intToStr(Month(Date));
         txtContaCS.text:='';
         txtContaDG.text:='';
         txtEfetivo.text:='';
         btnIncluir.Enabled:=True;
         btnAlterar.Enabled:=False;
         btnIncluir.setFocus;
       end;
   end;

   CarregaListGrids();
   FocusGrid1(qRetornaMesMes.Value - 1);
   HabilitarTexto(False);
//   sTxtAviso.Caption:='';
end;
function TfrmConsumoDeEnergia.Year( Data : TDateTime ): Integer;
var
  Dia,Mes,Ano:Word;
begin
  DecodeDate(Data,Ano,Mes,Dia);
  Result := Ano;
end;
function TfrmConsumoDeEnergia.Month( Data : TDateTime ): Integer;
var
  Dia,Mes,Ano:Word;
begin
  DecodeDate(Data,Ano,Mes,Dia);
  Result := Mes;
end;

procedure TfrmConsumoDeEnergia.txtAnoChange(Sender: TObject);
begin
  If ( Length(F_MSCOMEX.LRTrim(txtAno.Text)) = 4 ) Then
  begin
     with qConsumoDeEnergia do
     begin
         Close;
         ParamByName('pAno').value := StrToInt(txtAno.text);
         Open;
     end;
  end;
end;

procedure TfrmConsumoDeEnergia.btnSairClick(Sender: TObject);
begin
 Close;
end;

procedure TfrmConsumoDeEnergia.FocusGrid1(i : Integer);
var
  myRect: TGridRect;
begin
  myRect.Left := i;
  myRect.Top := 1;
  myRect.Right := i;
  myRect.Bottom := 1;
  StringGrid1.Selection := myRect;
  StringGrid2.Selection := myRect;
  StringGrid3.Selection := myRect;
  StringGrid4.Selection := myRect;
  StringGrid5.Selection := myRect;
end;




procedure TfrmConsumoDeEnergia.btnSalvarClick(Sender: TObject);
begin

  If ( Length(F_MSCOMEX.LRTrim(txtAno.Text)) <> 4 ) Then
  begin
      Showmessage('Por favor, informe o ano com 4 dígitos, conforme o modelo (yyyy).');
      txtAno.Clear;
      txtAno.SetFocus;
      Exit;
  end;
  if (strToInt(txtAno.text) < year(Date)) or (strToInt(txtAno.text) > Year(Date)) then
  begin
        showmessage('Por favor, informe o ano corrente.');
        txtAno.Clear;
        txtAno.setFocus;
        Exit;
  end;
  if (strToInt(txtMes.text) < 0) or  (strToInt(txtMes.text) > 12) then
  begin
      Showmessage('Por favor, informe um mês válido.');
      txtMes.clear;
      txtMes.SetFocus;
      Exit;
  end;
  If (Length(F_MSCOMEX.LRTrim(txtMes.Text)) < 1 ) or (Length(F_MSCOMEX.LRTrim(txtMes.Text))>2) Then
  begin
      Showmessage('Por favor, informe o mês, conforme o modelo (yyyy).');
      txtMes.Clear;
      txtMes.SetFocus;
      Exit;
  end;
  if vOper = 'I' then
  begin
     try
        with qInsereConsumo do
        begin
           close;
           parambyname('pAno').asInteger:=strToInt(txtAno.text);
           ParamByName('pMes').asInteger:=strToInt(txtMes.text);
           ParamByName('pConta_luz_cs').asFloat:=StrToFloat(txtContaCS.text);
           ParamByName('pConta_lus_dg').asFloat:=StrToFloat(txtContaDG.text);
           ParamByName('pEfetivo_mensal').asFloat:=strToFloat(txtEfetivo.text);
           ExecSQL;
        end;

        FormActivate(frmConsumoDeEnergia);
        ShowMessage('Informações inseridas com sucesso.');
        
     Except
     On E:Exception do begin
       SHOWMESSAGE(e.Message);
       end;
     end;
  end
  else if vOper = 'A' then 
  begin
     try
        with qAlteraConsumo do
        begin
           close;
           parambyname('pAno').asInteger:=strToInt(txtAno.text);
           ParamByName('pMes').asInteger:=strToInt(txtMes.text);
           ParamByName('pConta_luz_cs').asFloat:=StrToFloat(txtContaCS.text);
           ParamByName('pConta_lus_dg').asFloat:=StrToFloat(txtContaDG.text);
           ParamByName('pEfetivo_mensal').asFloat:=strToFloat(txtEfetivo.text);
           ParamByName('pPk_id').asInteger := qRetornaMesPK_ID.Value;
           ExecSQL;
        end;

        FormActivate(frmConsumoDeEnergia);
        ShowMessage('Informações atualizadas com sucesso.');
        
     Except
     On E:Exception do begin
       SHOWMESSAGE(e.Message);
       end;
     end;
  end;
  HabilitarTexto(False);
  btnSalvar.Enabled     := False;
  btnCancelar.Enabled   := False;
end;

procedure TfrmConsumoDeEnergia.HabilitarTexto(Hab: Boolean);
begin
   txtAno.Enabled:=Hab;
   txtMes.Enabled:=Hab;
   txtContaCS.Enabled:=Hab;
   txtContaDG.Enabled:=Hab;
   txtEfetivo.Enabled:=Hab;
end;

procedure TfrmConsumoDeEnergia.btnIncluirClick(Sender: TObject);
begin
   vOper := 'I';
   HabilitarTexto(True);
{   txtMes.Enabled:=False;
   txtAno.Enabled:=False;}
   btnSalvar.Enabled:=True;
   btnCancelar.Enabled:=True;
   btnAlterar.Enabled:=False;
   btnIncluir.Enabled:=False;
//   sTxtAviso.Caption:='Somente é possível incluir valores respectivo ao ano e mês corrente.';
   txtContaCS.SetFocus;
end;

procedure TfrmConsumoDeEnergia.btnAlterarClick(Sender: TObject);
begin

   vOper := 'A';
   HabilitarTexto(True);
 {  txtMes.Enabled:=False;
   txtAno.Enabled:=False;}
   btnSalvar.Enabled:=True;
   btnCancelar.Enabled:=True;
   btnAlterar.Enabled:=False;
   btnIncluir.Enabled:=False;
//   sTxtAviso.Caption:='Somente é possível alterar valores respectivo ao ano e mês corrente.';
   txtContaCS.SetFocus;

   qConsumoPorMes.close;
   qConsumoPorMes.Open;
end;

procedure TfrmConsumoDeEnergia.btnCancelarClick(Sender: TObject);
begin
 FormActivate(frmConsumoDeEnergia);
 btnSalvar.enabled := False;
 btnAlterar.SetFocus;
end;

end.
