using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Planilha_PrestContasDespesas_FinanceiroMap : EntityTypeConfiguration<Planilha_PrestContasDespesas_Financeiro>
    {
        public Planilha_PrestContasDespesas_FinanceiroMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.Planilha)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Cliente)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Status)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Planilha_PrestContasDespesas_Financeiro");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Planilha).HasColumnName("Planilha");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Total).HasColumnName("Total");
            this.Property(t => t.Status).HasColumnName("Status");
        }
    }
}
