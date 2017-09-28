using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Notas_Fiscais_Servicos_ProcessosMap : EntityTypeConfiguration<Notas_Fiscais_Servicos_Processos>
    {
        public Notas_Fiscais_Servicos_ProcessosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.NFISCAL)
                .IsRequired()
                .HasMaxLength(6);

            this.Property(t => t.PROCESSO)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Notas_Fiscais_Servicos_Processos");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.NFISCAL).HasColumnName("NFISCAL");
            this.Property(t => t.PROCESSO).HasColumnName("PROCESSO");
        }
    }
}
