using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class AcessoPaginaMap : EntityTypeConfiguration<AcessoPagina>
    {
        public AcessoPaginaMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_AcessoPaginas);

            // Properties
            this.Property(t => t.Titulo)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Pagina)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Controller)
                .IsRequired()
                .HasMaxLength(150);

            // Table & Column Mappings
            this.ToTable("AcessoPaginas");
            this.Property(t => t.PK_AcessoPaginas).HasColumnName("PK_AcessoPaginas");
            this.Property(t => t.Titulo).HasColumnName("Titulo");
            this.Property(t => t.Pagina).HasColumnName("Pagina");
            this.Property(t => t.Ativa).HasColumnName("Ativa");
            this.Property(t => t.Controller).HasColumnName("Controller");
        }
    }
}
