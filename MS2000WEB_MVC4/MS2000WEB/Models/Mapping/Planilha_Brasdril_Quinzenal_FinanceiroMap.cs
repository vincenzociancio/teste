using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Planilha_Brasdril_Quinzenal_FinanceiroMap : EntityTypeConfiguration<Planilha_Brasdril_Quinzenal_Financeiro>
    {
        public Planilha_Brasdril_Quinzenal_FinanceiroMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Sequencial, t.Planilha });

            // Properties
            this.Property(t => t.Sequencial)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Planilha)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Planilha_Brasdril_Quinzenal_Financeiro");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Planilha).HasColumnName("Planilha");
            this.Property(t => t.Data).HasColumnName("Data");
        }
    }
}
