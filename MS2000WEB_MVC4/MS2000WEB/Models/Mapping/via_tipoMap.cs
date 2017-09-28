using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class via_tipoMap : EntityTypeConfiguration<via_tipo>
    {
        public via_tipoMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            this.Property(t => t.SIGLA)
                .HasMaxLength(4);

            this.Property(t => t.tipo)
                .HasMaxLength(2);

            // Table & Column Mappings
            this.ToTable("via_tipo");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.SIGLA).HasColumnName("SIGLA");
            this.Property(t => t.tipo).HasColumnName("tipo");
        }
    }
}
