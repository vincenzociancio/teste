using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Observacoes_Termo_ResponsabilidadeMap : EntityTypeConfiguration<Observacoes_Termo_Responsabilidade>
    {
        public Observacoes_Termo_ResponsabilidadeMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Numero_tr });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Numero_tr)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Observacoes_Termo_Responsabilidade");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Numero_tr).HasColumnName("Numero_tr");
            this.Property(t => t.Observacoes).HasColumnName("Observacoes");
        }
    }
}
