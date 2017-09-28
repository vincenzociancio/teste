using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_NumerarioMap : EntityTypeConfiguration<Tipos_Numerario>
    {
        public Tipos_NumerarioMap()
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

            this.Property(t => t.Rateio)
                .HasMaxLength(1);

            this.Property(t => t.Sequencia)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            // Table & Column Mappings
            this.ToTable("Tipos_Numerario");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Plano_contas).HasColumnName("Plano_contas");
            this.Property(t => t.Rateio).HasColumnName("Rateio");
            this.Property(t => t.ContabilizaCC).HasColumnName("ContabilizaCC");
            this.Property(t => t.Sequencia).HasColumnName("Sequencia");
        }
    }
}
