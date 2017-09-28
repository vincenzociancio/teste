unit uFiltro_ADE_Relatorio;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, DBCtrls, Grids, DBGrids, ExtCtrls,
  QuickRpt, QRCtrls;

type
  TfrmFiltro_ADE_Relatorio = class(TForm)
    qryImportadores: TQuery;
    dtsImportadores: TDataSource;
    btnVisualizar: TBitBtn;
    btnFechar: TBitBtn;
    qryImportadoresRazao_Social: TStringField;
    qryImportadoresCNPJ_CPF_COMPLETO: TStringField;
    qryImportadoresCodigo: TStringField;
    dbgClientes: TDBGrid;
    ckbSelect: TCheckBox;
    rptAll: TQuickRep;
    qryAll: TQuery;
    qryOne: TQuery;
    DetailBand1: TQRBand;
    PageFooterBand1: TQRBand;
    TitleBand1: TQRBand;
    ColumnHeaderBand1: TQRBand;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRSysData1: TQRSysData;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    rptOne: TQuickRep;
    TitleBand2: TQRBand;
    PageFooterBand2: TQRBand;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRSysData3: TQRSysData;
    QRSysData4: TQRSysData;
    QRLabel10: TQRLabel;
    QRBand1: TQRBand;
    QRLabel11: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRShape9: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRBand2: TQRBand;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRShape13: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    edtLocalizar: TEdit;
    Label1: TLabel;
    rdFiltro: TRadioGroup;
    QRLabel12: TQRLabel;
    QRLabel16: TQRLabel;
    QRShape10: TQRShape;
    QRShape14: TQRShape;
    QRLabel17: TQRLabel;
    lbCount: TQRLabel;
    QRLabel18: TQRLabel;
    lbCountAll: TQRLabel;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ckbSelectClick(Sender: TObject);
    procedure btnVisualizarClick(Sender: TObject);
    procedure QRLabel10Print(sender: TObject; var Value: String);
    procedure qryImportadoresAfterScroll(DataSet: TDataSet);
    procedure edtLocalizarChange(Sender: TObject);
    procedure QRLabel12Print(sender: TObject; var Value: String);
    procedure QRLabel16Print(sender: TObject; var Value: String);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure DetailBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRDBText5Print(sender: TObject; var Value: String);
    procedure QRDBText10Print(sender: TObject; var Value: String);
  private
    Contador : Integer;
    fCodigoCliente: string;
    { Private declarations }
    property CodigoCliente : string read fCodigoCliente write fCodigoCliente;
  public
    { Public declarations }
  end;

var
  frmFiltro_ADE_Relatorio: TfrmFiltro_ADE_Relatorio;

implementation

{$R *.DFM}

procedure TfrmFiltro_ADE_Relatorio.FormShow(Sender: TObject);
begin
  qryImportadores.close;
  qryImportadores.open;
end;

procedure TfrmFiltro_ADE_Relatorio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmFiltro_ADE_Relatorio := Nil;
  Action := caFree;
end;        

procedure TfrmFiltro_ADE_Relatorio.ckbSelectClick(Sender: TObject);
begin
  dbgClientes.Enabled := Not(ckbSelect.Checked);
  edtLocalizar.Enabled  := Not(ckbSelect.Checked);
end;

procedure TfrmFiltro_ADE_Relatorio.btnVisualizarClick(Sender: TObject);
  var
    QueryIsEmpty : Boolean;
