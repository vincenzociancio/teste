using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Apenc_PendenciasMap : EntityTypeConfiguration<Apenc_Pendencias>
    {
        public Apenc_PendenciasMap()
        {
            // Primary Key
            this.HasKey(t => t.Processo);

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Descricao)
                .HasMaxLength(1500);

            // Table & Column Mappings
            this.ToTable("Apenc_Pendencias");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Pendencia).HasColumnName("Pendencia");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}
