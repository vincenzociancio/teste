�
 TF_SENHA 0�D  TPF0Tf_senhaf_senhaLeftcTop� BorderIcons BorderStylebsDialogCaptionMS2000Plus - Senha de AcessoClientHeightyClientWidth�Color	clBtnFace
ParentFont		FormStylefsStayOnTopOldCreateOrder	PositionpoScreenCenterOnClose	FormCloseOnCreate
FormCreatePixelsPerInch`
TextHeight TPanelPanel1Left Top Width�HeightyAlignalClientColorclMenuTabOrder  TLabelLabel2LeftTopWidth,HeightCaptionEmpresa:  TLabelLabel3LeftTop0WidthHeightCaptionFilial:  TLabelLabel4LeftTopHWidth'HeightCaptionUsuario:  TLabelLabel1LeftTop`Width"HeightCaptionSenha:  TEditEdit1Left?TopWidth�HeightEnabledTabOrder TextEdit1  TEditEdit2Left?Top'Width�HeightEnabledTabOrderTextEdit2  TEdit	E_usuarioLeft?Top?Width� HeightCharCaseecUpperCaseTabOrder  TEditE_senhaLeft?TopWWidth� HeightPasswordChar*TabOrder  TBitBtn
B_confirmaLeft/TopOWidthKHeightCaptionConfirmaTabOrderOnClickB_confirmaClickKindbkOK  TBitBtn	B_cancelaLeft�TopOWidthKHeightCaptionCancelaTabOrderOnClickB_cancelaClickKindbkCancel  TPanelPanel3Left�TopjWidthHeight

BevelOuterbvNoneColorclMenuTabOrder TWebBrowserWB1LeftTopWidthHeightTabOrder ControlData
�   L   j   O                           L              ��W s5��i +.b
       L        �      F�                                                            TPanelPanel4Left�Top WidthIHeight
