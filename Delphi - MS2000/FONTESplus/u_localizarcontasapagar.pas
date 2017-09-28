unit u_localizarcontasapagar;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask;

type
  Tf_localizarcontasapagar = class(TForm)
    p_filtrar: TPanel;
    Label48: TLabel;
    b_aplicarfiltro: TBitBtn;
    b_cancelafiltro: TBitBtn;
    GroupBox1: TGroupBox;
    Label47: TLabel;
    Label49: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label54: TLabel;
    Label45: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    edVencFinal: TMaskEdit;
    edVencInicial: TMaskEdit;
    edVlrFinal: TEdit;
    edVlrInicial: TEdit;
    dblcSolicitante: TDBLookupComboBox;
    sbLimpaSolicitante: TBitBtn;
    dblcFornecedor: TDBLookupComboBox;
    sbLimpaFornecedor: TBitBtn;
    edVlrPrevFinal: TEdit;
    edVlrPrevInicial: TEdit;
    edVencPrevInicial: TMaskEdit;
    edVencPrevFinal: TMaskEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_fechalocClick(Sender: TObject);
    procedure b_aplicarfiltroClick(Sender: TObject);
    procedure sbLimpaFornecedorClick(Sender: TObject);
    procedure sbLimpaSolicitanteClick(Sender: TObject);
    procedure b_cancelafiltroClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_localizarcontasapagar: Tf_localizarcontasapagar;

implementation

uses
  u_contasapagar;

{$R *.DFM}

procedure Tf_localizarcontasapagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  f_localizarcontasapagar := nil;
end;

procedure Tf_localizarcontasapagar.b_fechalocClick(Sender: TObject);
begin
  Close;
end;

procedure Tf_localizarcontasapagar.b_aplicarfiltroClick(
  Sender: TObject);
begin
  f_contasapagar.AplicaFiltros; 
end;

procedure Tf_localizarcontasapagar.sbLimpaFornecedorClick(Sender: TObject);
begin
  dblcFornecedor.KeyValue := '0';
end;

procedure Tf_localizarcontasapagar.sbLimpaSolicitanteClick(
  Sender: TObject);
begin
  dblcSolicitante.KeyValue := '0';
end;

procedure Tf_localizarcontasapagar.b_cancelafiltroClick(Sender: TObject);
begin
  f_contasapagar.CancelaFiltros;
end;

end.
