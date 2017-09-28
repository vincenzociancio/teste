unit u_RelNFServicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBCtrls, StdCtrls, Mask, ExtCtrls, Buttons, Grids, DBGrids,
  QuickRpt, Qrctrls;

type
  TF_RelNFServicos = class(TForm)
    qrImport: TQuery;
    dsImport: TDataSource;
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    mePerIni: TMaskEdit;
    mePerFin: TMaskEdit;
    Label2: TLabel;
    rgTipo: TRadioGroup;
    Panel2: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    dbGrdImport: TDBGrid;
    cbTodos: TCheckBox;
    rgOp: TRadioGroup;
    rgSubTotais: TRadioGroup;
    qrEmpFil: TQuery;
    qrEmpFilempresa: TStringField;
    qrEmpFilfilial: TStringField;
    qrEmpFilRazao_Social: TStringField;
    qrEmpFilDescricao: TStringField;
    dsEmpFil: TDataSource;
    dbgEmpFil: TDBGrid;
    cb_recebe: TCheckBox;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    cbMedicao: TCheckBox;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
    procedure rgTipoClick(Sender: TObject);
    procedure rgOpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    MostraMedicao : Boolean;
    vFiltro, vFiltroDt, vFiltroImpMedicao : String;
    DataPerIni, DataPerFin : String;
  end;

var
  F_RelNFServicos: TF_RelNFServicos;
  vEmp, vFil: String;

implementation

uses U_MSCOMEX, u_QRNFSSint, u_QRNFSAnal;

{$R *.DFM}

procedure TF_RelNFServicos.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

procedure TF_RelNFServicos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  f_mscomex.NotasFiscaisdeServios2.Enabled := True;
  Action := caFree;
  F_RelNFServicos := nil;
end;

procedure TF_RelNFServicos.FormCreate(Sender: TObject);
begin
  qrEmpFil.Open;
  vEmp := F_MSCOMEX.t_parametrosEmpresa.AsString;
  vFil := F_MSCOMEX.t_parametrosFilial.AsString;

  with qrImport do
   begin
     Params[0].AsString := vEmp;
     Params[1].AsString := vFil;
     Open;
   end;

  if not Assigned(QR_RelNFSSint) then Application.CreateForm(TQR_RelNFSSint, QR_RelNFSSint);
  if not Assigned(QR_RelNFSAnal) then Application.CreateForm(TQR_RelNFSAnal, QR_RelNFSAnal);
end;

procedure TF_RelNFServicos.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TF_RelNFServicos.btnImprimirClick(Sender: TObject);
var
  i: Integer;
  vcancel: integer;
