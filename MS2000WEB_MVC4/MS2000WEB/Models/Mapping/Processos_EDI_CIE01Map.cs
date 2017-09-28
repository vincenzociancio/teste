using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_EDI_CIE01Map : EntityTypeConfiguration<Processos_EDI_CIE01>
    {
        public Processos_EDI_CIE01Map()
        {
            // Primary Key
            this.HasKey(t => t.PROCESSO);

            // Properties
            this.Property(t => t.PROCESSO)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.ARQUIVO)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Processos_EDI_CIE01");
            this.Property(t => t.PROCESSO).HasColumnName("PROCESSO");
            this.Property(t => t.DATA).HasColumnName("DATA");
            this.Property(t => t.ARQUIVO).HasColumnName("ARQUIVO");
        }
    }
}
