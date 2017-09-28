using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Consumo_EnergiaMap : EntityTypeConfiguration<Consumo_Energia>
    {
        public Consumo_EnergiaMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Ano, t.Mes });

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Ano)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Mes)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Consumo_Energia");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.Ano).HasColumnName("Ano");
            this.Property(t => t.Mes).HasColumnName("Mes");
            this.Property(t => t.Conta_Luz_CS).HasColumnName("Conta_Luz_CS");
            this.Property(t => t.Conta_Lus_DG).HasColumnName("Conta_Lus_DG");
            this.Property(t => t.Efetivo_Mensal).HasColumnName("Efetivo_Mensal");
        }
    }
}
