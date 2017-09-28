using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ConcargaMap : EntityTypeConfiguration<Concarga>
    {
        public ConcargaMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Codigo });

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

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.Tipo_Carga)
                .HasMaxLength(4);

            this.Property(t => t.Descricao_tipo)
                .HasMaxLength(50);

            this.Property(t => t.Lacre)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Concargas");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Tipo_Carga).HasColumnName("Tipo_Carga");
            this.Property(t => t.Descricao_tipo).HasColumnName("Descricao_tipo");
            this.Property(t => t.Lacre).HasColumnName("Lacre");
        }
    }
}
