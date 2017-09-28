using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Custos_Processos_webMap : EntityTypeConfiguration<Custos_Processos_web>
    {
        public Custos_Processos_webMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CGC_CPF, t.Processo, t.Tipo_Custo });

            // Properties
            this.Property(t => t.CGC_CPF)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Tipo_Custo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Fatura)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("Custos_Processos_web");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Tipo_Custo).HasColumnName("Tipo_Custo");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
        }
    }
}
