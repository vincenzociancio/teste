using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_APEN_TV_VisualizarMap : EntityTypeConfiguration<Controle_APEN_TV_Visualizar>
    {
        public Controle_APEN_TV_VisualizarMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Nome_Usuario, t.Quantidade, t.Status });

            // Properties
            this.Property(t => t.Nome_Usuario)
                .IsRequired()
                .HasMaxLength(45);

            this.Property(t => t.Quantidade)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Status)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Controle_APEN_TV_Visualizar");
            this.Property(t => t.Nome_Usuario).HasColumnName("Nome_Usuario");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Status).HasColumnName("Status");
        }
    }
}
