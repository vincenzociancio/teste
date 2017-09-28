using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Importadores_AgrupadosMap : EntityTypeConfiguration<Importadores_Agrupados>
    {
        public Importadores_AgrupadosMap()
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
                .HasMaxLength(4);

            this.Property(t => t.Codigo_AGRUPADO)
                .HasMaxLength(4);

            this.Property(t => t.Nome_Grupo)
                .HasMaxLength(50);

            this.Property(t => t.Codigo_AGRUPADO1)
                .HasMaxLength(4);

            this.Property(t => t.Nome_Grupo1)
                .HasMaxLength(50);

            this.Property(t => t.reg)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            // Table & Column Mappings
            this.ToTable("Importadores_Agrupados");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Codigo_AGRUPADO).HasColumnName("Codigo_AGRUPADO");
            this.Property(t => t.Nome_Grupo).HasColumnName("Nome_Grupo");
            this.Property(t => t.Codigo_AGRUPADO1).HasColumnName("Codigo_AGRUPADO1");
            this.Property(t => t.Nome_Grupo1).HasColumnName("Nome_Grupo1");
            this.Property(t => t.reg).HasColumnName("reg");
        }
    }
}
