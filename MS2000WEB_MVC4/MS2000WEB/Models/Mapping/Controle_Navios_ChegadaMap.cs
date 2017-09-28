using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Navios_ChegadaMap : EntityTypeConfiguration<Controle_Navios_Chegada>
    {
        public Controle_Navios_ChegadaMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_NAVIO_CHEGADA);

            // Properties
            this.Property(t => t.PK_NAVIO_CHEGADA)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.STATUS)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_Navios_Chegada");
            this.Property(t => t.PK_NAVIO_CHEGADA).HasColumnName("PK_NAVIO_CHEGADA");
            this.Property(t => t.FK_NAVIO).HasColumnName("FK_NAVIO");
            this.Property(t => t.FK_TERMINAL).HasColumnName("FK_TERMINAL");
            this.Property(t => t.STATUS).HasColumnName("STATUS");
            this.Property(t => t.DT_EMBARQUE).HasColumnName("DT_EMBARQUE");
            this.Property(t => t.DT_ETA).HasColumnName("DT_ETA");
            this.Property(t => t.EXCLUIDO).HasColumnName("EXCLUIDO");

            // Relationships
            this.HasRequired(t => t.Controle_Navios)
                .WithMany(t => t.Controle_Navios_Chegada)
                .HasForeignKey(d => d.FK_NAVIO);
            this.HasRequired(t => t.Controle_Navios_Terminal)
                .WithMany(t => t.Controle_Navios_Chegada)
                .HasForeignKey(d => d.FK_TERMINAL);

        }
    }
}
