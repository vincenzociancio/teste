using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Frequencia_AcidenteMap : EntityTypeConfiguration<Frequencia_Acidente>
    {
        public Frequencia_AcidenteMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_ID);

            // Properties
            // Table & Column Mappings
            this.ToTable("Frequencia_Acidente");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.Ano).HasColumnName("Ano");
            this.Property(t => t.Mes).HasColumnName("Mes");
            this.Property(t => t.Total_Horas).HasColumnName("Total_Horas");
            this.Property(t => t.Total_Acidentes).HasColumnName("Total_Acidentes");
        }
    }
}
