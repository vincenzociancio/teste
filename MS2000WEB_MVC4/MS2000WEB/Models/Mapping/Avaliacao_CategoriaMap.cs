using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Avaliacao_CategoriaMap : EntityTypeConfiguration<Avaliacao_Categoria>
    {
        public Avaliacao_CategoriaMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Avaliacao_Categoria");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}
