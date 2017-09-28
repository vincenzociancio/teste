using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Responsaveis_por_ImportadorMap : EntityTypeConfiguration<Responsaveis_por_Importador>
    {
        public Responsaveis_por_ImportadorMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador, t.Nome });

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

            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Nome_completo)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Responsaveis_por_Importador");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.Nome_completo).HasColumnName("Nome_completo");
        }
    }
}
