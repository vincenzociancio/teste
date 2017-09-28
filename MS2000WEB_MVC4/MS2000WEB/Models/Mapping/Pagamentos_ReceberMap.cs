using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Pagamentos_ReceberMap : EntityTypeConfiguration<Pagamentos_Receber>
    {
        public Pagamentos_ReceberMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .HasMaxLength(15);

            this.Property(t => t.Banco_Caixa)
                .HasMaxLength(1);

            this.Property(t => t.Banco)
                .HasMaxLength(5);

            this.Property(t => t.Agencia)
                .HasMaxLength(5);

            this.Property(t => t.Conta_Corrente)
                .HasMaxLength(8);

            this.Property(t => t.Caixa)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Pagamentos_Receber");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Banco_Caixa).HasColumnName("Banco_Caixa");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Agencia).HasColumnName("Agencia");
            this.Property(t => t.Conta_Corrente).HasColumnName("Conta_Corrente");
            this.Property(t => t.Caixa).HasColumnName("Caixa");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
