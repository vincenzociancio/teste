using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_AdicoesMap : EntityTypeConfiguration<Processos_Adicoes>
    {
        public Processos_AdicoesMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Adicao);

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

            this.Property(t => t.Adicao)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.NCM)
                .HasMaxLength(8);

            this.Property(t => t.Regime_Tributacao_II)
                .HasMaxLength(1);

            this.Property(t => t.Regime_Tributacao_IPI)
                .HasMaxLength(1);

            this.Property(t => t.CD_REGIME_TRIBUTAR_PISCOFINS)
                .HasMaxLength(1);

            this.Property(t => t.Tratamento_Tributario)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("Processos_Adicoes");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Adicao).HasColumnName("Adicao");
            this.Property(t => t.NCM).HasColumnName("NCM");
            this.Property(t => t.VA).HasColumnName("VA");
            this.Property(t => t.OT).HasColumnName("OT");
            this.Property(t => t.DA).HasColumnName("DA");
            this.Property(t => t.Aliq_NCM_II).HasColumnName("Aliq_NCM_II");
            this.Property(t => t.Aliq_NCM_IPI).HasColumnName("Aliq_NCM_IPI");
            this.Property(t => t.Aliq_PIS_PASEP).HasColumnName("Aliq_PIS_PASEP");
            this.Property(t => t.Aliq_COFINS).HasColumnName("Aliq_COFINS");
            this.Property(t => t.Aliq_ICMS).HasColumnName("Aliq_ICMS");
            this.Property(t => t.Aliq_ICMS_EXTRA).HasColumnName("Aliq_ICMS_EXTRA");
            this.Property(t => t.BASEC_PISCOFINS).HasColumnName("BASEC_PISCOFINS");
            this.Property(t => t.BASEC_ICMS).HasColumnName("BASEC_ICMS");
            this.Property(t => t.VALOR_II).HasColumnName("VALOR_II");
            this.Property(t => t.VALOR_IPI).HasColumnName("VALOR_IPI");
            this.Property(t => t.VALOR_ICMS).HasColumnName("VALOR_ICMS");
            this.Property(t => t.VALOR_ICMS_EXTRA).HasColumnName("VALOR_ICMS_EXTRA");
            this.Property(t => t.VALOR_PIS_PASEP).HasColumnName("VALOR_PIS_PASEP");
            this.Property(t => t.VALOR_COFINS).HasColumnName("VALOR_COFINS");
            this.Property(t => t.Prazo_permanencia).HasColumnName("Prazo_permanencia");
            this.Property(t => t.VA_proporcional).HasColumnName("VA_proporcional");
            this.Property(t => t.Aliq_NCM_II_proporcional).HasColumnName("Aliq_NCM_II_proporcional");
            this.Property(t => t.Aliq_NCM_IPI_proporcional).HasColumnName("Aliq_NCM_IPI_proporcional");
            this.Property(t => t.FOB).HasColumnName("FOB");
            this.Property(t => t.Regime_Tributacao_II).HasColumnName("Regime_Tributacao_II");
            this.Property(t => t.Regime_Tributacao_IPI).HasColumnName("Regime_Tributacao_IPI");
            this.Property(t => t.CD_REGIME_TRIBUTAR_PISCOFINS).HasColumnName("CD_REGIME_TRIBUTAR_PISCOFINS");
            this.Property(t => t.Tratamento_Tributario).HasColumnName("Tratamento_Tributario");
            this.Property(t => t.PK_Adicao).HasColumnName("PK_Adicao");
            this.Property(t => t.Descricao_produto).HasColumnName("Descricao_produto");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Valor_Unitario).HasColumnName("Valor_Unitario");
            this.Property(t => t.Valor_Total).HasColumnName("Valor_Total");
        }
    }
}
