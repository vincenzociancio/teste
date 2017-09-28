using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Followup_ResumidoMap : EntityTypeConfiguration<Followup_Resumido>
    {
        public Followup_ResumidoMap()
        {
            // Primary Key
            this.HasKey(t => t.Processo);

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Followup_Resumido");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Descricao_Ing).HasColumnName("Descricao_Ing");
        }
    }
}
