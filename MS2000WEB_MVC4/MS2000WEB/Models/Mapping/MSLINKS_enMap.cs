using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSLINKS_enMap : EntityTypeConfiguration<MSLINKS_en>
    {
        public MSLINKS_enMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_LINK);

            // Properties
            this.Property(t => t.PK_LINK)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(100);

            this.Property(t => t.ICONE)
                .HasMaxLength(100);

            this.Property(t => t.LINK)
                .HasMaxLength(255);

            this.Property(t => t.TARGET)
                .HasMaxLength(100);

            this.Property(t => t.PARAMETROS_JANELA)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("MSLINKS-en");
            this.Property(t => t.PK_LINK).HasColumnName("PK_LINK");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.DESCRICAO_DETALHADA).HasColumnName("DESCRICAO_DETALHADA");
            this.Property(t => t.ICONE).HasColumnName("ICONE");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");
            this.Property(t => t.RESTRITO).HasColumnName("RESTRITO");
            this.Property(t => t.LINK).HasColumnName("LINK");
            this.Property(t => t.TARGET).HasColumnName("TARGET");
            this.Property(t => t.PARAMETROS_JANELA).HasColumnName("PARAMETROS_JANELA");
        }
    }
}
