 {.$DEFINE Testando}
unit u_formulario;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Grids, DBGrids, StdCtrls, ComCtrls, ExtCtrls, FileCtrl, ActnList,
  ComObj, jpeg, ADODB, Buttons,shellAPI;


type
  TF_formulario = class(TForm)
    lstbxControle: TListBox;
    btnSair: TBitBtn;
    btnAbrir: TBitBtn;
    Image1: TImage;
    SD: TSaveDialog;
    procedure btnAbrirClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Processar(Sender: TObject);
    Procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer;  VCAlign : Integer;FColor : Integer; FSize : Integer; COLSize : Integer);
    Procedure CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; VCAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer; FormatarComo : String );
    Procedure CelMesclar(linha : Integer; Coluna : Integer;linha1 : Integer; Coluna1 : Integer);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  vCodAPL = 'MSPGPCA';
  v_empresanome = 'MS LOGÍSTICA ADUANEIRA E TRANSPORTES INTEGRADOS LTDA.';
  AL_DIREITA = -4152;
  AL_ESQUERDA = -4131;
  AL_CENTRO = -4108;
  Aleft = -4131;
  Aright = -4152;
  ACenter = -4108;
  Ql =  #13#10;
  ATop = 1;

  KeyCryptX = 'Þ‡†¥Šµ¿ý±¥Šýþ¬¥šµ††Š¤¯š¯±ý¬Ÿÿ„¬„†¥¨Ý†ýþßµÞŸßýø¨ÿ¶šß¯¿øø¨‡¶ÝŸ¶¯‡ø¯†Ð†¬ý¿Ÿ‡¶†µŸ†ŸÝþÿøþÐÐŠµ¨ß±±¨þÝÿß‡Ð†¥ÿøÞ¬†š†¤‡¯š¤ß†¿ÐŸÞ¬±¨Ý¬¨ßšŸ±µÝŸýøŸ¯ÿþÿýÐšÞ¤¯±¶ŠÐ†±¿¬¨†¨Ýš¯†¿±Þšþ¯Ð‡±±†„Ý±¶µßÐ†Š¶±¥ÐŠ¯ø¿¤¤þýø¥¤†š¬ÝÝß±„„þ„¿ÐŸšµ¶Ð¨±þ†µ¥„±‡ßþÐÝŠÐßÿÞ¨¬ýþý¯ø¶ý¨¬Þø¿ŸýšÝø‡¬Ý‡±';


var
  F_formulario: TF_formulario;
  vnome_planilha,
  dirApl,
  dir_cor,
  data,
  data_arq,
  data_temp,nome : String;
  Excel : Variant;
  prazo,
  data_chegada : TDateTime;
  Op: integer;
  Range: OleVariant;

implementation

uses u_controleveiculo,u_controlecelular,u_controlenotebook,u_controleRequisicaoCompras,u_controleCompra,
u_controlemodem,u_controleEntregaEPI,u_controleRegistroQualidade,U_relControlePreco,u_controleRegistroTreinamento,
U_relControleProcedimentos,u_RelcontroleMateriais,u_RelcontroleAvaliacaoFornecedor,U_relControleComunicacaoExterna,
u_RelcontroleMedicaoMonitoramento,U_relControleAdmissao,U_MSCOMEX;
{$R *.DFM}

procedure TF_formulario.btnAbrirClick(Sender: TObject);
Var
 Pdir : pchar ;
