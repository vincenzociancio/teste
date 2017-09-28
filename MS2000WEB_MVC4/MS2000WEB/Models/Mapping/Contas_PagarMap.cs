using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contas_PagarMap : EntityTypeConfiguration<Contas_Pagar>
    {
        public Contas_PagarMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Fornecedor, t.Codigo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Fornecedor)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.Historico)
                .HasMaxLength(120);

            this.Property(t => t.Plano_contas)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Contas_Pagar");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Fornecedor).HasColumnName("Fornecedor");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Data_Emissao).HasColumnName("Data_Emissao");
            this.Property(t => t.Data_Vencimento).HasColumnName("Data_Vencimento");
            this.Property(t => t.Historico).HasColumnName("Historico");
            this.Property(t => t.Plano_contas).HasColumnName("Plano_contas");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
