using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Planilha_Transocean_ItensMap : EntityTypeConfiguration<Planilha_Transocean_Itens>
    {
        public Planilha_Transocean_ItensMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.REF_MS)
                .HasMaxLength(10);

            this.Property(t => t.PLATAF)
                .HasMaxLength(50);

            this.Property(t => t.INVOICE)
                .HasMaxLength(255);

            this.Property(t => t.AWB_BL)
                .HasMaxLength(100);

            this.Property(t => t.NAVIO)
                .HasMaxLength(50);

            this.Property(t => t.RCR)
                .HasMaxLength(50);

            this.Property(t => t.RESP_PROCESSO)
                .HasMaxLength(100);

            this.Property(t => t.NFiscal)
                .HasMaxLength(6);

            this.Property(t => t.Obs)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Planilha_Transocean_Itens");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Sequencial_Planilha).HasColumnName("Sequencial_Planilha");
            this.Property(t => t.REF_MS).HasColumnName("REF_MS");
            this.Property(t => t.PLATAF).HasColumnName("PLATAF");
            this.Property(t => t.INVOICE).HasColumnName("INVOICE");
            this.Property(t => t.CIF).HasColumnName("CIF");
            this.Property(t => t.AWB_BL).HasColumnName("AWB_BL");
            this.Property(t => t.NAVIO).HasColumnName("NAVIO");
            this.Property(t => t.RCR).HasColumnName("RCR");
            this.Property(t => t.LIBERACAO_AWB_BL).HasColumnName("LIBERACAO_AWB_BL");
            this.Property(t => t.HONORARIOS).HasColumnName("HONORARIOS");
            this.Property(t => t.II).HasColumnName("II");
            this.Property(t => t.IPI).HasColumnName("IPI");
            this.Property(t => t.PIS_PASEP).HasColumnName("PIS_PASEP");
            this.Property(t => t.COFINS).HasColumnName("COFINS");
            this.Property(t => t.TX_SISCOMEX).HasColumnName("TX_SISCOMEX");
            this.Property(t => t.ICMS).HasColumnName("ICMS");
            this.Property(t => t.ARMAZ_AIRJ).HasColumnName("ARMAZ_AIRJ");
            this.Property(t => t.ARMAZ_CFRIO).HasColumnName("ARMAZ_CFRIO");
            this.Property(t => t.MARINHA_MERCANTE).HasColumnName("MARINHA_MERCANTE");
            this.Property(t => t.TOTAL).HasColumnName("TOTAL");
            this.Property(t => t.RESP_PROCESSO).HasColumnName("RESP_PROCESSO");
            this.Property(t => t.Data_Recebimento).HasColumnName("Data_Recebimento");
            this.Property(t => t.NFiscal).HasColumnName("NFiscal");
            this.Property(t => t.Data_emissao).HasColumnName("Data_emissao");
            this.Property(t => t.Obs).HasColumnName("Obs");
        }
    }
}
