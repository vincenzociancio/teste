�
 TF_PARAMETROS 0�  TPF0TF_parametrosF_parametrosLeft� TopjBiDiModebdLeftToRightBorderIconsbiSystemMenu
biMinimize BorderStylebsSingleCaption
ParametrosClientHeightqClientWidth�Color	clBtnFace
ParentFont		FormStyle
fsMDIChild	Icon.Data
6             �  &        (    (       @         �                        �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ���                                                  p              ��p             ��p             �p            ���p            ���p   ww�    ����p wx����    ����w������    ���x������      ��x�������      x��������     x�O������     x�O������     x�O������    ��O�����      ������� ��     ������ ��p     ����  ��     ��    ��p     ���     ��     ���     ��p     �       �     �       �p              ��              �p                                                                    ���������������������������� p�   �   �  �� �� �  �  �  ?   �   ��  �� �� ���������������������������������������(                �                         �  �   �� �   � � ��  ��� ���   �  �   �� �   � � ��  ���                 �       ��      �� ��  ���Ò   O���  �O���  �O��    �� �   �  x�    �      �       �                  ��  ��  �  ��  �   �   �   �             �  ?�  ��  ��  OldCreateOrder	ParentBiDiModePosition	poDefaultScaledVisible	
OnActivateDBLookupComboBox1ClickOnClose	FormClosePixelsPerInch`
TextHeight TLabelLabel1Left TopWidth2HeightCaption
Empresa :   TLabelLabel2Left Top4Width/HeightCaptionFilial        :  TDBLookupComboBoxDBLookupComboBox1Left8TopWidthyHeight	DataFieldEmpresa
DataSourceDS_parametrosKeyFieldCodigo	ListFieldRazao_Social
ListSourceDS_empresasTabOrder OnClickDBLookupComboBox1Click  TDBLookupComboBoxDBL_filiaisporempresaLeft8Top,WidthyHeight	DataFieldFilial
DataSourceDS_parametrosKeyFieldCodigo_Filial	ListField	Descricao
ListSourceDS_filaisporempresaTabOrder  TBitBtn
B_confirmaLeftTopTWidthKHeightCaptionConfirmaTabOrderOnClickB_confirmaClickKindbkOK  TBitBtn	B_cancelaLefthTopTWidthKHeightCaptionCancelaTabOrderOnClickB_cancelaClickKindbkCancel  TDataSourceDS_parametrosDataSetT_parametrosLeft� Top��    TTableT_parametrosDatabaseName
DBNMSCOMEX	TableName
ParametrosLeft� Top��   TStringFieldT_parametrosEmpresa	FieldNameEmpresaSize  TStringFieldT_parametrosFilial	FieldNameFilialSize   TTable
T_empresasDatabaseName
DBNMSCOMEXIndexFieldNamesCodigo	TableNameEmpresasLeft� Top��   TStringFieldT_empresasCodigo	FieldNameCodigoSize  TStringFieldT_empresasRazao_Social	FieldNameRazao_SocialSizeF   TTable	T_filiaisDatabaseName
DBNMSCOMEX	TableNameFiliaisLeft Top��   TStringFieldT_filiaisCodigo_Empresa	FieldNameCodigo_EmpresaSize  TStringFieldT_filiaisCodigo_Filial	FieldNameCodigo_FilialSize  TStringFieldT_filiaisDescricao	FieldName	DescricaoSize2   TDataSourceDS_empresasDataSet
T_empresasLeft� Top��    TDataSource
DS_filiaisDataSet	T_filiaisLeftTop��    TQuery	Q_filiaisDatabaseName
DBNMSCOMEXSQL.StringsGSELECT Filiais.Codigo_Empresa, Filiais.Codigo_Filial, Filiais.DescricaoFROM Filiais  Left0Top��   TStringFieldQ_filiaisCodigo_Empresa	FieldNameCodigo_EmpresaOrigin!DBNMSCOMEX.Filiais.Codigo_EmpresaSize  TStringFieldQ_filiaisCodigo_Filial	FieldNameCodigo_FilialOrigin DBNMSCOMEX.Filiais.Codigo_FilialSize  TStringFieldQ_filiaisDescricao	FieldName	DescricaoOriginDBNMSCOMEX.Filiais.DescricaoSize2   TDataSourceDS_filaisporempresaDataSet	Q_filiaisLeft@Top   