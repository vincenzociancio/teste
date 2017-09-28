using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_ALCMap : EntityTypeConfiguration<Processos_ALC>
    {
        public Processos_ALCMap()
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

            this.Property(t => t.Transportador)
                .HasMaxLength(4);

            this.Property(t => t.Descricao_mercadoria)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Processos_ALC");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Enviou).HasColumnName("Enviou");
            this.Property(t => t.Transportador).HasColumnName("Transportador");
            this.Property(t => t.Descricao_mercadoria).HasColumnName("Descricao_mercadoria");
        }
    }
}
