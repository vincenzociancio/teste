using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Faturas_movMap : EntityTypeConfiguration<Faturas_mov>
    {
        public Faturas_movMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Fornecedor, t.Fatura });

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

            this.Property(t => t.Fatura)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.Boleto)
                .HasMaxLength(15);

            this.Property(t => t.Doc_contabil)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Faturas_mov");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Fornecedor).HasColumnName("Fornecedor");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.Boleto).HasColumnName("Boleto");
            this.Property(t => t.Vencimento).HasColumnName("Vencimento");
            this.Property(t => t.Peso).HasColumnName("Peso");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Conta_Corrente).HasColumnName("Conta_Corrente");
            this.Property(t => t.Codigo_mov).HasColumnName("Codigo_mov");
            this.Property(t => t.Doc_contabil).HasColumnName("Doc_contabil");
        }
    }
}
