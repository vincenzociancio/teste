using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Navios_ProcessosMap : EntityTypeConfiguration<Controle_Navios_Processos>
    {
        public Controle_Navios_ProcessosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.FK_Processo, t.FK_Navio_Chegada, t.Excluido });

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.FK_Navio_Chegada)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.FK_Usuario)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_Navios_Processos");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.FK_Navio_Chegada).HasColumnName("FK_Navio_Chegada");
            this.Property(t => t.FK_Usuario).HasColumnName("FK_Usuario");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
        }
    }
}