BevelOuterbvNoneColorclMenuTabOrder    TPanelPanel2Left� TopWidth� HeightqColorclMenuTabOrderVisible TLabelLabel5LeftTopWidthmHeightCaptionDigite sua nova senha:  TLabelLabel6LeftTop,WidthHeightCaptionRepita  TBitBtnBitBtn1LeftTopRWidthKHeightCaptionConfirmaTabOrder OnClickBitBtn1ClickKindbkOK  TBitBtnBitBtn2LeftfTopRWidthKHeightCaptionCancelaTabOrderOnClickBitBtn2ClickKindbkCancel  TEditEdit3LeftTopWidth� HeightHintNo M�ximo de 10 Caracteres	MaxLength
ParentShowHintPasswordChar*ShowHint	TabOrder  TEditEdit4LeftTop:Width� HeightHintNo M�ximo de 10 Caracteres	MaxLength
ParentShowHintPasswordChar*ShowHint	TabOrder   TDataSourceDS_empresasDataSet
T_empresasLeft� Top��    TDataSource
DS_filiaisDataSet	T_filiaisLeft(Top��    TTable
T_empresasDatabaseNameDBNMSCOMEX_acessoIndexFieldNamesCodigo	TableNameEmpresasLeft TStringFieldT_empresasCodigo	FieldNameCodigo	FixedChar	Size  TStringFieldT_empresasRazao_Social	FieldNameRazao_Social	FixedChar	SizeF   TTable	T_filiaisDatabaseNameDBNMSCOMEX_acessoIndexFieldNamesCodigo_Empresa;Codigo_Filial	TableNameFiliaisLeft8Top TStringFieldT_filiaisCodigo_Empresa	FieldNameCodigo_Empresa	FixedChar	Size  TStringFieldT_filiaisCodigo_Filial	FieldNameCodigo_Filial	FixedChar	Size  TStringFieldT_filiaisDescricao	FieldName	Descricao	FixedChar	Size2  TStringFieldT_filiaisEndereco	FieldNameEndereco	FixedChar	Size(  TStringFieldT_filiaisNumero	FieldNameNumero	FixedChar	Size  TStringFieldT_filiaisComplemento	FieldNameComplemento	FixedChar	Size  TStringFieldT_filiaisBairro	FieldNameBairro	FixedChar	Size  TStringFieldT_filiaisCidade	FieldNameCidade	FixedChar	Size  TStringFieldT_filiaisUF	FieldNameUF	FixedChar	Size  TStringFieldT_filiaisCEP	FieldNameCEP	FixedChar	Size
  TStringFieldT_filiaisTelefone	FieldNameTelefone	FixedChar	Size(  TStringFieldT_filiaisFax	FieldNameFax	FixedChar	Size(   TDataSourceDS_usuariosDataSet
T_usuariosLeft`Top��    TTable
T_usuariosDatabaseNameDBNMSCOMEX_acessoIndexFieldNamesEmpresa;Filial;Usuario	TableNameUsuariosLefthTop TStringFieldT_usuariosEmpresa	FieldNameEmpresa	FixedChar	Size  TStringFieldT_usuariosFilial	FieldNameFilial	FixedChar	Size  TStringFieldT_usuariosUsuario	FieldNameUsuario	FixedChar	Size
  TStringFieldT_usuariosSenha	FieldNameSenha	FixedChar	Size
  TStringFieldT_usuariosNome_Completo	FieldNameNome_Completo	FixedChar	Size-  TStringFieldT_usuariosDiretorio_SISCOMEX	FieldNameDiretorio_SISCOMEX	FixedChar	Size2  TStringFieldT_usuariosNivel	FieldNameNivel	FixedChar	Size  TStringFieldT_usuariosNivel_ccorrente	FieldNameNivel_ccorrente	FixedChar	Size  TDateTimeFieldT_usuariosData_validade_senha	FieldNameData_validade_senha  TStringFieldT_usuariosEmail	FieldNameEmail	FixedChar	Size2  TSmallintFieldT_usuariosEmail_Sol_Num	FieldNameEmail_Sol_Num  TSmallintFieldT_usuariosEmail_aviso_oper	FieldNameEmail_aviso_oper  TSmallintFieldT_usuariosEmail_aviso_finan	FieldNameEmail_aviso_finan  TSmallintFieldT_usuariosEmail_aviso_diretoria	FieldNameEmail_aviso_diretoria  TSmallintFieldT_usuariosEmail_aviso_sistema	FieldNameEmail_aviso_sistema  TSmallintFieldT_usuariosDistribui_processo	FieldNameDistribui_processo  TSmallintFieldT_usuariosAbre_processos	FieldNameAbre_processos  TSmallintFieldT_usuariosEdita_eventos	FieldNameEdita_eventos  TSmallintFieldT_usuariosDigitalizador	FieldNameDigitalizador  TSmallintFieldT_usuariosTraduz_Classifica	FieldNameTraduz_Classifica  TSmallintFieldT_usuariosInativa_Cliente	FieldNameInativa_Cliente  TSmallintFieldT_usuariosEdita_cliente_inativo	FieldNameEdita_cliente_inativo  TSmallintFieldT_usuariosFecha_Processo	FieldNameFecha_Processo  TSmallintField T_usuariosEdita_Processo_Fechado	FieldNameEdita_Processo_Fechado  TSmallintFieldT_usuariosAcessa_Patrimonio	FieldNameAcessa_Patrimonio  TStringFieldT_usuariosSupervisor	FieldName
Supervisor	FixedChar	Size
  TSmallintFieldT_usuariosAcessa_PARAFAT	FieldNameAcessa_PARAFAT  TSmallintFieldT_usuariosDesconto_Faturamento	FieldNameDesconto_Faturamento  TSmallintFieldT_usuariosResponsavel	FieldNameResponsavel  TSmallintFieldT_usuariosDistribui_processoC	FieldNameDistribui_processoC  TSmallintFieldT_usuariosResponsavelC	FieldNameResponsavelC  TStringFieldT_usuariosSupervisorC	FieldNameSupervisorC	FixedChar	Size
  TStringFieldT_usuariosSetor	FieldNameSetor	FixedChar	Size  TIntegerFieldT_usuariosFOLLOW_LIBERADO	FieldNameFOLLOW_LIBERADO  TBooleanFieldT_usuariosAtivo	FieldNameAtivo  TBooleanFieldT_usuariosDocumentador	FieldNameDocumentador  TIntegerFieldT_usuariosHierarquia	FieldName
Hierarquia  TBooleanFieldT_usuariosArquivista	FieldName
Arquivista  TBooleanFieldT_usuariosMontador	FieldNameMontador  TStringFieldT_usuariosCPF	FieldNameCPF	FixedChar	Size  TIntegerFieldT_usuariosPK_USUARIO	FieldName
PK_USUARIO  TStringFieldT_usuariosRamal	FieldNameRamal	FixedChar	Size
  TStringFieldT_usuariosCelular	FieldNameCelular	FixedChar	Size
  TBooleanFieldT_usuariosscanner	FieldNamescanner  TBooleanFieldT_usuariosAcessoWeb	FieldName	AcessoWeb  TIntegerFieldT_usuariosRegistra_Di	FieldNameRegistra_Di  TIntegerFieldT_usuariosAudita_Di	FieldName	Audita_Di   TDataSourceDS_parametrosDataSetT_parametrosLeft�Top��    TTableT_parametrosDatabaseNameDBNMSCOMEX_acesso	FieldDefsNameEmpresa
AttributesfaFixed DataTypeftStringSize NameFilial
AttributesfaFixed DataTypeftStringSize NameNumerador_Processos
AttributesfaFixed DataTypeftStringSize NameNumerador_Documentos
AttributesfaFixed DataTypeftStringSize NameEndereco_ftp
AttributesfaFixed DataTypeftStringSize NameUsuario_ftp
AttributesfaFixed DataTypeftStringSize Name	Senha_ftp
AttributesfaFixed DataTypeftStringSize NameHost
AttributesfaFixed DataTypeftStringSize NameVersao
AttributesfaFixed DataTypeftStringSize2 NameAlerta_AtualizacaoDataType	ftInteger Namekeycrypt
AttributesfaFixed DataTypeftStringSize�  Name	Host_smtp
AttributesfaFixed DataTypeftStringSize< Name
Porta_smtpDataType
ftSmallint NameUsuario_smtp
AttributesfaFixed DataTypeftStringSize< Name
Senha_smtp
AttributesfaFixed DataTypeftStringSize NameNumerador_Transmittal
AttributesfaFixed DataTypeftStringSize NamePATH_SERVER
AttributesfaFixed DataTypeftStringSized NameAliq_PIS_PASEPDataTypeftFloat NameAliq_COFINSDataTypeftFloat Name	Aliq_ICMSDataTypeftFloat NameAliq_ICMS_EXTRADataTypeftFloat NameNumerador_Sol_Cheques
AttributesfaFixed DataTypeftStringSize2 NameNumerador_Sol_Reg
AttributesfaFixed DataTypeftStringSize2 NameNumerador_Sol_Tracla
AttributesfaFixed DataTypeftStringSize2 NameValorMinimoRegistroDIDataTypeftFloat NameValorMaximoRegistroDIDataTypeftFloat  	IndexDefsNameParametros$PrimaryKeyFieldsEmpresa;FilialOptions	ixPrimaryixUnique  NameParametros$EmpresaFieldsEmpresaOptionsixUnique  NameParametros$FilialFieldsFilialOptionsixUnique   IndexFieldNamesEmpresa;Filial	StoreDefs		TableName
ParametrosLeft�Top TStringFieldT_parametrosEmpresa	FieldNameEmpresa	FixedChar	Size  TStringFieldT_parametrosFilial	FieldNameFilial	FixedChar	Size  TStringFieldT_parametrosNumerador_Processos	FieldNameNumerador_Processos	FixedChar	Size  TStringField T_parametrosNumerador_Documentos	FieldNameNumerador_Documentos	FixedChar	Size  TStringFieldT_parametrosEndereco_ftp	FieldNameEndereco_ftp	FixedChar	Size  TStringFieldT_parametrosUsuario_ftp	FieldNameUsuario_ftp	FixedChar	Size  TStringFieldT_parametrosSenha_ftp	FieldName	Senha_ftp	FixedChar	Size  TStringFieldT_parametrosHost	FieldNameHost	FixedChar	Size  TStringFieldT_parametrosVersao	FieldNameVersao	FixedChar	Size2  TStringFieldT_parametroskeycrypt	FieldNamekeycrypt	FixedChar	Size�   TStringFieldT_parametrosHost_smtp	FieldName	Host_smtp	FixedChar	Size  TSmallintFieldT_parametrosPorta_smtp	FieldName
Porta_smtp  TStringFieldT_parametrosUsuario_smtp	FieldNameUsuario_smtp	FixedChar	Size  TStringFieldT_parametrosSenha_smtp	FieldName
Senha_smtp	FixedChar	Size  TStringField!T_parametrosNumerador_Transmittal	FieldNameNumerador_Transmittal	FixedChar	Size  TStringFieldT_parametrosPATH_SERVER	FieldNamePATH_SERVER	FixedChar	Sized  TFloatFieldT_parametrosAliq_PIS_PASEP	FieldNameAliq_PIS_PASEP  TFloatFieldT_parametrosAliq_COFINS	FieldNameAliq_COFINS  TFloatFieldT_parametrosAliq_ICMS	FieldName	Aliq_ICMS  TFloatFieldT_parametrosAliq_ICMS_EXTRA	FieldNameAliq_ICMS_EXTRA  TStringField!T_parametrosNumerador_Sol_Cheques	FieldNameNumerador_Sol_Cheques	FixedChar	Size2  TStringFieldT_parametrosNumerador_Sol_Reg	FieldNameNumerador_Sol_Reg	FixedChar	Size2  TStringField T_parametrosNumerador_Sol_Tracla	FieldNameNumerador_Sol_Tracla	FixedChar	Size2  TIntegerFieldT_parametrosAlerta_Atualizacao	FieldNameAlerta_Atualizacao  TFloatField!T_parametrosValorMinimoRegistroDI	FieldNameValorMinimoRegistroDI  TFloatField!T_parametrosValorMaximoRegistroDI	FieldNameValorMaximoRegistroDI   	TDatabaseDB_MSCOMEX_acesso	AliasNameA_MS2000DatabaseNameDBNMSCOMEX_acessoLoginPromptParams.StringsUSER NAME=sa SessionNameDefault  	TDatabaseDB_LOGMSCOMEX	AliasNameA_LOGMS2000DatabaseNameDBNLOGMSCOMEX_acessoLoginPromptParams.StringsUSER NAME=sa SessionNameDefaultLeft  TTablet_dataFollowDatabaseNameDBNMSCOMEX_acesso	TableNameFollow_DataLeftL TDateTimeFieldt_dataFollowData	FieldNameData   TQuery	Q_USU_HABDatabaseNameDBNMSCOMEX_acessoSQL.Strings~SELECT Usuarios_Resp_habilitados.Usuarios_HABILITADO, Usuarios_Resp_habilitados.Habilitado, Usuarios_Resp_habilitados.UsuariosFROM Usuarios_Resp_habilitadosoWHERE (((Usuarios_Resp_habilitados.Usuarios_HABILITADO)=:qusu) AND ((Usuarios_Resp_habilitados.Habilitado)=1)); Left� Top	ParamDataDataTypeftStringNamequsu	ParamType	ptUnknownValueMM   TStringFieldQ_USU_HABUsuarios_HABILITADO	FieldNameUsuarios_HABILITADOOrigin?DBNMSCOMEX_ACESSO.Usuarios_Resp_habilitados.Usuarios_HABILITADO	FixedChar	Size
  TSmallintFieldQ_USU_HABHabilitado	FieldName
HabilitadoOrigin6DBNMSCOMEX_ACESSO.Usuarios_Resp_habilitados.Habilitado  TStringFieldQ_USU_HABUsuarios	FieldNameUsuariosOrigin4DBNMSCOMEX_ACESSO.Usuarios_Resp_habilitados.Usuarios	FixedChar	Size
   TQuery
q_feriadosDatabaseNameDBNMSCOMEX_acessoSQL.Strings(select * from Feriados where Data=:qdata Left� Top(	ParamDataDataTypeftStringNameqdata	ParamType	ptUnknownValue
24/12/2010   TDateTimeFieldq_feriadosData	FieldNameDataOriginDBNMSCOMEX_ACESSO.Feriados.Data  TStringFieldq_feriadosDescricao	FieldName	DescricaoOrigin$DBNMSCOMEX_ACESSO.Feriados.Descricao	FixedChar	Size2  TStringFieldq_feriadosFilial	FieldNameFilialOrigin!DBNMSCOMEX_ACESSO.Feriados.Filial	FixedChar	Size  TStringFieldq_feriadosCodObservacao	FieldNameCodObservacaoOrigin(DBNMSCOMEX_ACESSO.Feriados.CodObservacao	FixedChar	Size   TQueryqryCheckDatabaseName
DBNMSCOMEXSQL.StringsSELECT  COUNT(C.FK_Usuario) AS 'CHECK',7 U.Total_Processos - COUNT(C.FK_Usuario) as 'Faltantes'FROM  FollowUp_Check_Universo Uf LEFT JOIN FollowUp_Check C ON (C.FK_Usuario = U.FK_Usuario AND C.SEMANA = U.SEMANA AND C.ANO = U.ANO)WHERE U.FK_Usuario =:Usuario AND* U.SEMANA = DATEPART (WEEK,GETDATE()) AND  U.ANO = YEAR(GETDATE()) GROUP BY U.Total_Processos Left�Top 	ParamDataDataType	ftUnknownNameUsuario	ParamType	ptUnknown    TQueryT_usuarios_DatabaseNameDBNMSCOMEX_acessoSQL.Stringsselect	[Empresa]      ,[Filial]      ,[Usuario]      ,[Senha]      ,[Nome_Completo]      ,[Diretorio_SISCOMEX]      ,[Nivel]      ,[Nivel_ccorrente]      ,[Data_validade_senha]      ,[Email]      ,[Email_Sol_Num]      ,[Email_aviso_oper]      ,[Email_aviso_finan]      ,[Email_aviso_diretoria]      ,[Email_aviso_sistema]      ,[Distribui_processo]      ,[Abre_processos]      ,[Edita_eventos]      ,[Digitalizador]      ,[Traduz_Classifica]      ,[Inativa_Cliente]      ,[Edita_cliente_inativo]      ,[Fecha_Processo]      ,[Edita_Processo_Fechado]      ,[Acessa_Patrimonio]      ,[Supervisor]      ,[Acessa_PARAFAT]      ,[Desconto_Faturamento]      ,[Responsavel]      ,[Distribui_processoC]      ,[ResponsavelC]      ,[SupervisorC]      ,[Setor]      ,[FOLLOW_LIBERADO]      ,[PK_USUARIO]      ,[Ramal]      ,[Celular]      ,[Hierarquia]$      ,cast([Ativo] as int) as Ativo      ,[scanner]from usuarios Left�Top0 TStringFieldT_usuarios_Empresa	FieldNameEmpresa	FixedChar	Size  TStringFieldT_usuarios_Filial	FieldNameFilial	FixedChar	Size  TStringFieldT_usuarios_Usuario	FieldNameUsuario	FixedChar	Size
  TStringFieldT_usuarios_Senha	FieldNameSenha	FixedChar	Size
  TStringFieldT_usuarios_Nome_Completo	FieldNameNome_Completo	FixedChar	Size-  TStringFieldT_usuarios_Diretorio_SISCOMEX	FieldNameDiretorio_SISCOMEX	FixedChar	Size2  TStringFieldT_usuarios_Nivel	FieldNameNivel	FixedChar	Size  TStringFieldT_usuarios_Nivel_ccorrente	FieldNameNivel_ccorrente	FixedChar	Size  TDateTimeFieldT_usuarios_Data_validade_senha	FieldNameData_validade_senha  TStringFieldT_usuarios_Email	FieldNameEmail	FixedChar	Size2  TIntegerFieldT_usuarios_Email_Sol_Num	FieldNameEmail_Sol_Num  TIntegerFieldT_usuarios_Email_aviso_oper	FieldNameEmail_aviso_oper  TIntegerFieldT_usuarios_Email_aviso_finan	FieldNameEmail_aviso_finan  TIntegerField T_usuarios_Email_aviso_diretoria	FieldNameEmail_aviso_diretoria  TIntegerFieldT_usuarios_Email_aviso_sistema	FieldNameEmail_aviso_sistema  TIntegerFieldT_usuarios_Distribui_processo	FieldNameDistribui_processo  TIntegerFieldT_usuarios_Abre_processos	FieldNameAbre_processos  TIntegerFieldT_usuarios_Edita_eventos	FieldNameEdita_eventos  TIntegerFieldT_usuarios_Digitalizador	FieldNameDigitalizador  TIntegerFieldT_usuarios_Traduz_Classifica	FieldNameTraduz_Classifica  TIntegerFieldT_usuarios_Inativa_Cliente	FieldNameInativa_Cliente  TIntegerField T_usuarios_Edita_cliente_inativo	FieldNameEdita_cliente_inativo  TIntegerFieldT_usuarios_Fecha_Processo	FieldNameFecha_Processo  TIntegerField!T_usuarios_Edita_Processo_Fechado	FieldNameEdita_Processo_Fechado  TIntegerFieldT_usuarios_Acessa_Patrimonio	FieldNameAcessa_Patrimonio  TStringFieldT_usuarios_Supervisor	FieldName
Supervisor	FixedChar	Size
  TIntegerFieldT_usuarios_Acessa_PARAFAT	FieldNameAcessa_PARAFAT  TIntegerFieldT_usuarios_Desconto_Faturamento	FieldNameDesconto_Faturamento  TIntegerFieldT_usuarios_Responsavel	FieldNameResponsavel  TIntegerFieldT_usuarios_Distribui_processoC	FieldNameDistribui_processoC  TIntegerFieldT_usuarios_ResponsavelC	FieldNameResponsavelC  TStringFieldT_usuarios_SupervisorC	FieldNameSupervisorC	FixedChar	Size
  TStringFieldT_usuarios_Setor	FieldNameSetor	FixedChar	Size  TIntegerFieldT_usuarios_FOLLOW_LIBERADO	FieldNameFOLLOW_LIBERADO  TIntegerFieldT_usuarios_PK_USUARIO	FieldName
PK_USUARIO  TStringFieldT_usuarios_Ramal	FieldNameRamal	FixedChar	Size
  TStringFieldT_usuarios_Celular	FieldNameCelular	FixedChar	Size
  TIntegerFieldT_usuarios_Hierarquia	FieldName
Hierarquia  TIntegerFieldT_usuarios_Ativo	FieldNameAtivo  TBooleanFieldT_usuarios_scanner	FieldNamescanner    