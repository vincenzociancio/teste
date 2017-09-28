using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_ExtratosMap : EntityTypeConfiguration<Processos_Extratos>
    {
        public Processos_ExtratosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Processos_Extratos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Gerado).HasColumnName("Gerado");
        }
    }
}
