using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class EventoMap : EntityTypeConfiguration<Evento>
    {
        public EventoMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            this.Property(t => t.Grupo)
                .HasMaxLength(8);

            this.Property(t => t.Codigo_Fecha)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Eventos");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Grupo).HasColumnName("Grupo");
            this.Property(t => t.QTD_HorasLimite).HasColumnName("QTD_HorasLimite");
            this.Property(t => t.Codigo_Fecha).HasColumnName("Codigo_Fecha");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
            this.Property(t => t.scanner).HasColumnName("scanner");
        }
    }
}
