unit U_Relprestcontas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DBCtrls, Db, Grids, DBGrids, DBTables, Buttons, ComCtrls, Mask,
  ExtCtrls, ComObj, jpeg;

type
  TF_relprestcontas = class(TForm)
    q_Import: TQuery;
    dsImport: TDataSource;
    Label3: TLabel;
    dblcbCli: TDBLookupComboBox;
    Label1: TLabel;
    me_dini: TMaskEdit;
    L_dataini: TLabel;
    me_dfin: TMaskEdit;
    Label2: TLabel;
    b_planilha: TBitBtn;
    Image1: TImage;
    q_processos: TQuery;
    q_num: TQuery;
    q_cre: TQuery;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    q_pronum: TQuery;
    q_pronumImportador: TStringField;
    q_pronumProcesso: TStringField;
    q_procre: TQuery;
    q_procreImportador: TStringField;
    q_procreProcesso: TStringField;
    cb_saldos: TCheckBox;
    q_ImportEmpresa: TStringField;
    q_ImportFilial: TStringField;
    q_ImportCodigo: TStringField;
    q_ImportRazao_Social: TStringField;
    q_ImportCNPJ_CPF_COMPLETO: TStringField;
    q_ImportCGC_CPF: TStringField;
    q_processosImportador: TStringField;
    q_processosData: TDateTimeField;
    q_processosCodigo: TStringField;
    q_processosNumerodoccarga: TStringField;
    q_processosNumeromaster: TStringField;
    q_processosNumero_TR: TStringField;
    q_processosTipo: TStringField;
    q_processosCodigo_Cliente: TStringField;
    q_processosDescricao: TStringField;
    q_processosembarcacao: TStringField;
    q_processosSaldo_Faturamento: TFloatField;
    q_numEmpresa: TStringField;
    q_numFilial: TStringField;
    q_numProcesso: TStringField;
    q_numREG: TAutoIncField;
    q_numNumerario: TStringField;
    q_numUsuario_Previsao: TStringField;
    q_numData_Previsao: TDateTimeField;
    q_numValor_Previsao: TFloatField;
    q_numPrevisao_solicitada: TStringField;
    q_numOk_Previsao_financeiro: TStringField;
    q_numUsuario_Financeiro: TStringField;
    q_numData_Registro: TDateTimeField;
    q_numValor_Registrado: TFloatField;
    q_numValor_Contabilizado: TFloatField;
    q_numContabilizado: TStringField;
    q_numUsuario_Contablizado: TStringField;
    q_numConta_Corrente: TIntegerField;
    q_numCodigo_mov: TIntegerField;
    q_numImpdemfim: TStringField;
    q_numDetalhe: TStringField;
    q_numDocsis: TStringField;
    q_numFatura_mov: TStringField;
    q_numFornecedor: TStringField;
    q_numCodigo: TStringField;
    q_numContabilizado_cliente: TIntegerField;
    q_numREG_creditos: TIntegerField;
    q_numProcesso_FundoFIXO: TStringField;
    q_creEmpresa: TStringField;
    q_creFilial: TStringField;
    q_creProcesso: TStringField;
    q_creREG: TAutoIncField;
    q_creCredito: TStringField;
    q_creData_Credito: TDateTimeField;
    q_creValor: TFloatField;
    q_creConta_Corrente: TIntegerField;
    q_creCodigo_mov: TIntegerField;
    q_creContabilizado: TStringField;
    q_creImpdemfim: TStringField;
    q_creContabilizado_cliente: TIntegerField;
    q_creREG_numerarios: TIntegerField;
    q_creProcesso_FundoFIXO: TStringField;
    q_creDetalhe: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure b_planilhaClick(Sender: TObject);
    Procedure CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

Const
  Aleft = -4131;
  Aright = -4152;
  ACenter = -4108;
    
var
  F_relprestcontas: TF_relprestcontas;
  excel : Variant;
  planilha_0,planilha,arqdir,arqnome,linha,expor:string;

implementation

uses U_relDebCred, U_MSCOMEX, u_extratopro_geral;

{$R *.DFM}

