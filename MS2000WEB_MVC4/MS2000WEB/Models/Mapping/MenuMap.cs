using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MenuMap : EntityTypeConfiguration<Menu>
    {
        public MenuMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Descricao)
                .HasMaxLength(150);

            this.Property(t => t.Nivel)
                .HasMaxLength(4);

            this.Property(t => t.Web_Form)
                .HasMaxLength(150);

            // Table & Column Mappings
            this.ToTable("Menus");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Nivel).HasColumnName("Nivel");
            this.Property(t => t.Habilitado).HasColumnName("Habilitado");
            this.Property(t => t.Web_Form).HasColumnName("Web_Form");
        }
    }
}
