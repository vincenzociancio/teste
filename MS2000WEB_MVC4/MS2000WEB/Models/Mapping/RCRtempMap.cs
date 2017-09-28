using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RCRtempMap : EntityTypeConfiguration<RCRtemp>
    {
        public RCRtempMap()
        {
            // Primary Key
            this.HasKey(t => t.NCM);

            // Properties
            this.Property(t => t.Processo)
                .HasMaxLength(8);

            this.Property(t => t.NCM)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Descricao_Produto)
                .HasMaxLength(120);

            this.Property(t => t.Fatura)
                .HasMaxLength(15);

            this.Property(t => t.Pagina)
                .HasMaxLength(3);

            this.Property(t => t.Unidade)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("RCRtemp");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.NCM).HasColumnName("NCM");
            this.Property(t => t.Descricao_Produto).HasColumnName("Descricao_Produto");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.Pagina).HasColumnName("Pagina");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.sequencial).HasColumnName("sequencial");
            this.Property(t => t.Unidade).HasColumnName("Unidade");
        }
    }
}
