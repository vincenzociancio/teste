using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Planilha_Medicao_HonorariosMap : EntityTypeConfiguration<Planilha_Medicao_Honorarios>
    {
        public Planilha_Medicao_HonorariosMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.Planilha)
                .HasMaxLength(100);

            this.Property(t => t.Cliente)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Planilha_Medicao_Honorarios");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Planilha).HasColumnName("Planilha");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.Data).HasColumnName("Data");
        }
    }
}