begin
  try
    QueryIsEmpty := False;
    if ( ckbSelect.Checked ) then begin // Todos os Clientes
      if (rdFiltro.ItemIndex = 0) then begin // A vencer
        lbCountAll.Caption := '0';
        qryAll.Close;
        qryAll.SQL.Clear;
        qryAll.SQL.Text := 'select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, '+
                           'DATEDIFF(day, cast(GETDATE() as date ), cast( ad.DT_VECTO_ADE as date))+1 as day '+
                           'from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) '+
                           'where cast( ad.DT_VECTO_ADE as date) >= cast(GETDATE() as date ) and Excluido = 0 '+
                           'order by  Cast(DT_VECTO_ADE as Datetime)';
        qryAll.Open;
        QRLabel5.Caption := 'Dias Faltantes';

        if ( Not qryAll.IsEmpty ) then
          rptAll.Preview
        else
          QueryIsEmpty := true;
      end
      else
      if (rdFiltro.ItemIndex = 1) then begin // Vencidos
        lbCountAll.Caption := '0';
        qryAll.Close;
        qryAll.SQL.Clear;
        qryAll.sql.Text := 'select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, '+
                           'DATEDIFF(day, cast( ad.DT_VECTO_ADE as date),cast(GETDATE() as date ))+1 as day '+
                           'from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) '+
                           'where cast( ad.DT_VECTO_ADE as date) < cast(GETDATE() as date ) and Excluido = 0 '+
                           'order by  Cast(DT_VECTO_ADE as Datetime)';

        qryAll.Open;
        QRLabel5.Caption := 'Dias Vencido';

        if ( Not qryAll.IsEmpty ) then
          rptAll.Preview
        else
          QueryIsEmpty := true;
      end
      else
      if (rdFiltro.ItemIndex = 2) then begin // Todos (a vencer/vencidos)
        lbCountAll.Caption := '0';
        qryAll.Close;
        qryAll.SQL.Clear;
        qryAll.sql.Text := 'select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, '+
                           'DATEDIFF(day, cast(GETDATE() as date ), cast( ad.DT_VECTO_ADE as date))+1 as day, '+
                           'DATEDIFF(day, cast( ad.DT_VECTO_ADE as date),cast(GETDATE() as date ))+1 as day2 '+
                           'from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) '+
                           'where Excluido = 0 '+
                           'order by Razao_Social, Cast(DT_VECTO_ADE as Datetime)';

        qryAll.Open;
        QRLabel5.Caption := 'Dias';

        if ( Not qryAll.IsEmpty ) then
          rptAll.Preview
        else
          QueryIsEmpty := true;
      end;
    end
    else begin // Apenas um Clientes
      if (rdFiltro.ItemIndex = 0) then begin // A vencer
        lbCount.Caption := '0';
        qryOne.Close;
        qryOne.SQL.Clear;
        qryOne.SQL.Text := 'select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, '+
                           'DATEDIFF(day, cast(GETDATE() as date ), cast( ad.DT_VECTO_ADE as date))+1 as day '+
                           'from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) '+
                           'where cast( ad.DT_VECTO_ADE as date) >= cast(GETDATE() as date ) and Excluido = 0 and fk_Importador=:fk_Importador '+
                           'order by  Cast(DT_VECTO_ADE as Datetime)';
        qryOne.ParamByName('fk_Importador').Value := CodigoCliente;
        qryOne.Open;
        QRLabel15.Caption := 'Dias Faltantes';

        if ( Not qryOne.IsEmpty ) then
          rptOne.Preview
        else
          QueryIsEmpty := true;
      end
      else
      if (rdFiltro.ItemIndex = 1) then begin // Venciados
        lbCount.Caption := '0';
        qryOne.Close;
        qryOne.SQL.Clear;
        qryOne.SQL.Text := 'select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, '+
                           'DATEDIFF(day, cast( ad.DT_VECTO_ADE as date),cast(GETDATE() as date ))+1 as day '+
                           'from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) '+
                           'where cast( ad.DT_VECTO_ADE as date) < cast(GETDATE() as date ) and Excluido = 0 and fk_Importador=:fk_Importador '+
                           'order by  Cast(DT_VECTO_ADE as Datetime)';
        qryOne.ParamByName('fk_Importador').Value := CodigoCliente;
        qryOne.Open;
        QRLabel15.Caption := 'Dias Vencido';

        if ( Not qryOne.IsEmpty ) then
          rptOne.Preview
        else
          QueryIsEmpty := true;
      end
      else
      if (rdFiltro.ItemIndex = 2) then begin // todos
        lbCount.Caption := '0';
        qryOne.Close;
        qryOne.SQL.Clear;
        qryOne.SQL.Text := 'select cast(ad.DT_VECTO_ADE as datetime) as Data, im.Razao_Social, ad.Embarcacao, ad.Num_Contrato, '+
                           'DATEDIFF(day, cast(GETDATE() as date ), cast( ad.DT_VECTO_ADE as date))+1 as day, '+
                           'DATEDIFF(day, cast( ad.DT_VECTO_ADE as date),cast(GETDATE() as date ))+1 as day2 '+
                           'from Controle_ADE_Deferido ad inner join Importadores im on (im.Codigo = ad.FK_Importador) '+
                           'where Excluido = 0 and fk_Importador=:fk_Importador '+
                           'order by Razao_Social, Cast(DT_VECTO_ADE as Datetime)';
        qryOne.ParamByName('fk_Importador').Value := CodigoCliente;
        qryOne.Open;
        QRLabel15.Caption := 'Dias';

        if ( Not qryOne.IsEmpty ) then
          rptOne.Preview
        else
          QueryIsEmpty := true;
      end;
    end;
  finally
    if ( QueryIsEmpty ) then
      Application.MessageBox('Nenhum registro foi encontrado para o filtro específicado!', 'Informação', MB_OK+MB_ICONINFORMATION);
  end;
