using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipo_Utilizacao_IngMap : EntityTypeConfiguration<Tipo_Utilizacao_Ing>
    {
        public Tipo_Utilizacao_IngMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(25);

            // Table & Column Mappings
            this.ToTable("Tipo_Utilizacao_Ing");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}
