using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ContaMap : EntityTypeConfiguration<Conta>
    {
        public ContaMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Tipo, t.Codigo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Tipo)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.Tipo_Conta)
                .HasMaxLength(8);

            this.Property(t => t.For_Cli)
                .HasMaxLength(4);

            this.Property(t => t.Historico)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("Contas");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Tipo_Conta).HasColumnName("Tipo_Conta");
            this.Property(t => t.For_Cli).HasColumnName("For_Cli");
            this.Property(t => t.Data_Emissao).HasColumnName("Data_Emissao");
            this.Property(t => t.Data_Vencimento).HasColumnName("Data_Vencimento");
            this.Property(t => t.Historico).HasColumnName("Historico");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
