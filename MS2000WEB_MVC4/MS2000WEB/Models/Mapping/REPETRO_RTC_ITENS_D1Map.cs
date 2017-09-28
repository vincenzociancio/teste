using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class REPETRO_RTC_ITENS_D1Map : EntityTypeConfiguration<REPETRO_RTC_ITENS_D1>
    {
        public REPETRO_RTC_ITENS_D1Map()
        {
            // Primary Key
            this.HasKey(t => t.REG);

            // Properties
            this.Property(t => t.ITEM)
                .HasMaxLength(10);

            this.Property(t => t.QUANTIDADE)
                .HasMaxLength(10);

            this.Property(t => t.UNIDADE)
                .HasMaxLength(50);

            this.Property(t => t.Numero_serie)
                .HasMaxLength(20);

            this.Property(t => t.Supplier)
                .HasMaxLength(50);

            this.Property(t => t.Nota_Fiscal)
                .HasMaxLength(50);

            this.Property(t => t.PESO)
                .HasMaxLength(10);

            this.Property(t => t.Origem_BRA_MFST)
                .HasMaxLength(50);

            this.Property(t => t.VALOR)
                .HasMaxLength(10);

            this.Property(t => t.DI)
                .HasMaxLength(10);

            this.Property(t => t.Adicao)
                .HasMaxLength(3);

            this.Property(t => t.Seq_Adicaostr)
                .HasMaxLength(3);

            this.Property(t => t.CNPJ)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("REPETRO_RTC_ITENS_D1");
            this.Property(t => t.REG_RTC).HasColumnName("REG_RTC");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.ITEM).HasColumnName("ITEM");
            this.Property(t => t.QUANTIDADE).HasColumnName("QUANTIDADE");
            this.Property(t => t.UNIDADE).HasColumnName("UNIDADE");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.Numero_serie).HasColumnName("Numero_serie");
            this.Property(t => t.Supplier).HasColumnName("Supplier");
            this.Property(t => t.Nota_Fiscal).HasColumnName("Nota_Fiscal");
            this.Property(t => t.PESO).HasColumnName("PESO");
            this.Property(t => t.Origem_BRA_MFST).HasColumnName("Origem_BRA_MFST");
            this.Property(t => t.DESTINACAO).HasColumnName("DESTINACAO");
            this.Property(t => t.VALOR).HasColumnName("VALOR");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.Adicao).HasColumnName("Adicao");
            this.Property(t => t.Seq_Adicaostr).HasColumnName("Seq_Adicaostr");
            this.Property(t => t.CNPJ).HasColumnName("CNPJ");
            this.Property(t => t.Movimento).HasColumnName("Movimento");
        }
    }
}