begin
  if (mePerIni.Text <> '  /  /    ') and (mePerFin.Text <> '  /  /    ')
   then begin
     if StrToDate(mePerIni.Text) > StrToDate(mePerFin.Text)
      then begin
        MessageDlg('O ''Período Final'' não pode ser menor do que o ''Período Inicial''!', mtWarning, [mbOK], 0);
        mePerFin.SetFocus;
        Exit;
      end;
   end;

  if (not cbTodos.Checked) and (dbGrdImport.SelectedRows.Count = 0)
   then begin
     MessageDlg('Selecione um Cliente!', mtWarning, [mbOK], 0);
     dbGrdImport.SetFocus;
     Exit;
   end;

  vFiltro := '';

  vFiltroImpMedicao := '';

  if not cbTodos.Checked
   then begin
     vFiltro := vFiltro +'AND (';

     with dbGrdImport do
       for i:=0 to SelectedRows.Count-1 do
        begin
          DataSource.DataSet.GotoBookmark(Pointer(SelectedRows.Items[i]));
          vFiltro := vFiltro +'Importador = '''+ Fields[0].AsString +''' ';

          if (vFiltroImpMedicao = '')
           then vFiltroImpMedicao := QuotedStr(Fields[0].AsString)
           else vFiltroImpMedicao := vFiltroImpMedicao + ',' + QuotedStr(Fields[0].AsString);

          if i <> (SelectedRows.Count-1)
           then vFiltro := vFiltro +'OR ';
        end;

     vFiltro := vFiltro +') ';
   end;

  vFiltroDt  := '';
  DataPerIni := '';
  DataPerFin := '';

  if rgOp.ItemIndex = 2 //Recebidas
   then begin
     if mePerIni.Text <> '  /  /    '
      then begin
        vFiltroDt  := vFiltroDt +' AND Data_Recebimento >= Cast('''+ mePerIni.Text +''' as datetime) ';
      end;

     if mePerFin.Text <> '  /  /    '
      then begin
        vFiltroDt  := vFiltroDt +' AND Data_Recebimento <= Cast('''+ mePerFin.Text +''' as datetime) ';
      end;
   end
   else begin
     if mePerIni.Text <> '  /  /    '
      then begin
        vFiltroDt := vFiltroDt +' AND Data_emissao >= Cast('''+ mePerIni.Text +''' as datetime) ';
        DataPerIni := mePerIni.Text;
      end;

     if mePerFin.Text <> '  /  /    '
      then begin
        vFiltroDt := vFiltroDt +' AND Data_emissao <= Cast('''+ mePerFin.Text +''' as datetime) ';
        DataPerFin := mePerFin.Text;
      end;  
   end;

  if cb_recebe.Checked
   then vFiltroDt := vFiltroDt +' AND ( Data_Recebimento is null ) ';

  vcancel := 0;

  if rgOp.ItemIndex=1 //canceladas
   then vcancel := 1;

  if (rgTipo.ItemIndex = 0)
   then with QR_RelNFSSint do
         begin
           with qrNFS do
            begin
              Params[0].AsString  := qrEmpFilempresa.AsString;
              Params[1].AsString  := qrEmpFilFilial.AsString;
              Params[2].Asinteger := vcancel;

              SQL.Strings[3] := vFiltroDt + vFiltro;
            end;

           with qrImport do
            begin
              Params[0].AsString := vEmp;
              Params[1].AsString := vFil;
              Open;
            end;

           case rgSubTotais.ItemIndex of
             0: begin
                  DataSet := qrNFS;
                  qrNFS.SQL.Strings[5] := 'ORDER BY NFiscal ';
                  qrNFS.Open;
                end;

             1: with qrData do
                 begin
                   DataSet := qrData;

                   if rgOp.ItemIndex = 2 //Recebidas
                    then qrNFS.SQL.Strings[5] := 'ORDER BY Data_Recebimento, razao_social, NFiscal '
                    else qrNFS.SQL.Strings[5] := 'ORDER BY Data_emissao, razao_social, NFiscal ';

                   Params[0].AsString  := qrEmpFilempresa.AsString;
                   Params[1].AsString  := qrEmpFilempresa.AsString;
                   Params[2].AsString  := qrEmpFilFilial.AsString;
                   Params[3].Asinteger := vcancel;

                      SQL.Strings[3] := vFiltroDt + vFiltro;
                      Open;
                    end;

                2: with qrCli do
                    begin
                      DataSet := qrCli;

                      if rgOp.ItemIndex = 2 //Recebidas
                       then qrNFS.SQL.Strings[5] := 'ORDER BY razao_social, Data_Recebimento,  NFiscal '
                       else qrNFS.SQL.Strings[5] := 'ORDER BY razao_social, Data_emissao,  NFiscal ';

                      Params[0].AsString := qrEmpFilempresa.AsString;
                      Params[1].AsString := qrEmpFilempresa.AsString;
                      Params[2].AsString := qrEmpFilFilial.AsString;
                      Params[3].Asinteger := vcancel;
                      Open;
                    end;
            end;

     Preview;
   end
   else with QR_RelNFSAnal do
         begin
           with qrImport do
            begin
              Params[0].AsString := vEmp;
              Params[1].AsString := vFil;
              Open;
            end;

           with qrNFSDet do
            begin
              Params[0].AsString := qrEmpFilempresa.AsString;
              Params[1].AsString := qrEmpFilFilial.AsString;
            end;

           with qrNFS do
            begin
              Params[0].AsString  := qrEmpFilempresa.AsString;
              Params[1].AsString  := qrEmpFilFilial.AsString;
              Params[2].Asinteger := vcancel;
              SQL.Strings[3] := vFiltroDt + vFiltro;
              Open;
            end;

           Preview;
         end;
end;

procedure TF_RelNFServicos.rgTipoClick(Sender: TObject);
begin
  rgSubTotais.Enabled := (rgTipo.ItemIndex = 0);
  cbMedicao.Enabled   := (rgTipo.ItemIndex = 0);
end;

procedure TF_RelNFServicos.rgOpClick(Sender: TObject);
begin
  if rgOp.ItemIndex = 0 //Emitidas
   then begin
     cb_recebe.Enabled := true;
     cbMedicao.Enabled := true;
   end
   else begin
     cb_recebe.Checked := false;
     cb_recebe.Enabled := false;

     cbMedicao.Checked := false;
     cbMedicao.Enabled := false;
   end;
end;

end.
