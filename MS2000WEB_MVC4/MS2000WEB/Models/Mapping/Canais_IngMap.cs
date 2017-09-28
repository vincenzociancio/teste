using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Canais_IngMap : EntityTypeConfiguration<Canais_Ing>
    {
        public Canais_IngMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Canais_Ing");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}
