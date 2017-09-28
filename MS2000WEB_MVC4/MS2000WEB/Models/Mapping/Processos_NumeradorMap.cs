using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_NumeradorMap : EntityTypeConfiguration<Processos_Numerador>
    {
        public Processos_NumeradorMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Numerador_Processos)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Processos_Numerador");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Numerador_Processos).HasColumnName("Numerador_Processos");
        }
    }
}
