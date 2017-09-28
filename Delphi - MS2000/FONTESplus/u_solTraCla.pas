unit u_solTraCla;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, Grids, DBGrids, ExtCtrls, Db, DBTables, DBCtrls, Mask,
  IdComponent, IdTCPConnection, IdTCPClient, IdMessageClient, IdSMTP,
  IdAntiFreezeBase, IdAntiFreeze, IdBaseComponent, IdMessage, OleCtrls,
  SHDocVw, MSHTML;

type
  Tf_solTraCla = class(TForm)
    pnlPrincipal: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    DBGrid1: TDBGrid;
    pnlBotoesSol: TPanel;
    BitBtn1: TBitBtn;
    btnSolicita: TBitBtn;
    btnNDO: TBitBtn;
    qrSolicitacoes: TQuery;
    dsSolicitacoes: TDataSource;
    Label4: TLabel;
    DBMemo1: TDBMemo;
    DBGrid2: TDBGrid;
    Panel6: TPanel;
    tbSolTrad: TTable;
    dsSolCheques: TDataSource;
    tbParametros: TTable;
    pnlSolicitacao: TPanel;
    Label9: TLabel;
    Panel8: TPanel;
    Panel9: TPanel;
    cbVerTodos: TCheckBox;
    btnItemExc: TBitBtn;
    btnCancelSol: TBitBtn;
    btnSalvaSol: TBitBtn;
    btnSairSol: TBitBtn;
    btnItemBus: TBitBtn;
    pnlInclusaoItens: TPanel;
    Panel10: TPanel;
    Label26: TLabel;
    edtProc: TMaskEdit;
    dsProc: TDataSource;
    Panel11: TPanel;
    Label11: TLabel;
    DBGrid3: TDBGrid;
    qrProc: TQuery;
    btnCancSol: TBitBtn;
    mailmessage: TIdMessage;
    IdAntiFreeze1: TIdAntiFreeze;
    SMTP: TIdSMTP;
    pnlAguarde: TPanel;
    btnReativar: TBitBtn;
    Panel12: TPanel;
    BitBtn8: TBitBtn;
    BitBtn9: TBitBtn;
    qrRecebe: TQuery;
    tbItens: TTable;
    dsItens: TDataSource;
    DBLookupComboBox2: TDBLookupComboBox;
    Label16: TLabel;
    qrListaStatus: TQuery;
    dsListaStatus: TDataSource;
    pnlBrowser: TPanel;
    WebBrowser1: TWebBrowser;
    pnlImprimir: TPanel;
    BitBtn6: TBitBtn;
    BitBtn7: TBitBtn;
    pnlBroConSol: TPanel;
    BitBtn10: TBitBtn;
    BitBtn11: TBitBtn;
    qrEnvia: TQuery;
    tbItensEmpresa: TStringField;
    tbItensFilial: TStringField;
    tbItensCodigo: TStringField;
    tbItensSequencial: TIntegerField;
    tbItensProcesso: TStringField;
    tbItensFatura: TStringField;
    qrTradutor: TQuery;
    dblcbTradutor: TDBLookupComboBox;
    dsTradutor: TDataSource;
    btnDO: TBitBtn;
    DBLookupComboBox1: TDBLookupComboBox;
    Label1: TLabel;
    cbVerTodosUsu: TCheckBox;
    qrListaTradutor: TQuery;
    dsListaTradutor: TDataSource;
    DBLookupComboBox3: TDBLookupComboBox;
    Label2: TLabel;
    cbVerTodosSol: TCheckBox;
    qrListaUsuarios: TQuery;
    dsListausuarios: TDataSource;
    BitBtn5: TBitBtn;
    BitBtn2: TBitBtn;
    qrListaTradutorTraduz_Classifica: TSmallintField;
    qrListaTradutorUsuario: TStringField;
    qrListaTradutorNome_Completo: TStringField;
    qrListaStatusCodigo: TIntegerField;
    qrListaStatusDescricao: TStringField;
    tbSolTradEmpresa: TStringField;
    tbSolTradFilial: TStringField;
    tbSolTradCodigo: TStringField;
    tbSolTradData_solicitacao: TDateTimeField;
    tbSolTradRemetente: TStringField;
    tbSolTradObservacoes: TMemoField;
    tbSolTradStatus: TIntegerField;
    tbSolTradTradutor: TStringField;
    tbSolTradData_Traducao: TDateTimeField;
    tbParametrosEmpresa: TStringField;
    tbParametrosFilial: TStringField;
    tbParametrosNumerador_Processos: TStringField;
    tbParametrosNumerador_Documentos: TStringField;
    tbParametrosEndereco_ftp: TStringField;
    tbParametrosUsuario_ftp: TStringField;
    tbParametrosSenha_ftp: TStringField;
    tbParametrosHost: TStringField;
    tbParametrosVersao: TStringField;
    tbParametroskeycrypt: TStringField;
    tbParametrosHost_smtp: TStringField;
    tbParametrosPorta_smtp: TSmallintField;
    tbParametrosUsuario_smtp: TStringField;
    tbParametrosSenha_smtp: TStringField;
    tbParametrosNumerador_Transmittal: TStringField;
    tbParametrosPATH_SERVER: TStringField;
    tbParametrosAliq_PIS_PASEP: TFloatField;
    tbParametrosAliq_COFINS: TFloatField;
    tbParametrosAliq_ICMS: TFloatField;
    tbParametrosAliq_ICMS_EXTRA: TFloatField;
    tbParametrosNumerador_Sol_Cheques: TStringField;
    tbParametrosNumerador_Sol_Reg: TStringField;
    tbParametrosNumerador_Sol_Tracla: TStringField;
    qrListaUsuariosUsuario: TStringField;
    qrListaUsuariosNome_completo: TStringField;
    qrRecebeUsuario: TStringField;
    qrRecebeNome_Completo: TStringField;
    qrRecebeEmail_aviso_finan: TSmallintField;
    qrRecebeEmail: TStringField;
    qrRecebeEmail_aviso_oper: TSmallintField;
    qrEnviaNome_Completo: TStringField;
    qrEnviaEmail: TStringField;
    qrEnviaUsuario: TStringField;
    qrProcProcesso: TStringField;
    qrProcCodigo: TStringField;
    qrTradutorTraduz_Classifica: TSmallintField;
    qrTradutorUsuario: TStringField;
    qrTradutorNome_Completo: TStringField;
    qrSolicitacoesEmpresa: TStringField;
    qrSolicitacoesFilial: TStringField;
    qrSolicitacoesCodigo: TStringField;
    qrSolicitacoesData_solicitacao: TDateTimeField;
    qrSolicitacoesRemetente: TStringField;
    qrSolicitacoesObservacoes: TMemoField;
    qrSolicitacoesStatus: TIntegerField;
    qrSolicitacoesTradutor: TStringField;
    qrSolicitacoesData_Traducao: TDateTimeField;
    qrSolicitacoesNome_Completo: TStringField;
    qrSolicitacoesEmail: TStringField;
    qrSolicitacoesDescricao: TStringField;
    qrSolicitacoesNome_Completo_1: TStringField;
    qrSolicitacoesEmail_1: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSalvaSolClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cbVerTodosClick(Sender: TObject);
    procedure btnCancelSolClick(Sender: TObject);
    procedure qrSolicitacoesAfterScroll(DataSet: TDataSet);
    procedure btnSairSolClick(Sender: TObject);
    procedure btnSolicitaClick(Sender: TObject);
    procedure btnCancSolClick(Sender: TObject);
    procedure edtProcChange(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure btnItemBusClick(Sender: TObject);
    procedure tbItensBeforePost(DataSet: TDataSet);
    procedure tbItensBeforeEdit(DataSet: TDataSet);
    procedure btnReativarClick(Sender: TObject);
    procedure btnItemExcClick(Sender: TObject);
    Procedure EmailConecta();
    Procedure CorpoEmail(var v_body, v_razao: String);
    Procedure EmailDePara();
    procedure btnNDOClick(Sender: TObject);
    procedure tbSolTradAfterPost(DataSet: TDataSet);
    procedure tbItensAfterPost(DataSet: TDataSet);
    procedure tbItensBeforeDelete(DataSet: TDataSet);
    procedure tbSolTradBeforeDelete(DataSet: TDataSet);
    procedure DBLookupComboBox2Click(Sender: TObject);
    procedure btnEmitirClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure DBLookupComboBox1Click(Sender: TObject);
    procedure cbVerTodosUsuClick(Sender: TObject);
    procedure btnDOClick(Sender: TObject);
    procedure cbVerTodosSolClick(Sender: TObject);
    procedure DBLookupComboBox3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure qrSolicitacoesAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_solTraCla: Tf_solTraCla;
  v_controlChange, v_html : String;
  v_valor_aux : Real;
  v_cod_aux : Integer;
  b_emissor,b_tradutor, b_solicitado, b_solicitado2, b_cancelado : Boolean;

implementation

Uses U_MSCOMEX;

{$R *.DFM}

procedure AppendToWB(WB: TWebBrowser; const html: widestring) ;
var
   Range: IHTMLTxtRange;
begin
   Range := ((WB.Document AS IHTMLDocument2).body AS IHTMLBodyElement).createTextRange;
   Range.Set_text('');
   Range.Collapse(False) ;
   Range.PasteHTML(html) ;
end;

Procedure Tf_solTraCla.EmailConecta();
Var strSMTP, strPorta, strUser, strPass: String;
Begin
//     SMTP.Username := f_MSCOMEX.t_ParametrosUsuario_smtp.AsString;
//     SMTP.Password := f_MSCOMEX.t_ParametrosSenha_smtp.AsString;
//     SMTP.Host := f_MSCOMEX.t_ParametrosHost.AsString;

     strSMTP  := f_MSCOMEX.t_ParametrosHost_SMTP.AsString;
     strPorta := f_MSCOMEX.t_ParametrosPorta_SMTP.AsString;
     strUser  := f_MSCOMEX.t_ParametrosUsuario_SMTP.AsString;
     strPass  := f_MSCOMEX.t_ParametrosSenha_SMTP.AsString;
     With SMTP Do Begin
         Host     := strSMTP;
         Port     := StrToInt(strPorta);
         Username := strUser;
         Password := strPass;
         If strUser = '' Then
            AuthenticationType := atNone
         Else
            AuthenticationType := atLogin;
     End;


     Mailmessage.Body.Clear;
     Mailmessage.CCList.Clear;
     Mailmessage.BccList.Clear;
     pnlAguarde.Height := 105;
     pnlAguarde.Left := round(pnlPrincipal.Width/2) - round(pnlAguarde.Width/2);
     pnlAguarde.Top := round(pnlPrincipal.Height/2) - round(pnlAguarde.Height/2);
     pnlAguarde.Refresh;
End;
Procedure Tf_solTraCla.EmailDePara();
Var i: Integer;
Begin


     If (b_solicitado2 or b_cancelado) Then Begin
       qrRecebe.Close;
         qrRecebe.Params[0].AsString := tbSolTradTradutor.AsString;
       qrRecebe.open;
       qrEnvia.Close;
       qrEnvia.Params[0].AsString := v_usuario;
       qrEnvia.open;
       b_solicitado2 := False;
       b_cancelado := False;
     End
     Else Begin
       qrRecebe.Close;
       qrRecebe.Params[0].AsString := qrSolicitacoesRemetente.AsString;
       qrRecebe.open;
       qrEnvia.Close;
       qrEnvia.Params[0].AsString := v_usuario;
       qrEnvia.open;
     End;

       i:=0;
//           Mailmessage.Recipients.Add;
  //         Mailmessage.Recipients[i].Address := qrFinancEmail.AsString;// 'gustavo.guedes@logistic-ms.com.br';
    //       Mailmessage.Recipients[i].Name := qrFinancNome_Completo.AsString;//  'Gustavo Guedes';
      //     Mailmessage.Recipients[i].Text := qrFinancNome_Completo.AsString + '<' + qrFinancEmail.AsString + '>';//'Gustavo Guedes'+'<gustavo.guedes@logistic-ms.com.br>';
             Mailmessage.CCList.Add;
             Mailmessage.CCList[i].Address := qrRecebeEmail.AsString;// 'gustavo.guedes@logistic-ms.com.br';
             Mailmessage.CCList[i].Name := qrRecebeNome_Completo.AsString;//  'Gustavo Guedes';
             Mailmessage.CCList[i].Text := qrRecebeNome_Completo.AsString + '<' + qrRecebeEmail.AsString + '>';//'Gustavo Guedes'+'<gustavo.guedes@logistic-ms.com.br>';

             Mailmessage.BccList.Add;

             Mailmessage.BccList[i].Address := qrEnviaEmail.AsString;//'gustavo.guedes@logistic-ms.com.br';//tbusuarioEmail.AsString;:= qrFinancEmail.AsString;// 'gustavo.guedes@logistic-ms.com.br';
             Mailmessage.BccList[i].Name := qrEnviaNome_Completo.AsString;//'Gustavo Guedes';//tbusuarioNome_Completo.AsString;qrFinancNome_Completo.AsString;//  'Gustavo Guedes';
             Mailmessage.BccList[i].Text := qrEnviaNome_Completo.AsString + '<' + qrEnviaEmail.AsString + '>';//'Gustavo Guedes'+'<gustavo.guedes@logistic-ms.com.br>';//tbusuarioNome_Completo.AsString + '<' + tbusuarioEmail.AsString + '>' ;qrFinancNome_Completo.AsString + '<' + qrFinancEmail.AsString + '>';//'Gustavo Guedes'+'<gustavo.guedes@logistic-ms.com.br>';

             Mailmessage.From.Address := qrEnviaEmail.AsString;//'gustavo.guedes@logistic-ms.com.br';//tbusuarioEmail.AsString;
             Mailmessage.From.Name := qrEnviaNome_Completo.AsString;//'Gustavo Guedes';//tbusuarioNome_Completo.AsString;
             Mailmessage.From.Text := qrEnviaNome_Completo.AsString + '<' + qrEnviaEmail.AsString + '>';//'Gustavo Guedes'+'<gustavo.guedes@logistic-ms.com.br>';//tbusuarioNome_Completo.AsString + '<' + tbusuarioEmail.AsString + '>' ;

End;


Procedure Tf_solTraCla.CorpoEmail(var v_body, v_razao: String);
var v_Proc, v_index : String;
    i: integer;
Begin
     v_body := v_body + '<table width="100%" border="1" cellspacing="0" cellpadding="1">'
                      +     '<tr>'
                      +        '<td width="80%">';
                      v_index := tbitens.IndexFieldNames;
                      tbitens.IndexFieldNames := 'Processo';
                      tbItens.First;
                      v_proc := 'Inicio';
                      While Not tbItens.Eof Do Begin
                           If v_proc <> tbItensProcesso.AsString Then Begin
                             v_body := v_body +        '<B>Processo:</B> '+ tbItensProcesso.AsString
                             + '<br><B>Fatura(s) :</B> ' + tbItensFatura.AsString;
                             v_proc := tbItensProcesso.AsString;
                             tbItens.Next;
                             While Not ((tbItensProcesso.AsString <> v_proc) or (tbItens.Eof)) Do Begin
                                  v_body := v_body + ', ' + tbItensFatura.AsString;
                                  tbItens.Next;
                             End;
                             v_body := v_body + '<br><br>';
                           End;
                      End;
                      tbitens.IndexFieldNames := v_index;


                      v_body := v_body+        '<B>Observações:</B> <br>'{+ Trim(qrSolicitacoesObservacoes.AsString)};


                      For i:= 0 To dbmemo1.Lines.Count - 1 Do Begin
                         v_body := v_body  + Trim((DBmemo1).Lines.Strings[i])+ '<br>';
                      End;


                      v_body := v_body+     '</td></tr>'
                      +  '</table>';


                   v_body := v_body +'<tr>'
                   +        '<td colspan="3"><br><B>Solicitante:</B> ' + qrSolicitacoesNome_Completo.AsString + '</td>'
                   +      '</tr>'
                    +'<tr>';
                   If Not b_solicitado Then Begin
                    v_body := v_body  +        '<td colspan="3"><br><B>Responsável pela Tradução/Classificação:</B> ' + qrSolicitacoesNome_Completo.AsString + '</td>'
                   End Else begin
                    v_body := v_body  +        '<td colspan="3"><br><B>Responsável pela Tradução/Classificação:</B> ' + qrTradutorNome_Completo.AsString + '</td>';
                    b_solicitado := False;
                   End;
                   v_body := v_body   +      '</tr>';

                   v_body := v_body +    '</table>'
                 +  '</font>'
                 +  '</body>'
               + '</html>';


End;


procedure Tf_solTraCla.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


  {   h := Height;
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


procedure Tf_solTraCla.BitBtn1Click(Sender: TObject);
   Var
      v_solTraCla, v_tbParametros, v_ano : String;
begin

{     pnlPrincipal.Enabled := False;
     pnlInclusao.Height := 263;
     pnlInclusao.Left := round(pnlPrincipal.Width/2) - round(pnlInclusao.Width/2);
     pnlInclusao.Top := round(pnlPrincipal.Height/2) - round(pnlInclusao.Height/2);
     pnlInclusao.Visible := True;
     btnNovaSol.Click;
 }
     If ((cbvertodos.Checked = False) Or ((cbVerTodosUsu.Checked  = False )and cbVerTodosUsu.Visible) Or ((cbVerTodosSol.Checked  = False) And cbVerTodosSol.Visible)) Then Begin
       MessageDlg('É necessário retirar os filtros antes de inserir uma nova solicitação!', mtInformation,[mbOK], 0);
       Exit;
     End;
     If MessageDlg('Incluir nova solicitação?', mtConfirmation,[mbYes, mbNo], 0)= mrNo Then
      Exit;

     If Not tbsoltrad.bof Then
       tbSolTrad.Append
     Else
       tbSolTrad.Insert;
     tbSolTradRemetente.AsString := v_usuario;
     tbSolTradStatus.AsInteger := 0;
     tbSolTradEmpresa.AsString := v_empresa;
     tbSolTradFilial.AsString := v_filial;

     tbParametros.Open;
     v_tbParametros := tbParametrosNumerador_Sol_Tracla.AsString;
     v_ano := (Copy(v_tbParametros,7,2));
     v_solTraCla := formatfloat('0000#',StrToInt(Copy(v_tbParametros,1,5)) + 1) + '/' + v_ano;
     tbparametros.First;
     tbparametros.edit;
     tbParametrosNumerador_Sol_Tracla.AsString := v_solTraCla;
     tbParametros.Post;
     tbParametros.Close;
     tbSolTradCodigo.AsString := v_solTraCla;
     tbSolTrad.Post;

//     btnSalvaSol.Enabled := False;
//     btnCancelSol.Enabled := False;
     btnSairSol.Enabled := True;

     qrSolicitacoes.Close;
     qrSolicitacoes.Open;
     qrSolicitacoes.Locate('Codigo',v_solTraCla,[loCaseInsensitive]);

     If MessageDlg('Solicitação incluída com sucesso! Deseja Incluir Itens de Solicitação agora? ', mtConfirmation,[mbYes,mbNo], 0)=mrno Then Exit;
     pnlPrincipal.Enabled := False;
     btnItemBus.Click;



end;

procedure Tf_solTraCla.btnSalvaSolClick(Sender: TObject);
var v_body , v_razao: String;
Begin
     If dblcbTradutor.Text = '' Then Begin
       MessageDlg('Responsável pela Classificação/Tradução não pode ser em branco!', mtInformation,[mbOk], 0);
       dblcbTradutor.SetFocus;
       Exit;
     End;
     pnlSolicitacao.Visible := False;
     screen.cursor := crHourGlass;
     b_solicitado := True;
     b_solicitado2 := True;
     EmailConecta();
     v_body := '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">'
                + '<html><head><title>SSolicitação de Tradução/Classificação</title>'
                + '<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">'
                + '</head>';
     v_body := v_body +'<body bgcolor="#FFFFFF" style="font-size: 10pt"><FONT FACE="arial" >'


                      + '<table width="100%" border="1" cellspacing="0" cellpadding="1">'

                      +     '<tr>'
                      +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
                      +          '<br><B>Solicitação de Tradução/Classificação Nº:</B> '+ qrSolicitacoesCodigo.AsString + '  -  <B>Data da Solicitação:</B> ' + DateTimeToStr(Date)
                      +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                      +     '</tr>'

                      + '</table>'+ '<br><br>';

       tbsoltrad.Edit;
       CorpoEmail(v_body, v_razao);
       EmailDePara();
       Mailmessage.ContentType := 'text/html';
       Mailmessage.Body.Add(v_body);
       MailMessage.Subject := 'MS2000 - Solicitação de Tradução/Classificação Nº ' + qrSolicitacoesCodigo.AsString;

   AppendToWB(WebBrowser1,v_body);
   pnlbrowser.Align := alClient;
   pnlbrowser.visible := true;
   pnlbrowser.top := 0;
   pnlbrowser.left := 0;
   screen.cursor := crDefault;

   pnlBroConSol.Visible := True;
   pnlImprimir.Visible := False;
     pnlPrincipal.Enabled := True;

{     If btnNovaSol.Tag = 1 Then Begin
       tbSolTradRemetente.AsString := v_usuario;
       tbSolTradStatus.AsInteger := 0;
       tbSolTradEmpresa.AsString := v_empresa;
       tbSolTradFilial.AsString := v_filial;

       tbParametros.Open;
       v_tbParametros := tbParametrosNumerador_Sol_Tracla.AsString;
       v_ano := (Copy(v_tbParametros,7,2));
       v_solCheques := formatfloat('0000#',StrToInt(Copy(v_tbParametros,1,5)) + 1) + '/' + v_ano;
       tbparametros.First;
       tbparametros.edit;
       tbParametrosNumerador_Sol_Tracla.AsString := v_solCheques;
       tbParametros.Post;
       tbParametros.Close;
       tbSolTradCodigo.AsString := v_solCheques;
       Panel10.Caption := 'Inclusão de Itens de Solicitações';
       btnNovaSol.Tag := 0;
     End Else Begin
       tbSolTrad.Edit;
       v_solCheques := tbSolTradCodigo.AsString;
       Panel10.Caption := 'Alteração de Itens de Solicitações';
     End;


     tbSolTrad.Post;

     btnNovaSol.Enabled := True;
     btnSalvaSol.Enabled := False;
     btnCancelSol.Enabled := False;
     btnSairSol.Enabled := True;
//     btnAltSol.Enabled := True;

     qrSolicitacoes.Close;
     qrSolicitacoes.Open;
     qrSolicitacoes.Locate('Codigo',v_solCheques,[loCaseInsensitive]);
     pnlInclusao.Visible := False;
     pnlPrincipal.Enabled := True;}
end;

procedure Tf_solTraCla.FormCreate(Sender: TObject);
Begin
     b_Cancelado := False;
     b_solicitado := False;
     b_solicitado2 := False;
     qrListaUsuarios.open;
     qrListaTradutor.Open;
     qrTradutor.Open;
     b_tradutor := False;
     While Not qrTradutor.Eof Do Begin
         If qrTradutorUsuario.AsString = v_usuario Then begin
           b_tradutor := True;
           btnDO.Visible := True;
           btnNDO.Visible := True;
         end;
         qrTradutor.Next;
     End;
     b_emissor := False;
     WebBrowser1.Navigate('about:blank') ;
     Top := 0;
     Left := 0;
     If strtoint(v_nivel) < 6 Then Begin
       qrSolicitacoes.Params[0].AsString := '%';
       qrSolicitacoes.Params[1].AsString := '%';
       qrSolicitacoes.Params[2].AsString := 'False';
       qrSolicitacoes.Params[3].AsString := '%';
       cbVerTodos.Visible := True;
       cbVertodos.Visible := True;
       cbVertodosUsu.Visible := True;
       cbVertodosSol.Visible := True;
       DBLookupComboBox1.Visible := True;
       DBLookupComboBox3.Visible := True;
       label1.Visible := True;
       label2.Visible := True;
       cbVerTodosUsu.Visible := True;
     End
     Else Begin
       If Not b_tradutor Then Begin
         qrSolicitacoes.Params[0].AsString := v_usuario;
         qrSolicitacoes.Params[1].AsString := '%';
         qrSolicitacoes.Params[2].AsString := 'False';
         qrSolicitacoes.Params[3].AsString := '%';
       End
       Else Begin
         qrSolicitacoes.Params[0].AsString := v_usuario;
         qrSolicitacoes.Params[1].AsString := v_usuario;
         qrSolicitacoes.Params[2].AsString := 'True';
         qrSolicitacoes.Params[3].AsString := '%';
       End;
     End;

     qrSolicitacoes.Open;
     tbSolTrad.Open;
     qrListaStatus.Open;
     DBLookupComboBox2.KeyValue := '0';
     DBLookupComboBox1.KeyValue := qrListaTradutorUsuario.AsString;
     DBLookupComboBox3.KeyValue := qrListaUsuariosUsuario.AsString;
end;

procedure Tf_solTraCla.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

     f_mscomex.ControledeTraduoeClassificao1.Enabled := True;
     f_solTraCla := nil;
     Action := caFree;
end;

Procedure Tf_solTraCla.cbVerTodosClick(Sender: TObject);
Begin
     If cbVerTodos.Checked Then Begin
       qrSolicitacoes.Close;
       qrSolicitacoes.Params[3].AsString := '%';
       qrSolicitacoes.Open;
       DBLookupComboBox2.Enabled := False;
     End
     Else Begin
       DBLookupComboBox2.Enabled := True;
       qrSolicitacoes.Close;
       qrSolicitacoes.Params[3].AsString := qrListaStatusCodigo.AsString;
       qrSolicitacoes.Open;
     End;
     If qrSolicitacoes.RecordCount = 0 Then tbItens.Close
     Else tbItens.Open;

End;

procedure Tf_solTraCla.btnCancelSolClick(Sender: TObject);
begin
     b_solicitado := False;
     b_solicitado2 := False;
     tbSolTrad.Cancel;
     btnSairSol.Enabled := True;
     pnlInclusaoItens.Visible := False;
     pnlPrincipal.Enabled := True;
     qrProc.Close;
     panel11.visible := True;
     pnlSolicitacao.Visible := False;
     pnlPrincipal.Enabled := True;

end;

procedure Tf_solTraCla.qrSolicitacoesAfterScroll(DataSet: TDataSet);
begin
        btnCancSol.Enabled := False;
        btnSolicita.Enabled := False;
        btnReativar.Enabled := False;
        btnNDO.Enabled := False;
        btnDO.Enabled := False;
        panel6.Enabled := False;
        panel2.Enabled := False;
     If b_tradutor Then Begin
          btnNDO.Enabled := False;
          btnDO.Enabled := False;
     End;
      If (qrSolicitacoesStatus.AsInteger = 0) Then Begin
        btnCancSol.Visible := True;
        btnCancSol.Enabled := False;
        btnReativar.Visible := False;
//        btnCancSol.Visible := True;
        If ((StrToInt(v_nivel) < 6) Or (qrSolicitacoesRemetente.AsString = v_usuario)) Then begin
          panel6.Enabled := True;
          btnSolicita.Enabled := True;
          panel2.Enabled := True;
          btnCancSol.Enabled := True;
       End;
     End;

     If (qrSolicitacoesStatus.AsInteger = 1) Then Begin
        If b_tradutor Then
          If qrSolicitacoesTradutor.AsString = v_usuario Then
            btnNDO.Enabled := True;
        btnCancSol.Visible := True;
        If ((StrToInt(v_nivel) < 6) Or (qrSolicitacoesRemetente.AsString = v_usuario)) Then begin
         btnSolicita.Enabled := True;
         btnCancSol.Enabled := True;
        End;
        btnReativar.Visible := False;
//        btnCancSol.Visible := True;
     End;
     If (qrSolicitacoesStatus.AsInteger = 2) Then Begin
        If b_tradutor Then
          If qrSolicitacoesTradutor.AsString = v_usuario Then
            btnDO.Enabled := True;
//        End;
        btnCancSol.Visible := True;
        If ((StrToInt(v_nivel) < 6) Or (qrSolicitacoesRemetente.AsString = v_usuario)) Then begin
          btnCancSol.Enabled := True;
        End;
        btnSolicita.Enabled := False;
        btnReativar.Visible := False;
     End;
     If (qrSolicitacoesStatus.AsInteger = 3) Then Begin
        btnSolicita.Enabled := False;
        btnCancSol.Visible := True;
        btnCancSol.Enabled := False;
        btnReativar.Visible := False;
     End;

     If (qrSolicitacoesStatus.AsInteger = 4) Then Begin
        btnSolicita.Enabled := False;
        btnCancSol.Visible := True;
        btnCancSol.Enabled := False;
        btnReativar.Visible := True;
        btnReativar.Enabled := True;
     End;
     With tbItens Do Begin

         Filter := 'Codigo= '''+ qrSolicitacoesCodigo.AsString +''' ';
//         showmessage(Filter);
         Filtered := True;
         Open;
     End;
End;

procedure Tf_solTraCla.btnSairSolClick(Sender: TObject);
begin
     If tbSolTrad.State = dsEdit Then Begin
       MessageDlg('O campo está em edição!', mtInformation,[mbOk], 0);
       Exit;
     End;
     pnlSolicitacao.Visible := False;
     pnlPrincipal.Enabled := True;
end;

procedure Tf_solTraCla.btnSolicitaClick(Sender: TObject);
begin
     If Not tbItens.Locate('codigo',qrSolicitacoesCodigo.AsString,[]) Then begin
       MessageDlg('Não há itens nessa solicitação. É necessário haver ao menos um item!', mtInformation,[mbOK], 0);
       Exit;
     End;
     pnlSolicitacao.Height := 137;
     pnlSolicitacao.Left := round(pnlPrincipal.Width/2) - round(pnlSolicitacao.Width/2);
     pnlSolicitacao.Top := round(pnlPrincipal.Height/2) - round(pnlSolicitacao.Height/2);
     pnlSolicitacao.Visible := True;
     pnlprincipal.Enabled:=false;
end;

Procedure Tf_solTraCla.btnCancSolClick(Sender: TObject);
Var cod, v_body, v_razao : String;
    v_aux : Integer;
Begin
     If MessageDlg('Tem certeza que cancelar esta solicitação?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then
       Exit;
     screen.cursor := crHourGlass;
     v_aux := tbSolTradStatus.AsInteger;

     If v_aux <> 0 Then Begin
       pnlAguarde.Visible := True;
       EmailConecta();
       v_body := '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">'
                  + '<html><head><title>Cancelamento da Solicitação de Tradução/Classificação</title>'
                  + '<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">'
                  + '</head>';
       v_body := v_body +'<body bgcolor="#FFFFFF" style="font-size: 10pt"><FONT FACE="arial" >'
                  + '<table width="100%" border="1" cellspacing="0" cellpadding="1">'

                  +     '<tr>'
                  +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
                  +        '<br><font size="2"><B>Cancelamento da Solicitação de Tradução/Classificação Nº: </B>'+ qrSolicitacoesCodigo.AsString + '  -  <B>Data do Cancelamento:</B> ' + DateTimeToStr(Date)
                  +        '</font><br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                  +     '</tr>'

                  + '</table>'+ '<br><br>';

       b_cancelado := True;
       CorpoEmail(v_body, v_razao);
       EmailDePara();


       Mailmessage.ContentType := 'text/html';
       Mailmessage.Body.Add(v_body);
       MailMessage.Subject := 'MS2000 - Cancelamento da Solicitação de Tradução/Classificação Nº ' + qrSolicitacoesCodigo.AsString;
     End;
     dbGrid1.SetFocus;

       Try
         Try
           If v_aux <> 0 Then Begin
             SMTP.Connect(1000);
             SMTP.Send(MailMessage);
           End;
           pnlAguarde.Visible := False;
//           tbSolTrad.Edit;
  //         tbSolTradStatus.AsInteger := 1;
    //       tbSolTradData_solicitacao.AsDateTime := Date();
      //     tbSolTrad.Post;
//           cod := qrSolicitacoesCodigo.AsString;
  //         qrSolicitacoes.Close;
    //       qrSolicitacoes.Open;
      //     qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
        //   showmessage('1');
           tbSolTrad.Edit;
           tbSolTradStatus.AsInteger := 4;
           tbSolTradData_solicitacao.AsString := '';
           tbSolTradTradutor.AsString := '';
           tbSolTrad.Post;
           cod := qrSolicitacoesCodigo.AsString;
           qrSolicitacoes.Close;
           qrSolicitacoes.Open;
           qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
           btnReativar.Visible := True;
           btnCancSol.Visible := False;
           logusu('P','Cancelou Solicitação de Tradução/Classificação: [Cod]= '+tbSolTradCodigo.AsString + ' [remetente]= '+tbSolTradRemetente.AsString+' [Status]= '+tbSolTradStatus.AsString );
           If v_aux <> 0 Then
             MessageDlg('Email enviado com sucesso!', mtInformation,[mbOk], 0);

         Except on E:Exception do
          If v_aux <> 0 Then
            showmessage('Erro ao tentar enviar e-mail');
         End;
       Finally
         If v_aux <> 0 Then Begin
           If SMTP.Connected Then SMTP.Disconnect;
         End;
         screen.cursor := crDefault;
       End;
     pnlAguarde.Visible := False;



End;

procedure Tf_solTraCla.edtProcChange(Sender: TObject);
begin
    If Length(edtProc.Text) <> 8 Then
       Exit;

    qrProc.Close;
    Screen.Cursor := crHourGlass;
    qrProc.Params[0].AsString := edtProc.text;
    qrProc.Open;
    Screen.Cursor := crDefault;
    If qrProc.RecordCount < 1 Then Begin
      MessageDlg('Não há faturas referentes ao Processo!', mtInformation,[mbOk], 0);
      Exit;
    End;
    panel11.visible := True;
    bitbtn9.Enabled := True;
end;

procedure Tf_solTraCla.BitBtn9Click(Sender: TObject);
Var
  contador, v_codItens: Integer;
  cod : string;
  test: variant;

Begin
     tbitens.Filtered := false;
     test := (tbitens.Lookup('processo;fatura',VarArrayOf([edtproc.text,qrProcCodigo.AsString]),'codigo'));
     If Not (Trim(VarToStr(test)) = '') Then begin
       tbitens.Filtered := True;
       MessageDlg('Processo e Fatura já Existem na Solicitação '+test, mtInformation,[mbOk], 0);
//       qrSolicitacoes.Locate('codigo',test,[]);
       Exit;
     End;
     tbitens.Filtered := True;

     With tbItens Do Begin
         Filter := 'Codigo= '''+ qrSolicitacoesCodigo.AsString +''' ';
         Filtered := True;
         Open;
         Last;
         v_codItens := tbItensSequencial.AsInteger;
         filtered := False;
//         Append;
     End;
//        Else tbEdtItensSequencial.AsInteger := Succ(v_codItens);

  With Dbgrid3 Do Begin
      For contador:= 0 To Pred(SelectedRows.Count) Do Begin
        Datasource.Dataset.Bookmark:= SelectedRows[contador];
//        showmessage(qrProcDescricao.AsString);
        If v_codItens = Null Then v_codItens := 1 Else
          v_codItens := Succ(v_codItens);
        tbItens.Append;
        tbItensEmpresa.AsString := v_empresa;
        tbItensFilial.AsString := v_filial;
        tbItensCodigo.AsString := qrSolicitacoesCodigo.AsString;
        tbItensSequencial.AsInteger := v_codItens;
        tbItensProcesso.AsString := qrProcProcesso.AsString;
        tbItensFatura.AsString := qrProcCodigo.AsString;
        tbItens.Post;



      End;
  End;
/////////////////////////////

{     With tbItens Do Begin
         Filter := 'Codigo= '''+ qrSolicitacoesCodigo.AsString +''' ';
         Filtered := True;
         Open;
         Last;
         v_codItens := tbItensSequencial.AsInteger;
         filtered := False;
         Append;
     End;
     If v_codItens = Null Then tbItensSequencial.AsInteger := 1
        Else tbEdtItensSequencial.AsInteger := Succ(v_codItens);
 }
     pnlInclusaoItens.Visible := False;

//     qrItens.Close;
//     qrItens.Open;
     pnlPrincipal.Enabled := True;
     cod := qrSolicitacoesCodigo.AsString;
     qrSolicitacoes.Close;
     qrSolicitacoes.Open;
     qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
    qrProc.Close;
    panel11.visible := True;

//////////////////////////////
End;

procedure Tf_solTraCla.btnItemBusClick(Sender: TObject);
begin
     panel11.Visible := False;
     pnlPrincipal.Enabled := False;
     pnlInclusaoItens.Height := 273;
     pnlInclusaoItens.Left := round(pnlPrincipal.Width/2) - round(pnlSolicitacao.Width/2);
     pnlInclusaoItens.Top := round(pnlPrincipal.Height/2) - round(pnlSolicitacao.Height/2);
     pnlInclusaoItens.Visible := True;
     edtProc.SetFocus;
     edtProc.Text := '';
end;

procedure Tf_solTraCla.tbItensBeforePost(DataSet: TDataSet);
begin
exit;
end;

procedure Tf_solTraCla.tbItensBeforeEdit(DataSet: TDataSet);
begin
exit;
end;

procedure Tf_solTraCla.btnReativarClick(Sender: TObject);
var cod : String;
begin
     If MessageDlg('Tem certeza que Reativar a solicitação desta Tradução/Classificação?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then
       Exit;
     tbSolTrad.Edit;
     tbSolTradStatus.AsInteger := 0;
     tbSolTrad.Post;
     logusu('P','Reativou Solicitação de Tradução/Classificação: [Cod]= '+tbSolTradCodigo.AsString + ' [remetente]= '+tbSolTradRemetente.AsString+' [Status]= '+tbSolTradStatus.AsString);
     cod := qrSolicitacoesCodigo.AsString;
     qrSolicitacoes.Close;
     qrSolicitacoes.Open;
     qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
     btnReativar.Visible := False;
     btnCancSol.Visible := True;
     dbGrid1.SetFocus;
end;

procedure Tf_solTraCla.btnItemExcClick(Sender: TObject);
var cod : String;
begin
     If tbItens.RecordCount = 0 Then Begin
       MessageDlg('Insira um item primeiro!', mtInformation,[mbOk], 0);
       Exit;
     End;
     If MessageDlg('Tem certeza que deseja excluir este item de solicitação?', mtConfirmation,[mbYes, mbNo], 0) = mrYes Then Begin
       cod := qrSolicitacoesCodigo.AsString;
       tbItens.Delete;
       qrSolicitacoes.Close;
       qrSolicitacoes.Open;
       qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
     End;
end;

procedure Tf_solTraCla.btnNDOClick(Sender: TObject);
var cod, v_body, v_razao : String;
Begin
     If MessageDlg('A Tradução/Classificação está sendo efetuada?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then
       Exit;
//     pnlEmissao.Height := 160;
 //    pnlEmissao.Left := round(pnlPrincipal.Width/2) - round(pnlEmissao.Width/2);
  //   pnlEmissao.Top := round(pnlPrincipal.Height/2) - round(pnlEmissao.Height/2);
   //  pnlEmissao.Visible := True;

  //   If MessageDlg('A Tradução/Classificação está sendo efetuada?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then
    //   Exit;

     screen.cursor := crHourGlass;
     dbGrid1.SetFocus;
     pnlAguarde.Visible := True;
     EmailConecta();
                                   //   {gustavo}   Traduzindo/Classificando Solicitação de Tradução/Classificação Nº:
     v_body := '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">'
                + '<html><head><title>Traduzindo/Classificando Solicitação </title>'
                + '<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">'
                + '</head>';
     v_body := v_body +'<body bgcolor="#FFFFFF" style="font-size: 10pt"><FONT FACE="arial" >'


                      + '<table width="100%" border="1" cellspacing="0" cellpadding="1">'

                      +     '<tr>'
                      +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
                      +        '<br><B>Traduzindo/Classificando Solicitação Nº: </B>'+ qrSolicitacoesCodigo.AsString + '  -  <B>Data da Emissão:</B> ' + DateTimeToStr(Date)
                      +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                      +     '</tr>'

                      + '</table>'+ '<br><br>';

       b_emissor := True;
       CorpoEmail(v_body, v_razao);
       b_emissor := False;
       EmailDePara();
//       qrSolicitante.Close;
 //      qrSolicitante.Params[0].AsString := qrSolicitacoesRemetente.AsString;
  //     qrSolicitante.Open;

 //      Mailmessage.CCList.Add;
//       Mailmessage.CCList[mailmessage.CCList.Count-1].Address := qrSolicitanteEmail.AsString;// 'gustavo.guedes@logistic-ms.com.br';
 //      Mailmessage.CCList[mailmessage.CCList.Count-1].Name := qrSolicitanteNome_Completo.AsString;//  'Gustavo Guedes';
  //     Mailmessage.CCList[mailmessage.CCList.Count-1].Text := qrSolicitanteNome_Completo.AsString + '<' + qrSolicitanteEmail.AsString + '>';//'Gustavo Guedes'+'<gustavo.guedes@logistic-ms.com.br>';


       Mailmessage.ContentType := 'text/html';
       Mailmessage.Body.Add(v_body);
       MailMessage.Subject := 'MS2000 - Traduzindo/Classificando Solicitação Nº: ' + qrSolicitacoesCodigo.AsString;


       Try
         Try
           SMTP.Connect(1000);
           SMTP.Send(MailMessage);
           pnlAguarde.Visible := False;
           tbSolTrad.Edit;
           tbSolTradStatus.AsInteger := 2;
           tbSolTrad.Post;
           cod := qrSolicitacoesCodigo.AsString;
           qrSolicitacoes.Close;
           qrSolicitacoes.Open;
           qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
           logusu('P','TraduziNdo/ClassificaNdo: [Cod]= '+tbSolTradCodigo.AsString + ' [remetente]= '+tbSolTradRemetente.AsString+' [Status]= '+tbSolTradStatus.AsString);
           MessageDlg('Email enviado com sucesso!', mtInformation,[mbOk], 0);

         Except on E:Exception do
           showmessage('Erro ao tentar enviar e-mail');
         End;
       Finally
         If SMTP.Connected Then SMTP.Disconnect;
         screen.cursor := crDefault;
       End;
     pnlAguarde.Visible := False;




//     DBLookupComboBox1.KeyValue := '';
//     dbedit10.Text := '';
//     dbedit11.Text := DateTimeToStr(Date());

end;

procedure Tf_solTraCla.tbSolTradAfterPost(DataSet: TDataSet);
begin
     With f_mscomex Do Begin
         logusu('P','Alterou Solicitação de Tradução/Classificação: [Cod]= '+tbSolTradCodigo.AsString + ' [remetente]= '+tbSolTradRemetente.AsString+' [Status]= '+tbSolTradStatus.AsString);
     End;

end;

procedure Tf_solTraCla.tbItensAfterPost(DataSet: TDataSet);
begin
     With f_mscomex Do Begin
         logusu('P','Alterou Item de Solicitação de Tradução/Classificação: [Cod]= '+tbItensCodigo.AsString + ' [Sequencial]= '+tbItensSequencial.AsString+' [Processo]= '+tbItensProcesso.AsString+' [Fatura]= '+tbItensFatura.AsString);
     End;

end;

procedure Tf_solTraCla.tbItensBeforeDelete(DataSet: TDataSet);
begin
     With f_mscomex Do Begin
         logusu('E','Excluiu Item de Solicitação de Tradução/Classificação: [Cod]= '+tbItensCodigo.AsString + ' [Sequencial]= '+tbItensSequencial.AsString+' [Processo]= '+tbItensProcesso.AsString+' [Fatura]= '+tbItensFatura.AsString);
     End;

end;

procedure Tf_solTraCla.tbSolTradBeforeDelete(DataSet: TDataSet);
begin
     With f_mscomex Do Begin
         logusu('E','Excluiu Solicitação de Tradução/Classificação: [Cod]= '+tbSolTradCodigo.AsString + ' [remetente]= '+tbSolTradRemetente.AsString+' [Status]= '+tbSolTradStatus.AsString);
     End;

end;

procedure Tf_solTraCla.DBLookupComboBox2Click(Sender: TObject);
begin
     If Not cbVerTodos.Checked Then Begin
       qrSolicitacoes.Close;
       qrSolicitacoes.Params[3].AsString := qrListaStatusCodigo.AsString;
       qrSolicitacoes.Open;
       If qrSolicitacoes.RecordCount = 0 Then tbItens.Close
       Else tbItens.Open;
     End;
end;

procedure Tf_solTraCla.btnEmitirClick(Sender: TObject);
var cod: string;
begin
     pnlBrowser.visible := False;

     pnlAguarde.Visible := True;
     pnlAguarde.Refresh;
     screen.cursor := crHourGlass;

       Try
         Try
           SMTP.Connect(1000);
           SMTP.Send(MailMessage);
           pnlAguarde.Visible := False;
//           tbSolTrad.Edit;
           tbSolTradStatus.AsInteger := 2;
           tbSolTrad.Post;
           cod := qrSolicitacoesCodigo.AsString;
           qrSolicitacoes.Close;
           qrSolicitacoes.Open;
           qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
//           btnReativar.Visible := True;
           btnCancSol.Enabled := False;
           logusu('P','Concluiu Solicitação de Tradução/Classificação: [Cod]= '+tbSolTradCodigo.AsString + ' [remetente]= '+tbSolTradRemetente.AsString+' [Status]= '+tbSolTradStatus.AsString);
           MessageDlg('Email enviado com sucesso!', mtInformation,[mbOk], 0);

         Except on E:Exception do
           showmessage('Erro ao tentar enviar e-mail');
         End;
       Finally
         If SMTP.Connected Then SMTP.Disconnect;
         screen.cursor := crDefault;
       End;
     pnlAguarde.Visible := False;
end;

procedure Tf_solTraCla.btnimprimirClick(Sender: TObject);
begin
    WebBrowser1.ExecWB(OLECMDID_PRINT, OLECMDEXECOPT_PROMPTUSER);
end;

procedure Tf_solTraCla.DBGrid1DblClick(Sender: TObject);
Var v_body, v_razao : String;
begin
     If qrSolicitacoes.IsEmpty Then Exit;
     If Not tbItens.Locate('codigo',qrSolicitacoesCodigo.AsString,[]) Then begin
       MessageDlg('Não há itens nessa solicitação. É necessário haver ao menos um item!', mtInformation,[mbOK], 0);
       Exit;
     End;
     screen.cursor := crHourGlass;
     v_body := '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">'
                + '<html><head><title>Solicitação de Tradução/Classificação</title>'
                + '<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">'
                + '</head>';
     v_body := v_body +'<body bgcolor="#FFFFFF" style="font-size: 10pt"><FONT FACE="arial" >'


                      + '<table width="100%" border="1" cellspacing="0" cellpadding="1">'

                      +     '<tr>'
                      +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
                      +          '<br><B>Solicitação de Tradução/Classificação Nº:</B> '+ qrSolicitacoesCodigo.AsString + '  -  <B>Data da Solicitação:</B> ' + DateTimeToStr(Date)
                      +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                      +     '</tr>'

                      + '</table>'+ '<br><br>';


       CorpoEmail(v_body, v_razao);

       AppendToWB(WebBrowser1,v_body);
       pnlAguarde.Visible := False;
       pnlbrowser.Align := alClient;
       pnlbrowser.visible := true;
       pnlbrowser.top := 0;
       pnlbrowser.left := 0;
       screen.cursor := crDefault;
       pnlBroConSol.Visible := False;
       pnlImprimir.Visible := True;

end;

procedure Tf_solTraCla.BitBtn7Click(Sender: TObject);
begin
     pnlBrowser.Visible := False;

end;

procedure Tf_solTraCla.BitBtn11Click(Sender: TObject);
begin
     b_solicitado := False;
     b_solicitado2 := False;
     pnlBrowser.Visible := False;
     tbSolTrad.Cancel;

end;

procedure Tf_solTraCla.BitBtn10Click(Sender: TObject);
var cod: string;
begin
     pnlBrowser.visible := False;
     pnlPrincipal.Refresh;
     pnlAguarde.Visible := True;
     pnlAguarde.Refresh;
     screen.cursor := crHourGlass;
       Try
         Try
           SMTP.Connect(1000);
           SMTP.Send(MailMessage);
           pnlAguarde.Visible := False;
           tbSolTradStatus.AsInteger := 1;
           tbSolTradData_solicitacao.AsDateTime := Date();
           tbSolTradTradutor.AsString := qrTradutorUsuario.AsString;
           tbSolTrad.Post;
           cod := qrSolicitacoesCodigo.AsString;
           qrSolicitacoes.Close;
           qrSolicitacoes.Open;
           qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
           logusu('P','Solicitou Tradução/Classificação: [Cod]= '+tbSolTradCodigo.AsString + ' [remetente]= '+tbSolTradRemetente.AsString+' [Status]= '+tbSolTradStatus.AsString);
           MessageDlg('Solicitação enviada com sucesso!', mtInformation,[mbOk], 0);

         Except on E:Exception do
           showmessage('Erro ao tentar enviar e-mail');
         End;
       Finally
         If SMTP.Connected Then SMTP.Disconnect;
         screen.cursor := crDefault;
       End;
     pnlAguarde.Visible := False;

end;


procedure Tf_solTraCla.DBLookupComboBox1Click(Sender: TObject);
begin
     If Not cbVerTodosUsu.Checked Then Begin
       qrSolicitacoes.Close;
       qrSolicitacoes.Params[1].AsString := qrListaTradutorUsuario.AsString;
       qrSolicitacoes.Open;
       If qrSolicitacoes.RecordCount = 0 Then tbItens.Close
       Else tbItens.Open;
     End;

end;

procedure Tf_solTraCla.cbVerTodosUsuClick(Sender: TObject);
begin
     If cbVerTodosUsu.Checked Then Begin
       qrSolicitacoes.Close;
       qrSolicitacoes.Params[1].AsString := '%';
       qrSolicitacoes.Open;
       DBLookupComboBox1.Enabled := False;
     End
     Else Begin
       DBLookupComboBox1.Enabled := True;
       qrSolicitacoes.Close;
       qrSolicitacoes.Params[1].AsString := qrListaTradutorUsuario.AsString;
       qrSolicitacoes.Open;
     End;
     If qrSolicitacoes.RecordCount = 0 Then tbItens.Close
     Else tbItens.Open;

end;

procedure Tf_solTraCla.btnDOClick(Sender: TObject);
Var
   cod, v_body, v_razao : String;
begin
     If MessageDlg('A Tradução/Classificação está concluída?', mtConfirmation,[mbYes, mbNo], 0) = mrNo Then
       Exit;
     screen.cursor := crHourGlass;
     dbGrid1.SetFocus;
     pnlAguarde.Visible := True;
     EmailConecta();

     v_body := '<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">'
                + '<html><head><title>Conclusão de Tradução/Classificação da Solicitação</title>'
                + '<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">'
                + '</head>';
     v_body := v_body +'<body bgcolor="#FFFFFF" style="font-size: 10pt"><FONT FACE="arial" >'


                      + '<table width="100%" border="1" cellspacing="0" cellpadding="1">'

                      +     '<tr>'
                      +        '<td colspan="2" align="center" bgcolor="#EEEEEE"><B>MS2000 - SISTEMA GERENCIAL ADUANEIRO</B>'
                      +        '<br><B>Conclusão de Tradução/Classificação da Solicitação Nº: </B>'+ qrSolicitacoesCodigo.AsString + '  -  <B>Data da Emissão:</B> ' + DateTimeToStr(Date)
                      +        '<br>' + FormatDateTime('dddd, d " de " mmmm " de " yyyy " às " hh:mm:ss', Now()) + '</td>'
                      +     '</tr>'

                      + '</table>'+ '<br><br>';

       b_emissor := True;
       CorpoEmail(v_body, v_razao);
       b_emissor := False;
       EmailDePara();
//       qrSolicitante.Close;
//       qrSolicitante.Params[0].AsString := qrSolicitacoesRemetente.AsString;
 //      qrSolicitante.Open;

 //      Mailmessage.CCList.Add;
  //     Mailmessage.CCList[mailmessage.CCList.Count-1].Address := qrSolicitanteEmail.AsString;// 'gustavo.guedes@logistic-ms.com.br';
   //    Mailmessage.CCList[mailmessage.CCList.Count-1].Name := qrSolicitanteNome_Completo.AsString;//  'Gustavo Guedes';
    //   Mailmessage.CCList[mailmessage.CCList.Count-1].Text := qrSolicitanteNome_Completo.AsString + '<' + qrSolicitanteEmail.AsString + '>';//'Gustavo Guedes'+'<gustavo.guedes@logistic-ms.com.br>';


       Mailmessage.ContentType := 'text/html';
       Mailmessage.Body.Add(v_body);
       MailMessage.Subject := 'MS2000 - Conclusão de Tradução/Classificação da Solicitação ' + qrSolicitacoesCodigo.AsString;

       Try
         Try
           SMTP.Connect(1000);
           SMTP.Send(MailMessage);
           pnlAguarde.Visible := False;
           tbSolTrad.Edit;
           tbSolTradStatus.AsInteger := 3;
           tbSolTradData_Traducao.AsDateTime := Date();

           tbSolTrad.Post;
           cod := qrSolicitacoesCodigo.AsString;
           qrSolicitacoes.Close;
           qrSolicitacoes.Open;
           qrSolicitacoes.Locate('Codigo',cod,[loCaseInsensitive]);
           logusu('P','Conclusão de Tradução/Classificação: [Cod]= '+tbSolTradCodigo.AsString + ' [remetente]= '+tbSolTradRemetente.AsString+' [Status]= '+tbSolTradStatus.AsString);
           MessageDlg('Email enviado com sucesso!', mtInformation,[mbOk], 0);

         Except on E:Exception do
           showmessage('Erro ao tentar enviar e-mail');
         End;
       Finally
         If SMTP.Connected Then SMTP.Disconnect;
         screen.cursor := crDefault;
       End;
     pnlAguarde.Visible := False;


end;

procedure Tf_solTraCla.cbVerTodosSolClick(Sender: TObject);
begin
     If cbVerTodosSol.Checked Then Begin
       qrSolicitacoes.Close;
       qrSolicitacoes.Params[0].AsString := '%';
       qrSolicitacoes.Open;
       DBLookupComboBox3.Enabled := False;
     End
     Else Begin
       DBLookupComboBox3.Enabled := True;
       qrSolicitacoes.Close;
       qrSolicitacoes.Params[0].AsString := qrListaUsuariosUsuario.AsString;
       qrSolicitacoes.Open;
     End;
     If qrSolicitacoes.RecordCount = 0 Then tbItens.Close
     Else tbItens.Open;

end;

procedure Tf_solTraCla.DBLookupComboBox3Click(Sender: TObject);
begin
     If Not cbVerTodosSol.Checked Then Begin
       qrSolicitacoes.Close;
       qrSolicitacoes.Params[0].AsString := qrListaUsuariosUsuario.AsString;
       qrSolicitacoes.Open;
       If qrSolicitacoes.RecordCount = 0 Then tbItens.Close
       Else tbItens.Open;
     End;

end;

procedure Tf_solTraCla.BitBtn5Click(Sender: TObject);
begin
     panel1.enabled := true;
     panel3.enabled := true;
     tbSolTrad.Post;
     dbmemo1.ReadOnly := True;
     bitbtn2.Enabled := True;
     bitbtn5.Enabled := False;
end;

procedure Tf_solTraCla.BitBtn2Click(Sender: TObject);
begin
     panel1.enabled := FAlse;
     panel3.enabled := FAlse;
     tbSolTrad.Edit;
     bitbtn2.Enabled := False;
     bitbtn5.Enabled := True;
     dbmemo1.ReadOnly := False;
     dbmemo1.SetFocus;
End;

procedure Tf_solTraCla.qrSolicitacoesAfterOpen(DataSet: TDataSet);
begin
     If qrSolicitacoes.RecordCount < 1 Then Begin
        btnCancSol.Enabled := False;
        btnSolicita.Enabled := False;
        btnReativar.Enabled := False;
        btnNDO.Enabled := False;
        btnDO.Enabled := False;
        panel6.Enabled := False;
        panel2.Enabled := False;
     End;

end;

End.

