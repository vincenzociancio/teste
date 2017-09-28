using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Obs_EventosMap : EntityTypeConfiguration<Obs_Eventos>
    {
        public Obs_EventosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Evento, t.Codigo });

            // Properties
            this.Property(t => t.Evento)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("Obs_Eventos");
            this.Property(t => t.Evento).HasColumnName("Evento");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
            this.Property(t => t.cli_visu).HasColumnName("cli_visu");
        }
    }
}
