using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contas_ReceberMap : EntityTypeConfiguration<Contas_Receber>
    {
        public Contas_ReceberMap()
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
                .HasMaxLength(15);

            this.Property(t => t.Tipo_Conta)
                .HasMaxLength(8);

            this.Property(t => t.Cliente)
                .HasMaxLength(4);

            this.Property(t => t.Historico)
                .HasMaxLength(45);

            // Table & Column Mappings
            this.ToTable("Contas_Receber");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Tipo_Conta).HasColumnName("Tipo_Conta");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.Data_Emissao).HasColumnName("Data_Emissao");
            this.Property(t => t.Data_Vencimento).HasColumnName("Data_Vencimento");
            this.Property(t => t.Historico).HasColumnName("Historico");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
