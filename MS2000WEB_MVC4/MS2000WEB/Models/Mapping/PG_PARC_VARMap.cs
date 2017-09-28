using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class PG_PARC_VARMap : EntityTypeConfiguration<PG_PARC_VAR>
    {
        public PG_PARC_VARMap()
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
                .HasMaxLength(50);

            this.Property(t => t.Data_de_Pagamento)
                .HasMaxLength(6);

            // Table & Column Mappings
            this.ToTable("PG_PARC_VAR");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Percentual).HasColumnName("Percentual");
            this.Property(t => t.Data_de_Pagamento).HasColumnName("Data_de_Pagamento");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