procedure TF_relprestcontas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
        action := cafree;
        F_relprestcontas := nil;
        f_mscomex.PlanilhaPrestaodeContas1.enabled := true;
end;

procedure TF_relprestcontas.FormActivate(Sender: TObject);
var s,w,h,m,p:integer;
mc:string;

begin

     Left := 1;
     Top  := 1;


    { h := Height;
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

procedure TF_relprestcontas.FormCreate(Sender: TObject);
begin
     q_import.Params[0].AsString := v_empresa;
     q_import.Params[1].AsString := v_filial;
     q_import.Open;
end;

procedure TF_relprestcontas.b_planilhaClick(Sender: TObject);
var
   sheet : Variant;
   v_cred_i, v_deb_i, coluna, aux,auy, aue, teste , linha2, col2: Integer;
   h_est, h_tot, dir_cor, v_form_aux, astring, astring2, vpro, qpro, osprocessos,osprocessos2, qdocs: string;
   t_emp,t_emp2, pos_form_cred, pos_form_deb : integer;
   i,j : integer;
   FIni,FFim, FFim0 : TDateTime;
   qvalor,qcpmf:real;
   entra:boolean;

begin
     {$I-}
     image1.Picture.SaveToFile('c:\ms2000\logoms.jpg');
     If me_dIni.Text = '  /  /    ' Then me_dIni.Text := '01/01/1900';
     If me_dFin.Text = '  /  /    ' Then me_dFin.Text := '01/01/2010';
     data := FormatDateTime(' dd/mm/yyyy - hh:nn:ss ', Now);
     data_arq := FormatDateTime(' yyyy/mm/dd - ', Now);
     nome_arq := q_ImportCNPJ_CPF_COMPLETO.AsString;
     System.GetDir(0,dir_cor);
     dir_cor := dir_cor + '\Planilhas_Ms2000';
     MkDir(dir_cor);

     Excel:=CreateOleObject('Excel.Application');
     Excel.Application.DisplayAlerts := False;
     Excel.Visible := True;
     excel.Workbooks.add(1);

     Excel.Worksheets[1].Name := 'Prestação de Contas';
     Excel.WorkSheets['Prestação de Contas'].Select;
     Excel.WorkSheets['Prestação de Contas'].Shapes.AddPicture ('c:\ms2000\logoms.jpg', True, True, 1, 0, 145, 65);
     Excel.Cells[1,3] := v_empresanome; //'MS2000 - Sistema Gerencial Aduaneiro';'MS2000 - Sistema Gerencial Aduaneiro';
     Excel.Cells[1,3].Font.Size := 12;
     Excel.cells[1,3].Font.Bold := True;
     Excel.Cells[2,3] := 'PRESTAÇÃO DE CONTAS - V 1.0 - '+ FormatDateTime('dd/mm/yyyy "às" hh:nn', Now());
     Excel.cells[2,3].Font.Bold := True;
     Excel.Cells[3,3] := 'Empresa: ' + q_ImportRazao_Social.AsString + ' - CNPJ: ' + q_ImportCNPJ_CPF_COMPLETO.AsString;
     Excel.Cells[3,3].Font.Size := 12;
     Excel.cells[3,3].Font.Bold := True;

         If (me_dIni.Text = '01/01/1900') And (me_dFin.Text = '01/01/2010') Then
           Excel.Cells[4,3] := 'Período: Visão Geral'
         Else Excel.Cells[4,3] := 'Período: ' + me_dIni.Text + ' até ' + me_dFin.Text;

         Excel.Cells[5,3] := 'Data da Consulta: ' + data;
         Excel.ActiveWindow.DisplayGridlines := TRUE;
     //    Excel.Worksheets.Add;

     linha2:=6;

     Celtitulo(linha2, 1,'FILE', clWhite, ACenter, clBlack, 8, 10);
     Celtitulo(linha2, 2,'AWB/BL/HAWB/TR', clWhite, ACenter, clBlack, 8, 20);
     Celtitulo(linha2, 3,'REG - REGIME', clWhite, ACenter, clBlack, 8, 20);
     Celtitulo(linha2, 4,'SERVIÇO DESPACHANTE ADUANEIRO', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2, 5,'IMPORTAÇÃO EMBARCAÇÃO', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2, 6,'ARMAZ.(AIRJ)/PORTO', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2, 7,'ARMAZ. CABO FRIO', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2, 8,'SEPETIBA TECON  E TMC', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2, 9,'ICMS', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,10,'II', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,11,'IPI', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,12,'MULTA RETIFICAÇÃO', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,13,'PIS', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,14,'COFINS', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,15,'TX. SISCOMEX/LI', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,16,'DESOVA/DEMURRAGE', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,17,'TX. LIB. AWB/BL/FUMIG', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,18,'AFRMM', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,19,'DESP. CARTÓRIO/DESP.DIVERSAS', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,20,'PORTOLOG  FRETE DTA', clWhite, ACenter, clBlack, 8, 12);
//     Celtitulo(linha2,21,'TRANSPORTADORA J.J DA VILA NORMA LTDA', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,21,'CPMF', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,22,'VALOR BRUTO', clYellow , ACenter, clBlack, 8, 12);
     Celtitulo(linha2,23,'IR', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,24,'COFINS', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,25,'ADIANTAMENTO', clWhite, ACenter, clBlack, 8, 14);
     Celtitulo(linha2,26,'VALOR LIQUIDO', clYellow, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,27,'SALDO FATURAMENTO', clWhite, ACenter, clBlack, 8, 12);
     Celtitulo(linha2,28,'EMBARCAÇÃO', clAqua, ACenter, clBlack, 8, 20);
     Celtitulo(linha2,29,'DOCUMENTOS', clWhite, ACenter, clBlack, 8, 20);
     Excel.Range['A'+IntToStr(linha2), 'AC'+IntToStr(linha2)].WrapText := True;

     //Excel.Cells.Range['A6','AB6'].Merge;

     osprocessos2 := '';
     q_pronum.close;
     q_pronum.Params[0].AsDateTime := strtodate(me_dIni.Text);
     q_pronum.Params[1].AsDateTime := strtodate(me_dFin.Text);
     q_pronum.Params[2].asstring  := q_importcodigo.asstring;
     q_pronum.open;
     while not q_pronum.eof do begin
           osprocessos2 := osprocessos2+q_pronumprocesso.asstring;
           q_pronum.next;
     end;

     q_procre.close;
     q_procre.Params[0].AsDateTime := strtodate(me_dIni.Text);
     q_procre.Params[1].AsDateTime := strtodate(me_dFin.Text);
     q_procre.Params[2].asstring  := q_importcodigo.asstring;
     q_procre.open;
     while not q_procre.eof do begin
           osprocessos2 := osprocessos2+q_procreprocesso.asstring;
           q_procre.next;
     end;


     q_processos.close;
     q_processos.Params[0].asstring := q_importcodigo.asstring;
     q_processos.open;
     osprocessos := '';
     while not q_processos.eof do begin
//////tratado por processos
{if ((q_processoscdigo.asstring='02212/07') or
    (q_processoscdigo.asstring='03261/07') or
    (q_processoscdigo.asstring='02999/07') or
    (q_processoscdigo.asstring='03455/07') or
    (q_processoscdigo.asstring='02327/07') or
    (q_processoscdigo.asstring='03548/07') or
    (q_processoscdigo.asstring='03337/07') or
    (q_processoscdigo.asstring='03476/07') or
    (q_processoscdigo.asstring='03649/07') or
    (q_processoscdigo.asstring='03503/07') or
    (q_processoscdigo.asstring='03573/07') or
    (q_processoscdigo.asstring='02996/07') or
    (q_processoscdigo.asstring='03784/07') or
    (q_processoscdigo.asstring='03459/07') or
    (q_processoscdigo.asstring='03428/07') or
    (q_processoscdigo.asstring='04182/07') or
    (q_processoscdigo.asstring='03783/07') or
    (q_processoscdigo.asstring='03334/07') or
    (q_processoscdigo.asstring='04113/07') or
    (q_processoscdigo.asstring='03334/07') or
    (q_processoscdigo.asstring='04113/07') or
    (q_processoscdigo.asstring='03335/07') or
    (q_processoscdigo.asstring='03562/07') or
    (q_processoscdigo.asstring='03335/07') or
    (q_processoscdigo.asstring='02756/07') or
    (q_processoscdigo.asstring='01576/07') or
    (q_processoscdigo.asstring='03753/07') or
    (q_processoscdigo.asstring='01576/07') or
    (q_processoscdigo.asstring='00354/08') or
    (q_processoscdigo.asstring='00323/08')) then begin
 }



         if (not cb_saldos.Checked) or ((cb_saldos.Checked) and (q_processossaldo_faturamento.asfloat<>0)) then begin
         if StrPos(PChar(osprocessos2), PChar(q_processoscodigo.asstring)) <> nil then begin

         entra := false;

         q_num.close;
         q_num.Params[0].asstring := q_processoscodigo.asstring;
         q_num.Params[1].AsDateTime := strtodate(me_dIni.Text);
         q_num.Params[2].AsDateTime := strtodate(me_dFin.Text);
         q_num.open;

         if q_num.RecordCount>0 then entra := true;

         q_cre.close;
         q_cre.Params[0].asstring   := q_processoscodigo.asstring;
         q_cre.Params[1].AsDateTime := strtodate(me_dIni.Text);
         q_cre.Params[2].AsDateTime := strtodate(me_dFin.Text);
         q_cre.open;

         if q_cre.RecordCount>0 then entra := true;

         if entra then begin

         osprocessos := osprocessos+q_processoscodigo.asstring;

         linha2 := linha2+1;
         Excel.cells[linha2, 1] := q_processoscodigo.asstring;
         qdocs := '';
         if (q_processostipo.asstring='1') or
            (q_processostipo.asstring='11') or
            (q_processostipo.asstring='12') or
            (q_processostipo.asstring='13') or
            (q_processostipo.asstring='14') or
            (q_processostipo.asstring='15') or
            (q_processostipo.asstring='16') or
            (q_processostipo.asstring='17') or
            (q_processostipo.asstring='18') then begin
            if q_processosnumerodoccarga.asstring<>'' then qdocs := q_processosnumerodoccarga.asstring;
            if q_processosnumeromaster.asstring<>'' then begin
               if qdocs<>'' then qdocs := qdocs+' / ';
               qdocs := qdocs+q_processosnumeromaster.asstring;
            end;
            if q_processosnumero_tr.asstring<>'' then begin
               if qdocs<>'' then qdocs := qdocs+' / ';
               qdocs := qdocs+q_processosnumero_tr.asstring;
            end;

         end
         else begin
            qdocs := q_processoscodigo_cliente.asstring;
         end;

         Excel.cells[linha2, 2] := ''''+qdocs;
         Excel.cells[linha2, 3] := q_processosdescricao.asstring;

         qcpmf := 0;

         col2 := 3;
//       SERVIÇO DESPACHANTE ADUANEIRO
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='HONO') or (q_numnumerario.asstring='ISS') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       IMPORTAÇÃO EMBARCAÇÃO
         col2 := col2+1;
         Excel.cells[linha2, col2] := 0;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       ARMAZ.(AIRJ)/PORTO
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='ARM') or (q_numnumerario.asstring='ARMP') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       ARMAZ. CABO FRIO
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='AA') OR (q_numnumerario.asstring='AE') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       SEPETIBA TECON  E TMC
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='SEPB') OR (q_numnumerario.asstring='TMC') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       ICMS
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='ICMS') OR (q_numnumerario.asstring='FECP') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       II
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if q_numnumerario.asstring='II' then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       IPI
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if q_numnumerario.asstring='IPI' then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       MULTA RETIFICAÇÃO
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='MUL')  OR
                 (q_numnumerario.asstring='ML')   OR
                 (q_numnumerario.asstring='MULI') OR
                (q_numnumerario.asstring='MART')  OR
                (q_numnumerario.asstring='MUCO')  OR
                (q_numnumerario.asstring='MULT')  OR
                (q_numnumerario.asstring='MII' )  OR
                (q_numnumerario.asstring='MCOF')  OR
                (q_numnumerario.asstring='MPIS')  OR
                (q_numnumerario.asstring='MMO' )  OR
                (q_numnumerario.asstring='MMOI')  OR
                (q_numnumerario.asstring='MIPI')  OR
                (q_numnumerario.asstring='MOI')   OR
                (q_numnumerario.asstring='MOIP')  OR
                (q_numnumerario.asstring='MULF')  OR
                (q_numnumerario.asstring='MT') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       PIS
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if q_numnumerario.asstring='PP' then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       COFINS
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if q_numnumerario.asstring='CF' then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       TX. SISCOMEX/LI
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if q_numnumerario.asstring='TAXA' then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       DESOVA/DEMURRAGE
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='DEM') OR (q_numnumerario.asstring='DS') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       TX. LIB. AWB/BL/FUMIG
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='LIBE') or
              (q_numnumerario.asstring='B/L') or
              (q_numnumerario.asstring='AWB') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       AFRMM
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='MAR') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       DESP. CARTÓRIO/DESP.DIVERSAS
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
             if (UPPERCASE(q_numnumerario.asstring)='DECO')  OR
                 (q_numnumerario.asstring='DESM')   OR
                 (q_numnumerario.asstring='DO') OR
                (q_numnumerario.asstring='DESP')  OR
                (q_numnumerario.asstring='AAA')  OR
                (q_numnumerario.asstring='RCPM')  OR
                (q_numnumerario.asstring='DC' )  OR
                (q_numnumerario.asstring='FM')  OR
                (q_numnumerario.asstring='INC' )  OR
                (q_numnumerario.asstring='LT')  OR
                (q_numnumerario.asstring='TAM') OR
                (q_numnumerario.asstring='TBB') OR
                (q_numnumerario.asstring='CORR') OR
                (q_numnumerario.asstring='TXBC') OR
                (q_numnumerario.asstring='ASSE') OR
                (q_numnumerario.asstring='TXTE') then begin

                qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       PORTOLOG  FRETE DTA
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='FRIM') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
                 if q_numdata_registro.asdatetime < strtodateTIME('31/12/2007') then qcpmf := qcpmf+(q_numvalor_registrado.asfloat*0.0038);
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       TRANSPORTADORA J.J DA VILA NORMA LTDA
{         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='????') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
}
//       CPMF
         col2 := col2+1;
         qvalor := 0;
         q_num.First;
         while not q_num.eof do begin
              if (q_numnumerario.asstring='CPMF') then begin
                 qvalor := qvalor+q_numvalor_registrado.asfloat;
              end;
              q_num.next;
         end;
         Excel.cells[linha2, col2] := qcpmf; ///qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       VALOR BRUTO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L'+IntToStr(linha2)+'C4:L'+IntToStr(linha2)+'C21)';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       IR
         col2 := col2+1;
         qvalor := 0;
         q_cre.First;
         while not q_cre.eof do begin
              if (q_crecredito.asstring='IRRF') then begin
                 qvalor := qvalor+q_crevalor.asfloat;
              end;
              q_cre.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       COFINS
         col2 := col2+1;
         qvalor := 0;
         q_cre.First;
         while not q_cre.eof do begin
              if (q_crecredito.asstring='CCP') then begin
                 qvalor := qvalor+q_crevalor.asfloat;
              end;
              q_cre.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       ADIANTAMENTO
         col2 := col2+1;
         qvalor := 0;
         q_cre.First;
         while not q_cre.eof do begin
              if (q_crecredito.asstring='ADIA') or (q_crecredito.asstring='SB') then begin
                 qvalor := qvalor+q_crevalor.asfloat;
              end;
              q_cre.next;
         end;
         Excel.cells[linha2, col2] := qvalor;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       VALOR LIQUIDO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=(L'+IntToStr(linha2)+'C22-L'+IntToStr(linha2)+'C23-L'+IntToStr(linha2)+'C24-L'+IntToStr(linha2)+'C25)';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       Saldo Faturamento
         col2 := col2+1;
         Excel.cells[linha2, col2] := q_processossaldo_faturamento.asfloat;
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       EMBARCAÇÃO
         col2 := col2+1;
         Excel.cells[linha2, col2] := q_processosembarcacao.asstring;;
//       DOCUMENTOS
         vpro := stringreplace(Copy(q_processoscodigo.asstring,1,8),'/','_', [rfReplaceAll]) + '_docs.xls';
         col2 := col2+1;
         Excel.cells[linha2, col2] := vpro;
         Excel.WorkSheets['Prestação de Contas'].Hyperlinks.Add (Anchor:= Excel.WorkSheets['Prestação de Contas'].Range['AC' + IntToStr(linha2)], Address := vpro);

       end;
       end;
       end;
//       end;//////tratado por processos
         q_processos.Next;

     end;

     ////totais

     linha2 := linha2+2;
//         Excel.cells[linha2, 1] := q_processoscdigo.asstring;
//         Excel.cells[linha2, 2] := q_processosnumerodoccarga.asstring;
//         Excel.cells[linha2, 3] := q_processosdescricao.asstring;

         col2 := 3;
//       SERVIÇO DESPACHANTE ADUANEIRO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       IMPORTAÇÃO EMBARCAÇÃO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       ARMAZ.(AIRJ)/PORTO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       ARMAZ. CABO FRIO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       SEPETIBA TECON  E TMC
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       ICMS
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       II
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       IPI
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       MULTA RETIFICAÇÃO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       PIS
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       COFINS
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       TX. SISCOMEX/LI
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       DESOVA/DEMURRAGE
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       TX. LIB. AWB/BL/FUMIG
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       AFRMM
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       DESP. CARTÓRIO/DESP.DIVERSAS
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       PORTOLOG  FRETE DTA
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       TRANSPORTADORA J.J DA VILA NORMA LTDA
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       CPMF
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       VALOR BRUTO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       IR
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       COFINS
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       ADIANTAMENTO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       VALOR LIQUIDO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';
//       SALDO FATURAMENTO
         col2 := col2+1;
         Excel.cells[linha2, col2].FormulaR1C1Local  := '=SOMA(L7C'+IntToStr(col2)+':L'+IntToStr(linha2-2)+'C'+IntToStr(col2)+')';
         Excel.Cells[linha2, col2].NumberFormatLocal := '#.##0,00';


     //Excel.WorkBooks[1].Save;
     Excel.Workbooks[1].SaveAs(dir_cor + '\' + stringreplace(Copy(Data_arq,1,11),'/','_', [rfReplaceAll]) + ' - '+stringreplace(q_ImportRazao_Social.AsString,'/','-', [rfReplaceAll])+ ' - ' + nome_arq + '.xls' );
     Application.ProcessMessages;

     Excel.Quit;
     Excel := unassigned;

     if messagedlg(v_usuario+', gera planilhas de documentos digitalizados?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
     q_processos.First;
     while not q_processos.eof do begin
           qpro :=  q_processoscodigo.asstring;
           if StrPos(PChar(osprocessos), PChar(qpro)) <> nil then begin
              f_extratopro_geral.DOCS_digitalizados(qpro);
           end;
           q_processos.Next;
     end;
     end;

     showmessage(v_usuario+', a(s) planilha(s) foram  gerada(s) no diretório C:\MS2000\PLANILHAS_MS2000!');

end;





Procedure TF_relprestcontas.CelTitulo(linha : Integer; Coluna : Integer; CTitulo : String; CColor : Integer; CAlign : Integer; FColor : Integer; FSize : Integer; COLSize : Integer );
Begin
           Excel.cells[linha, coluna] := CTitulo;
           Excel.cells[linha, coluna].interior.Color := CColor;
           Excel.cells[linha, coluna].Font.Color := FColor;
           Excel.cells[linha, coluna].Font.Size := FSize;
           Excel.cells[linha, coluna].Font.Bold := True;
           Excel.cells[linha, coluna].HorizontalAlignment:= CAlign;
           Excel.cells[linha, coluna].Borders.Weight := 2;
           Excel.cells[linha, coluna].Borders.LineStyle := 1;
           Excel.rows[linha].RowHeight := 100;
           Excel.Columns[coluna].ColumnWidth := COLSize;
           Excel.cells[linha, coluna].VerticalAlignment := CAlign;

End;


end.
