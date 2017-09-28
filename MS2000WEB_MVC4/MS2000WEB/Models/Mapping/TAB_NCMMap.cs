using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_NCMMap : EntityTypeConfiguration<TAB_NCM>
    {
        public TAB_NCMMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(120);

            this.Property(t => t.UNIDADE_MEDIDA)
                .HasMaxLength(4);

            this.Property(t => t.ALIQUOTA_II)
                .HasMaxLength(6);

            this.Property(t => t.DATA_INICIO_VIG_II)
                .HasMaxLength(10);

            this.Property(t => t.DATA_FIM_VIG_II)
                .HasMaxLength(10);

            this.Property(t => t.ALIQUOTA_II_MERCOSUL)
                .HasMaxLength(6);

            this.Property(t => t.DATA_INICIO_VIG_II_MSUL)
                .HasMaxLength(10);

            this.Property(t => t.DATA_FIM_VIG_II_MSUL)
                .HasMaxLength(10);

            this.Property(t => t.ALIQUOTA_IPI)
                .HasMaxLength(6);

            this.Property(t => t.DATA_INICIO_VIG_IPI)
                .HasMaxLength(10);

            this.Property(t => t.DATA_FIM_VIG_IPI)
                .HasMaxLength(10);

            this.Property(t => t.ALIQUOTA_PIS_ADVAL)
                .HasMaxLength(6);

            this.Property(t => t.DATA_INI_VIG_PIS_ADVAL)
                .HasMaxLength(10);

            this.Property(t => t.DATA_FIM_VIG_PIS_ADVAL)
                .HasMaxLength(10);

            this.Property(t => t.ALIQUOTA_COFINS_ADVAL)
                .HasMaxLength(6);

            this.Property(t => t.DATA_INI_VIG_COFINS_ADVAL)
                .HasMaxLength(10);

            this.Property(t => t.DATA_FIM_VIG_COFINS_ADVAL)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("TAB_NCM");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.UNIDADE_MEDIDA).HasColumnName("UNIDADE_MEDIDA");
            this.Property(t => t.ALIQUOTA_II).HasColumnName("ALIQUOTA_II");
            this.Property(t => t.DATA_INICIO_VIG_II).HasColumnName("DATA_INICIO_VIG_II");
            this.Property(t => t.DATA_FIM_VIG_II).HasColumnName("DATA_FIM_VIG_II");
            this.Property(t => t.ALIQUOTA_II_MERCOSUL).HasColumnName("ALIQUOTA_II_MERCOSUL");
            this.Property(t => t.DATA_INICIO_VIG_II_MSUL).HasColumnName("DATA_INICIO_VIG_II_MSUL");
            this.Property(t => t.DATA_FIM_VIG_II_MSUL).HasColumnName("DATA_FIM_VIG_II_MSUL");
            this.Property(t => t.ALIQUOTA_IPI).HasColumnName("ALIQUOTA_IPI");
            this.Property(t => t.DATA_INICIO_VIG_IPI).HasColumnName("DATA_INICIO_VIG_IPI");
            this.Property(t => t.DATA_FIM_VIG_IPI).HasColumnName("DATA_FIM_VIG_IPI");
            this.Property(t => t.ALIQUOTA_PIS_ADVAL).HasColumnName("ALIQUOTA_PIS_ADVAL");
            this.Property(t => t.DATA_INI_VIG_PIS_ADVAL).HasColumnName("DATA_INI_VIG_PIS_ADVAL");
            this.Property(t => t.DATA_FIM_VIG_PIS_ADVAL).HasColumnName("DATA_FIM_VIG_PIS_ADVAL");
            this.Property(t => t.ALIQUOTA_COFINS_ADVAL).HasColumnName("ALIQUOTA_COFINS_ADVAL");
            this.Property(t => t.DATA_INI_VIG_COFINS_ADVAL).HasColumnName("DATA_INI_VIG_COFINS_ADVAL");
            this.Property(t => t.DATA_FIM_VIG_COFINS_ADVAL).HasColumnName("DATA_FIM_VIG_COFINS_ADVAL");
        }
    }
}
