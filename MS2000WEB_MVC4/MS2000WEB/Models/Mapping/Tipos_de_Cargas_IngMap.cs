using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_de_Cargas_IngMap : EntityTypeConfiguration<Tipos_de_Cargas_Ing>
    {
        public Tipos_de_Cargas_IngMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Tipos_de_Cargas_Ing");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}