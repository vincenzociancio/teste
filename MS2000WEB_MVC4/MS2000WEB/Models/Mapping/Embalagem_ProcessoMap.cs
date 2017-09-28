using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Embalagem_ProcessoMap : EntityTypeConfiguration<Embalagem_Processo>
    {
        public Embalagem_ProcessoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.TipoEmbalagem });

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

            this.Property(t => t.TipoEmbalagem)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.DescricaoEmbalagem)
                .HasMaxLength(50);

            this.Property(t => t.Quantidade)
                .HasMaxLength(5);

            // Table & Column Mappings
            this.ToTable("Embalagem_Processo");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.TipoEmbalagem).HasColumnName("TipoEmbalagem");
            this.Property(t => t.DescricaoEmbalagem).HasColumnName("DescricaoEmbalagem");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
        }
    }
}
