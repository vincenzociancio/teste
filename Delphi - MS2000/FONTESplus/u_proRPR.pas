unit u_proRPR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, ActnList, Db, DBTables, Mask, ExtCtrls,
  Math, DBCtrls;

type
  TF_proRPR = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    qrItensRPR: TQuery;
    qrDelRPRTemp: TQuery;
    qrInsertRPRTemp: TQuery;
    alRCR: TActionList;
    acTempRPR: TAction;
    pnlBaixo: TPanel;
    btnSair: TBitBtn;
    btnImprimirRPR: TBitBtn;
    pnlPrincipal: TPanel;
    dbGrdRPR: TDBGrid;
    Label1: TLabel;
    btnExcluir: TBitBtn;
    qrRPRTemp: TQuery;
    dsRCRTemp: TDataSource;
    qrFaturas: TQuery;
    Label2: TLabel;
    dsItens: TDataSource;
    qrCambio: TQuery;
    dbEdtTotal: TDBEdit;
    qrTotal: TQuery;
    dsTotal: TDataSource;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessosCodigo: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosNumero_RCR: TStringField;
    qrProcessosNR_DECLARACAO_IMP: TStringField;
    qrProcessosTipo: TStringField;
    qrProcessosqfilial: TStringField;
    qrProcessosFechado: TSmallintField;
    qrProcessosATIVO: TSmallintField;
    qrProcessosImportador: TStringField;
    qrProcessosqcnpj: TStringField;
    qrItensRPRCodigo: TStringField;
    qrItensRPRtdecla: TStringField;
    qrItensRPRNCM: TStringField;
    qrItensRPRProduto: TStringField;
    qrItensRPRPO: TStringField;
    qrItensRPRdesc: TMemoField;
    qrItensRPRFatura: TStringField;
    qrItensRPRPagina: TStringField;
    qrItensRPRSequencial: TStringField;
    qrItensRPRSomaDeQuantidade: TFloatField;
    qrItensRPRSomaDeValor_Aduaneiro: TFloatField;
    qrItensRPRRegime_Tributacao_II: TStringField;
    qrItensRPRRegime_Tributacao_IPI: TStringField;
    qrItensRPRPrazo_permanencia: TIntegerField;
    qrItensRPRSomaDevalortotal: TFloatField;
    qrRPRTempProcesso: TStringField;
    qrRPRTempSequencial: TIntegerField;
    qrRPRTempNCM: TStringField;
    qrRPRTempDescricao_Produto: TStringField;
    qrRPRTempFatura: TStringField;
    qrRPRTempPagina: TStringField;
    qrRPRTempQuantidade: TFloatField;
    qrRPRTempValor: TFloatField;
    qrFaturasProcesso: TStringField;
    qrFaturasCodigo: TStringField;
    qrFaturasMoeda: TStringField;
    qrCambioProcesso: TStringField;
    qrCambioMoeda: TStringField;
    qrCambioTaxa_conversao: TFloatField;
    qrTotalValorTotal: TFloatField;
    procedure ME_nossarefChange(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure acTempRPRExecute(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure qrRPRTempAfterOpen(DataSet: TDataSet);
    procedure btnImprimirRPRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  F_proRPR: TF_proRPR;
  vEmp, vFil: String;
  qrcr: Integer;
  tx_dolar : boolean;

implementation

uses U_MSCOMEX, U_RPR1;

{$R *.DFM}

procedure TF_proRPR.ME_nossarefChange(Sender: TObject);
var cnpj: String;
begin
     If Length(me_nossaref.Text) <> 8 Then
        Exit;
    { eduardo.souza 02/02/2012 - Solicitado por Sandro
    // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
    If (IsClosedProcess( me_nossaref.Text, Self )) Then
      Abort;
    //--
    }
     Screen.Cursor := crHourGlass;

     With qrProcessos Do Begin
         Close;  Open;
     End;
     If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin

        {roda a sql de itens de rpr}
        vEmp := qrProcessosEmpresa.AsString;
        vFil := qrProcessosFilial.AsString;

        With qrItensRPR Do Begin
            Close;
            Params[0].AsString := me_nossaref.Text;
            Params[1].AsString := vEmp;
            Params[2].AsString := vFil;
            Open;
        End;

        If qrItensRPR.RecordCount = 0 Then Begin
           MessageDlg('Declaração não é de Admissão Temporária ou não possui Tributação Suspensa!', mtInformation,[mbOk], 0);
           pnlPrincipal.Visible := False;
           pnlBaixo.Visible := False;
           l_cliente.Caption := '';
           Screen.Cursor := crDefault;
           Exit;
        End;

        With qrFaturas Do Begin
            Close;
            Params[0].AsString := vEmp;
            Params[1].AsString := vFil;
            Params[2].AsString := qrProcessosProcesso.AsString;
            Open;
        End;
        {
        If MessageDlg('Deseja informar a taxa do Dólar?', mtConfirmation, [mbYes, mbNo], 0) = mrNo Then begin
                Edit_TX_Dolar.Enabled := false;
                Btn_Tx_Dolar.Enabled := false;
                tx_dolar := false;
                acTempRPR.Execute;
        End Else begin
                Edit_TX_Dolar.Enabled := true;
                Btn_Tx_Dolar.Enabled := true;
                tx_dolar := true;
        End;
        }

        acTempRPR.Execute;
        
//        If tbProcessos.State = dsInactive Then tbProcessos.Open;
        ///alterei em 27/07/2005 - mm - chupisco!!!
        v_AlteraPRO := 1;
        //If (not qrprocessosAtivo.asboolean) then begin
        If (not qrprocessosAtivo.asinteger = 1) then begin
           //If (not v_Edita_cliente_inativo)  then begin
           If (v_Edita_cliente_inativo = 0)  then begin
              Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
              v_AlteraPRO := 0;
           end;
        end;
        //If (qrprocessosFechado.asboolean) then begin
        If (qrprocessosFechado.asinteger = 1) then begin
           //If (not v_Edita_Processo_Fechado)  then begin
           If (v_Edita_Processo_Fechado = 0)  then begin
                Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
                v_AlteraPRO := 0;
           end
           else v_AlteraPRO := 1;
        end;

        If Not Assigned(QR_RPR1) Then Application.CreateForm(TQR_RPR1, QR_RPR1);

        //mm 24/07/2006 - usuariosclientes
        if f_mscomex.q_usucli.recordcount>0 then begin
           if f_mscomex.q_usucli.locate('Importador',qrProcessosimportador.asstring,[]) then begin
              v_autorizadocli := 1;
           end
           else begin
              v_autorizadocli := 0;
           end;
        end
        else begin
              v_autorizadocli := 1;
        end;
        If v_autorizadocli = 1 Then Begin

           F_MSCOMEX.atualizacpastas(ME_nossaref.text);
           cnpj := qrprocessosqcnpj.asstring;
           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

           l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
           pnlPrincipal.Visible := True;
           pnlBaixo.Visible := True;

        End
        Else Begin
           l_cliente.Caption := '';
           pnlPrincipal.Visible := False;
           pnlBaixo.Visible := False;
           Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
        End;



     End
     Else Begin
        MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
        l_cliente.Caption := '';
        me_nossaref.Clear;
        pnlPrincipal.Visible := False;
        pnlBaixo.Visible := False;
        me_nossaref.SetFocus
     End;
     Screen.Cursor := crDefault;
end;

procedure TF_proRPR.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;

end;

procedure TF_proRPR.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     f_mscomex.RPR1.Enabled := True;
     F_proRPR := nil;
     Action := cafree;

end;

procedure TF_proRPR.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
     With qrDelRPRTemp Do Begin
         Params[0].AsString := qrProcessosProcesso.AsString;
         ExecSQL;
     End;
//     If tbProcessos.State In [dsEdit] Then Begin
 //       MessageDlg('O RPR está em edição!', mtInformation,[mbOk], 0);
 //       CanClose := False;
  //   End
  //   Else
   //     CanClose := True;

end;

procedure TF_proRPR.acTempRPRExecute(Sender: TObject);
var
   i: Integer;
   qmfpnpo: String;
   qdesc: String;
   ovalor: Real;

begin
     With qrDelRPRTemp Do Begin
         Params[0].AsString := qrProcessosProcesso.AsString;
         ExecSQL;
     End;

     qrcr := 0;
     If qrItensRPR.RecordCount <> 0 Then qrItensRPR.First;
     While Not qrItensRPR.Eof Do Begin
          While qrInsertRPRTemp.State = dsInsert Do Begin
          End;

//          qrProdutos.Locate('Código',qrItensRPRProduto.AsString,[]);
          qdesc := Trim(StringReplace(qrItensRPRdesc.AsString, Chr(13)+Chr(10), ' ', [rfReplaceAll]));

          qmfpnpo := ' '+Trim('MFPN.'+qrItensRPRProduto.AsString);
          If Not qrItensRPRPO.IsNull Then
             qmfpnpo := qmfpnpo + ' PO.'+Trim(qrItensRPRPO.AsString);

          If Ceil(Length(qdesc)/70) = Ceil(Length(qdesc+qmfpnpo)/70) Then Begin
             qdesc := qdesc + qmfpnpo;
             qmfpnpo := '';
          End;

          ovalor := 0.0;
          qrCambio.close;
          qrCambio.Params[0].AsString := qrProcessosProcesso.AsString;
          qrCambio.Open;
          qrFaturas.Locate('Codigo',qrItensRPRFatura.AsString,[]);
          If qrFaturasMoeda.AsString = '220' Then
             ovalor := qrItensRPRSomaDevalortotal.AsFloat
          Else Begin
             {converti para real}
             qrCambio.Locate('Moeda',qrFaturasMoeda.AsString,[]);
             ovalor := (qrItensRPRSomaDevalortotal.AsFloat*qrCambioTaxa_Conversao.AsFloat);
             {converti para dolar}
             qrCambio.Locate('Moeda','220',[]);
             ovalor := (ovalor/qrCambioTaxa_Conversao.AsFloat);
             
             {if tx_dolar = false then begin
                qrCambio.Locate('Moeda','220',[]);
                ovalor := (ovalor/qrCambioTaxa_Conversao.AsFloat);
             end else begin
                if Edit_TX_Dolar.text <> '' then
                        ovalor := (ovalor/strtofloat(Edit_TX_Dolar.text))
                else begin
                        Showmessage(v_usuario+', favor infomar a taxa do dólar!');
                        Edit_TX_Dolar.SetFocus;
                        exit;
                end;
             end;}
          End;
          Inc(qrcr);

          With qrInsertRPRTemp Do Begin
              Params[0].AsString := qrProcessosProcesso.AsString;
              Params[1].AsString := IntToStr(qrcr);
              Params[2].AsString := qrItensRPRNCM.AsString;
              Params[3].AsString := Trim(Copy(qdesc,1,70));
              Params[4].AsString := qrItensRPRFatura.AsString;
              Params[5].AsString := qrItensRPRPagina.AsString;
              Params[6].AsString := stringreplace(qrItensRPRSomaDeQuantidade.AsString,',','.',[]);
              //qrItensRPRSomaDeQuantidade.AsString;
              ///Params[7].AsString := QR_RCR.qrItensRCRSomaDeValor_Aduaneiro.AsString;
              Params[7].Asstring :=  stringreplace(floattostr(ovalor),',','.',[]);
              //              ovalor;
              //showmessage('teste');
              ExecSQL;
          End;

          For i := 1 To Ceil(Length(qdesc)/70)-1 Do Begin
             While qrInsertRPRTemp.State = dsInsert Do Begin
             End;

             Inc(qrcr);
             With qrInsertRPRTemp Do Begin
                 Params[0].AsString := qrProcessosProcesso.AsString;
                 Params[1].AsString := IntToStr(qrcr);
                 Params[2].AsString := ' ';
                 Params[3].AsString := Trim(Copy(qdesc, (i*70)+1, 70));
                 Params[4].AsString := ' ';
                 Params[5].AsString := ' ';
                 Params[6].AsString := '0';
                 Params[7].AsString := '0';
                 ExecSQL;
             End;
          End;

          If qmfpnpo <> '' Then Begin
             Inc(qrcr);
             With qrInsertRPRTemp Do Begin
                 Params[0].AsString := qrProcessosProcesso.AsString;
                 Params[1].AsString := IntToStr(qrcr);
                 Params[2].AsString := ' ';
                 Params[3].AsString := Trim(qmfpnpo);
                 Params[4].AsString := ' ';
                 Params[5].AsString := ' ';
                 Params[6].AsString := '0';
                 Params[7].AsString := '0';
                 ExecSQL;
             End;
          End;
          qrItensRPR.Next;
     End;
     With qrRPRTemp Do Begin
         Close;
         if tipoBanco = 1 then begin
           sql.clear;
           sql.add('SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
           sql.add('FROM RPRtemp WHERE Processo = :qproc ');
           sql.add('ORDER BY Cast(Sequencial as integer) ');
         end
         else begin
           sql.clear;
           sql.add('SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
           sql.add('FROM RPRtemp WHERE Processo = :qproc ');
           sql.add('ORDER BY Val(Sequencial) ');
         end;
         Params[0].AsString := qrProcessosProcesso.AsString;
         Open;
     End;
end;

procedure TF_proRPR.btnSairClick(Sender: TObject);
begin
     Close;
end;

procedure TF_proRPR.btnExcluirClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then begin
     With qrDelRPRTemp Do Begin
         Params[0].AsString := qrProcessosProcesso.AsString;
         SQL.Strings[3] := 'AND sequencial = '+ qrRPRTempSequencial.AsString +' ';
         ExecSQL;
         SQL.Strings[3] := ' ';
         qrRPRTemp.Close;
         qrRPRTemp.Open;
     End;
end

else begin
     Showmessage(v_usuario+', este processo está fechado e/ou o Cliente está Inativo. Somente usuários habilitados para editar clientes inativos e/ou editar processos fechados, poderão alterar as informações do processo.');
end;
     
end;

procedure TF_proRPR.qrRPRTempAfterOpen(DataSet: TDataSet);
begin
     With qrTotal Do Begin
         Close;
         Params[0].AsString := qrProcessosProcesso.AsString;
         Open;
     End;
     btnExcluir.Enabled := (qrRPRTemp.RecordCount <> 0);
     btnImprimirRPR.Enabled := (qrRPRTemp.RecordCount <> 0);
end;

procedure TF_proRPR.btnImprimirRPRClick(Sender: TObject);
var j: Integer;

begin
     For j := 1 To 18 - (qrcr Mod 19) Do Begin
        While qrInsertRPRTemp.State = dsInsert Do Begin
        End;
        With qrInsertRPRTemp Do Begin
            Params[0].AsString := qrProcessosProcesso.AsString;
            Params[1].AsString := IntToStr(qrcr + 1);
            Params[2].AsString := ' ';
            Params[3].AsString := ' ';
            Params[4].AsString := ' ';
            Params[5].AsString := ' ';
            Params[6].AsString := '0';
            Params[7].AsString := '0';
            ExecSQL;
        End;
     End;

     With QR_RPR1 Do Begin
         With qrRPRTemp Do Begin
             Close;
             if tipoBanco = 1 then begin
               sql.clear;
               sql.add('SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
               sql.add('FROM RPRtemp WHERE Processo = :qproc ');
               sql.add('ORDER BY Cast(Sequencial as integer) ');
             end
             else begin
               sql.clear;
               sql.add('SELECT Processo, Sequencial, NCM, Descricao_Produto, Fatura, Pagina, Quantidade, Valor ');
               sql.add('FROM RPRtemp WHERE Processo = :qproc ');
               sql.add('ORDER BY Val(Sequencial) ');
             end;
             Params[0].AsString := qrProcessosProcesso.AsString;
             Open;
         End;
         Preview;

         With qrDelRPRTemp Do Begin
             Params[0].AsString := qrProcessosProcesso.AsString;
             SQL.Strings[3] := 'AND sequencial = '+ IntToStr(qrcr + 1) +' ';
             ExecSQL;
             SQL.Strings[3] := ' ';
             qrRPRTemp.Close;
             qrRPRTemp.Open;
         End;
     end;
end;

end.
