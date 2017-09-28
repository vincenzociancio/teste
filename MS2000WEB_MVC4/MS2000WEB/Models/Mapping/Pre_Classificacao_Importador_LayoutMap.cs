using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Pre_Classificacao_Importador_LayoutMap : EntityTypeConfiguration<Pre_Classificacao_Importador_Layout>
    {
        public Pre_Classificacao_Importador_LayoutMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Fk_Importador)
                .IsRequired()
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Pre_Classificacao_Importador_Layout");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Fk_Layout).HasColumnName("Fk_Layout");
            this.Property(t => t.Fk_Importador).HasColumnName("Fk_Importador");

            // Relationships
            this.HasRequired(t => t.Pre_Classificacao_Layout)
                .WithMany(t => t.Pre_Classificacao_Importador_Layout)
                .HasForeignKey(d => d.Fk_Layout);

        }
    }
}
