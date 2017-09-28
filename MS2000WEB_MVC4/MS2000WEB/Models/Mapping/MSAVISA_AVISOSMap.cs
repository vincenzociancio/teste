using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSAVISA_AVISOSMap : EntityTypeConfiguration<MSAVISA_AVISOS>
    {
        public MSAVISA_AVISOSMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_AVISO);

            // Properties
            this.Property(t => t.PK_AVISO)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.EMAIL)
                .HasMaxLength(50);

            this.Property(t => t.PRAZOS_AVISOS)
                .HasMaxLength(50);

            this.Property(t => t.PROCESSADOS)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("MSAVISA_AVISOS");
            this.Property(t => t.PK_AVISO).HasColumnName("PK_AVISO");
            this.Property(t => t.EMAIL).HasColumnName("EMAIL");
            this.Property(t => t.EMAILS_CC).HasColumnName("EMAILS_CC");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.DATA_VENCIMENTO).HasColumnName("DATA_VENCIMENTO");
            this.Property(t => t.PRAZOS_AVISOS).HasColumnName("PRAZOS_AVISOS");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");
            this.Property(t => t.PROCESSADOS).HasColumnName("PROCESSADOS");
            this.Property(t => t.EMAIL_INGLES).HasColumnName("EMAIL_INGLES");
        }
    }
}
