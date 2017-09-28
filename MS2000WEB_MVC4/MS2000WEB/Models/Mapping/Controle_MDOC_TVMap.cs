using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_MDOC_TVMap : EntityTypeConfiguration<Controle_MDOC_TV>
    {
        public Controle_MDOC_TVMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Importador, t.Processo, t.Pendencias });

            // Properties
            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Pendencias)
                .IsRequired();

            // Table & Column Mappings
            this.ToTable("Controle_MDOC_TV");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Pendencias).HasColumnName("Pendencias");
        }
    }
}
