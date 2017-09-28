using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class REPETRO_RTCMap : EntityTypeConfiguration<REPETRO_RTC>
    {
        public REPETRO_RTCMap()
        {
            // Primary Key
            this.HasKey(t => t.REG);

            // Properties
            this.Property(t => t.CNPJ)
                .HasMaxLength(10);

            this.Property(t => t.NUMERO_RTC)
                .HasMaxLength(15);

            this.Property(t => t.TIPO_RTC)
                .HasMaxLength(15);

            this.Property(t => t.DATA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.HORA_RTC)
                .HasMaxLength(8);

            this.Property(t => t.REQUISITANTE_RTC)
                .HasMaxLength(50);

            this.Property(t => t.EMPRESA_RTC)
                .HasMaxLength(50);

            this.Property(t => t.GERENCIA_RTC)
                .HasMaxLength(50);

            this.Property(t => t.CONTRATO_RTC)
                .HasMaxLength(50);

            this.Property(t => t.PESSOA_CONTATO_RTC)
                .HasMaxLength(50);

            this.Property(t => t.TEL_CONTATO_RTC)
                .HasMaxLength(15);

            this.Property(t => t.EMITENTE_RTC)
                .HasMaxLength(50);

            this.Property(t => t.CENTRO_RTC)
                .HasMaxLength(15);

            this.Property(t => t.GRUPO_RTC)
                .HasMaxLength(15);

            this.Property(t => t.ITEM_RTC)
                .HasMaxLength(15);

            this.Property(t => t.SUBITEM_RTC)
                .HasMaxLength(15);

            this.Property(t => t.ORIGEM_RTC)
                .HasMaxLength(50);

            this.Property(t => t.ENDERECO_ORIGEM_RTC)
                .HasMaxLength(50);

            this.Property(t => t.DESTINO_RTC)
                .HasMaxLength(50);

            this.Property(t => t.ENDERECO_DESTINO_RTC)
                .HasMaxLength(50);

            this.Property(t => t.LOCAL_REPASSE_RTC)
                .HasMaxLength(50);

            this.Property(t => t.DATA_DISPONIVEL_RTC)
                .HasMaxLength(10);

            this.Property(t => t.DATA_HORA_CEDO_RTC)
                .HasMaxLength(30);

            this.Property(t => t.DATA_HORA_TARDE_RTC)
                .HasMaxLength(30);

            this.Property(t => t.NUMERO_AT_RTC)
                .HasMaxLength(50);

            this.Property(t => t.EQUIPAMENTO_RTC)
                .HasMaxLength(50);

            this.Property(t => t.PREVISAO_SAIDA_RTC)
                .HasMaxLength(30);

            this.Property(t => t.RESERVA_RTC)
                .HasMaxLength(20);

            this.Property(t => t.TIPO_CARGA_RTC)
                .HasMaxLength(50);

            this.Property(t => t.SUBCL_CARGA_RTC)
                .HasMaxLength(50);

            this.Property(t => t.DESCRICAO_RTC)
                .HasMaxLength(100);

            this.Property(t => t.QUANTIDADE_RTC)
                .HasMaxLength(10);

            this.Property(t => t.UNIDADE_RTC)
                .HasMaxLength(50);

            this.Property(t => t.PESO_RTC)
                .HasMaxLength(10);

            this.Property(t => t.COMPRIMENTO_RTC)
                .HasMaxLength(10);

            this.Property(t => t.LARGURA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.ALTURA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.LACRE_RTC)
                .HasMaxLength(15);

            this.Property(t => t.DOC_ASSOC_RTC)
                .HasMaxLength(50);

            this.Property(t => t.STATUS_RTC)
                .HasMaxLength(50);

            this.Property(t => t.LOCAL_RETIRADA_RTC)
                .HasMaxLength(50);

            this.Property(t => t.EXPRESSINHO_RTC)
                .HasMaxLength(50);

            this.Property(t => t.VALOR_ITEM_RTC)
                .HasMaxLength(10);

            this.Property(t => t.MODAL_RTC)
                .HasMaxLength(50);

            this.Property(t => t.PRIORIDADE_RTC)
                .HasMaxLength(50);

            this.Property(t => t.DEB_CONTR_RTC)
                .HasMaxLength(50);

            this.Property(t => t.STATUS_LIB_RTC)
                .HasMaxLength(50);

            this.Property(t => t.STATUS_AUT_RTC)
                .HasMaxLength(50);

            this.Property(t => t.EMBALAGEM_RTC)
                .HasMaxLength(50);

            this.Property(t => t.SOLIC_CANCEL_RTC)
                .HasMaxLength(50);

            this.Property(t => t.ELEM_CUSTO_RTC)
                .HasMaxLength(50);

            this.Property(t => t.ORIGEM_DATA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.ORIGEM_HORA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.ORIGEM_RAMAL_RTC)
                .HasMaxLength(50);

            this.Property(t => t.ORIGEM_ASS_RTC)
                .HasMaxLength(50);

            this.Property(t => t.EQUIP_DATA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.EQUIP_HORA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.EQUIP_RAMAL_RTC)
                .HasMaxLength(50);

            this.Property(t => t.EQUIP_ASS_RTC)
                .HasMaxLength(50);

            this.Property(t => t.TRANSP_DATA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.TRANSP_HORA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.TRANSP_RAMAL_RTC)
                .HasMaxLength(50);

            this.Property(t => t.TRANSP_ASS_RTC)
                .HasMaxLength(50);

            this.Property(t => t.DESTINO_DATA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.DESTINO_HORA_RTC)
                .HasMaxLength(10);

            this.Property(t => t.DESTINO_RAMAL_RTC)
                .HasMaxLength(50);

            this.Property(t => t.DESTINO_ASS_RTC)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("REPETRO_RTC");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.CNPJ).HasColumnName("CNPJ");
            this.Property(t => t.NUMERO_RTC).HasColumnName("NUMERO_RTC");
            this.Property(t => t.TIPO_RTC).HasColumnName("TIPO_RTC");
            this.Property(t => t.DATA_RTC).HasColumnName("DATA_RTC");
            this.Property(t => t.HORA_RTC).HasColumnName("HORA_RTC");
            this.Property(t => t.REQUISITANTE_RTC).HasColumnName("REQUISITANTE_RTC");
            this.Property(t => t.EMPRESA_RTC).HasColumnName("EMPRESA_RTC");
            this.Property(t => t.GERENCIA_RTC).HasColumnName("GERENCIA_RTC");
            this.Property(t => t.CONTRATO_RTC).HasColumnName("CONTRATO_RTC");
            this.Property(t => t.PESSOA_CONTATO_RTC).HasColumnName("PESSOA_CONTATO_RTC");
            this.Property(t => t.TEL_CONTATO_RTC).HasColumnName("TEL_CONTATO_RTC");
            this.Property(t => t.EMITENTE_RTC).HasColumnName("EMITENTE_RTC");
            this.Property(t => t.CENTRO_RTC).HasColumnName("CENTRO_RTC");
            this.Property(t => t.GRUPO_RTC).HasColumnName("GRUPO_RTC");
            this.Property(t => t.ITEM_RTC).HasColumnName("ITEM_RTC");
            this.Property(t => t.SUBITEM_RTC).HasColumnName("SUBITEM_RTC");
            this.Property(t => t.ORIGEM_RTC).HasColumnName("ORIGEM_RTC");
            this.Property(t => t.ENDERECO_ORIGEM_RTC).HasColumnName("ENDERECO_ORIGEM_RTC");
            this.Property(t => t.DESTINO_RTC).HasColumnName("DESTINO_RTC");
            this.Property(t => t.ENDERECO_DESTINO_RTC).HasColumnName("ENDERECO_DESTINO_RTC");
            this.Property(t => t.LOCAL_REPASSE_RTC).HasColumnName("LOCAL_REPASSE_RTC");
            this.Property(t => t.DATA_DISPONIVEL_RTC).HasColumnName("DATA_DISPONIVEL_RTC");
            this.Property(t => t.DATA_HORA_CEDO_RTC).HasColumnName("DATA_HORA_CEDO_RTC");
            this.Property(t => t.DATA_HORA_TARDE_RTC).HasColumnName("DATA_HORA_TARDE_RTC");
            this.Property(t => t.NUMERO_AT_RTC).HasColumnName("NUMERO_AT_RTC");
            this.Property(t => t.EQUIPAMENTO_RTC).HasColumnName("EQUIPAMENTO_RTC");
            this.Property(t => t.PREVISAO_SAIDA_RTC).HasColumnName("PREVISAO_SAIDA_RTC");
            this.Property(t => t.RESERVA_RTC).HasColumnName("RESERVA_RTC");
            this.Property(t => t.TIPO_CARGA_RTC).HasColumnName("TIPO_CARGA_RTC");
            this.Property(t => t.SUBCL_CARGA_RTC).HasColumnName("SUBCL_CARGA_RTC");
            this.Property(t => t.DESCRICAO_RTC).HasColumnName("DESCRICAO_RTC");
            this.Property(t => t.QUANTIDADE_RTC).HasColumnName("QUANTIDADE_RTC");
            this.Property(t => t.UNIDADE_RTC).HasColumnName("UNIDADE_RTC");
            this.Property(t => t.PESO_RTC).HasColumnName("PESO_RTC");
            this.Property(t => t.COMPRIMENTO_RTC).HasColumnName("COMPRIMENTO_RTC");
            this.Property(t => t.LARGURA_RTC).HasColumnName("LARGURA_RTC");
            this.Property(t => t.ALTURA_RTC).HasColumnName("ALTURA_RTC");
            this.Property(t => t.LACRE_RTC).HasColumnName("LACRE_RTC");
            this.Property(t => t.DOC_ASSOC_RTC).HasColumnName("DOC_ASSOC_RTC");
            this.Property(t => t.STATUS_RTC).HasColumnName("STATUS_RTC");
            this.Property(t => t.LOCAL_RETIRADA_RTC).HasColumnName("LOCAL_RETIRADA_RTC");
            this.Property(t => t.EXPRESSINHO_RTC).HasColumnName("EXPRESSINHO_RTC");
            this.Property(t => t.VALOR_ITEM_RTC).HasColumnName("VALOR_ITEM_RTC");
            this.Property(t => t.MODAL_RTC).HasColumnName("MODAL_RTC");
            this.Property(t => t.PRIORIDADE_RTC).HasColumnName("PRIORIDADE_RTC");
            this.Property(t => t.DEB_CONTR_RTC).HasColumnName("DEB_CONTR_RTC");
            this.Property(t => t.STATUS_LIB_RTC).HasColumnName("STATUS_LIB_RTC");
            this.Property(t => t.STATUS_AUT_RTC).HasColumnName("STATUS_AUT_RTC");
            this.Property(t => t.EMBALAGEM_RTC).HasColumnName("EMBALAGEM_RTC");
            this.Property(t => t.SOLIC_CANCEL_RTC).HasColumnName("SOLIC_CANCEL_RTC");
            this.Property(t => t.ELEM_CUSTO_RTC).HasColumnName("ELEM_CUSTO_RTC");
            this.Property(t => t.OBS_RTC).HasColumnName("OBS_RTC");
            this.Property(t => t.COMENTARIOS_RTC).HasColumnName("COMENTARIOS_RTC");
            this.Property(t => t.ORIGEM_DATA_RTC).HasColumnName("ORIGEM_DATA_RTC");
            this.Property(t => t.ORIGEM_HORA_RTC).HasColumnName("ORIGEM_HORA_RTC");
            this.Property(t => t.ORIGEM_RAMAL_RTC).HasColumnName("ORIGEM_RAMAL_RTC");
            this.Property(t => t.ORIGEM_ASS_RTC).HasColumnName("ORIGEM_ASS_RTC");
            this.Property(t => t.EQUIP_DATA_RTC).HasColumnName("EQUIP_DATA_RTC");
            this.Property(t => t.EQUIP_HORA_RTC).HasColumnName("EQUIP_HORA_RTC");
            this.Property(t => t.EQUIP_RAMAL_RTC).HasColumnName("EQUIP_RAMAL_RTC");
            this.Property(t => t.EQUIP_ASS_RTC).HasColumnName("EQUIP_ASS_RTC");
            this.Property(t => t.TRANSP_DATA_RTC).HasColumnName("TRANSP_DATA_RTC");
            this.Property(t => t.TRANSP_HORA_RTC).HasColumnName("TRANSP_HORA_RTC");
            this.Property(t => t.TRANSP_RAMAL_RTC).HasColumnName("TRANSP_RAMAL_RTC");
            this.Property(t => t.TRANSP_ASS_RTC).HasColumnName("TRANSP_ASS_RTC");
            this.Property(t => t.DESTINO_DATA_RTC).HasColumnName("DESTINO_DATA_RTC");
            this.Property(t => t.DESTINO_HORA_RTC).HasColumnName("DESTINO_HORA_RTC");
            this.Property(t => t.DESTINO_RAMAL_RTC).HasColumnName("DESTINO_RAMAL_RTC");
            this.Property(t => t.DESTINO_ASS_RTC).HasColumnName("DESTINO_ASS_RTC");
        }
    }
}
