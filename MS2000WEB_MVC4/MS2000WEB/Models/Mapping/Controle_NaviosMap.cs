using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_NaviosMap : EntityTypeConfiguration<Controle_Navios>
    {
        public Controle_NaviosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_NAVIO);

            // Properties
            this.Property(t => t.PK_NAVIO)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.NOME_NAVIO)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Controle_Navios");
            this.Property(t => t.PK_NAVIO).HasColumnName("PK_NAVIO");
            this.Property(t => t.NOME_NAVIO).HasColumnName("NOME_NAVIO");
            this.Property(t => t.EXCLUIDO).HasColumnName("EXCLUIDO");
        }
    }
}
