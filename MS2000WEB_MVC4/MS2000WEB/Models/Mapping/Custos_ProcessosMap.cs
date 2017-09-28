using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Custos_ProcessosMap : EntityTypeConfiguration<Custos_Processos>
    {
        public Custos_ProcessosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Tipo_Custo, t.reg });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Tipo_Custo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.reg)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Fatura)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("Custos_Processos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Tipo_Custo).HasColumnName("Tipo_Custo");
            this.Property(t => t.reg).HasColumnName("reg");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
        }
    }
}
