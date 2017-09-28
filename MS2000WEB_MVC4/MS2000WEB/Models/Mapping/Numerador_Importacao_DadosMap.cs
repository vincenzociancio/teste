using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Numerador_Importacao_DadosMap : EntityTypeConfiguration<Numerador_Importacao_Dados>
    {
        public Numerador_Importacao_DadosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Numerador_Processos });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Numerador_Processos)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Numerador_Importacao_Dados");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Numerador_Processos).HasColumnName("Numerador_Processos");
        }
    }
}
