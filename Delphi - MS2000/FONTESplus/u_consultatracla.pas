unit u_consultatracla;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Db, DBTables, Grids, DBGrids, ExtCtrls, DBCtrls, Mask;

type
  Tf_consultatracla = class(TForm)
    gb_filtro: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    edt_refms: TEdit;
    edt_refcliente: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    edt_fatura: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    edt_export: TEdit;
    edt_port: TEdit;
    edt_ing: TEdit;
    BitBtn1: TBitBtn;
    edt_part: TEdit;
    edt_ncm: TEdit;
    edt_cliente: TEdit;
    q_itens: TQuery;
    ds_qitens: TDataSource;
    Panel1: TPanel;
    dbg_itens: TDBGrid;
    l_reg: TLabel;
    q_itensCLIENTE: TStringField;
    q_itensREFMS: TStringField;
    q_itensREFCLIENTE: TStringField;
    q_itensFATURA: TStringField;
    q_itensPARTNUMBER: TStringField;
    q_itensDESC: TStringField;
    q_itensDESC_ing: TStringField;
    q_itensNCM: TStringField;
    q_itensDestaque_NCM: TStringField;
    q_itensNALADI: TStringField;
    q_itensNCM_NOME: TStringField;
    q_itensNOME_EXPORTADOR: TStringField;
    q_itensEmpresa: TStringField;
    q_itensFilial: TStringField;
    q_itensProcesso: TStringField;
    q_itensSequencial: TStringField;
    q_itensRegime_Tributacao_II: TStringField;
    q_itensDESCRICAO: TStringField;
    q_itensRegime_Tributacao_IPI: TStringField;
    q_itensDESCRICAO_1: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
    
var
  f_consultatracla: Tf_consultatracla;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_consultatracla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
     f_mscomex.TraduoeClassificao2.Enabled := True;
     f_consultatracla := nil;
     Action := caFree;
end;

procedure Tf_consultatracla.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


