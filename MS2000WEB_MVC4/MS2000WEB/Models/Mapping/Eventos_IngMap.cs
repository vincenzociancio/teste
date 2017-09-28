using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Eventos_IngMap : EntityTypeConfiguration<Eventos_Ing>
    {
        public Eventos_IngMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            this.Property(t => t.Descricao_i)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("Eventos_Ing");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Descricao_i).HasColumnName("Descricao_i");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
        }
    }
}
