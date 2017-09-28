unit u_prodocinstru;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Mask, DBCtrls, ExtCtrls, Grids, DBGrids, Buttons;

type
  Tf_prodocinstru = class(TForm)
    Panel1: TPanel;
    Label14: TLabel;
    me_nossaref: TMaskEdit;
    pnlPrincipal: TPanel;
    DBGrid1: TDBGrid;
    DBLC_TIPO: TDBLookupComboBox;
    b_novo: TBitBtn;
    b_grava: TBitBtn;
    b_exclui: TBitBtn;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    l_cliente: TLabel;
    q_tipos: TQuery;
    ds_tipos: TDataSource;
    q_prodocs: TQuery;
    dsprodocs: TDataSource;
    t_prodocs: TTable;
    dstprodocs: TDataSource;
    DBEdit2: TDBEdit;
    q_docsinstru: TQuery;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosProcesso: TStringField;
    qrProcessosData: TDateTimeField;
    qrProcessosrefcli: TStringField;
    qrProcessosCliente: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessostipopro: TStringField;
    qrProcessosqcontrato: TStringField;
    qrProcessosqlocal: TStringField;
    qrProcessosImportador: TStringField;
    qrProcessosqresp: TStringField;
    qrProcessosCGC_CPF: TStringField;
    qrProcessosqcnpj: TStringField;
    qrProcessosqdi: TStringField;
    qrProcessosFechado: TSmallintField;
    qrProcessosATIVO: TSmallintField;
    qrProcessosResponsavel_empresa: TStringField;
    qrProcessosResponsavel_empresac: TStringField;
    q_tiposCODIGO: TStringField;
    q_tiposDESCRICAO: TStringField;
    q_docsinstruNR_DECL_IMP_MICRO: TStringField;
    q_docsinstrucod_fat: TStringField;
    q_docsinstrutipo_doc01: TStringField;
    q_docsinstruFatura: TStringField;
    q_docsinstrucod_co: TStringField;
    q_docsinstrutipo_doc02: TStringField;
    q_docsinstruCertificado_Origem: TStringField;
    q_prodocsEmpresa: TStringField;
    q_prodocsFilial: TStringField;
    q_prodocsProcesso: TStringField;
    q_prodocsREG: TAutoIncField;
    q_prodocsDESCRICAO: TStringField;
    q_prodocsCD_TIPO_DCTO_INSTR: TStringField;
    q_prodocsNR_DCTO_INSTRUCAO: TStringField;
    q_prodocs_insert: TQuery;
    t_prodocsEmpresa: TStringField;
    t_prodocsFilial: TStringField;
    t_prodocsProcesso: TStringField;
    t_prodocsREG: TAutoIncField;
    t_prodocsNR_DCTO_INSTRUCAO: TStringField;
    t_prodocsCD_TIPO_DCTO_INSTR: TStringField;
    t_prodocsNM_DCTO_INSTRUCAO: TStringField;
    q_prodocsDelete: TQuery;
    qrProcessosTipo: TStringField;
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure b_excluiClick(Sender: TObject);
    procedure b_gravaClick(Sender: TObject);
    procedure b_novoClick(Sender: TObject);
    procedure me_nossarefKeyPress(Sender: TObject; var Key: Char);
    procedure me_nossarefChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure q_prodocsAfterOpen(DataSet: TDataSet);
    procedure consultar();
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  f_prodocinstru: Tf_prodocinstru;

implementation

uses U_MSCOMEX;

{$R *.DFM}

procedure Tf_prodocinstru.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;

{     h := Height;
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
     width := w;  }

end;

procedure Tf_prodocinstru.FormClose(Sender: TObject; var Action: TCloseAction);
begin
action   := cafree;
f_prodocinstru := nil;
f_mscomex.DocumentosdeInstruo1.enabled := true;

end;