{    h := Height;
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

procedure Tf_consultatracla.BitBtn1Click(Sender: TObject);
var qwhere:string;
begin

{
SELECT Importadores.[Razão Social] AS CLIENTE, Processos.Código AS REFMS, Processos.Código_Cliente AS REFCLIENTE, Faturas.Código AS FATURA, ItensFaturas.Produto AS PARTNUMBER, ItensFaturas.Descricao_Produto AS [DESC], ItensFaturas.Descricao_Produto_ing AS DESC_ing, ItensFaturas.NCM, ItensFaturas.Destaque_NCM, ItensFaturas.NALADI, TAB_NCM.DESCRICAO AS NCM_NOME, ItensFaturas_LOG.Revisado, ItensFaturas_LOG.Revisao_Data, ItensFaturas_LOG.Revisao_Usuario, ItensFaturas_LOG.Revisao_OBS, Exportadores.[Razão Social] AS NOME_EXPORTADOR, ItensFaturas.empresa,ItensFaturas.filial,ItensFaturas.processo,ItensFaturas.sequencial 
FROM (((((Importadores INNER JOIN Processos ON Importadores.Codigo = Processos.Importador) LEFT JOIN Faturas ON Processos.Código = Faturas.Processo) LEFT JOIN Exportadores ON Faturas.Exportador = Exportadores.Codigo) LEFT JOIN ItensFaturas ON (Faturas.Código = ItensFaturas.Fatura) AND (Faturas.Processo = ItensFaturas.Processo)) LEFT JOIN TAB_NCM ON ItensFaturas.NCM = TAB_NCM.CODIGO) LEFT JOIN ItensFaturas_LOG ON (ItensFaturas.Sequencial = ItensFaturas_LOG.Sequencial) AND (ItensFaturas.Fatura = ItensFaturas_LOG.Fatura) AND (ItensFaturas.Processo = ItensFaturas_LOG.Processo)
WHERE (((Importadores.[Razão Social]) Like :qcliente ) AND ((Processos.Código) Like :qrefms ) AND ((Processos.Código_Cliente) Like :qrefcli ) AND ((Faturas.Código) Like :qfat ) AND ((ItensFaturas.Produto) Like :qprod ) AND ((ItensFaturas.Descricao_Produto) Like :qdesc ) AND ((ItensFaturas.Descricao_Produto_ing) Like :qdesc_ing ) AND ((ItensFaturas.NCM) Like :qcodncm ) AND ((TAB_NCM.DESCRICAO) Like :qnomencm )  AND ((ItensFaturas_LOG.Revisado)=:qrev1 Or (ItensFaturas_LOG.Revisado)=:qrev2)   AND ((Exportadores.[Razão Social]) Like :qexpor ))

}

    q_itens.Close;

    q_itens.sql.Clear;

    q_itens.SQL.Add('SELECT Importadores.Razao_Social AS CLIENTE, Processos.Codigo AS REFMS, Processos.Codigo_Cliente AS REFCLIENTE, Faturas.Codigo AS FATURA, ItensFaturas.Produto AS PARTNUMBER, ');
    q_itens.SQL.Add('cast(ItensFaturas.Descricao_Produto as varchar) AS [DESC], cast(ItensFaturas.Descricao_Produto_ing as varchar) AS DESC_ing, ItensFaturas.NCM, ItensFaturas.Destaque_NCM, ItensFaturas.NALADI, TAB_NCM.DESCRICAO ');
    q_itens.SQL.Add('AS NCM_NOME, Exportadores.Razao_Social AS NOME_EXPORTADOR, ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.Processo, ItensFaturas.Sequencial, ');
    q_itens.SQL.Add('Tributacao_Item_Fatura.Regime_Tributacao_II, TAB_REG_TRIBUTARIO.DESCRICAO, Tributacao_Item_Fatura.Regime_Tributacao_IPI, TAB_REG_TRIBUTARIO_1.DESCRICAO ');
    q_itens.SQL.Add('FROM (((((((Importadores INNER JOIN Processos ON Importadores.Codigo = Processos.Importador) LEFT JOIN Faturas ON Processos.Codigo = Faturas.Processo) ');
    q_itens.SQL.Add('LEFT JOIN Exportadores ON Faturas.Exportador = Exportadores.Codigo) LEFT JOIN ItensFaturas ON (Faturas.Codigo = ItensFaturas.Fatura) AND ');
    q_itens.SQL.Add('(Faturas.Processo = ItensFaturas.Processo)) LEFT JOIN TAB_NCM ON ItensFaturas.NCM = TAB_NCM.CODIGO) LEFT JOIN Tributacao_Item_Fatura ON ');
    q_itens.SQL.Add('(ItensFaturas.Sequencial = Tributacao_Item_Fatura.Sequencial_Item) AND (ItensFaturas.Fatura = Tributacao_Item_Fatura.Fatura) AND ');
    q_itens.SQL.Add('(ItensFaturas.Processo = Tributacao_Item_Fatura.Processo)) LEFT JOIN TAB_REG_TRIBUTARIO ON ');
    q_itens.SQL.Add('Tributacao_Item_Fatura.Regime_Tributacao_II = TAB_REG_TRIBUTARIO.CODIGO) LEFT JOIN TAB_REG_TRIBUTARIO AS TAB_REG_TRIBUTARIO_1 ON Tributacao_Item_Fatura.Regime_Tributacao_IPI = TAB_REG_TRIBUTARIO_1.CODIGO ');

{    q_itens.SQL.Add('SELECT Importadores.[Razão Social] AS CLIENTE, Processos.Código AS REFMS, Processos.Código_Cliente AS REFCLIENTE, Faturas.Código AS FATURA, ItensFaturas.Produto AS PARTNUMBER, ');
    q_itens.SQL.Add('ItensFaturas.Descricao_Produto AS [DESC], ItensFaturas.Descricao_Produto_ing AS DESC_ing, ItensFaturas.NCM, ItensFaturas.Destaque_NCM, ItensFaturas.NALADI, ');
    q_itens.SQL.Add('TAB_NCM.DESCRICAO AS NCM_NOME, Exportadores.[Razão Social] AS NOME_EXPORTADOR, ItensFaturas.Empresa, ItensFaturas.Filial, ItensFaturas.Processo, ItensFaturas.Sequencial ');
    q_itens.SQL.Add('FROM ((((ItensFaturas LEFT JOIN Faturas ON (ItensFaturas.Fatura = Faturas.Código) AND (ItensFaturas.Processo = Faturas.Processo)) LEFT JOIN Processos ON Faturas.Processo ');
    q_itens.SQL.Add('= Processos.Código) LEFT JOIN Importadores ON Processos.Importador = Importadores.Codigo) LEFT JOIN Exportadores ON Faturas.Exportador = Exportadores.Codigo) ');
    q_itens.SQL.Add('LEFT JOIN TAB_NCM ON ItensFaturas.NCM = TAB_NCM.CODIGO ');
 }
    qwhere := '';
    //WHERE (((Importadores.[Razão Social]) Like :qcliente )
    if edt_cliente.text<>'' then begin
       qwhere := ' ((Importadores.Razao_Social) Like "%"+"'+edt_cliente.text+'"+"%") ';
    end;

    //AND ((Processos.Código) Like :qrefms )
    if edt_refms.text<>'' then begin
       if qwhere<>''then qwhere := qwhere+ ' AND ';
       qwhere := qwhere+' ((Processos.Codigo) Like "%"+"'+edt_refms.text+'"+"%") ';
    end;

    //AND ((Processos.Código_Cliente) Like :qrefcli )
    if edt_refcliente.text<>'' then begin
       if qwhere<>''then qwhere := qwhere+ ' AND ';
       qwhere := qwhere+' ((Processos.Codigo_Cliente) Like "%"+"'+edt_refcliente.text+'"+"%") ';
    end;

    //AND ((Faturas.Código) Like :qfat )
    if edt_fatura.text<>'' then begin
       if qwhere<>''then qwhere := qwhere+ ' AND ';
       qwhere := qwhere+' ((Faturas.Codigo) Like "%"+"'+edt_fatura.text+'"+"%") ';
    end;

    //AND ((ItensFaturas.Produto) Like :qprod )
    if edt_part.text<>'' then begin
       if qwhere<>''then qwhere := qwhere+ ' AND ';
       qwhere := qwhere+' ((ItensFaturas.Produto)  Like "%"+"'+edt_part.text+'"+"%") ';
    end;

    //AND ((ItensFaturas.Descricao_Produto) Like :qdesc )
     if edt_port.text<>'' then begin
       if qwhere<>''then qwhere := qwhere+ ' AND ';
       qwhere := qwhere+' ((ItensFaturas.Descricao_Produto)  Like "%"+"'+edt_port.text+'"+"%") ';
    end;

    //AND ((ItensFaturas.Descricao_Produto_ing) Like :qdesc_ing )
     if edt_ing.text<>'' then begin
       if qwhere<>''then qwhere := qwhere+ ' AND ';
       qwhere := qwhere+' ((ItensFaturas.Descricao_Produto_ing) Like "%"+"'+edt_ing.text+'"+"%") ';
    end;


    //AND ((ItensFaturas.NCM) Like :qcodncm )
    if edt_ncm.text<>'' then begin
       if qwhere<>''then qwhere := qwhere+ ' AND ';
       qwhere := qwhere+'( ((ItensFaturas.[NCM]) Like "%"+"'+edt_ncm.text+'"+"%") ';
    end;

    //AND ((TAB_NCM.DESCRICAO) Like :qnomencm )
    if edt_ncm.text<>'' then begin
       if qwhere<>''then qwhere := qwhere+ ' OR ';
       qwhere := qwhere+' ((TAB_NCM.DESCRICAO) Like "%"+"'+edt_ncm.text+'"+"%") )';
    end;

    //AND ((Exportadores.[Razão Social]) Like :qexpor ))
    if edt_export.text<>'' then begin
       if qwhere<>''then qwhere := qwhere+ ' AND ';
       qwhere := qwhere+' ((Exportadores.Razao_Social) Like "%"+"'+edt_export.text+'"+"%") ';
    end;

     if qwhere<>''then qwhere := ' WHERE '+qwhere;
    q_itens.SQL.Add(qwhere);


{    q_itens.params[0].asstring := '*'+edt_cliente.text+'*';
    q_itens.params[1].asstring := '*'+edt_refms.text+'*';
    q_itens.params[2].asstring := '*'+edt_refcliente.text+'*';
    q_itens.params[3].asstring := '*'+edt_fatura.text+'*';
    q_itens.params[4].asstring := '*'+edt_part.text+'*';
    q_itens.params[5].asstring := '*'+edt_port.text+'*';
    q_itens.params[6].asstring := '*'+edt_ing.text+'*';
    q_itens.params[7].asstring := '*'+edt_ncm.text+'*';
    q_itens.params[8].asstring := '*'+edt_ncm.text+'*';
//    if cb_revisados.Checked and cb_naorevisados.Checked then begin
       q_itens.params[9].asboolean := true;
       q_itens.params[10].asboolean := false;
//    end
//    else begin
//    end;
    q_itens.params[11].asstring := '*'+edt_export.text+'*';
}
    q_itens.open;
    l_reg.Caption := inttostr(q_itens.recordcount)+ ' - Itens de Faturas encontrado(s)'

end;


end.
