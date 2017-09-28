using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Custos_Unitarios_webMap : EntityTypeConfiguration<Custos_Unitarios_web>
    {
        public Custos_Unitarios_webMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CGC_CPF, t.Processo, t.Fatura, t.Sequencial, t.Tipo_Custo });

            // Properties
            this.Property(t => t.CGC_CPF)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Fatura)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Sequencial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Tipo_Custo)
                .IsRequired()
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Custos_Unitarios_web");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Tipo_Custo).HasColumnName("Tipo_Custo");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
