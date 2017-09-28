using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Adesao_LaboralMap : EntityTypeConfiguration<Adesao_Laboral>
    {
        public Adesao_LaboralMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK_ID, t.Ano, t.Mes, t.Total_Percentual });

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Ano)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Mes)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Adesao_Laboral");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.Ano).HasColumnName("Ano");
            this.Property(t => t.Mes).HasColumnName("Mes");
            this.Property(t => t.Total_Percentual).HasColumnName("Total_Percentual");
        }
    }
}
