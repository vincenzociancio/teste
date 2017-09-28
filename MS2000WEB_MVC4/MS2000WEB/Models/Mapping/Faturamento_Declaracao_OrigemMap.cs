using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Faturamento_Declaracao_OrigemMap : EntityTypeConfiguration<Faturamento_Declaracao_Origem>
    {
        public Faturamento_Declaracao_OrigemMap()
        {
            // Primary Key
            this.HasKey(t => t.Pk);

            // Properties
            this.Property(t => t.Declaracao)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Cliente)
                .IsRequired()
                .HasMaxLength(250);

            this.Property(t => t.Nfe)
                .IsRequired()
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Faturamento_Declaracao_Origem");
            this.Property(t => t.Pk).HasColumnName("Pk");
            this.Property(t => t.Declaracao).HasColumnName("Declaracao");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Nfe).HasColumnName("Nfe");
            this.Property(t => t.Emissao).HasColumnName("Emissao");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
