using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_creditos_ingMap : EntityTypeConfiguration<Tipos_creditos_ing>
    {
        public Tipos_creditos_ingMap()
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

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Plano_contas)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Tipos_creditos_ing");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Plano_contas).HasColumnName("Plano_contas");
        }
    }
}
