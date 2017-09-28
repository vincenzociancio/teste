unit u_internet;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Db, DBTables, Buttons, ExtCtrls, ComCtrls;

type
  Tf_internet = class(TForm)
    pnlOp: TPanel;
    GroupBox1: TGroupBox;
    btnAtualizar: TBitBtn;
    btnSair: TBitBtn;
    cb1: TCheckBox;
    cb2: TCheckBox;
    cb3: TCheckBox;
    cb4: TCheckBox;
    cb5: TCheckBox;
    cb6: TCheckBox;
    cb7: TCheckBox;
    cb8: TCheckBox;
    cb9: TCheckBox;
    cb10: TCheckBox;
    cb11: TCheckBox;
    cb12: TCheckBox;
    cb13: TCheckBox;
    cb14: TCheckBox;
    cb15: TCheckBox;
    cb16: TCheckBox;
    cb17: TCheckBox;
    cb18: TCheckBox;
    cb19: TCheckBox;
    cb20: TCheckBox;
    cb21: TCheckBox;
    cb22: TCheckBox;
    cb23: TCheckBox;
    cb24: TCheckBox;
    cb25: TCheckBox;
    cb26: TCheckBox;
    cb27: TCheckBox;
    cb28: TCheckBox;
    cb29: TCheckBox;
    cb30: TCheckBox;
    cb31: TCheckBox;
    cb32: TCheckBox;
    cb33: TCheckBox;
    cb34: TCheckBox;
    cb35: TCheckBox;
    cb36: TCheckBox;
    cb37: TCheckBox;
    cb38: TCheckBox;
    cb39: TCheckBox;
    cb40: TCheckBox;
    cb41: TCheckBox;
    cb42: TCheckBox;
    cb43: TCheckBox;
    cbTodas: TCheckBox;
    cb44: TCheckBox;
    cb45: TCheckBox;
    cb46: TCheckBox;
    cb47: TCheckBox;
    cb48: TCheckBox;
    cb49: TCheckBox;
    cb50: TCheckBox;
    cb51: TCheckBox;
    cb52: TCheckBox;
    cb53: TCheckBox;
    cb54: TCheckBox;
    cb55: TCheckBox;
    cb56: TCheckBox;
    cb57: TCheckBox;
    cb58: TCheckBox;
    cb59: TCheckBox;
    reLog: TRichEdit;
    cb60: TCheckBox;
    cb61: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnAtualizarClick(Sender: TObject);
    procedure cbTodasClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_internet: Tf_internet;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_internet.FormClose(Sender: TObject; var Action: TCloseAction);
begin
{     Action := caFree;
     f_internet := nil;
     f_mscomex.Internet1.Enabled := True;}
end;

procedure Tf_internet.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

//     Left := 0;
//     Top  := 0;

     h := Height;
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
     width := w;
end;

procedure Tf_internet.btnAtualizarClick(Sender: TObject);
var
   Tabela, Data: String;
   vTot: Integer;

begin
     pnlOp.Visible := False;

