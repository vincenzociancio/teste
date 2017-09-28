using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Termos_De_ResponsabilidadeMap : EntityTypeConfiguration<Termos_De_Responsabilidade>
    {
        public Termos_De_ResponsabilidadeMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Importador, t.Contrato, t.Local });

            // Properties
            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Contrato)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Local)
                .IsRequired()
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Termos_De_Responsabilidade");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Local).HasColumnName("Local");
            this.Property(t => t.Termo).HasColumnName("Termo");
        }
    }
}
