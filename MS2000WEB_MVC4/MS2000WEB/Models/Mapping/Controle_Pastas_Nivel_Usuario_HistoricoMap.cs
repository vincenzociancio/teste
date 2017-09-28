using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Pastas_Nivel_Usuario_HistoricoMap : EntityTypeConfiguration<Controle_Pastas_Nivel_Usuario_Historico>
    {
        public Controle_Pastas_Nivel_Usuario_HistoricoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.ID, t.Processo, t.Usuario_Antes, t.Usuario_Depois, t.Nivel, t.Data });

            // Properties
            this.Property(t => t.ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Usuario_Antes)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.Usuario_Depois)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.Nivel)
                .IsRequired()
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("Controle_Pastas_Nivel_Usuario_Historico");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Usuario_Antes).HasColumnName("Usuario_Antes");
            this.Property(t => t.Usuario_Depois).HasColumnName("Usuario_Depois");
            this.Property(t => t.Nivel).HasColumnName("Nivel");
            this.Property(t => t.Data).HasColumnName("Data");
        }
    }
}
