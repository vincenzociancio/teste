using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Importador_Processo_FundoFIXOMap : EntityTypeConfiguration<Importador_Processo_FundoFIXO>
    {
        public Importador_Processo_FundoFIXOMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador });

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
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Importador_Processo_FundoFIXO");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Processo).HasColumnName("Processo");
        }
    }
}
