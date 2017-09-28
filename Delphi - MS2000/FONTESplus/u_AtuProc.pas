unit u_AtuProc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables;

type
  Tf_AtuProc = class(TForm)
    Processo: TLabel;
    edtProcesso: TEdit;
    gbTabelas: TGroupBox;
    cb1: TCheckBox;
    cb2: TCheckBox;
    cb5: TCheckBox;
    cb6: TCheckBox;
    cb3: TCheckBox;
    cb9: TCheckBox;
    cb7: TCheckBox;
    cb8: TCheckBox;
    cb4: TCheckBox;
    btnAtualizar: TBitBtn;
    cb10: TCheckBox;
    qrProcessos: TQuery;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrprod: TQuery;
    qrprodProcesso: TStringField;
    qrprodEmpresa: TStringField;
    qrprodFilial: TStringField;
    qrprodCdigo: TStringField;
    cb11: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure edtProcessoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_AtuProc: Tf_AtuProc;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_AtuProc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{     Action := caFree;
     f_AtuProc := nil;
     f_mscomex.AtualizaoPorProcessos1.Enabled := True;}
end;

procedure Tf_AtuProc.FormActivate(Sender: TObject);
begin
     Left := 0;
     Top  := 0;
end;

procedure Tf_AtuProc.btnAtualizarClick(Sender: TObject);
var
   vTabela, vItens: String;
   vEmp, vFil, vProc: String;
begin
     vProc := edtProcesso.Text;

     With qrProcessos Do Begin
         Params[0].AsString := vProc;
         Open;
         If RecordCount = 0 Then Begin
            MessageDlg('Processo não encontrado!', mtWarning, [mbOk], 0);
            edtProcesso.SetFocus;
            Close;
            Exit;
         End;
         vEmp := qrProcessosEmpresa.AsString;
         vFil := qrProcessosFilial.AsString;
         Close;
     End;
     vItens := '';

     If cb1.Checked Then Begin
        vTabela := 'Processos';
        vItens := vItens +#13#10+ cb1.Caption;
     End;

     If cb2.Checked Then Begin
        vTabela := 'Conhecimento_Processo';
        vItens := vItens +#13#10+ cb2.Caption;
     End;

     If cb3.Checked Then Begin
        vTabela := 'Numerarios_Processos';
        vItens := vItens +#13#10+ cb3.Caption;
     End;

     If cb4.Checked Then Begin
        vTabela := 'Creditos_Processos';
        vItens := vItens +#13#10+ cb4.Caption;
     End;

     If cb5.Checked Then Begin
        vTabela := 'FollowUp';
        vItens := vItens +#13#10+ cb5.Caption;
     End;

     If cb6.Checked Then Begin
        vTabela := 'Faturas';
        vItens := vItens +#13#10+ cb6.Caption;
     End;

     If cb7.Checked Then Begin
        vTabela := 'ItensFaturas';
        vItens := vItens +#13#10+ cb7.Caption;
     End;

     If cb8.Checked Then Begin
        vTabela := 'Tributacao_Item_Fatura';
        vItens := vItens +#13#10+ cb8.Caption;
     End;

     If cb9.Checked Then Begin
        vTabela := 'Processos_Taxas_Conversao';
        vItens := vItens +#13#10+ cb9.Caption;
     End;

     If cb10.Checked Then Begin
        vTabela := 'Processos_ADICOES_ICMS_PIS_COFINS';
        vItens := vItens +#13#10+ cb10.Caption;
     End;

     If cb11.Checked Then Begin
         qrProd.close;
         qrProd.Params[0].AsString := vProc;
         qrProd.open;
         if qrProd.recordcount>0 then begin
            vTabela := 'Produtos';
            while not qrProd.eof do begin
                  qrProd.Next;
            end;
        end;
     End;

     If vItens <> '' Then
        MessageDlg('Tabelas enviadas para atualização: '+ vItens, mtInformation, [mbOk], 0)
     Else
        MessageDlg('Nenhuma tabelas foi selecionada!', mtWarning, [mbOk], 0)
end;

procedure Tf_AtuProc.edtProcessoChange(Sender: TObject);
begin
     btnAtualizar.Enabled := (Length(edtProcesso.Text) = 8)
end;

end.