procedure Tf_prodocinstru.b_excluiClick(Sender: TObject);
begin
  if (v_AlteraPRO = 1) then begin
    if MessageDlg('Confirma exclusão deste Documento de Instrução?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then begin
      //t_prodocs.Delete;
      q_prodocsDelete.Params[0].Value := t_prodocsProcesso.AsString;
      q_prodocsDelete.Params[1].Value := t_prodocsREG.AsString;
      q_prodocsDelete.ExecSQL;
      q_prodocs.Close;
      q_prodocs.open;
    end;
  end
  else begin
      Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
  end;
end;

procedure Tf_prodocinstru.b_gravaClick(Sender: TObject);
var qreg:integer;
begin
if (v_AlteraPRO = 1) then begin
  t_prodocs.edit;
  t_prodocsNM_DCTO_INSTRUCAO.asstring  :=  q_tiposdescricao.asstring;
  t_prodocs.post;
  qreg := t_prodocsreg.asinteger;

  q_prodocs.Close;
  q_prodocs.open;
  while (not q_prodocs.eof) and (qreg<>q_prodocsreg.asinteger) do begin
      q_prodocs.next;
  end;

end

else begin
      Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;      

end;

procedure Tf_prodocinstru.b_novoClick(Sender: TObject);
begin
if (v_AlteraPRO = 1) then begin
        q_prodocs_insert.close;
        q_prodocs_insert.Params[0].asstring := qrprocessosempresa.asstring;
        q_prodocs_insert.Params[1].asstring  := qrprocessosfilial.asstring;
        q_prodocs_insert.Params[2].asstring := qrprocessosprocesso.asstring;
        {q_prodocs_insert.Params[3] :=
        q_prodocs_insert.Params[4] :=
        q_prodocs_insert.Params[5] :=}
        q_prodocs_insert.ExecSQL;
        consultar();
        
  {if t_prodocs.RecordCount<>0 then t_prodocs.append;
  t_prodocs.edit;
  t_prodocsempresa.asstring := qrprocessosempresa.asstring;
  t_prodocsfilial.asstring := qrprocessosfilial.asstring;
  t_prodocsprocesso.asstring := qrprocessosprocesso.asstring;
  t_prodocs.post;
  q_prodocs.Close;
  q_prodocs.open;}
end

else begin
      Showmessage(v_usuario+', ATENÇÃO! Acesso não permitido à processos sob Responsabilidade e/ou o processo está fechado e/ou o Cliente está Inativo.');
end;      
end;

procedure Tf_prodocinstru.me_nossarefKeyPress(Sender: TObject; var Key: Char);
begin
   if key = chr(13) then DBLC_TIPO.setfocus;
end;

procedure Tf_prodocinstru.me_nossarefChange(Sender: TObject);
begin
  // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
  If (IsClosedProcess( me_nossaref.Text, f_prodocinstru )) Then
    Abort;
  //--
  consultar();
end;

procedure Tf_prodocinstru.FormCreate(Sender: TObject);
begin
q_tipos.open;
end;

procedure Tf_prodocinstru.q_prodocsAfterOpen(DataSet: TDataSet);
begin
if q_prodocs.RecordCount=0 then begin
b_grava.Enabled := false;
b_exclui.Enabled := false;
end
else begin
b_grava.Enabled := true;
b_exclui.Enabled := true;

end;
end;

procedure Tf_prodocinstru.consultar();
var cnpj: String;
begin
        If Length(me_nossaref.Text) <> 8 Then
                Exit;

        Screen.Cursor := crHourGlass;

        With qrProcessos Do Begin
                Close;  Open;
        End;
        If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin

                //  vEmp := qrProcessosEmpresa.AsString;
                //  vFil := qrProcessosFilial.AsString;
                //  vPro := qrProcessosProcesso.AsString;

                t_prodocs.close;
                q_prodocs.close;
                q_prodocs.Params[0].AsString := qrProcessosProcesso.AsString;
                q_prodocs.open;
                t_prodocs.open;

                {verifica documentos de instrucao}
                q_docsinstru.Close;
                q_docsinstru.Params[0].AsString := qrProcessosempresa.asstring;
                q_docsinstru.Params[1].AsString := qrProcessosfilial.asstring;
                q_docsinstru.Params[2].AsString := qrProcessosProcesso.AsString;
                q_docsinstru.open;

                q_docsinstru.first;

                while not q_docsinstru.eof do begin

                        If not q_prodocs.Locate('NR_DCTO_INSTRUCAO', q_docsinstruFatura.asstring, [loCaseInsensitive]) Then Begin

                                if t_prodocs.RecordCount<>0 then t_prodocs.append;
                           //     SHOWMESSAGE('aqui1');
                                t_prodocs.edit;
                                t_prodocsEmpresa.asstring            :=  qrProcessosempresa.asstring;
                                t_prodocsFilial.asstring             :=  qrProcessosfilial.asstring;
                                t_prodocsProcesso.asstring           :=  qrProcessosProcesso.AsString;
                                t_prodocsREG.AsString := '';
                                t_prodocsNR_DCTO_INSTRUCAO.asstring  :=  q_docsinstruFatura.asstring;
                                t_prodocsCD_TIPO_DCTO_INSTR.asstring :=  q_docsinstrucod_fat.asstring;
                                t_prodocsNM_DCTO_INSTRUCAO.asstring  :=  q_docsinstrutipo_doc01.asstring;
                                t_prodocs.post;

                        end;

                        if q_docsinstruCertificado_Origem.asstring <> '' then begin
                                If not q_prodocs.Locate('NR_DCTO_INSTRUCAO', q_docsinstruCertificado_Origem.asstring, [loCaseInsensitive]) Then Begin
                                        if t_prodocs.RecordCount<>0 then t_prodocs.append;
                         //               SHOWMESSAGE('aqui2');
                                        t_prodocs.edit;
                                        t_prodocsEmpresa.asstring            :=  qrProcessosempresa.asstring;
                                        t_prodocsFilial.asstring             :=  qrProcessosfilial.asstring;
                                        t_prodocsProcesso.asstring           :=  qrProcessosProcesso.AsString;
                                        t_prodocsREG.AsString := '';
                                        t_prodocsNR_DCTO_INSTRUCAO.asstring  :=  q_docsinstruCertificado_Origem.asstring;
                                        t_prodocsCD_TIPO_DCTO_INSTR.asstring :=  q_docsinstrucod_co.asstring;
                                        t_prodocsNM_DCTO_INSTRUCAO.asstring  :=  q_docsinstrutipo_doc02.asstring;
                                        t_prodocs.post;

                                end;
                        end;

                        q_docsinstru.next;
                end;

                {If not q_prodocs.Locate('NR_DCTO_INSTRUCAO', 'PACKING LIST', [loCaseInsensitive]) Then Begin

                        if t_prodocs.RecordCount<>0 then t_prodocs.append;
                       // SHOWMESSAGE('aqui3');
                        t_prodocs.edit;
                        t_prodocsEmpresa.asstring            :=  qrProcessosempresa.asstring;
                        t_prodocsFilial.asstring             :=  qrProcessosfilial.asstring;
                        t_prodocsProcesso.asstring           :=  qrProcessosProcesso.AsString;
                        t_prodocsNR_DCTO_INSTRUCAO.asstring  :=  'PACKING LIST';
                        t_prodocsCD_TIPO_DCTO_INSTR.asstring :=  '26';
                        t_prodocsNM_DCTO_INSTRUCAO.asstring  :=  'PACKING LIST';
                        t_prodocs.post;

                end;}


                t_prodocs.close;
                q_prodocs.close;
                q_prodocs.Params[0].AsString := qrProcessosProcesso.AsString;
                q_prodocs.open;
                t_prodocs.open;

                ///alterei em 27/07/2005 - mm - chupisco!!!
                v_AlteraPRO := 1;
                If ( qrprocessosAtivo.asinteger = 0) then begin
                        If (v_Edita_cliente_inativo = 0)  then begin
                                Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
                                v_AlteraPRO := 0;
                        end;
                end;
                If (qrprocessosFechado.asinteger = 1) then begin
                        If (v_Edita_Processo_Fechado = 0)  then begin
                                Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
                                v_AlteraPRO := 0;
                        end
                        else v_AlteraPRO := 1;
                end;

                if F_MSCOMEX.AcessaPasta(me_nossaref.Text, qrProcessostipo.AsString, f_prodocinstru)
                 then v_AlteraPRO := 1;

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
                F_MSCOMEX.atualizacpastas(ME_nossaref.text);
                If v_autorizadocli = 1 Then Begin

                        cnpj := qrprocessosqcnpj.asstring;
                        cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

                        l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
                        pnlPrincipal.Visible := True;
//                      pnlBaixo.Visible := True;

                End
                Else Begin
                        l_cliente.Caption := '';
                        pnlPrincipal.Visible := False;
//                      pnlBaixo.Visible := False;
                        Showmessage(v_usuario+', este Processo pertence a um Cliente que seu acesso não está permitido!');
                End;
        End
        Else Begin
                MessageDlg('Processo não encontrado!', mtInformation,[mbOk], 0);
                l_cliente.Caption := '';
                me_nossaref.Clear;
                pnlPrincipal.Visible := False;
//              pnlBaixo.Visible := False;
                me_nossaref.SetFocus;
        End;
        Screen.Cursor := crDefault;

end;

end.
