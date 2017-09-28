unit u_paramSolNum;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ExtCtrls, Buttons, Mask, DBCtrls, Db, DBTables;

type
  TF_paramSolNum = class(TForm)
    pnlTop: TPanel;
    cbAtivos: TCheckBox;
    dbGrdClientes: TDBGrid;
    Panel2: TPanel;
    dbGrdParamFat: TDBGrid;
    pnlBotoes: TPanel;
    btnFechar: TBitBtn;
    btnIncluir: TBitBtn;
    btnAlterar: TBitBtn;
    btnExcluir: TBitBtn;
    btnSalvar: TBitBtn;
    btnCancelar: TBitBtn;
    pnlCampos: TPanel;
    Label2: TLabel;
    Label5: TLabel;
    dbLcbDescNum: TDBLookupComboBox;
    dbLcbDescIMP: TDBLookupComboBox;
    qrClientes: TQuery;
    dsClientes: TDataSource;
    t_paramsolnum: TTable;
    q_param: TQuery;
    ds_param: TDataSource;
    ds_t_param: TDataSource;
    q_num: TQuery;
    q_imp: TQuery;
    ds_num: TDataSource;
    ds_imp: TDataSource;
    Label1: TLabel;
    qrClientesEmpresa: TStringField;
    qrClientesFilial: TStringField;
    qrClientesCodigo: TStringField;
    qrClientesRazao_Social: TStringField;
    qrClientesCidade: TStringField;
    t_paramsolnumEmpresa: TStringField;
    t_paramsolnumFilial: TStringField;
    t_paramsolnumImportador: TStringField;
    t_paramsolnumNumerario: TStringField;
    t_paramsolnumImportador2: TStringField;
    q_paramEmpresa: TStringField;
    q_paramFilial: TStringField;
    q_paramImportador: TStringField;
    q_paramImportador2: TStringField;
    q_paramRazao_Social: TStringField;
    q_paramCodigo: TStringField;
    q_paramDescricao: TStringField;
    q_numEmpresa: TStringField;
    q_numFilial: TStringField;
    q_numCodigo: TStringField;
    q_numDescricao: TStringField;
    q_numPlano_contas: TStringField;
    q_impCodigo: TStringField;
    q_impRazao_Social: TStringField;
    q_impCidade: TStringField;
    q_impCNPJ_CPF_COMPLETO: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbAtivosClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure qrClientesAfterScroll(DataSet: TDataSet);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure q_paramAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_paramSolNum: TF_paramSolNum;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure TF_paramSolNum.FormActivate(Sender: TObject);
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

procedure TF_paramSolNum.FormClose(Sender: TObject;
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

  F_MSCOMEX.ParmetrosdeSolicitaodeNumerrios1.Enabled := True;
  f_Paramsolnum := nil;
  Action := caFree;
end;

procedure TF_paramSolNum.cbAtivosClick(Sender: TObject);
begin
    With qrClientes Do Begin
         Close;
         Params[0].AsString := v_empresa;
         Params[1].AsString := v_filial;
         if cbAtivos.Checked = true then
           Params[2].AsInteger := 1
         else
           Params[2].AsInteger := 0;
         Open;
     End;
end;

procedure TF_paramSolNum.FormCreate(Sender: TObject);
begin
     With qrClientes Do Begin
         Close;
         Params[0].AsString := v_empresa;
         Params[1].AsString := v_filial;
         if cbAtivos.Checked = true then
           Params[2].AsInteger := 1
         else
           Params[2].AsInteger := 0;
         Open;
     End;

     t_paramsolnum.Open;

     Q_NUM.Open;

end;

procedure TF_paramSolNum.btnFecharClick(Sender: TObject);
begin
       F_paramSolNum.Close;
end;

procedure TF_paramSolNum.qrClientesAfterScroll(DataSet: TDataSet);
begin
      With q_param Do Begin
         Close;
         Params[0].AsString := qrClientescodigo.asstring;
         Open;
      End;
      With q_imp Do Begin
         Close;
         Params[0].AsString := qrClientescodigo.asstring;
         Open;
      End;
end;

procedure TF_paramSolNum.btnAlterarClick(Sender: TObject);
begin
     pnlCampos.Enabled := True;

     btnIncluir.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;
     btnIncluir.Enabled := False;
     btnFechar.Enabled := False;
end;

procedure TF_paramSolNum.btnSalvarClick(Sender: TObject);
begin

    If t_paramsolnumnumerario.asstring='' then begin
       showmessage(v_usuario+', Tipo de Númerário não pode ser em branco!');
       Exit;
    end;

    If t_paramsolnumimportador2.asstring='' then begin
       showmessage(v_usuario+', Empresao não pode ser em branco!');
       Exit;
    end;

    t_paramsolnum.edit;
    t_paramsolnum.Post;

    q_param.close;
    q_param.open;

    pnlCampos.Enabled := false;

    btnIncluir.Enabled := true;
    btnAlterar.Enabled := true;
    btnExcluir.Enabled := true;
    btnSalvar.Enabled := false;
    btnCancelar.Enabled := false;
    btnFechar.Enabled := true;


end;

procedure TF_paramSolNum.btnCancelarClick(Sender: TObject);
begin

     t_paramsolnum.cancel;
     pnlCampos.Enabled := false;

     btnIncluir.Enabled := true;
     btnAlterar.Enabled := true;
     btnExcluir.Enabled := true;
     btnSalvar.Enabled := false;
     btnCancelar.Enabled := false;
     btnFechar.Enabled := true;
end;

procedure TF_paramSolNum.btnIncluirClick(Sender: TObject);
begin
    t_paramsolnum.Insert;
    t_paramsolnumEmpresa.AsString := v_empresa;
    t_paramsolnumFilial.AsString := v_filial;
    t_paramsolnumimportador.AsString := qrClientescodigo.asstring;

    pnlCampos.Enabled := True;


     btnIncluir.Enabled := False;
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;
     btnSalvar.Enabled := True;
     btnCancelar.Enabled := True;
end;

procedure TF_paramSolNum.btnExcluirClick(Sender: TObject);
begin

     If MessageDlg('Confirma exclusão deste Parâmetro ?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then
        Exit;

     t_paramsolnum.Delete;

     q_param.close;
     q_param.open;


end;

procedure TF_paramSolNum.q_paramAfterScroll(DataSet: TDataSet);
begin
  if (q_paramempresa.asstring = '') or (q_param.RecordCount=0)  then begin
     btnAlterar.Enabled := False;
     btnExcluir.Enabled := False;

  end
  else begin
     btnAlterar.Enabled := true;
     btnExcluir.Enabled := true;

  end;
end;

end.
