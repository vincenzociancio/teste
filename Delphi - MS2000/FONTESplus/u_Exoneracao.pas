unit u_Exoneracao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, DBCtrls, Grids, DBGrids, StdCtrls, Buttons, Mask, QRPrntr, ExtCtrls,
  ActnList, printers;

type
  Tf_Exoneracao = class(TForm)
    pnlTop: TPanel;
    Label26: TLabel;
    l_cliente: TLabel;
    ME_nossaref: TMaskEdit;
    pnlBaixo: TPanel;
    btnSair: TBitBtn;
    btnImprimirVerso: TBitBtn;
    pnlPrincipal: TPanel;
    qrProcessos: TQuery;
    dsQProcessos: TDataSource;
    ImprimirFrente: TBitBtn;
    q_excluiguia: TQuery;
    q_incluiguia: TQuery;
    t_guia: TTable;
    qrInsertBranco: TQuery;
    Panel1: TPanel;
    btnAlterar: TBitBtn;
    btnSalvar: TBitBtn;
    dsProcurador: TDataSource;
    qrProcurador: TQuery;
    tbProcessos: TTable;
    dsProcessos: TDataSource;
    pnlProcurador: TPanel;
    Label1: TLabel;
    dblcProc: TDBLookupComboBox;
    sbLimpaProcurador: TSpeedButton;
    Panel2: TPanel;
    Label2: TLabel;
    me_local: TMaskEdit;
    Label3: TLabel;
    me_dtemi: TMaskEdit;
    Label4: TLabel;
    me_uf: TMaskEdit;
    BitBtn1: TBitBtn;
    editarguia: TBitBtn;
    ds_guia: TDataSource;
    dbg_edita: TDBGrid;
    l_aviso: TLabel;
    qrProcessosEmpresa: TStringField;
    qrProcessosFilial: TStringField;
    qrProcessosprocesso: TStringField;
    qrProcessossecretaria: TStringField;
    qrProcessoscliente: TStringField;
    qrProcessosInscricao_Estadual: TStringField;
    qrProcessosCNPJ_CPF_COMPLETO: TStringField;
    qrProcessosCAE: TStringField;
    qrProcessosEndereco: TStringField;
    qrProcessosNumero: TStringField;
    qrProcessosComplemento: TStringField;
    qrProcessosBairro: TStringField;
    qrProcessosCEP: TStringField;
    qrProcessosCidade: TStringField;
    qrProcessosUF: TStringField;
    qrProcessosTelefone: TStringField;
    qrProcessosdi: TStringField;
    qrProcessosDT_REGISTRO_DI: TStringField;
    qrProcessosprocurador: TStringField;
    qrProcessosprocpf: TStringField;
    qrProcessosproend: TStringField;
    qrProcessospronum: TStringField;
    qrProcessosprocom: TStringField;
    qrProcessosprobai: TStringField;
    qrProcessosprocid: TStringField;
    qrProcessosprocep: TStringField;
    qrProcessosprouf: TStringField;
    qrProcessosprotel: TStringField;
    qrProcessosValor_CIF: TFloatField;
    qrProcessosdic: TStringField;
    qrProcessostipodecla: TStringField;
    qrProcessosImportador: TStringField;
    qrProcessosATIVO: TSmallintField;
    qrProcessosFechado: TSmallintField;
    t_guiaProcesso: TStringField;
    t_guiaadicao: TStringField;
    t_guiaNCM: TStringField;
    t_guiatratamento: TStringField;
    t_guiafundamento: TStringField;
    t_guiaValor: TFloatField;
    t_guiaValorcif: TFloatField;
    t_guiaPagina: TIntegerField;
    t_guiaato_concessorio: TStringField;
    qrProcuradorEmpresa: TStringField;
    qrProcuradorFilial: TStringField;
    qrProcuradorCodigo: TStringField;
    qrProcuradorRazao_Social: TStringField;
    qrProcuradorPais: TStringField;
    qrProcuradorCGC_CPF: TStringField;
    qrProcuradorEndereco: TStringField;
    qrProcuradorNumero: TStringField;
    qrProcuradorComplemento: TStringField;
    qrProcuradorBairro: TStringField;
    qrProcuradorCidade: TStringField;
    qrProcuradorCEP: TStringField;
    qrProcuradorUF: TStringField;
    qrProcuradorEstado: TStringField;
    qrProcuradorInscricao_Estadual: TStringField;
    qrProcuradorRegistro: TStringField;
    qrProcuradorTelefone: TStringField;
    tbProcessosEmpresa: TStringField;
    tbProcessosFilial: TStringField;
    tbProcessosCodigo: TStringField;
    tbProcessosData: TDateTimeField;
    tbProcessosImportador: TStringField;
    tbProcessosCodigo_Cliente: TStringField;
    tbProcessosTipo_Declaracao: TStringField;
    tbProcessosTipo: TStringField;
    tbProcessosContrato: TStringField;
    tbProcessosLocal_Inventario: TStringField;
    tbProcessosNR_DECL_IMP_MICRO: TStringField;
    tbProcessosNR_DECL_IMP_PROT: TStringField;
    tbProcessosNR_DECLARACAO_IMP: TStringField;
    tbProcessosDT_PROCESSAMENTO: TStringField;
    tbProcessosDT_TRANSMISSAO: TStringField;
    tbProcessosDT_REGISTRO_DI: TStringField;
    tbProcessosDT_DESEMBARACO: TDateTimeField;
    tbProcessosDT_DISTRIBUICAO: TDateTimeField;
    tbProcessosCanal: TStringField;
    tbProcessosFiscal: TStringField;
    tbProcessosStatus: TStringField;
    tbProcessosCOD_SIT: TStringField;
    tbProcessosCD_MOTIVO_TRANS: TStringField;
    tbProcessosIN_MOEDA_UNICA: TSmallintField;
    tbProcessosTX_INFO_COMPL: TMemoField;
    tbProcessosCD_TIPO_PGTO_TRIB: TStringField;
    tbProcessosNumero_RCR: TStringField;
    tbProcessosData_Entrada_RCR: TDateTimeField;
    tbProcessosData_Aprovacao_RCR: TDateTimeField;
    tbProcessosFundamentacao_RCR: TStringField;
    tbProcessosProcurador: TStringField;
    tbProcessosNumero_TR: TStringField;
    tbProcessosData_Entrada_TR: TDateTimeField;
    tbProcessosData_vencimento_TR: TDateTimeField;
    tbProcessosData_Aprovacao_TR: TDateTimeField;
    tbProcessosData_Baixa_TR: TDateTimeField;
    tbProcessosData_CI: TDateTimeField;
    tbProcessosTipo_Garantia: TStringField;
    tbProcessosNome_banco_GAR: TStringField;
    tbProcessosAgencia_GAR: TStringField;
    tbProcessosData_deposito_GAR: TDateTimeField;
    tbProcessosNome_titulo_GAR: TStringField;
    tbProcessosnumeros_titulos_GAR: TStringField;
    tbProcessosNome_seguradora_GAR: TStringField;
    tbProcessosapolice_GAR: TStringField;
    tbProcessosnome_fiador_GAR: TStringField;
    tbProcessosCNPJ_fiador_GAR: TStringField;
    tbProcessosendereco_fiador_GAR: TStringField;
    tbProcessosQuantidade_LI: TFloatField;
    tbProcessosValor_FOB: TFloatField;
    tbProcessosValor_CIF: TFloatField;
    tbProcessosResponsavel_Empresa: TStringField;
    tbProcessosResponsavel_Importador: TStringField;
    tbProcessosSaldo_Faturamento: TFloatField;
    tbProcessosNR_DECL_IMP_MICROC: TStringField;
    tbProcessosNR_DECL_IMP_PROTC: TStringField;
    tbProcessosNR_DECLARACAO_IMPC: TStringField;
    tbProcessosDT_PROCESSAMENTOC: TStringField;
    tbProcessosDT_TRANSMISSAOC: TStringField;
    tbProcessosDT_REGISTRO_DIC: TStringField;
    tbProcessosDT_DESEMBARACOC: TDateTimeField;
    tbProcessosDT_DISTRIBUICAOC: TDateTimeField;
    tbProcessosCanalC: TStringField;
    tbProcessosFiscalC: TStringField;
    tbProcessosCOD_SITC: TStringField;
    tbProcessosData_CIC: TDateTimeField;
    tbProcessosValor_FOBC: TFloatField;
    tbProcessosValor_CIFC: TFloatField;
    tbProcessosident_meio1: TStringField;
    tbProcessosident_meio2: TStringField;
    tbProcessosCodevento: TStringField;
    tbProcessosCodobs: TStringField;
    tbProcessosObs_especifica: TStringField;
    tbProcessosData_ufollowup: TDateTimeField;
    tbProcessosHora_ufollowup: TStringField;
    tbProcessosData_liberacao: TDateTimeField;
    tbProcessosUrgente: TSmallintField;
    tbProcessosconsolidado: TSmallintField;
    tbProcessosPag_proporcional: TSmallintField;
    tbProcessosTR_VAL_FOB_US: TFloatField;
    tbProcessosTR_VAL_CIF_US: TFloatField;
    tbProcessosTR_VAL_II: TFloatField;
    tbProcessosTR_VAL_IPI: TFloatField;
    tbProcessosDDE: TStringField;
    tbProcessosProcesso_Adm: TStringField;
    tbProcessosProc_Adm_Data_Entrada: TDateTimeField;
    tbProcessosFaturado: TSmallintField;
    tbProcessosFechado: TSmallintField;
    tbProcessosCentro_Custo: TStringField;
    tbProcessosProcurador2: TStringField;
    tbProcessosTR_VAL_PIS: TFloatField;
    tbProcessosTR_VAL_COFINS: TFloatField;
    tbProcessosRCR_LOCAL: TStringField;
    tbProcessosResponsavel_EmpresaC: TStringField;
    tbProcessosvinc_processo: TSmallintField;
    tbProcessosproc_vinc: TStringField;
    qrProcessosTAB_REC_ALFANDEGADO_CODIGO: TStringField;
    qrProcessoslocal: TStringField;
    qrFatura: TQuery;
    qrFaturaprocesso: TStringField;
    qrFaturaincoterm: TStringField;
    qrProcessosTipo: TStringField;
    procedure ME_nossarefChange(Sender: TObject);
    procedure ImprimirFrenteClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure btnImprimirVersoClick(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnSalvarClick(Sender: TObject);
    procedure sbLimpaProcuradorClick(Sender: TObject);
    procedure tbProcessosAfterPost(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure QuickRepAfterPreview(Sender: TObject);
    procedure editarguiaClick(Sender: TObject);
    procedure dbg_editaExit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
     DSI:boolean;
  end;

var
  f_Exoneracao: Tf_Exoneracao;
  valorcif:real;
  reg: Integer;
  vEmp, vFil: String;
 QRPaginas: TQRPageList;
    QRPrn: TQRPrinter;
  guiaeditada:boolean;
    
implementation

uses U_MSCOMEX, U_relExoFrente, u_relExoVerso;


{$R *.DFM}


procedure Tf_Exoneracao.ME_nossarefChange(Sender: TObject);
begin
     If Length(F_MSCOMEX.LRTrim(me_nossaref.Text)) <> 8 Then
        Exit;
     // eduardo.souza 01/02/2012 - Para processos fechados - Exibi mensagem e fecha a tela
     If (IsClosedProcess( me_nossaref.Text, f_Exoneracao )) Then
       Abort;
     //--
     Screen.Cursor := crHourGlass;
     t_guia.close;
     {
     With qrProcessos Do Begin
         Close;
         Open;
     End;
     }
     // eduardo.souza 19/09/2011
     qrProcessos.Close;
     qrProcessos.ParamByName( 'Processo' ).Value := me_nossaref.Text;
     qrProcessos.open;
     // eduardo.souza
     qrProcurador.Open;
     tbProcessos.Open;

     //If qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]) Then Begin
     If ( Not qrProcessos.IsEmpty ) Then Begin
        {roda a sql de itens de rpr}

        pnlPrincipal.Visible := True;
        pnlBaixo.Visible := True;

        me_local.text := qrprocessoslocal.asstring;
        me_uf.text    := qrprocessosuf.asstring;
        me_dtemi.text := datetostr(date());

        guiaeditada := false;

        if F_MSCOMEX.AcessaPasta(me_nossaref.Text, qrProcessostipo.AsString, f_Exoneracao)
         then begin
           pnlPrincipal.Visible := True;
           pnlPrincipal.Enabled := True;

           pnlBaixo.Visible     := True;
           pnlBaixo.Enabled     := True;
         end;

         ///alterei em 27/07/2005 - mm - chupisco!!!
        v_AlteraPRO := 1;
        If ( qrprocessosAtivo.asinteger = 0 ) then begin
           If (v_Edita_cliente_inativo = 0)  then begin
              Showmessage(v_usuario+', este Cliente está Inativo. Somente usuários habilitados para editar clientes inativos poderão alterar as informações do processo.');
              v_AlteraPRO := 1;
           end;
        end;
        If (qrprocessosFechado.asinteger = 1) then begin
           If (v_Edita_Processo_Fechado = 0)  then begin
                Showmessage(v_usuario+', este Processo está Fechado. Somente usuários habilitados em editar processos fechados poderão alterar as informações do processo.');
                v_AlteraPRO := 0;
           end
           else v_AlteraPRO := 1;
        end;

        if (v_AlteraPRO = 1) then begin
           pnlBaixo.Visible := True;
        end
        else begin
           pnlBaixo.Visible := False;
        end;


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
        //Para liberar o acesso.
        //v_autorizadocli := 0;

        If v_autorizadocli = 1 Then Begin

           F_MSCOMEX.atualizacpastas(ME_nossaref.text);
           cnpj := qrprocessoscnpj_cpf_completo.asstring;
           cnpj := Copy(cnpj,1,2)+'.'+Copy(cnpj,3,3)+'.'+Copy(cnpj,6,3)+'/'+Copy(cnpj,9,4)+'-'+Copy(cnpj,13,2);

           l_cliente.Caption := qrProcessosCliente.AsString+' - CNPJ: '+cnpj;
           pnlPrincipal.Visible := True;
//           pnlBaixo.Visible := True;

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

procedure Tf_Exoneracao.ImprimirFrenteClick(Sender: TObject);
var quantidade:integer;
    numera:boolean;

begin
  if not guiaeditada then begin
        numera := false;
        if qrprocessostipodecla.asstring = '12' then begin
                if messagedlg('Este processo é de CONSUMO E ADMISSAO TEMPORARIA. Este processo gerará apenas 1 DI?',mtconfirmation,[mbno,mbyes],0)= mryes then
                        numera := false
                else
                        numera := true;
        end;
        q_excluiguia.params[0].asstring := me_nossaref.text;
        q_excluiguia.execsql;
        DSI := false;

        //abrindo o recordset para trazer a informação sobre o incoterm da fatura, dependo do tipo irá influênciar no calculo.
        qrFatura.Params[0].AsString := me_nossaref.text;
        qrFatura.open;
        If qrFatura.IsEmpty = true Then Begin
                Showmessage(v_usuario+', este processo não tem fatura cadastrada.');
                qrFatura.close;
                exit;
        End;

        if messagedlg('Gera Guia para DSI?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
                q_incluiguia.SQL.Clear;
                q_incluiguia.SQL.Add('INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundamento, Valor, Valorcif, Pagina, Ato_concessorio ) ');
                q_incluiguia.SQL.Add('SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2)  ');
                q_incluiguia.SQL.Add('AS qncm, Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, ');

                if (qrFaturaincoterm.AsString = 'CFR') or (qrFaturaincoterm.AsString = 'CIF') or (qrFaturaincoterm.AsString = 'CIP') or (qrFaturaincoterm.AsString = 'CPT') then
                        q_incluiguia.SQL.Add('Cast(Sum(([i].[Valor_Aduaneiro]+ i.[Rateio_carga_exp] * [i].[quantidade])*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ')
                else
                        q_incluiguia.SQL.Add('Cast(Sum((([i].[Valor_Aduaneiro]+ i.Rateio_Frete_prepaid + i.Rateio_Acrescimos ) * [i].[quantidade])*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ');

                q_incluiguia.SQL.Add('Cast(Sum(([i].[valor_total]+(([i].[rateio_frete_prepaid]*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade])-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_conversao])AS decimal(20,4)) ');
                q_incluiguia.SQL.Add('AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Concessorio  ');
                q_incluiguia.SQL.Add('FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa = i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Processo = i.Processo) AND (Faturas.codigo  ');
                q_incluiguia.SQL.Add('= i.Fatura)) LEFT JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Processo) AND (Faturas.Moeda =  ');
                q_incluiguia.SQL.Add('ptc.Moeda)) LEFT JOIN Tributacao_Item_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tributacao_Item_Fatura.Processo)  ');
                q_incluiguia.SQL.Add('AND (i.Fatura = Tributacao_Item_Fatura.Fatura) AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatura.Tratamento_Tributario =  ');
                q_incluiguia.SQL.Add('Fundamento_Legal_ICMS.Tratamento_Tributario) AND (Tributacao_Item_Fatura.Fundamento_Legal = Fundamento_Legal_ICMS.codigo) INNER JOIN Conhecimento_Processo ON Faturas.Processo = Conhecimento_Processo.Processo ');
                q_incluiguia.SQL.Add('GROUP BY Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2), Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao,  ');
                q_incluiguia.SQL.Add(' Tributacao_Item_Fatura.Ato_Concessorio, Faturas.Processo, i.Fatura, Tributacao_Item_Fatura.Adicao, Cast([Adicao] as integer)  ');
                q_incluiguia.SQL.Add('HAVING (((Tributacao_Item_Fatura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_ICMS.descricao) Is Not Null) AND ((Faturas.Processo)=:qprocesso))  ');
                q_incluiguia.SQL.Add('ORDER BY Faturas.Processo, i.Fatura, Tributacao_Item_Fatura.Adicao, Cast([Adicao] as integer) ');

                DSI := true;
                numera := true
        end else begin
                q_incluiguia.SQL.Clear;
                q_incluiguia.SQL.Add('INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundamento, Valor, Valorcif, Pagina, Ato_concessorio ) ');
                q_incluiguia.SQL.Add('SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2) ');
                q_incluiguia.SQL.Add('AS qncm, Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, ');

                if (qrFaturaincoterm.AsString = 'CFR') or (qrFaturaincoterm.AsString = 'CIF') or (qrFaturaincoterm.AsString = 'CIP') or (qrFaturaincoterm.AsString = 'CPT') then
                        q_incluiguia.SQL.Add('Cast(Sum(([i].[Valor_Aduaneiro] + i.[Rateio_carga_exp] * [i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ')
                else
                        q_incluiguia.SQL.Add('Cast(Sum((([i].[Valor_Aduaneiro]+ i.Rateio_Frete_prepaid + i.Rateio_Acrescimos ) *[i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ');

                q_incluiguia.SQL.Add('Cast(Sum(([i].[valor_total]+(([i].[rateio_frete_prepaid]*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade])-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_conversao])AS decimal(20,4)) ');
                q_incluiguia.SQL.Add('AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Concessorio ');
                q_incluiguia.SQL.Add('FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa = i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Processo = i.Processo) AND (Faturas.codigo = ');
                q_incluiguia.SQL.Add('i.Fatura)) LEFT JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Processo) AND (Faturas.Moeda = ptc.Moeda)) ');
                q_incluiguia.SQL.Add('LEFT JOIN Tributacao_Item_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tributacao_Item_Fatura.Processo) AND (i.Fatura = Tributacao_Item_Fatura.Fatura) ');
                q_incluiguia.SQL.Add('AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatura.Tratamento_Tributario = Fundamento_Legal_ICMS.Tratamento_Tributario) AND ');
                q_incluiguia.SQL.Add('(Tributacao_Item_Fatura.Fundamento_Legal = Fundamento_Legal_ICMS.codigo)INNER JOIN Conhecimento_Processo ON Faturas.Processo = Conhecimento_Processo.Processo ');
                q_incluiguia.SQL.Add('GROUP BY Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2), Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao,  ');
                q_incluiguia.SQL.Add('Tributacao_Item_Fatura.Ato_Concessorio, Cast([Adicao] as integer) ');
                q_incluiguia.SQL.Add('HAVING (((Faturas.Processo)=:qprocesso) AND ((Tributacao_Item_Fatura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_ICMS.descricao) Is Not Null)) ');
                q_incluiguia.SQL.Add('ORDER BY Cast([Adicao] as integer) ');
                DSI := false;

        end;
        q_incluiguia.params[0].asstring := me_nossaref.text;
        q_incluiguia.execsql;
        t_guia.filter := '';
        t_guia.close;
        ///  t_guia.Filtered := False;
        t_guia.open;
        quantidade := 7;
        reg := 0;
        valorcif:=0;
        if t_guia.recordcount > 0 then begin
                while (not t_guia.eof) do begin
                        reg := reg+1;
                        t_guia.edit;
                        if (reg<=quantidade) then
                                t_guiapagina.asinteger := 1
                        else
                                t_guiapagina.asinteger := 2;
                        if numera then
                                t_guiaadicao.asstring := copy('000'+inttostr(reg),length('000'+inttostr(reg))-2,3);
                        t_guia.post;
                        valorcif := t_guiavalorcif.asfloat;
                        t_guia.next;
                end;
                {
                while t_guia.recordcount < quantidade do begin
                        reg := reg+1;
                        t_guia.append;
                        t_guiaProcesso.asstring := me_nossaref.text;
                        t_guiaadicao.asstring   := 'X'+copy('00'+inttostr(reg),length('00'+inttostr(reg))-1,2);
                        t_guiancm.asstring      := '1';
                        t_guiapagina.asinteger  := 1;
                        t_guia.post;
                end;
                }
        end;
        /// t_guia.filter := 'pagina = 1';
  end;
  t_guia.filter := 'Processo = '+chr(39)+me_nossaref.text+chr(39)+' and Pagina = 1';
  t_guia.close;
  t_guia.open;
  qrFatura.close;
  ///t_guia.Filtered := True;

  ////  if not assigned(QR_ExoFrente) then Application.CreateForm(TQR_ExoFrente, QR_ExoFrente);

  try
    Application.CreateForm(TQR_ExoFrente, QR_ExoFrente);

    QR_ExoFrente.preview;
  finally
    QR_ExoFrente.Free;
  end;

  if not guiaeditada then q_excluiguia.execsql;

end;

procedure Tf_Exoneracao.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
     F_MSCOMEX.GuiadeExoneraoICMS1.Enabled := True;
     F_Exoneracao := Nil;
     Action := caFree;
     If FileExists('c:\report1') Then
       DeleteFile('c:\report1');
end;

procedure Tf_Exoneracao.FormActivate(Sender: TObject);
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
     width := w;  }
end;

procedure Tf_Exoneracao.btnImprimirVersoClick(Sender: TObject);
var quantidade,qtdt,qreg:real;
    numera,DSI:boolean;

begin
  if not guiaeditada then begin
        numera := false;
        if qrprocessostipodecla.asstring = '12' then begin
                if messagedlg('Este processo é de CONSUMO E ADMISSAO TEMPORARIA. Este processo gerará apenas 1 DI?',mtconfirmation,[mbno,mbyes],0)= mryes then
                        numera := false
                else
                        numera := true;
        end;
        q_excluiguia.params[0].asstring := me_nossaref.text;
        q_excluiguia.execsql;
        DSI := false;

        //abrindo o recordset para trazer a informação sobre o incoterm da fatura, dependo do tipo irá influênciar no calculo.
        qrFatura.Params[0].AsString := me_nossaref.text;
        qrFatura.open;
        If qrFatura.IsEmpty = true Then Begin
                Showmessage(v_usuario+', este processo não tem fatura cadastrada.');
                qrFatura.close;
                exit;
        End;

         if messagedlg('Gera Guia para DSI?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
                q_incluiguia.SQL.Clear;
                q_incluiguia.SQL.Add('INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundamento, Valor, Valorcif, Pagina, Ato_concessorio ) ');
                q_incluiguia.SQL.Add('SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2)  ');
                q_incluiguia.SQL.Add('AS qncm, Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, ');
                if (qrFaturaincoterm.AsString = 'CFR') or (qrFaturaincoterm.AsString = 'CIF') or (qrFaturaincoterm.AsString = 'CIP') or (qrFaturaincoterm.AsString = 'CPT') then
                        q_incluiguia.SQL.Add('Cast(Sum(([i].[Valor_Aduaneiro] + i.[Rateio_carga_exp] * [i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ')
                else
                        q_incluiguia.SQL.Add('Cast(Sum((([i].[Valor_Aduaneiro]+ i.Rateio_Frete_prepaid + i.Rateio_Acrescimos ) *[i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ');
                        
                q_incluiguia.SQL.Add('Cast(Sum(([i].[valor_total]+(([i].[rateio_frete_prepaid]*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade])-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_conversao])AS decimal(20,4)) ');
                q_incluiguia.SQL.Add('AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Concessorio  ');
                q_incluiguia.SQL.Add('FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa = i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Processo = i.Processo) AND (Faturas.codigo  ');
                q_incluiguia.SQL.Add('= i.Fatura)) LEFT JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Processo) AND (Faturas.Moeda =  ');
                q_incluiguia.SQL.Add('ptc.Moeda)) LEFT JOIN Tributacao_Item_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tributacao_Item_Fatura.Processo)  ');
                q_incluiguia.SQL.Add('AND (i.Fatura = Tributacao_Item_Fatura.Fatura) AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatura.Tratamento_Tributario =  ');
                q_incluiguia.SQL.Add('Fundamento_Legal_ICMS.Tratamento_Tributario) AND (Tributacao_Item_Fatura.Fundamento_Legal = Fundamento_Legal_ICMS.codigo) INNER JOIN Conhecimento_Processo ON Faturas.Processo = Conhecimento_Processo.Processo ');
                q_incluiguia.SQL.Add('GROUP BY Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2), Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao,  ');
                q_incluiguia.SQL.Add(' Tributacao_Item_Fatura.Ato_Concessorio, Faturas.Processo, i.Fatura, Tributacao_Item_Fatura.Adicao, Cast([Adicao] as integer)  ');
                q_incluiguia.SQL.Add('HAVING (((Tributacao_Item_Fatura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_ICMS.descricao) Is Not Null) AND ((Faturas.Processo)=:qprocesso))  ');
                q_incluiguia.SQL.Add('ORDER BY Faturas.Processo, i.Fatura, Tributacao_Item_Fatura.Adicao, Cast([Adicao] as integer) ');

                DSI := true;
                numera := true
        end
        else begin
                q_incluiguia.SQL.Clear;
                q_incluiguia.SQL.Add('INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundamento, Valor, Valorcif, Pagina, Ato_concessorio ) ');
                q_incluiguia.SQL.Add('SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2) ');
                q_incluiguia.SQL.Add('AS qncm, Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, ');
                if (qrFaturaincoterm.AsString = 'CFR') or (qrFaturaincoterm.AsString = 'CIF') or (qrFaturaincoterm.AsString = 'CIP') or (qrFaturaincoterm.AsString = 'CPT') then
                        q_incluiguia.SQL.Add('Cast(Sum(([i].[Valor_Aduaneiro] + i.[Rateio_carga_exp] * [i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ')
                else
                        q_incluiguia.SQL.Add('Cast(Sum((([i].[Valor_Aduaneiro]+ i.Rateio_Frete_prepaid + i.Rateio_Acrescimos ) *[i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ');

                q_incluiguia.SQL.Add('Cast(Sum(([i].[valor_total]+(([i].[rateio_frete_prepaid]*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade])-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_conversao])AS decimal(20,4)) ');
                q_incluiguia.SQL.Add('AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Concessorio ');
                q_incluiguia.SQL.Add('FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa = i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Processo = i.Processo) AND (Faturas.codigo = ');
                q_incluiguia.SQL.Add('i.Fatura)) LEFT JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Processo) AND (Faturas.Moeda = ptc.Moeda)) ');
                q_incluiguia.SQL.Add('LEFT JOIN Tributacao_Item_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tributacao_Item_Fatura.Processo) AND (i.Fatura = Tributacao_Item_Fatura.Fatura) ');
                q_incluiguia.SQL.Add('AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatura.Tratamento_Tributario = Fundamento_Legal_ICMS.Tratamento_Tributario) AND ');
                q_incluiguia.SQL.Add('(Tributacao_Item_Fatura.Fundamento_Legal = Fundamento_Legal_ICMS.codigo)INNER JOIN Conhecimento_Processo ON Faturas.Processo = Conhecimento_Processo.Processo ');
                q_incluiguia.SQL.Add('GROUP BY Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2), Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao,  ');
                q_incluiguia.SQL.Add('Tributacao_Item_Fatura.Ato_Concessorio, Cast([Adicao] as integer) ');
                q_incluiguia.SQL.Add('HAVING (((Faturas.Processo)=:qprocesso) AND ((Tributacao_Item_Fatura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_ICMS.descricao) Is Not Null)) ');
                q_incluiguia.SQL.Add('ORDER BY Cast([Adicao] as integer) ')
        end;
        q_incluiguia.params[0].asstring := me_nossaref.text;
        q_incluiguia.execsql;
        t_guia.filter := '';
        t_guia.close;
        ////  t_guia.Filtered := False;
        t_guia.open;

        quantidade := 7;
        //qtdt := 36;
        qtdt := quantidade;
        reg := 0;
        valorcif:=0;
        if t_guia.recordcount > 0 then begin
                while (not t_guia.eof) do begin
                        reg := reg+1;
                        t_guia.edit;
                        if (reg<=quantidade) then
                                t_guiapagina.asinteger := 1
                        else
                                t_guiapagina.asinteger := 2;
                        if numera then
                                t_guiaadicao.asstring := copy('000'+inttostr(reg),length('000'+inttostr(reg))-2,3);
                        t_guia.post;
                        valorcif := t_guiavalorcif.asfloat;
                        t_guia.next;
                end;

                t_guia.filter := 'Processo = '+chr(39)+me_nossaref.text+chr(39)+' and Pagina = 2';
                ///  t_guia.filter := 'processo = '+me_nossaref.text+'and pagina = 2';
                ///  t_guia.filter := 'pagina = 2';
                ///  t_guia.Filtered := True;
                qreg := t_guia.recordcount;
                qtdt := qtdt*(int((qreg/qtdt)+1));
                {
                while t_guia.recordcount < qtdt do begin
                        reg := reg+1;
                        t_guia.append;
                        t_guiaProcesso.asstring := me_nossaref.text;
                        t_guiaadicao.asstring   := 'X'+copy('00'+inttostr(reg),length('00'+inttostr(reg))-1,2);
                        ///        copy('000'+inttostr(reg+100),length('000'+inttostr(reg+100))-2,3);
                        t_guiancm.asstring      := '1';
                        t_guiapagina.asinteger  := 2;
                        t_guia.post;
                end;
                }
        end;
  end;
  t_guia.filter := 'Processo = '+chr(39)+me_nossaref.text+chr(39)+' and Pagina = 2';
  t_guia.close;
  t_guia.open;
  qrFatura.close;
  ////if not assigned (QR_ExoVerso) then Application.CreateForm(TQR_ExoVerso, QR_ExoVerso);
  Application.CreateForm(TQR_ExoVerso, QR_ExoVerso);

  QR_ExoVerso.preview;

  QR_ExoVerso.destroy;

   if not guiaeditada then q_excluiguia.execsql;

end;


procedure Tf_Exoneracao.btnAlterarClick(Sender: TObject);
begin
     pnlProcurador.Enabled := True;
     tbProcessos.Edit;
     btnSalvar.Enabled := True;
     btnAlterar.Enabled := False;
     ImprimirFrente.Enabled := False;
     btnImprimirVerso.Enabled := False;
     btnSair.Enabled := False;
end;

procedure Tf_Exoneracao.FormCreate(Sender: TObject);
begin
    { qrProcurador.Open;
     tbProcessos.Open;}
end;

procedure Tf_Exoneracao.btnSalvarClick(Sender: TObject);
begin
     t_guia.close;
     //tbProcessos.edit;
     tbProcessos.Post;
     tbProcessos.close;
     qrProcessos.close;
     qrProcessos.open;
     tbProcessos.open;
     qrProcessos.Locate('Processo', me_nossaref.Text, [loCaseInsensitive]);
     btnSalvar.Enabled := False;
     btnAlterar.Enabled := True;
     pnlProcurador.Enabled := False;
     ImprimirFrente.Enabled := True;
     btnImprimirVerso.Enabled := True;
     btnSair.Enabled := True;

end;

procedure Tf_Exoneracao.sbLimpaProcuradorClick(Sender: TObject);
begin
     tbProcessosProcurador.Clear;
end;

procedure Tf_Exoneracao.tbProcessosAfterPost(DataSet: TDataSet);
begin
     logusu('P','Alterou TR do Processo: '+tbProcessosCodigo.AsString);
end;

procedure Tf_Exoneracao.BitBtn1Click(Sender: TObject);
Var
    i, quantidade: Integer;
    numera:boolean;
    qtdt,qreg: real;

Begin
 {$I-}
  if not guiaeditada then begin
        Screen.Cursor := crHourGlass;
        numera := false;
        if qrprocessostipodecla.asstring = '12' then begin
                if messagedlg('Este processo é de CONSUMO E ADMISSAO TEMPORARIA. Este processo gerará apenas 1 DI?',mtconfirmation,[mbno,mbyes],0)= mryes then
                        numera := false
                else
                        numera := true;
        end;
        q_excluiguia.params[0].asstring := me_nossaref.text;
        q_excluiguia.execsql;
        DSI := false;

        //abrindo o recordset para trazer a informação sobre o incoterm da fatura, dependo do tipo irá influênciar no calculo.
        qrFatura.Params[0].AsString := me_nossaref.text;
        qrFatura.open;
        If qrFatura.IsEmpty = true Then Begin
                Showmessage(v_usuario+', este processo não tem fatura cadastrada.');
                qrFatura.close;
                exit;
        End;

        if messagedlg('Gera Guia para DSI?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
                q_incluiguia.SQL.Clear;
                q_incluiguia.SQL.Add('INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundamento, Valor, Valorcif, Pagina, Ato_concessorio ) ');
                q_incluiguia.SQL.Add('SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2)  ');
                q_incluiguia.SQL.Add('AS qncm, Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, ');

                if (qrFaturaincoterm.AsString = 'CFR') or (qrFaturaincoterm.AsString = 'CIF') or (qrFaturaincoterm.AsString = 'CIP') or (qrFaturaincoterm.AsString = 'CPT') then
                        q_incluiguia.SQL.Add('Cast(Sum(([i].[Valor_Aduaneiro] + i.[Rateio_carga_exp] * [i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ')
                else
                        q_incluiguia.SQL.Add('Cast(Sum((([i].[Valor_Aduaneiro]+ i.Rateio_Frete_prepaid + i.Rateio_Acrescimos ) *[i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ');

                q_incluiguia.SQL.Add('Cast(Sum(([i].[valor_total]+(([i].[rateio_frete_prepaid]*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade])-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_conversao])AS decimal(20,4)) ');
                q_incluiguia.SQL.Add('AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Concessorio  ');
                q_incluiguia.SQL.Add('FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa = i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Processo = i.Processo) AND (Faturas.codigo  ');
                q_incluiguia.SQL.Add('= i.Fatura)) LEFT JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Processo) AND (Faturas.Moeda =  ');
                q_incluiguia.SQL.Add('ptc.Moeda)) LEFT JOIN Tributacao_Item_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tributacao_Item_Fatura.Processo)  ');
                q_incluiguia.SQL.Add('AND (i.Fatura = Tributacao_Item_Fatura.Fatura) AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatura.Tratamento_Tributario =  ');
                q_incluiguia.SQL.Add('Fundamento_Legal_ICMS.Tratamento_Tributario) AND (Tributacao_Item_Fatura.Fundamento_Legal = Fundamento_Legal_ICMS.codigo) INNER JOIN Conhecimento_Processo ON Faturas.Processo = Conhecimento_Processo.Processo ');
                q_incluiguia.SQL.Add('GROUP BY Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2), Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao,  ');
                q_incluiguia.SQL.Add(' Tributacao_Item_Fatura.Ato_Concessorio, Faturas.Processo, i.Fatura, Tributacao_Item_Fatura.Adicao, Cast([Adicao] as integer)  ');
                q_incluiguia.SQL.Add('HAVING (((Tributacao_Item_Fatura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_ICMS.descricao) Is Not Null) AND ((Faturas.Processo)=:qprocesso))  ');
                q_incluiguia.SQL.Add('ORDER BY Faturas.Processo, i.Fatura, Tributacao_Item_Fatura.Adicao, Cast([Adicao] as integer) ');

                DSI := true;
                numera := true
        end
        else begin
                q_incluiguia.SQL.Clear;
                q_incluiguia.SQL.Add('INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundamento, Valor, Valorcif, Pagina, Ato_concessorio ) ');
                q_incluiguia.SQL.Add('SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2) ');
                q_incluiguia.SQL.Add('AS qncm, Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, ');

                if (qrFaturaincoterm.AsString = 'CFR') or (qrFaturaincoterm.AsString = 'CIF') or (qrFaturaincoterm.AsString = 'CIP') or (qrFaturaincoterm.AsString = 'CPT') then
                        q_incluiguia.SQL.Add('Cast(Sum(([i].[Valor_Aduaneiro] + i.[Rateio_carga_exp] * [i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ')
                else
                        q_incluiguia.SQL.Add('Cast(Sum((([i].[Valor_Aduaneiro]+ i.Rateio_Frete_prepaid + i.Rateio_Acrescimos ) *[i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ');
                
                q_incluiguia.SQL.Add('Cast(Sum(([i].[valor_total]+(([i].[rateio_frete_prepaid]*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade])-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_conversao])AS decimal(20,4)) ');
                q_incluiguia.SQL.Add('AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Concessorio ');
                q_incluiguia.SQL.Add('FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa = i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Processo = i.Processo) AND (Faturas.codigo = ');
                q_incluiguia.SQL.Add('i.Fatura)) LEFT JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Processo) AND (Faturas.Moeda = ptc.Moeda)) ');
                q_incluiguia.SQL.Add('LEFT JOIN Tributacao_Item_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tributacao_Item_Fatura.Processo) AND (i.Fatura = Tributacao_Item_Fatura.Fatura) ');
                q_incluiguia.SQL.Add('AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatura.Tratamento_Tributario = Fundamento_Legal_ICMS.Tratamento_Tributario) AND ');
                q_incluiguia.SQL.Add('(Tributacao_Item_Fatura.Fundamento_Legal = Fundamento_Legal_ICMS.codigo)INNER JOIN Conhecimento_Processo ON Faturas.Processo = Conhecimento_Processo.Processo ');
                q_incluiguia.SQL.Add('GROUP BY Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2), Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao,  ');
                q_incluiguia.SQL.Add('Tributacao_Item_Fatura.Ato_Concessorio, Cast([Adicao] as integer) ');
                q_incluiguia.SQL.Add('HAVING (((Faturas.Processo)=:qprocesso) AND ((Tributacao_Item_Fatura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_ICMS.descricao) Is Not Null)) ');
                q_incluiguia.SQL.Add('ORDER BY Cast([Adicao] as integer) ');
                DSI := false;
        end;
        q_incluiguia.params[0].asstring := me_nossaref.text;
        q_incluiguia.execsql;
        t_guia.filter := '';
        t_guia.close;
        t_guia.open;
        quantidade := 7;
        reg := 0;
        valorcif:=0;
        if t_guia.recordcount > 0 then begin
                while (not t_guia.eof) do begin
                        reg := reg+1;
                        t_guia.edit;
                        if (reg<=quantidade) then
                                t_guiapagina.asinteger := 1
                        else
                                t_guiapagina.asinteger := 2;
                        if numera then
                                t_guiaadicao.asstring := copy('000'+inttostr(reg),length('000'+inttostr(reg))-2,3);
                        t_guia.post;
                        valorcif := t_guiavalorcif.asfloat;
                        t_guia.next;
                end;
                {
                while t_guia.recordcount < quantidade do begin
                        reg := reg+1;
                        t_guia.append;
                        t_guiaProcesso.asstring := me_nossaref.text;
                        t_guiaadicao.asstring   := 'X'+copy('00'+inttostr(reg),length('00'+inttostr(reg))-1,2);
                        ////copy('000'+inttostr(reg+100),length('000'+inttostr(reg+100))-2,3);
                        t_guiancm.asstring      := '1';
                        t_guiapagina.asinteger  := 1;
                        t_guia.post;
                end;
                }
        end;
  end;
  t_guia.filter := 'Processo = '+chr(39)+me_nossaref.text+chr(39)+' and Pagina = 1';
//  t_guia.filter := 'processo = '+me_nossaref.text+'and pagina = 1';
  t_guia.close;
  t_guia.open;
  qrFatura.close;
  Application.CreateForm(TQR_ExoFrente, QR_ExoFrente);
//  QR_ExoFrente.preview;
///////////////////////////////////
  QRPaginas:= nil;
  If Assigned(qrprn) Then begin
  qrprn.Destroy;
  end;
  QRPrn := nil;
  QRPrn := TQRPrinter.Create(Self);
  QRPaginas := TQRPageList.Create;
  QRPaginas.Stream := TQRStream.Create(100000);
  QR_ExoFrente.Prepare;
  For i := 1 To QR_ExoFrente.QRPrinter.PageCount Do
       QRPaginas.AddPage(QR_ExoFrente.QRPrinter.GetPage(I));

///////////////////////////////////
  QR_ExoFrente.Destroy;

  {if not guiaeditada then begin
  q_excluiguia.execsql;

  numera := false;
  if qrprocessostipodecla.asstring = '12' then begin
//     if messagedlg('Este processo é de CONSUMO E ADMISSAO TEMPORARIA. Este processo gerará apenas 1 DI?',mtconfirmation,[mbno,mbyes],0)= mryes then
        numera := false
  //   else   numera := true;
  end;
  q_excluiguia.params[0].asstring := me_nossaref.text;
  q_excluiguia.execsql;
  if DSI then begin
     q_incluiguia.SQL.Clear;
     q_incluiguia.SQL.Add('INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundamento, Valor, Valorcif, Pagina, Ato_concessorio ) ');
     q_incluiguia.SQL.Add('SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2)  ');
     q_incluiguia.SQL.Add('AS qncm, Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, Cast(Sum([i].[valor_total]*[ptc].[taxa_conversao]) AS decimal(20,4)) AS qvalor, ');
     q_incluiguia.SQL.Add('Cast(Sum(([i].[valor_total]+(([i].[rateio_frete_prepaid]*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade])-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_conversao]) AS decimal(20,4)) ');
     q_incluiguia.SQL.Add('AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Concessorio  ');
     q_incluiguia.SQL.Add('FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa = i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Processo = i.Processo) AND (Faturas.codigo  ');
     q_incluiguia.SQL.Add('= i.Fatura)) LEFT JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Processo) AND (Faturas.Moeda =  ');
     q_incluiguia.SQL.Add('ptc.Moeda)) LEFT JOIN Tributacao_Item_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tributacao_Item_Fatura.Processo)  ');
     q_incluiguia.SQL.Add('AND (i.Fatura = Tributacao_Item_Fatura.Fatura) AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatura.Tratamento_Tributario =  ');
     q_incluiguia.SQL.Add('Fundamento_Legal_ICMS.Tratamento_Tributario) AND (Tributacao_Item_Fatura.Fundamento_Legal = Fundamento_Legal_ICMS.codigo)  ');
     q_incluiguia.SQL.Add('GROUP BY Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2), Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao,  ');
     q_incluiguia.SQL.Add(' Tributacao_Item_Fatura.Ato_Concessorio, Faturas.Processo, i.Fatura, Tributacao_Item_Fatura.Adicao, Cast([Adicao] as integer)  ');
     q_incluiguia.SQL.Add('HAVING (((Tributacao_Item_Fatura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_ICMS.descricao) Is Not Null) AND ((Faturas.Processo)=:qprocesso))  ');
     q_incluiguia.SQL.Add('ORDER BY Faturas.Processo, i.Fatura, Tributacao_Item_Fatura.Adicao, Cast([Adicao] as integer) ');

     DSI := true;
     numera := true
  end
  else begin
     q_incluiguia.SQL.Clear;
     q_incluiguia.SQL.Add('INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundamento, Valor, Valorcif, Pagina, Ato_concessorio ) ');
     q_incluiguia.SQL.Add('SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2) ');
     q_incluiguia.SQL.Add('AS qncm, Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, Cast(Sum([i].[Valor_Aduaneiro]*[ptc].[taxa_conversao]) AS decimal(20,4)) AS ');
     q_incluiguia.SQL.Add('qvalor, Cast(Sum(([i].[valor_total]+(([i].[rateio_frete_prepaid]*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade])-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_conversao]) AS decimal(20,4)) ');
     q_incluiguia.SQL.Add('AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Concessorio ');
     q_incluiguia.SQL.Add('FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa = i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Processo = i.Processo) AND (Faturas.codigo = ');
     q_incluiguia.SQL.Add('i.Fatura)) LEFT JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Processo) AND (Faturas.Moeda = ptc.Moeda)) ');
     q_incluiguia.SQL.Add('LEFT JOIN Tributacao_Item_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tributacao_Item_Fatura.Processo) AND (i.Fatura = Tributacao_Item_Fatura.Fatura) ');
     q_incluiguia.SQL.Add('AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatura.Tratamento_Tributario = Fundamento_Legal_ICMS.Tratamento_Tributario) AND ');
     q_incluiguia.SQL.Add('(Tributacao_Item_Fatura.Fundamento_Legal = Fundamento_Legal_ICMS.codigo) ');
     q_incluiguia.SQL.Add('GROUP BY Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2), Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao,  ');
     q_incluiguia.SQL.Add('Tributacao_Item_Fatura.Ato_Concessorio, Cast([Adicao] as integer) ');
     q_incluiguia.SQL.Add('HAVING (((Faturas.Processo)=:qprocesso) AND ((Tributacao_Item_Fatura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_ICMS.descricao) Is Not Null)) ');
     q_incluiguia.SQL.Add('ORDER BY Cast([Adicao] as integer) ');
     DSI := false;
  end;
  q_incluiguia.params[0].asstring := me_nossaref.text;
  q_incluiguia.execsql;
  t_guia.filter := '';
  t_guia.close;
  t_guia.open;

  quantidade := 7;
  //qtdt := 36;
  qtdt := quantidade;
  reg := 0;
  valorcif:=0;
  if t_guia.recordcount > 0 then begin
  while (not t_guia.eof) do begin
        reg := reg+1;
        t_guia.edit;
        if (reg<=quantidade) then t_guiapagina.asinteger := 1
        else t_guiapagina.asinteger := 2;
        if numera then begin
           t_guiaadicao.asstring := copy('000'+inttostr(reg),length('000'+inttostr(reg))-2,3);
        end;

        t_guia.post;
        valorcif := t_guiavalorcif.asfloat;
        t_guia.next;
  end;

  t_guia.filter := 'Processo = '+chr(39)+me_nossaref.text+chr(39)+' and Pagina = 2';
///  t_guia.filter := 'processo = '+me_nossaref.text+'and pagina = 2';
///  t_guia.filter := 'pagina = 2';
  qtdt := 10;
  qreg := t_guia.recordcount;
  qtdt := qtdt*(int((qreg/qtdt)+1));
  }
  {
  while t_guia.recordcount < qtdt do begin
        reg := reg+1;
        t_guia.append;
        t_guiaProcesso.asstring := me_nossaref.text;
        t_guiaadicao.asstring   := 'X'+copy('00'+inttostr(reg),length('00'+inttostr(reg))-1,2);
        ////copy('000'+inttostr(reg+300),length('000'+inttostr(reg+300))-2,3);
        t_guiancm.asstring      := '1';
        t_guiapagina.asinteger  := 2;
        t_guia.post;
  end;
  }
  //end;
  //end;
  t_guia.filter := 'Processo = '+chr(39)+me_nossaref.text+chr(39)+' and Pagina = 2';
  t_guia.close;
  t_guia.open;


  Application.CreateForm(TQR_ExoVerso, QR_ExoVerso);
//  QR_ExoVerso.preview;
//////////////
    QR_ExoVerso.Prepare;
    For I := 1 to QR_ExoVerso.QRPrinter.PageCount do
      QRPaginas.AddPage(QR_ExoVerso.QRPrinter.GetPage(I));
    QRPaginas.Finish;
    QRPaginas.UnlockList;
    QRPaginas.SaveToFile('c:\Report1');
    qrprn.AfterPreview := quickrepafterpreview;
    qrprn.ExtendedDuplex := DMDUP_HORIZONTAL ;

    qrprn.Load('c:\Report1');
    qrprn.Preview;
    QR_ExoVerso.destroy;
    if not guiaeditada then q_excluiguia.execsql;
    Screen.Cursor := crDefault;

End;

procedure Tf_Exoneracao.btnSairClick(Sender: TObject);
begin
     Close;
end;
procedure Tf_Exoneracao.QuickRepAfterPreview(Sender: TObject);
begin
    QRPrn.Cleanup;
end;

procedure Tf_Exoneracao.editarguiaClick(Sender: TObject);
Var
    quantidade: Integer;
    numera,DSI: boolean;
    qtdt,qreg: real;
begin
      guiaeditada := false;
      if messagedlg(v_usuario+', esta Guia vai ser editada?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
              guiaeditada := true;
      end;

      Screen.Cursor := crHourGlass;
      numera := false;
      if qrprocessostipodecla.asstring = '12' then begin
         if messagedlg('Este processo é de CONSUMO E ADMISSAO TEMPORARIA. Este processo gerará apenas 1 DI?',mtconfirmation,[mbno,mbyes],0)= mryes then
            numera := false
         else   numera := true;
      end;
      q_excluiguia.params[0].asstring := me_nossaref.text;
      q_excluiguia.execsql;
       DSI := false;

      //abrindo o recordset para trazer a informação sobre o incoterm da fatura, dependo do tipo irá influênciar no calculo.
        qrFatura.Params[0].AsString := me_nossaref.text;
        qrFatura.open;
        If qrFatura.IsEmpty = true Then Begin
                Showmessage(v_usuario+', este processo não tem fatura cadastrada.');
                qrFatura.close;
                exit;
        End;

 {    if messagedlg('Gera Guia para DSI?',mtconfirmation,[mbno,mbyes],0)= mryes then begin
     q_incluiguia.SQL.Clear;
     q_incluiguia.SQL.Add('INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundamento, Valor, Valorcif, Pagina, Ato_concessorio ) ');
     q_incluiguia.SQL.Add('SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Mid([i].[NCM],1,4)+"."+Mid([i].[NCM],5,2)+"."+Mid([i].[NCM],7,2)  ');
     q_incluiguia.SQL.Add('AS qncm, Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, Sum([i].[valor_total]*[ptc].[taxa_conversao]) AS qvalor,  ');
     q_incluiguia.SQL.Add('Sum(([i].[valor_total]+(([i].[rateio_frete_prepaid]*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade])-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_conversao])  ');
     q_incluiguia.SQL.Add('AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Concessorio  ');
     q_incluiguia.SQL.Add('FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa = i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Processo = i.Processo) AND (Faturas.codigo  ');
     q_incluiguia.SQL.Add('= i.Fatura)) LEFT JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Processo) AND (Faturas.Moeda =  ');
     q_incluiguia.SQL.Add('ptc.Moeda)) LEFT JOIN Tributacao_Item_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tributacao_Item_Fatura.Processo)  ');
     q_incluiguia.SQL.Add('AND (i.Fatura = Tributacao_Item_Fatura.Fatura) AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatura.Tratamento_Tributario =  ');
     q_incluiguia.SQL.Add('Fundamento_Legal_ICMS.Tratamento_Tributario) AND (Tributacao_Item_Fatura.Fundamento_Legal = Fundamento_Legal_ICMS.codigo)  ');
     q_incluiguia.SQL.Add('GROUP BY Tributacao_Item_Fatura.Adicao, Mid([i].[NCM],1,4)+"."+Mid([i].[NCM],5,2)+"."+Mid([i].[NCM],7,2), Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao,  ');
     q_incluiguia.SQL.Add('1, Tributacao_Item_Fatura.Ato_Concessorio, Faturas.Processo, i.Fatura, Tributacao_Item_Fatura.Adicao, Val([Adicao])  ');
     q_incluiguia.SQL.Add('HAVING (((Tributacao_Item_Fatura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_ICMS.descricao) Is Not Null) AND ((Faturas.Processo)=:qprocesso))  ');
     q_incluiguia.SQL.Add('ORDER BY Faturas.Processo, i.Fatura, Tributacao_Item_Fatura.Adicao, Val([Adicao]) ');

     DSI := true;
     numera := true
  end
  else begin     }
     q_incluiguia.SQL.Clear;
     q_incluiguia.SQL.Add('INSERT INTO GUIAtemp ( Processo, adicao, NCM, tratamento, fundamento, Valor, Valorcif, Pagina, Ato_concessorio ) ');
     q_incluiguia.SQL.Add('SELECT Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2) ');
     q_incluiguia.SQL.Add('AS qncm, Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, ');

     if (qrFaturaincoterm.AsString = 'CFR') or (qrFaturaincoterm.AsString = 'CIF') or (qrFaturaincoterm.AsString = 'CIP') or (qrFaturaincoterm.AsString = 'CPT') then
        q_incluiguia.SQL.Add('Cast(Sum(([i].[Valor_Aduaneiro] + i.[Rateio_carga_exp] * [i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ')
     else
        q_incluiguia.SQL.Add('Cast(Sum((([i].[Valor_Aduaneiro]+ i.Rateio_Frete_prepaid + i.Rateio_Acrescimos ) *[i].[quantidade] )*[ptc].[taxa_conversao])AS decimal(20,4)) AS qvalor, ');

     q_incluiguia.SQL.Add('Cast(Sum(([i].[valor_total]+(([i].[rateio_frete_prepaid]*[i].[quantidade])+([i].[rateio_frete_collect]*[i].[quantidade])-([i].[rateio_frete_ternac]*[i].[quantidade])))*[ptc].[taxa_conversao]) AS decimal(10,5)) ');
     q_incluiguia.SQL.Add('AS qvalo2, 1 AS qpag, Tributacao_Item_Fatura.Ato_Concessorio ');
     q_incluiguia.SQL.Add('FROM (((Faturas LEFT JOIN ItensFaturas AS i ON (Faturas.Empresa = i.Empresa) AND (Faturas.Filial = i.Filial) AND (Faturas.Processo = i.Processo) AND (Faturas.Codigo = ');
     q_incluiguia.SQL.Add('i.Fatura)) LEFT JOIN Processos_Taxas_Conversao AS ptc ON (Faturas.Empresa = ptc.Empresa) AND (Faturas.Filial = ptc.Filial) AND (Faturas.Processo = ptc.Processo) AND (Faturas.Moeda = ptc.Moeda)) ');
     q_incluiguia.SQL.Add('LEFT JOIN Tributacao_Item_Fatura ON (i.Empresa = Tributacao_Item_Fatura.Empresa) AND (i.Filial = Tributacao_Item_Fatura.Filial) AND (i.Processo = Tributacao_Item_Fatura.Processo) AND (i.Fatura = Tributacao_Item_Fatura.Fatura) ');
     q_incluiguia.SQL.Add('AND (i.Sequencial = Tributacao_Item_Fatura.Sequencial_Item)) LEFT JOIN Fundamento_Legal_ICMS ON (Tributacao_Item_Fatura.Tratamento_Tributario = Fundamento_Legal_ICMS.Tratamento_Tributario) AND ');
     q_incluiguia.SQL.Add('(Tributacao_Item_Fatura.Fundamento_Legal = Fundamento_Legal_ICMS.codigo) ');
     q_incluiguia.SQL.Add('GROUP BY Faturas.Processo, Tributacao_Item_Fatura.Adicao, Substring([i].[NCM],1,4)+"."+Substring([i].[NCM],5,2)+"."+Substring([i].[NCM],7,2), Tributacao_Item_Fatura.Tratamento_Tributario, Fundamento_Legal_ICMS.descricao, ');
     q_incluiguia.SQL.Add('Tributacao_Item_Fatura.Ato_Concessorio, Cast([Adicao] as integer) ');
     q_incluiguia.SQL.Add('HAVING (((Faturas.Processo)=:qprocesso) AND ((Tributacao_Item_Fatura.Tratamento_Tributario) Is Not Null) AND ((Fundamento_Legal_ICMS.descricao) Is Not Null)) ');
     q_incluiguia.SQL.Add('ORDER BY Cast([Adicao] as integer) ');
 // end;

      q_incluiguia.params[0].asstring := me_nossaref.text;
      q_incluiguia.execsql;
      t_guia.filter := 'Processo = '+chr(39)+me_nossaref.text+chr(39);
///      t_guia.filter := 'processo = '+me_nossaref.text;
      t_guia.close;
      t_guia.open;
      quantidade := 7;
      qtdt := 46;
      reg := 0;
      valorcif:=0;
      if t_guia.recordcount > 0 then begin
         while (not t_guia.eof) do begin
               reg := reg+1;
               t_guia.edit;
               if (reg<=quantidade) then t_guiapagina.asinteger := 1
               else t_guiapagina.asinteger := 2;
               if numera then begin
                  t_guiaadicao.asstring := copy('000'+inttostr(reg),length('000'+inttostr(reg))-2,3);
               end;
               t_guia.post;
               valorcif := t_guiavalorcif.asfloat;
               t_guia.next;
         end;
          {
          while t_guia.recordcount < quantidade do begin
                reg := reg+1;
                t_guia.append;
                t_guiaProcesso.asstring := me_nossaref.text;
                t_guiaadicao.asstring   := 'X'+copy('00'+inttostr(reg),length('00'+inttostr(reg))-1,2);
                ///copy('000'+inttostr(reg+100),length('000'+inttostr(reg+100))-2,3);
                t_guiancm.asstring      := '1';
                t_guiapagina.asinteger  := 1;
                t_guia.post;
         end;

         qreg := t_guia.recordcount;
         qtdt := qtdt*(int((qreg/qtdt)+1));

         while t_guia.recordcount < qtdt do begin
               reg := reg+1;
               t_guia.append;
               t_guiaProcesso.asstring := me_nossaref.text;
               t_guiaadicao.asstring   := 'X'+copy('00'+inttostr(reg),length('00'+inttostr(reg))-1,2);
               ///copy('000'+inttostr(reg+100),length('000'+inttostr(reg+100))-2,3);
               t_guiancm.asstring      := '1';
               t_guiapagina.asinteger  := 2;
               t_guia.post;
         end;
         }
      end;
      Screen.Cursor := crDefault;
      l_aviso.Visible :=true;
      dbg_edita.Visible :=true;
      dbg_edita.SetFocus;
      qrFatura.close;

end;

procedure Tf_Exoneracao.dbg_editaExit(Sender: TObject);
begin
    dbg_edita.Visible := false;
    l_aviso.Visible :=false;
end;

end.