begin

  Op := 0;
  case lstbxControle.ItemIndex of    
      0:begin
         if not assigned (F_controleVeiculo) then Application.CreateForm(TF_controleVeiculo, F_controleVeiculo);
         F_controleVeiculo.show;
      end;
      1:begin
         if not assigned (F_controleCelular) then Application.CreateForm(TF_controleCelular, F_controleCelular);
         F_controleCelular.show;
      end;
      2:begin
        if not assigned (F_controleNotebook) then Application.CreateForm(TF_controleNotebook, F_controleNotebook);
        F_controleNotebook.show;
      end;
      3:begin
        if not assigned (F_controleModem) then Application.CreateForm(TF_controleModem, F_controleModem);
        F_controleModem.show;
      end;
      4:begin
        if not assigned (QR_Controle_Procedimentos) then Application.CreateForm(TQR_Controle_Procedimentos, QR_Controle_Procedimentos);
       QR_Controle_Procedimentos.Preview;
      end;

      5:begin
        if not assigned (F_controleRegistroQualidade) then Application.CreateForm(TF_controleRegistroQualidade, F_controleRegistroQualidade);
        F_controleRegistroQualidade.show;
      end;
      6:begin
        if not assigned (F_controleRegistroTreinamento) then Application.CreateForm(TF_controleRegistroTreinamento, F_controleRegistroTreinamento);
        F_controleRegistroTreinamento.show;
      end;
      7:begin
       //if not assigned (QR_Controle_Preco) then Application.CreateForm(TQR_Controle_Preco, QR_Controle_Preco);
       //QR_Controle_Preco.Preview;
       Op := 2 ;
       // If( SD.Execute )Then Begin
       //   Try
            processar(F_formulario);
          {  Excel.Workbooks[1].SaveAs( SD.FileName );
            Application.MessageBox(PChar('Arquivo foi salvo em: ' + SD.FileName ), 'Informação', MB_OK + MB_ICONINFORMATION);
            Excel.Quit;
            Excel := unassigned;
          Except
            Application.MessageBox('Não foi possível salvar o arquivo', 'Erro', MB_OK + MB_ICONERROR);
          End;
        End;  }

      end;
       8:begin
        //if not assigned (F_controleCompra) then Application.CreateForm(TF_controleCompra, F_controleCompra);
        //F_controleCompra.show;
        Op := 1 ;
      //   If( SD.Execute )Then Begin
        //  Try
            processar(F_formulario);
       {     Excel.Workbooks[1].SaveAs( SD.FileName );
            Application.MessageBox(PChar('Arquivo foi salvo em: ' + SD.FileName ), 'Informação', MB_OK + MB_ICONINFORMATION);
          Except
            Application.MessageBox('Não foi possível salvar o arquivo', 'Erro', MB_OK + MB_ICONERROR);
          End;
        End; }

      end;
      9:begin
        if not assigned (F_controleRequisicaoCompras) then Application.CreateForm(TF_controleRequisicaoCompras, F_controleRequisicaoCompras);
        F_controleRequisicaoCompras.show;
      end;
      10:begin
       if not assigned (QR_Controle_Materiais_Servicos) then Application.CreateForm(TQR_Controle_Materiais_Servicos, QR_Controle_Materiais_Servicos);
       QR_Controle_Materiais_Servicos.Preview;
      end;
      11:begin
       if not assigned (QR_Controle_Avaliacao_Fornecedor) then Application.CreateForm(TQR_Controle_Avaliacao_Fornecedor, QR_Controle_Avaliacao_Fornecedor);
       QR_Controle_Avaliacao_Fornecedor.Preview;
      end;
      12:begin
       if not assigned (QR_Controle_Comunicacao_Externa) then Application.CreateForm(TQR_Controle_Comunicacao_Externa, QR_Controle_Comunicacao_Externa);
       QR_Controle_Comunicacao_Externa.Preview;
      end;
      13:begin
       if not assigned (QR_Controle_Medicao_Monitoramento) then Application.CreateForm(TQR_Controle_Medicao_Monitoramento, QR_Controle_Medicao_Monitoramento);
       QR_Controle_Medicao_Monitoramento.Preview;
      end;
      14:begin
       if not assigned (QR_Controle_Admissao) then Application.CreateForm(TQR_Controle_Admissao, QR_Controle_Admissao);
       QR_Controle_Admissao.Preview;
      end;
      15:begin
        if not assigned (F_controleEntregaEPI) then Application.CreateForm(TF_controleEntregaEPI, F_controleEntregaEPI);
        F_controleEntregaEPI.show;
      end;
      16:begin
        nome := '\\msserver01\Procedimentos_ISO\Requisição de Mudanças.pdf';
        GetMem(Pdir,256);
        StrPCopy(Pdir,nome);
        if FileExists(nome) then begin
          ShellExecute(0,nil, Pchar(nome),nil,Pdir,SW_NORMAL);
          FreeMem(Pdir,256);
        end
        else
        ShowMessage('O arquivo não Foi localizado.');
      end;
      17:begin
        nome := '\\msserver01\Procedimentos_ISO\Jogo de Documentos para DI.pdf';
        GetMem(Pdir,256);
        StrPCopy(Pdir,nome);
        if FileExists(nome) then begin
          ShellExecute(0,nil, Pchar(nome),nil,Pdir,SW_NORMAL);
          FreeMem(Pdir,256);
        end
        else
        ShowMessage('O arquivo não Foi localizado.');
      end;
      18:begin
        nome := '\\msserver01\Procedimentos_ISO\Procedimento IT-04.pdf';
        GetMem(Pdir,256);
        StrPCopy(Pdir,nome);
        if FileExists(nome) then begin
          ShellExecute(0,nil, Pchar(nome),nil,Pdir,SW_NORMAL);
          FreeMem(Pdir,256);
        end
        else
        ShowMessage('O arquivo não Foi localizado.');
      end;
       19:begin
        nome := '\\msserver01\Procedimentos_ISO\Procedimento IT 14.pdf';
        GetMem(Pdir,256);
        StrPCopy(Pdir,nome);
        if FileExists(nome) then begin
          ShellExecute(0,nil, Pchar(nome),nil,Pdir,SW_NORMAL);
          FreeMem(Pdir,256);
        end
        else
        ShowMessage('O arquivo não Foi localizado.');
      end;
  end;
