using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Medicao_ItensMap : EntityTypeConfiguration<Controle_Medicao_Itens>
    {
        public Controle_Medicao_ItensMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Controle_Medicao_Itens");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Codigo_Controle).HasColumnName("Codigo_Controle");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Importador).HasColumnName("Importador");
        }
    }
}
