using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class PG_PERC_VINCMap : EntityTypeConfiguration<PG_PERC_VINC>
    {
        public PG_PERC_VINCMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Fatura, t.Sequencial });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Fatura)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Sequencial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Forma_de_Pagamento)
                .HasMaxLength(1);

            this.Property(t => t.Banco)
                .HasMaxLength(5);

            this.Property(t => t.Praca)
                .HasMaxLength(4);

            this.Property(t => t.Contrato)
                .HasMaxLength(10);

            this.Property(t => t.CNPJ_Comprador)
                .HasMaxLength(14);

            this.Property(t => t.Tipo_CNPJ)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("PG_PERC_VINC");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Forma_de_Pagamento).HasColumnName("Forma_de_Pagamento");
            this.Property(t => t.Moeda_Nacional).HasColumnName("Moeda_Nacional");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Praca).HasColumnName("Praca");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Valor_Percentual).HasColumnName("Valor_Percentual");
            this.Property(t => t.CNPJ_Comprador).HasColumnName("CNPJ_Comprador");
            this.Property(t => t.Tipo_CNPJ).HasColumnName("Tipo_CNPJ");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
