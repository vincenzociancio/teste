using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Pre_Classificacao_LayoutMap : EntityTypeConfiguration<Pre_Classificacao_Layout>
    {
        public Pre_Classificacao_LayoutMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Nome)
                .HasMaxLength(200);

            // Table & Column Mappings
            this.ToTable("Pre_Classificacao_Layout");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Nome).HasColumnName("Nome");
        }
    }
}
