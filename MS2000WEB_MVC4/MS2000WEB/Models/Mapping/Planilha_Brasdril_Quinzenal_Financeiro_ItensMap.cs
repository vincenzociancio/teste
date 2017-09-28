using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Planilha_Brasdril_Quinzenal_Financeiro_ItensMap : EntityTypeConfiguration<Planilha_Brasdril_Quinzenal_Financeiro_Itens>
    {
        public Planilha_Brasdril_Quinzenal_Financeiro_ItensMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Sequencial, t.Sequencial_Planilha, t.Processo });

            // Properties
            this.Property(t => t.Sequencial)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Sequencial_Planilha)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Embarcacao)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Planilha_Brasdril_Quinzenal_Financeiro_Itens");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Sequencial_Planilha).HasColumnName("Sequencial_Planilha");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Honorarios).HasColumnName("Honorarios");
            this.Property(t => t.IR).HasColumnName("IR");
            this.Property(t => t.Cofins).HasColumnName("Cofins");
            this.Property(t => t.Vlr_Liquido).HasColumnName("Vlr_Liquido");
            this.Property(t => t.Embarcacao).HasColumnName("Embarcacao");
        }
    }
}
