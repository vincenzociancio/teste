using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_custos_webMap : EntityTypeConfiguration<Tipos_custos_web>
    {
        public Tipos_custos_webMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CGC_CPF, t.Codigo });

            // Properties
            this.Property(t => t.CGC_CPF)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Rateio)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("Tipos_custos_web");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Rateio).HasColumnName("Rateio");
        }
    }
}
