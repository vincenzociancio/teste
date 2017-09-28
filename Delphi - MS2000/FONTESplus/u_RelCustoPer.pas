unit u_RelCustoPer;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Mask, Db, DBTables;

type
  TF_RelCustoPer = class(TForm)
    Panel1: TPanel;
    Label2: TLabel;
    GroupBox1: TGroupBox;
    Label1: TLabel;
    mePerIni: TMaskEdit;
    mePerFin: TMaskEdit;
    rgTipo: TRadioGroup;
    dbGrdImport: TDBGrid;
    cbTodos: TCheckBox;
    Panel2: TPanel;
    btnImprimir: TBitBtn;
    btnFechar: TBitBtn;
    qrImport: TQuery;
    dsImport: TDataSource;
    qrImportCodigo: TStringField;
    qrImportRazao_Social: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btnFecharClick(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_RelCustoPer: TF_RelCustoPer;
  vEmp, vFil: String;

implementation

uses U_MSCOMEX, u_QRCustoPerSint, u_QRCustoPerAnal;

{$R *.DFM}

procedure TF_RelCustoPer.FormCreate(Sender: TObject);
begin
     vEmp := F_MSCOMEX.t_parametrosEmpresa.AsString;
     vFil := F_MSCOMEX.t_parametrosFilial.AsString;

     With qrImport Do Begin
         Params[0].AsString := vEmp;
         Params[1].AsString := vFil;
         Open;
     End;

     If Not Assigned(QR_RelCustoPerSint) Then Application.CreateForm(TQR_RelCustoPerSint, QR_RelCustoPerSint);
     If Not Assigned(QR_RelCustoPerAnal) Then Application.CreateForm(TQR_RelCustoPerAnal, QR_RelCustoPerAnal);
end;

procedure TF_RelCustoPer.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


     {h := Height;
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
     width := w; }
end;

procedure TF_RelCustoPer.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     F_MSCOMEX.Perodo1.Enabled := True;
     Action := caFree;
     F_RelCustoPer := nil;
end;

procedure TF_RelCustoPer.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TF_RelCustoPer.btnImprimirClick(Sender: TObject);
var
   i: Integer;
   vFiltro, vFiltroDt: String;

begin
     If (mePerIni.Text <> '  /  /    ') AND (mePerFin.Text <> '  /  /    ') Then
        If StrToDate(mePerIni.Text) > StrToDate(mePerFin.Text) Then Begin
           MessageDlg('O ''Período Final'' não pode ser menor do que o ''Período Inicial''!', mtWarning, [mbOK], 0);
           mePerFin.SetFocus;
           Exit;
        End;

     If (Not cbTodos.Checked) AND (dbGrdImport.SelectedRows.Count = 0) Then Begin
        MessageDlg('Selecione um Cliente!', mtWarning, [mbOK], 0);
        dbGrdImport.SetFocus;
        Exit;
     End;

     vFiltro := '';
     If Not cbTodos.Checked Then Begin
        vFiltro := vFiltro +'AND (';
        With dbGrdImport Do
            For i:=0 To SelectedRows.Count-1 Do Begin
               DataSource.DataSet.GotoBookmark(Pointer(SelectedRows.Items[i]));
               vFiltro := vFiltro +'P.Importador = '''+ Fields[0].AsString +''' ';
               If i <> (SelectedRows.Count-1) Then vFiltro := vFiltro +'OR ';
            End;
        vFiltro := vFiltro +') ';
     End;

     vFiltroDt := '';
     If mePerIni.Text <> '  /  /    ' Then
        vFiltroDt := vFiltroDt +' AND P.Data >= Cast('''+ mePerIni.Text +''' as datetime) ';
     If mePerFin.Text <> '  /  /    ' Then
        vFiltroDt := vFiltroDt +' AND P.Data <= Cast('''+ mePerFin.Text +''' as datetime) ';

     If rgTipo.ItemIndex = 0 Then
        With QR_RelCustoPerSint Do Begin
            With qrCusto Do Begin
                Params[0].AsString := vEmp;
                Params[1].AsString := vFil;
                SQL.Strings[3] := vFiltroDt + vFiltro;
            End;

            With qrCli Do Begin
                Params[0].AsString := vEmp;
                Params[1].AsString := vFil;
                SQL.Strings[3] := vFiltroDt + vFiltro;
                Open;
            End;

            Preview;
            qrCli.Close;
            qrCusto.Close;
       End
     Else
        With QR_RelCustoPerAnal Do Begin
            With qrCusto Do Begin
                Params[0].AsString := vEmp;
                Params[1].AsString := vFil;
                SQL.Strings[3] := vFiltroDt + vFiltro;
            End;

            With qrCli Do Begin
                Params[0].AsString := vEmp;
                Params[1].AsString := vFil;
                SQL.Strings[3] := vFiltroDt + vFiltro;
                Open;
            End;

            Preview;
            qrCli.Close;
            qrCusto.Close;
        End;
end;

end.
