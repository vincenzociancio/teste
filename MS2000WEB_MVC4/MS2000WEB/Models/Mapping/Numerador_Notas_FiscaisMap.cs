using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Numerador_Notas_FiscaisMap : EntityTypeConfiguration<Numerador_Notas_Fiscais>
    {
        public Numerador_Notas_FiscaisMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Codigo, t.Tipo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Tipo)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.Numero)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Numerador_Notas_Fiscais");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Numero).HasColumnName("Numero");
        }
    }
}
