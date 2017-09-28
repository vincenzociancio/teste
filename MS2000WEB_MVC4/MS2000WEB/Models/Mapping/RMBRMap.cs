using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RMBRMap : EntityTypeConfiguration<RMBR>
    {
        public RMBRMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_ID);

            // Properties
            this.Property(t => t.FK_Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Numero_RMBR)
                .IsRequired()
                .HasMaxLength(9);

            this.Property(t => t.Numero_DI)
                .HasMaxLength(12);

            // Table & Column Mappings
            this.ToTable("RMBR");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.Numero_RMBR).HasColumnName("Numero_RMBR");
            this.Property(t => t.DT_Inicial).HasColumnName("DT_Inicial");
            this.Property(t => t.DT_Final).HasColumnName("DT_Final");
            this.Property(t => t.DT_Baixa).HasColumnName("DT_Baixa");
            this.Property(t => t.DT_Prorrogacao).HasColumnName("DT_Prorrogacao");
            this.Property(t => t.Numero_DI).HasColumnName("Numero_DI");
            this.Property(t => t.Status).HasColumnName("Status");
        }
    }
}
