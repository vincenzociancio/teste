using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_TVs_ImportadoresMap : EntityTypeConfiguration<Controle_TVs_Importadores>
    {
        public Controle_TVs_ImportadoresMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK_TVs_Importadores, t.FK_Importador, t.FK_TV });

            // Properties
            this.Property(t => t.PK_TVs_Importadores)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.FK_TV)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Controle_TVs_Importadores");
            this.Property(t => t.PK_TVs_Importadores).HasColumnName("PK_TVs_Importadores");
            this.Property(t => t.FK_Importador).HasColumnName("FK_Importador");
            this.Property(t => t.FK_TV).HasColumnName("FK_TV");
            this.Property(t => t.Exibir).HasColumnName("Exibir");

            // Relationships
            this.HasRequired(t => t.Controle_TVs)
                .WithMany(t => t.Controle_TVs_Importadores)
                .HasForeignKey(d => d.FK_TV);

        }
    }
}
