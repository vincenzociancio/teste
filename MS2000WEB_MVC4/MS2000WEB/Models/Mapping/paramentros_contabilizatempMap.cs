using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class paramentros_contabilizatempMap : EntityTypeConfiguration<paramentros_contabilizatemp>
    {
        public paramentros_contabilizatempMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador, t.Numerario });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Numerario)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Credito)
                .IsRequired()
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("paramentros_contabilizatemp");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Numerario).HasColumnName("Numerario");
            this.Property(t => t.Credito).HasColumnName("Credito");
        }
    }
}