//     If MessageDlg('Nenhuma Tabela foi selecionada. Deseja selecionar uma Tabela para ser atualizada?', mtConfirmation, [mbYes, mbNo], 0) = mrYes Then Begin
//        pnlOp.Visible := True;
//        cb1.SetFocus;
//     End
//     Else
//        btnSair.Click;

     reLog.Clear;

     Screen.Cursor := crHourGlass;
     Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
     reLog.Lines.Append(#13#10+ Data +'GERANDO REGISTROS PARA ATUALIZAÇÃO NA INTERNET.' +#13#10);

     If cb1.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Filiais';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb1.Caption));

        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb2.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Usuarios';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb2.Caption));

        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb3.Checked OR cbTodas.Checked Then Begin
        Tabela := 'UsuariosNet';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb3.Caption));

        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb4.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Processos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb4.Caption));

        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb5.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Importadores';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb5.Caption));

        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb6.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Exportadores';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb6.Caption));

        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb7.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Transportadores';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb7.Caption));

        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb8.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Conhecimento_Processo';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb8.Caption));

        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb9.Checked OR cbTodas.Checked Then Begin
        Tabela := 'FollowUp';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb9.Caption));

        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb10.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Concargas';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb10.Caption));

        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb11.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Faturas';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb11.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb12.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Produtos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb12.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb13.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Contratos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb13.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb14.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Locais_Inventario';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb14.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb15.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Numerarios_Processos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb15.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb16.Checked OR cbTodas.Checked Then Begin
        Tabela := 'TAB_URF';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb16.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb17.Checked OR cbTodas.Checked Then Begin
        Tabela := 'TAB_REC_ALFANDEGADO';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb17.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb18.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Armazem';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb18.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb19.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Processos_Taxas_Conversao';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb19.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb20.Checked OR cbTodas.Checked Then Begin
        Tabela := 'TAB_MOEDA';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb20.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb21.Checked OR cbTodas.Checked Then Begin
        Tabela := 'TAB_PAIS';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb21.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb34.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Documentos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb34.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb37.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Fiel_Depositario';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb37.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb38.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Repetro';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb38.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb39.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Movimentacao_Repetro';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb39.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb42.Checked OR cbTodas.Checked Then Begin
        Tabela := 'ItensFaturas';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb42.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb43.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tributacao_Item_Fatura';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb43.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb44.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Creditos_Processos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb44.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb46.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Movimentacao_Contas_Correntes';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb46.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb47.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipos_Lancamento_Ccorrente';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb47.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb48.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Atos_concessorios';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb48.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb49.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Atos_Importador';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb49.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb50.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Atos_subcontratadas';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb50.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb51.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Atos_tipos_benefic';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb51.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb54.Checked OR cbTodas.Checked Then Begin
        Tabela := 'PG_PARC_VAR';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb54.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb55.Checked OR cbTodas.Checked Then Begin
        Tabela := 'PG_PERC_VINC';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb55.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb56.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Followup_comercial';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb56.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb58.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Cambio_antecipado';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb58.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb59.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Cambio_antecipado_faturas';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb59.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb60.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Fiadores';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb60.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb61.Checked OR cbTodas.Checked Then Begin
        Tabela := 'TAB_NCM';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb61.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;


    { TABELAS COM DESCRIÇÃO EM PORTUGUÊS E INGLÊS }

     If cb22.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Eventos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb22.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Eventos_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb22.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb23.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Obs-Eventos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb23.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Obs-Eventos_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb23.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb24.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipos_status_processos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb4.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipos_status_processos_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb24.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb25.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipos_Numerario';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb25.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipos_Numerario_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb25.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb26.Checked OR cbTodas.Checked Then Begin
        Tabela := 'TAB_TIPO_DECLARACAO';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb26.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'TAB_TIPO_DECLARACAO_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb26.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb27.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipos_de_Processos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb27.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipos_de_Processos_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb27.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb28.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Canais';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb28.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Canais_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb28.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb29.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipo_Doc_Carga';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb29.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipo_Doc_Carga_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb29.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb30.Checked OR cbTodas.Checked Then Begin
        Tabela := 'TAB_VIA_TRANSPORTE';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb30.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'TAB_VIA_TRANSPORTE_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb30.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb31.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipo_Doc_Chegada';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb31.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipo_Doc_Chegada_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb31.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb32.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipo_Utilizacao';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb32.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipo_Utilizacao_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb32.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb33.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipos de Cargas';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb33.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipos de Cargas_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb33.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb35.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipo_Documentos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb35.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipo_Documentos_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb35.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb36.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Sub_Tipo_Documentos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb36.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Sub_Tipo_Documentos_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb36.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb40.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipos_Movimentacao_Repetro';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb40.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipos_Movimentacao_Repetro_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb40.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb41.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipos_Situacao_Fiscal';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb41.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipos_Situacao_Fiscal_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb41.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb45.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipos_creditos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb45.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipos_creditos_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb45.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb52.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipos_Locais_Inventario';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb52.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipos_Locais_Inventario_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb52.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb53.Checked OR cbTodas.Checked Then Begin
        Tabela := 'TAB_UNID_MEDIDA';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb53.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'TAB_UNID_MEDIDA_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb53.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;

     If cb57.Checked OR cbTodas.Checked Then Begin
        Tabela := 'Tipos_status_documentos';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb57.Caption));
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
        Tabela := 'Tipos_status_documentos_Ing';
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(#13#10+ Data +'Gerando registros da tabela: '+ UpperCase(cb57.Caption) +' (INGLÊS)');
 
        Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
        reLog.Lines.Append(Data +'Registros gerandos com sucesso! Total de registros gerados: '+IntToStr(vTot));
     End;


     Data := FormatDateTime(' dd/mm/yyyy | hh:nn:ss | ', Now);
     reLog.Lines.Append(#13#10+#13#10+ Data +'GERAÇÃO DE REGISTROS PARA ATUALIZAÇÃO CONCLUÍDA!');
     Screen.Cursor := crDefault;

     Case MessageDlg('Para ver o Log da Atualização clique em "Sim".'+#13#10+'Para sair clique em "Não".'+#13#10+'Para fazer uma nova Atualização clique em "Repetir".', mtInformation, [mbRetry, mbYes, mbNo], 0) Of
         mrRetry: Begin
                 pnlOp.Visible := True;
                 cb1.SetFocus;
         End;
         mrNo: Close;
     End;
end;

procedure Tf_internet.cbTodasClick(Sender: TObject);
begin
     GroupBox1.Enabled := (Not cbTodas.Checked)
end;

procedure Tf_internet.FormCreate(Sender: TObject);
begin
     pnlOp.Left := 8;
     pnlOp.Top  := 8;
end;

end.
