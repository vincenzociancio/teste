using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class PlataformaMap : EntityTypeConfiguration<Plataforma>
    {
        public PlataformaMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Plataforma);

            // Properties
            this.Property(t => t.FK_Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Plataforma1)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Sigla)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Plataformas");
            this.Property(t => t.PK_Plataforma).HasColumnName("PK_Plataforma");
            this.Property(t => t.FK_Importador).HasColumnName("FK_Importador");
            this.Property(t => t.Plataforma1).HasColumnName("Plataforma");
            this.Property(t => t.Sigla).HasColumnName("Sigla");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
        }
    }
}