end;

procedure TfrmFiltro_ADE_Relatorio.QRLabel10Print(sender: TObject;
  var Value: String);
begin
  Value := 'Cliente: ' + qryImportadoresRazao_Social.AsString;
end;

procedure TfrmFiltro_ADE_Relatorio.qryImportadoresAfterScroll(
  DataSet: TDataSet);
begin
  CodigoCliente := qryImportadoresCodigo.AsString;
end;

procedure TfrmFiltro_ADE_Relatorio.edtLocalizarChange(Sender: TObject);
begin
  qryImportadores.Locate('Razao_Social', edtLocalizar.Text, [loPartialKey, loCaseInsensitive]);
end;

procedure TfrmFiltro_ADE_Relatorio.QRLabel12Print(sender: TObject;
  var Value: String);
begin
  Value := FormatDateTime('dd/mm/yyyy', qryAll.fieldByName('Data').AsDateTime);
end;

procedure TfrmFiltro_ADE_Relatorio.QRLabel16Print(sender: TObject;
  var Value: String);
begin
  Value := FormatDateTime('dd/mm/yyyy', qryOne.FieldByName('Data').AsDateTime);
end;

procedure TfrmFiltro_ADE_Relatorio.QRBand2BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  //Contador := Contador +1;
  if( strtoint(lbCount.Caption)< qryOne.RecordCount )then
    lbCount.Caption := IntToStr(strtoint(lbCount.Caption) + 1)
  else begin
    lbCount.Caption := '1';
  end;

  if ( qryOne.FieldByName('Day').AsInteger < 0 ) Then begin
    lbCount.Font.Color := clRed;
    QRLabel16.Font.Color := clRed;
    QRDBText8.Font.Color := clRed;
    QRDBText9.Font.Color := clRed;
    QRDBText10.Font.Color := clRed;
  end else begin
    lbCount.Font.Color := clWindowText;
    QRLabel16.Font.Color := clWindowText;
    QRDBText8.Font.Color := clWindowText;
    QRDBText9.Font.Color := clWindowText;
    QRDBText10.Font.Color := clWindowText;
  end;
end;

procedure TfrmFiltro_ADE_Relatorio.DetailBand1BeforePrint(
  Sender: TQRCustomBand; var PrintBand: Boolean);
begin
  if( strtoint(lbCountAll.Caption) < qryAll.RecordCount )then
    lbCountAll.Caption := IntToStr(strtoint(lbCountAll.Caption) + 1)
  else begin
    lbCountAll.Caption := '1';
  end;
  if ( qryAll.FieldByName('Day').AsInteger < 0 ) Then begin
    lbCountAll.Font.Color := clRed;
    QRLabel12.Font.Color := clRed;
    QRDBText2.Font.Color := clRed;
    QRDBText3.Font.Color := clRed;
    QRDBText4.Font.Color := clRed;
    QRDBText5.Font.Color := clRed;
  end else begin
    lbCountAll.Font.Color := clWindowText;
    QRLabel12.Font.Color := clWindowText;
    QRDBText2.Font.Color := clWindowText;
    QRDBText3.Font.Color := clWindowText;
    QRDBText4.Font.Color := clWindowText;
    QRDBText5.Font.Color := clWindowText;
  end;
end;

procedure TfrmFiltro_ADE_Relatorio.QRDBText5Print(sender: TObject;
  var Value: String);
begin
  if ( qryAll.FieldByName('Day').AsInteger < 0 ) Then begin
    Value := '-'+qryAll.FieldByName('Day2').AsString;
  end;
end;

procedure TfrmFiltro_ADE_Relatorio.QRDBText10Print(sender: TObject;
  var Value: String);
begin
  if ( qryOne.FieldByName('Day').AsInteger < 0 ) Then begin
    Value := '-'+qryOne.FieldByName('Day2').AsString;
  end;
end;

end.
