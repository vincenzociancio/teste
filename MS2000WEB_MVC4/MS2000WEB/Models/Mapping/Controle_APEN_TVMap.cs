using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_APEN_TVMap : EntityTypeConfiguration<Controle_APEN_TV>
    {
        public Controle_APEN_TVMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_ID_TV_APEN);

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Responsavel)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Controle_APEN_TV");
            this.Property(t => t.PK_ID_TV_APEN).HasColumnName("PK_ID_TV_APEN");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Dias_Processo).HasColumnName("Dias_Processo");
            this.Property(t => t.Dias_Followup).HasColumnName("Dias_Followup");
            this.Property(t => t.Responsavel).HasColumnName("Responsavel");
        }
    }
}
