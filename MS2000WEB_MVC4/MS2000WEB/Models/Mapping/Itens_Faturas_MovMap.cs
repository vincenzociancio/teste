using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Itens_Faturas_MovMap : EntityTypeConfiguration<Itens_Faturas_Mov>
    {
        public Itens_Faturas_MovMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Fornecedor, t.Fatura, t.reg });

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

            this.Property(t => t.reg)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Processo)
                .HasMaxLength(8);

            this.Property(t => t.DI)
                .HasMaxLength(10);

            this.Property(t => t.DTA)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Itens_Faturas_Mov");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Fornecedor).HasColumnName("Fornecedor");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.reg).HasColumnName("reg");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.DTA).HasColumnName("DTA");
            this.Property(t => t.Peso).HasColumnName("Peso");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
