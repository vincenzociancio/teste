using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Atos_LegaisMap : EntityTypeConfiguration<Atos_Legais>
    {
        public Atos_LegaisMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Tipo_Ato, t.Numero });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Tipo_Ato)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.Numero)
                .IsRequired()
                .HasMaxLength(5);

            this.Property(t => t.EX)
                .HasMaxLength(3);

            this.Property(t => t.Tipo_Ato_Legal)
                .HasMaxLength(10);

            this.Property(t => t.Orgao_Emissor)
                .HasMaxLength(10);

            this.Property(t => t.Ano_Ato_Legal)
                .HasMaxLength(4);

            this.Property(t => t.obs)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Atos_Legais");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Tipo_Ato).HasColumnName("Tipo_Ato");
            this.Property(t => t.Numero).HasColumnName("Numero");
            this.Property(t => t.EX).HasColumnName("EX");
            this.Property(t => t.Tipo_Ato_Legal).HasColumnName("Tipo_Ato_Legal");
            this.Property(t => t.Orgao_Emissor).HasColumnName("Orgao_Emissor");
            this.Property(t => t.Ano_Ato_Legal).HasColumnName("Ano_Ato_Legal");
            this.Property(t => t.obs).HasColumnName("obs");
        }
    }
}
