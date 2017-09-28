using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Planilha_PrestContasDespesas_Financeiro_ItensMap : EntityTypeConfiguration<Planilha_PrestContasDespesas_Financeiro_Itens>
    {
        public Planilha_PrestContasDespesas_Financeiro_ItensMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.Sequencial)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Ref_MS)
                .HasMaxLength(8);

            this.Property(t => t.Conhecimento)
                .HasMaxLength(50);

            this.Property(t => t.Fatura)
                .HasMaxLength(50);

            this.Property(t => t.Tp_Processo)
                .HasMaxLength(50);

            this.Property(t => t.Regime)
                .HasMaxLength(50);

            this.Property(t => t.Embarcacao)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Planilha_PrestContasDespesas_Financeiro_Itens");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Sequencial_Planilha).HasColumnName("Sequencial_Planilha");
            this.Property(t => t.Ref_MS).HasColumnName("Ref_MS");
            this.Property(t => t.Conhecimento).HasColumnName("Conhecimento");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.Tp_Processo).HasColumnName("Tp_Processo");
            this.Property(t => t.Regime).HasColumnName("Regime");
            this.Property(t => t.Armazenagem).HasColumnName("Armazenagem");
            this.Property(t => t.Armazenagem_CF_CP).HasColumnName("Armazenagem_CF_CP");
            this.Property(t => t.Impostos).HasColumnName("Impostos");
            this.Property(t => t.Taxas).HasColumnName("Taxas");
            this.Property(t => t.Afrmm).HasColumnName("Afrmm");
            this.Property(t => t.Despesas).HasColumnName("Despesas");
            this.Property(t => t.Transportadora_JJ).HasColumnName("Transportadora_JJ");
            this.Property(t => t.Portolog).HasColumnName("Portolog");
            this.Property(t => t.Cpmf).HasColumnName("Cpmf");
            this.Property(t => t.Adiantamento).HasColumnName("Adiantamento");
            this.Property(t => t.Total).HasColumnName("Total");
            this.Property(t => t.Embarcacao).HasColumnName("Embarcacao");
            this.Property(t => t.Honorarios).HasColumnName("Honorarios");
            this.Property(t => t.Honorarios_Especiais).HasColumnName("Honorarios_Especiais");
            this.Property(t => t.IR).HasColumnName("IR");
            this.Property(t => t.Cofins).HasColumnName("Cofins");
            this.Property(t => t.Vlr_Liquido).HasColumnName("Vlr_Liquido");
        }
    }
}
