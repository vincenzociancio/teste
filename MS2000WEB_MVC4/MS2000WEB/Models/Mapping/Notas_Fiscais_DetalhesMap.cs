using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Notas_Fiscais_DetalhesMap : EntityTypeConfiguration<Notas_Fiscais_Detalhes>
    {
        public Notas_Fiscais_DetalhesMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador, t.Processo, t.Tiponf, t.NFiscal, t.Sequencial });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Tiponf)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.NFiscal)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Sequencial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codproduto)
                .HasMaxLength(25);

            this.Property(t => t.Descricao)
                .HasMaxLength(150);

            this.Property(t => t.Classificacao)
                .HasMaxLength(8);

            this.Property(t => t.ST)
                .HasMaxLength(4);

            this.Property(t => t.Unidade)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Notas_Fiscais_Detalhes");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Tiponf).HasColumnName("Tiponf");
            this.Property(t => t.NFiscal).HasColumnName("NFiscal");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Codproduto).HasColumnName("Codproduto");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Classificacao).HasColumnName("Classificacao");
            this.Property(t => t.ST).HasColumnName("ST");
            this.Property(t => t.Unidade).HasColumnName("Unidade");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
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
        }
    }
}
