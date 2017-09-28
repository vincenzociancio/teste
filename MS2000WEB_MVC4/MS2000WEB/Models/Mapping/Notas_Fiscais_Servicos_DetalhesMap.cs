using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Notas_Fiscais_Servicos_DetalhesMap : EntityTypeConfiguration<Notas_Fiscais_Servicos_Detalhes>
    {
        public Notas_Fiscais_Servicos_DetalhesMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.NFiscal, t.reg });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.NFiscal)
                .IsRequired()
                .HasMaxLength(6);

            this.Property(t => t.reg)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Unidade)
                .HasMaxLength(10);

            this.Property(t => t.Quantidade)
                .HasMaxLength(6);

            this.Property(t => t.Descricao)
                .HasMaxLength(70);

            // Table & Column Mappings
            this.ToTable("Notas_Fiscais_Servicos_Detalhes");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.NFiscal).HasColumnName("NFiscal");
            this.Property(t => t.reg).HasColumnName("reg");
            this.Property(t => t.Unidade).HasColumnName("Unidade");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Valor_unitario).HasColumnName("Valor_unitario");
            this.Property(t => t.Valor_total).HasColumnName("Valor_total");
        }
    }
}
