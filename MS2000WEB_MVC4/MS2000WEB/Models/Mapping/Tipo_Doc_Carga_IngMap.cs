using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipo_Doc_Carga_IngMap : EntityTypeConfiguration<Tipo_Doc_Carga_Ing>
    {
        public Tipo_Doc_Carga_IngMap()
        {
            // Primary Key
            this.HasKey(t => new { t.via, t.codigo });

            // Properties
            this.Property(t => t.via)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.descricao)
                .HasMaxLength(25);

            // Table & Column Mappings
            this.ToTable("Tipo_Doc_Carga_Ing");
            this.Property(t => t.via).HasColumnName("via");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.descricao).HasColumnName("descricao");
        }
    }
}
