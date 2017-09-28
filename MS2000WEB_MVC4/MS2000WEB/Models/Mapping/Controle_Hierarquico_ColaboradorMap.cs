using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Hierarquico_ColaboradorMap : EntityTypeConfiguration<Controle_Hierarquico_Colaborador>
    {
        public Controle_Hierarquico_ColaboradorMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Colaborador, t.Hierarquia });

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Colaborador)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Hierarquia)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_Hierarquico_Colaborador");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.Colaborador).HasColumnName("Colaborador");
            this.Property(t => t.Hierarquia).HasColumnName("Hierarquia");
            this.Property(t => t.Nivel).HasColumnName("Nivel");
        }
    }
}
