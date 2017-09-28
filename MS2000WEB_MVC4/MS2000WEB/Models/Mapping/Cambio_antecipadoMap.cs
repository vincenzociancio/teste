using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Cambio_antecipadoMap : EntityTypeConfiguration<Cambio_antecipado>
    {
        public Cambio_antecipadoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CGC_CPF, t.CONTRATO_CAMBIO });

            // Properties
            this.Property(t => t.CGC_CPF)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.CONTRATO_CAMBIO)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Cod_Fornecedor)
                .HasMaxLength(4);

            this.Property(t => t.Moeda)
                .HasMaxLength(3);

            this.Property(t => t.Banco)
                .HasMaxLength(5);

            this.Property(t => t.Praca)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Cambio_antecipado");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.CONTRATO_CAMBIO).HasColumnName("CONTRATO_CAMBIO");
            this.Property(t => t.Cod_Fornecedor).HasColumnName("Cod_Fornecedor");
            this.Property(t => t.DT_PAG_CAMBIO).HasColumnName("DT_PAG_CAMBIO");
            this.Property(t => t.Moeda).HasColumnName("Moeda");
            this.Property(t => t.Valor_Total).HasColumnName("Valor_Total");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Praca).HasColumnName("Praca");
            this.Property(t => t.Valor_vinculado).HasColumnName("Valor_vinculado");
            this.Property(t => t.DT_PREV_EMBARQUE).HasColumnName("DT_PREV_EMBARQUE");
            this.Property(t => t.Antecipado).HasColumnName("Antecipado");
        }
    }
}
