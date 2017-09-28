using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Faturamento_Notas_CreditoMap : EntityTypeConfiguration<Faturamento_Notas_Credito>
    {
        public Faturamento_Notas_CreditoMap()
        {
            // Primary Key
            this.HasKey(t => t.Pk);

            // Properties
            this.Property(t => t.Nota)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Cliente)
                .IsRequired()
                .HasMaxLength(250);

            this.Property(t => t.Vencimento)
                .HasMaxLength(50);

            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(250);

            this.Property(t => t.Valor_Extenso)
                .IsRequired()
                .HasMaxLength(250);

            // Table & Column Mappings
            this.ToTable("Faturamento_Notas_Credito");
            this.Property(t => t.Pk).HasColumnName("Pk");
            this.Property(t => t.Nota).HasColumnName("Nota");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Vencimento).HasColumnName("Vencimento");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Valor_Extenso).HasColumnName("Valor_Extenso");
        }
    }
}
