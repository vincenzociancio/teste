using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Obs_Eventos_IngMap : EntityTypeConfiguration<Obs_Eventos_Ing>
    {
        public Obs_Eventos_IngMap()
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

            this.Property(t => t.Descricao_i)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("Obs_Eventos_Ing");
            this.Property(t => t.Evento).HasColumnName("Evento");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Descricao_i).HasColumnName("Descricao_i");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
            this.Property(t => t.cli_visu).HasColumnName("cli_visu");
        }
    }
}
