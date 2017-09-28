using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_TVs_ProgramasMap : EntityTypeConfiguration<Controle_TVs_Programas>
    {
        public Controle_TVs_ProgramasMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK_Programa, t.Programa });

            // Properties
            this.Property(t => t.PK_Programa)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Programa)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_TVs_Programas");
            this.Property(t => t.PK_Programa).HasColumnName("PK_Programa");
            this.Property(t => t.Programa).HasColumnName("Programa");
        }
    }
}
