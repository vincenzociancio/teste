using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Atos_concessoriosMap : EntityTypeConfiguration<Atos_concessorios>
    {
        public Atos_concessoriosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Numero });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Numero)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Moeda)
                .HasMaxLength(3);

            // Table & Column Mappings
            this.ToTable("Atos_concessorios");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Numero).HasColumnName("Numero");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Vigencia_inicial).HasColumnName("Vigencia_inicial");
            this.Property(t => t.Vigencia_final).HasColumnName("Vigencia_final");
            this.Property(t => t.Moeda).HasColumnName("Moeda");
            this.Property(t => t.Valor_imp).HasColumnName("Valor_imp");
            this.Property(t => t.Valor_impc).HasColumnName("Valor_impc");
            this.Property(t => t.Valor_imps).HasColumnName("Valor_imps");
            this.Property(t => t.Valor_exp).HasColumnName("Valor_exp");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
            this.Property(t => t.SaldoC).HasColumnName("SaldoC");
            this.Property(t => t.SaldoS).HasColumnName("SaldoS");
        }
    }
}
