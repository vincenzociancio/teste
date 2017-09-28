using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class NF_Web_detalhes_TempMap : EntityTypeConfiguration<NF_Web_detalhes_Temp>
    {
        public NF_Web_detalhes_TempMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Usuario, t.CNPJ_CPF_COMPLETO, t.Tiponf, t.NFiscal, t.Sequencial, t.Linha });

            // Properties
            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.CNPJ_CPF_COMPLETO)
                .IsRequired()
                .HasMaxLength(14);

            this.Property(t => t.Tiponf)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.NFiscal)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Sequencial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Linha)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codproduto)
                .HasMaxLength(50);

            this.Property(t => t.Descricao)
                .HasMaxLength(150);

            this.Property(t => t.Classificacao)
                .HasMaxLength(8);

            this.Property(t => t.ST)
                .HasMaxLength(4);

            this.Property(t => t.Unidade)
                .HasMaxLength(20);

            this.Property(t => t.Processo)
                .HasMaxLength(8);

            this.Property(t => t.DI)
                .HasMaxLength(10);

            this.Property(t => t.ADICAO)
                .HasMaxLength(3);

            // Table & Column Mappings
            this.ToTable("NF_Web_detalhes_Temp");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.CNPJ_CPF_COMPLETO).HasColumnName("CNPJ_CPF_COMPLETO");
            this.Property(t => t.Tiponf).HasColumnName("Tiponf");
            this.Property(t => t.NFiscal).HasColumnName("NFiscal");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Linha).HasColumnName("Linha");
            this.Property(t => t.Codproduto).HasColumnName("Codproduto");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Classificacao).HasColumnName("Classificacao");
            this.Property(t => t.ST).HasColumnName("ST");
            this.Property(t => t.Unidade).HasColumnName("Unidade");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Peso_Unitario).HasColumnName("Peso_Unitario");
            this.Property(t => t.Valor_Mercadoria).HasColumnName("Valor_Mercadoria");
            this.Property(t => t.Frete_Unitario).HasColumnName("Frete_Unitario");
            this.Property(t => t.Seguro_Unitario).HasColumnName("Seguro_Unitario");
            this.Property(t => t.Acrescimo_Unitario).HasColumnName("Acrescimo_Unitario");
            this.Property(t => t.Deducao_Unitario).HasColumnName("Deducao_Unitario");
            this.Property(t => t.Tributo_Unitario).HasColumnName("Tributo_Unitario");
            this.Property(t => t.Valor_unitario).HasColumnName("Valor_unitario");
            this.Property(t => t.Valor_total).HasColumnName("Valor_total");
            this.Property(t => t.AliquotaICMS).HasColumnName("AliquotaICMS");
            this.Property(t => t.AliquotaIPI).HasColumnName("AliquotaIPI");
            this.Property(t => t.ValIPI).HasColumnName("ValIPI");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.ADICAO).HasColumnName("ADICAO");
            this.Property(t => t.TaxaConversao).HasColumnName("TaxaConversao");
            this.Property(t => t.Valor_Aduaneiro).HasColumnName("Valor_Aduaneiro");
            this.Property(t => t.Taxa_Siscomex_Unitario).HasColumnName("Taxa_Siscomex_Unitario");
            this.Property(t => t.Valor_PIS_unitario).HasColumnName("Valor_PIS_unitario");
            this.Property(t => t.Valor_COFINS_unitario).HasColumnName("Valor_COFINS_unitario");
            this.Property(t => t.Peso_unitario_Bruto).HasColumnName("Peso_unitario_Bruto");
        }
    }
}