end;

procedure TF_formulario.btnSairClick(Sender: TObject);
begin
 close;
end;

procedure TF_formulario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  f_mscomex.Formularios1.Enabled := True;
  F_formulario := nil;
  Action := caFree
end;


procedure TF_formulario.processar(Sender: TObject);
  var
    vespacos : string;
    y, x: integer;

begin
  vespacos := '                                                                                                                                          ';
  vespacos := copy( vespacos, 1, 50 );
  vnome_planilha := 'planilha';
  vnome_planilha := vnome_planilha+' - '+FormatDateTime( 'ddmmyyyy_hhmm', Now );
  {$I-}
  image1.Picture.SaveToFile( 'c:\ms2000\logoms.gif' );
  data := FormatDateTime( ' dd/mm/yyyy - hh:nn:ss ', Now );
  data_arq := FormatDateTime( ' yyyy/mm/dd - ', Now );


    System.GetDir(0,dir_cor);
    dir_cor := dir_cor + '\Planilhas_Ms2000';
    MkDir(dir_cor);

  Excel:=CreateOleObject('Excel.Application');
  Excel.Application.DisplayAlerts := False;

  {$IFDEF Testando}
    Excel.Visible := True;
  {$ELSE}
    Excel.Visible := False;
  {$ENDIF}

  Excel.Workbooks.add(1);
  // todos
  Excel.Workbooks[1].Worksheets['Plan1'].Name := 'planilha';
  Excel.WorkSheets['planilha'].Select;
  Excel.WorkSheets['planilha'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 2, 2, -200, 65);

  // deixar preenchimento em branco
  for x := 1 to 50 do begin
    for y := 1 to 22 do begin
      Excel.cells[x, y].interior.Color := clWhite;
      Application.ProcessMessages;
    end;
    Application.ProcessMessages;
  end;
  //---fim todos--


  //Cabeçalho
 // linha := 7;
 IF Op = 1 then begin
    Celtitulo(7, 1,'ORDEM DE COMPRA',  clWhite, ALeft,ACenter,clBlack , 10, 10);
    Celtitulo(7, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 35);
    CelMesclar(7,1,7,2);
    CelDetalhe(8, 1,'Fornecedor:',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(8, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelMesclar(8,1,8,2);
    CelDetalhe(8, 3,'OC N°:',  clWhite, ALeft,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(9, 1,'Endereço',  clWhite,ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(9, 2,'Endereço',  clWhite,ALeft,ACenter,clBlack , 10, 35,'texto');
    CelMesclar(9,1,9,2);
    CelDetalhe(10, 1,'Vendedor:',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(10, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelMesclar(10,1,10,2);
    CelDetalhe(10, 3,'Data:',  clWhite, ALeft,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(12, 1,'Item',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(12, 2,'Especificação',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(12, 3,'Qtd.',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(12, 4,'Und.',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(12, 5,'Preço Unitário R$',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(12, 6,'Total R$',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(13, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(13, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(13, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(13, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(13, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(13, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(14, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(14, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(14, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(14, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(14, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(14, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(15, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(15, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(15, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(15, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(15, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(15, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(16, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(16, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(16, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(16, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(16, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(16, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(17, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(17, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(17, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(17, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(17, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(17, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(18, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(18, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(18, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(18, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(18, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(18, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(19, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(19, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(19, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(19, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(19, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(19, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(20, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(20, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(20, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(20, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(20, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(20, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(21, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(21, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(21, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(21, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(21, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(21, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(22, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(22, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(22, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(22, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(22, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(22, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(23, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(23, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(23, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(23, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(23, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(23, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(24, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(24, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(24, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(24, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(24, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(24, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(25, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(25, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(25, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(25, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(25, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(25, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(26, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(26, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(26, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(26, 4,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(26, 5,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');
    CelDetalhe(26, 6,'',  clWhite, ACenter,ACenter,clBlack , 10, 24,'texto');

   // Range := excel.Sheet.Range['A28','A29'];


    CelDetalhe(28, 1,'TOTAL GERAL',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(28, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(28, 3,'R$',  clWhite, ALeft,ACenter,clBlack , 10, 50,'texto');
    CelDetalhe(29, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(29, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(29, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 50,'texto');
    CelMesclar(28,1,28,2);
    CelMesclar(28,1,29,1);
    CelMesclar(28,2,29,2);
    CelMesclar(28,3,29,3);

    CelDetalhe(30, 1,'Condições de Pagamento:',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(30, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(30, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 50,'texto');
    CelDetalhe(31, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(31, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(31, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 50,'texto');
    CelMesclar(30,1,30,2);
    CelMesclar(30,1,31,1);
    CelMesclar(30,2,31,2);
    CelMesclar(30,3,31,3);

    CelDetalhe(32, 1,'Observações:',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(32, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(32, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 50,'texto');
    CelDetalhe(33, 1,'',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(33, 2,'',  clWhite, ACenter,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(33, 3,'',  clWhite, ACenter,ACenter,clBlack , 10, 50,'texto');
    CelMesclar(32,1,32,2);
    CelMesclar(32,1,33,1);
    CelMesclar(32,2,33,2);
    CelMesclar(32,3,33,3);

    Celtitulo(35, 1,'Emitido por: _________________________________                      Aprovado por: __________________________________',  clWhite, ALeft,ACenter,clBlack , 10, 10);
    CelMesclar(35,1,35,6);
   End
   Else
    if Op = 2 then begin
      CelDetalhe(7, 1,'Mapa de Coleta de Preços',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
      CelDetalhe(7, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
      CelDetalhe(7, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
      CelDetalhe(7, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
      CelDetalhe(7, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
      CelMesclar(7,1,7,5);

      CelDetalhe(7, 6,'N°:',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
      CelDetalhe(7, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
      CelDetalhe(7, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
      CelMesclar(7,6,7,8);

    CelDetalhe(7, 9,'Data:',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(7, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelMesclar(7,9,7,10);


    CelDetalhe(9, 1,'Item',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(9, 2,'Und.',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(9, 3,'Qtd.',  clWhite, ACenter,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(9, 4,'Especificação',  clWhite, ACenter,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(10, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(10, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(10, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(10, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(11, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(11, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(11, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(11, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelMesclar(9,1,11,1);
    CelMesclar(9,2,11,2);
    CelMesclar(9,3,11,3);
    CelMesclar(9,4,11,4);

    CelDetalhe(9, 5,'Fornecedor A',  clWhite, ACenter,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(9, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelMesclar(9,5,9,6);
    CelDetalhe(9, 7,'Fornecedor B',  clWhite, ACenter,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(9, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelMesclar(9,7,9,8);
    CelDetalhe(9, 9,'Fornecedor C',  clWhite, ACenter,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(9, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelMesclar(9,9,9,10);

    CelDetalhe(10, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(10, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelMesclar(10,5,10,6);
    CelDetalhe(10, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(10, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelMesclar(10,7,10,8);
    CelDetalhe(10, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(10, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelMesclar(10,9,10,10);

    CelDetalhe(11, 5,'Preço Unitário',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(11, 6,'Preço Total',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(11, 7,'Preço Unitário',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(11, 8,'Preço Total',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(11, 9,'Preço Unitário',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(11, 10,'Preço Total',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(12, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(12, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(12, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(12, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(12, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(12, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(12, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(12, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(12, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(12, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(13, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(13, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(13, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(13, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(13, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(13, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(13, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(13, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(13, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(13, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(14, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(14, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(14, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(14, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(14, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(14, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(14, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(14, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(14, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(14, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(15, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(15, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(15, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(15, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(15, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(15, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(15, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(15, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(15, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(15, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(16, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(16, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(16, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(16, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(16, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(16, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(16, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(16, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(16, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(16, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(17, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(17, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(17, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(17, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(17, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(17, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(17, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(17, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(17, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(17, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(18, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(18, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(18, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(18, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(18, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(18, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(18, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(18, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(18, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(18, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(19, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(19, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(19, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(19, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(19, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(19, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(19, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(19, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(19, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(19, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(20, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(20, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(20, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(20, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(20, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(20, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(20, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(20, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(20, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(20, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(21, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(21, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(21, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(21, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(21, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(21, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(21, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(21, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(21, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(21, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(22, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(22, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(22, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(22, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(22, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(22, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(22, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(22, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(22, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(22, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(23, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(23, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(23, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(23, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(23, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(23, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(23, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(23, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(23, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(23, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(24, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(24, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(24, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(24, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(24, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(24, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(24, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(24, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(24, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(24, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(25, 1,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(25, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(25, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(25, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(25, 5,'Total',  clWhite, ALeft,ACenter,clRed , 10, 15,'texto');
    CelDetalhe(25, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(25, 7,'Total',  clWhite, ALeft,ACenter,clRed , 10, 15,'texto');
    CelDetalhe(25, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
    CelDetalhe(25, 9,'Total',  clWhite, ALeft,ACenter,clRed , 10, 15,'texto');
    CelDetalhe(25, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');

    CelDetalhe(26, 1,'Fornecedor Escolhido:',clWhite, ALeft, ATop,clBlack , 10, 10,'texto');
    CelDetalhe(26, 2,'',  clWhite, ALeft,ATop,clBlack , 10, 10,'texto');
    CelDetalhe(26, 3,'',  clWhite, ALeft,ATop,clBlack , 10, 10,'texto');
    CelDetalhe(26, 4,'',  clWhite, ALeft,ATop,clBlack , 10, 35,'texto');
    CelDetalhe(27, 1,'',  clWhite, ALeft,ATop,clBlack , 10, 10,'texto');
    CelDetalhe(27, 2,'',  clWhite, ALeft,ATop,clBlack , 10, 10,'texto');
    CelDetalhe(27, 3,'',  clWhite, ALeft,ATop,clBlack , 10, 10,'texto');
    CelDetalhe(27, 4,'',  clWhite, ALeft,ATop,clBlack , 10, 35,'texto');
    CelMesclar(26,1,26,4);
    CelMesclar(26,1,27,1);
    CelMesclar(26,2,27,2);
    CelMesclar(26,3,27,3);
    CelMesclar(26,4,27,4);

   CelDetalhe(26, 5,'Condições de Pagamento:',  clWhite, Aleft,ATop,clBlack , 10, 15,'texto');
   CelDetalhe(26, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(27, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(27, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelMesclar(27,5,26,6);
   CelMesclar(27,5,26,6);
   CelMesclar(26,5,26,6);

   celDetalhe(26, 7,'Condições de Pagamento:',  clWhite, Aleft,ATop,clBlack , 10, 15,'texto');
   CelDetalhe(26, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(27, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(27, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelMesclar(27,7,26,8);
   CelMesclar(27,7,26,8);
   CelMesclar(26,7,26,8);

   CelDetalhe(26, 9,'Condições de Pagamento:',  clWhite, Aleft,ATop,clBlack , 10, 15,'texto');
   CelDetalhe(26, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(27, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(27, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelMesclar(27,9,26,10);
   CelMesclar(27,9,26,10);
   CelMesclar(26,9,26,10);


    CelDetalhe(28, 1,'Emitido por: ______________________________ ',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(28, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(28, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(28, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelDetalhe(29, 1,'Aprovado por: ____________________________',  clWhite, AL_ESQUERDA,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(29, 2,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(29, 3,'',  clWhite, ALeft,ACenter,clBlack , 10, 10,'texto');
    CelDetalhe(29, 4,'',  clWhite, ALeft,ACenter,clBlack , 10, 35,'texto');
    CelMesclar(28,1,28,4);
    CelMesclar(29,1,29,4);
    
   CelDetalhe(28, 5,'Prazo de Entrega:',  clWhite, Aleft,ATop,clBlack , 10, 15,'texto');
   CelDetalhe(28, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(29, 5,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(29, 6,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelMesclar(28,5,29,6);
   CelMesclar(28,5,29,6);
   CelMesclar(28,5,28,6);

   celDetalhe(28, 7,'Prazo de Entrega:',  clWhite, Aleft,ATop,clBlack , 10, 15,'texto');
   CelDetalhe(28, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(29, 7,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(29, 8,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelMesclar(28,7,29,8);
   CelMesclar(28,7,29,8);
   CelMesclar(28,7,28,8);

   CelDetalhe(28, 9,'Prazo de Entrega:',  clWhite, Aleft,ATop,clBlack , 10, 15,'texto');
   CelDetalhe(28, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(29, 9,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelDetalhe(29, 10,'',  clWhite, ALeft,ACenter,clBlack , 10, 15,'texto');
   CelMesclar(28,9,29,10);
   CelMesclar(28,9,29,10);
   CelMesclar(28,9,28,10);
//   Excel.cells[28, 9].VerticalAlignment:= ;
   End;
   Excel.Workbooks[1].SaveAs(dir_cor+ '\' + vnome_planilha );
   Application.ProcessMessages;
   Excel.Quit;
   Excel := unassigned;
   showmessage(v_usuario+', a planilha foi  gerada no diretório C:\MS2000\PLANILHAS_MS2000!');
  // Enviar emeail
  {$IFDEF Testando}
    //Não faz nada
  {$ELSE}

  {$ENDIF}

  //

end;

Procedure TF_formulario.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; VCAlign : Integer;  FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
  Excel.cells[linha, coluna] := CTitulo;
  Excel.cells[linha, coluna].interior.Color := CColor;
  Excel.cells[linha, coluna].Font.Color := FCOLOR;
  Excel.cells[linha, coluna].Font.Size := FSize;
  Excel.cells[linha, coluna].Font.Bold := True;
  Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
  Excel.cells[linha, coluna].VerticalAlignment:= VCAlign;
  Excel.Columns[coluna].ColumnWidth := COLSize;
  Excel.cells[linha, coluna].Font.Name := 'Arial';
End;


Procedure TF_formulario.CelDetalhe(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer;  VCAlign : Integer;FColor : Integer; FSize : Integer; COLSize : Integer; FormatarComo : string );
Begin
  if ( CTitulo <> '' ) then
    Excel.cells[linha, coluna] := CTitulo
  else
    Excel.cells[linha, coluna] := ' ';
  Excel.cells[linha, coluna].interior.Color := CColor;
  Excel.cells[linha, coluna].Font.Color := FColor;
  Excel.cells[linha, coluna].Font.Size := FSize;
  Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
  Excel.cells[linha, coluna].VerticalAlignment:= VCAlign;
  Excel.cells[linha, coluna].Borders.Weight := 3;
  Excel.cells[linha, coluna].Borders.LineStyle := 1;
  Excel.Columns[coluna].ColumnWidth := COLSize;

  if ( FormatarComo = 'texto' ) then
    Excel.cells[linha, coluna].NumberFormat := '@';
  if ( FormatarComo = 'data' ) then
    Excel.cells[linha, coluna].NumberFormat := 'd\/m\/aaaa';
End;



procedure TF_formulario.CelMesclar(linha, Coluna,linha1, Coluna1: Integer);
begin
 Excel.Cells.Range[Excel.Cells.Item[linha,coluna],Excel.Cells.Item[linha1,coluna1]].Select;
{Seleciona quais as células serão mescladas}
 Excel.Cells.Range[Excel.Cells.Item[linha,coluna],Excel.Cells.Item[linha1,coluna1]].MergeCells := True;
end;

procedure TF_formulario.FormActivate(Sender: TObject);
begin
  Left := 1;
  Top  := 1;
end;

end.
