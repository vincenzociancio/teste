using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Eventos_GruposMap : EntityTypeConfiguration<Eventos_Grupos>
    {
        public Eventos_GruposMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Descricao_Ing)
                .HasMaxLength(50);

            this.Property(t => t.COR_REALCE)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Eventos_Grupos");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Descricao_Ing).HasColumnName("Descricao_Ing");
            this.Property(t => t.COR_REALCE).HasColumnName("COR_REALCE");
        }
    }
}
