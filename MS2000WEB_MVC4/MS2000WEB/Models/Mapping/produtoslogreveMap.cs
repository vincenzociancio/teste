using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class produtoslogreveMap : EntityTypeConfiguration<produtoslogreve>
    {
        public produtoslogreveMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Codigo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Revisao_Usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("produtoslogreve");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Revisado).HasColumnName("Revisado");
            this.Property(t => t.Revisao_Data).HasColumnName("Revisao_Data");
            this.Property(t => t.Revisao_Usuario).HasColumnName("Revisao_Usuario");
            this.Property(t => t.Revisao_OBS).HasColumnName("Revisao_OBS");
        }
    }
}
