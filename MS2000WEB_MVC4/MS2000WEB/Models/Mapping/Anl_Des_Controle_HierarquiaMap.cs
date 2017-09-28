using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Anl_Des_Controle_HierarquiaMap : EntityTypeConfiguration<Anl_Des_Controle_Hierarquia>
    {
        public Anl_Des_Controle_HierarquiaMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Fk_Analise, t.Codigo, t.Usuario, t.Nome, t.Hierarquia, t.Nivel });

            // Properties
            this.Property(t => t.Fk_Analise)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(45);

            this.Property(t => t.Hierarquia)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.Nivel)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            // Table & Column Mappings
            this.ToTable("Anl_Des_Controle_Hierarquia");
            this.Property(t => t.Fk_Analise).HasColumnName("Fk_Analise");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.Hierarquia).HasColumnName("Hierarquia");
            this.Property(t => t.Nivel).HasColumnName("Nivel");
        }
    }
}
