using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Navios_TerminalMap : EntityTypeConfiguration<Controle_Navios_Terminal>
    {
        public Controle_Navios_TerminalMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_TERMINAL);

            // Properties
            this.Property(t => t.PK_TERMINAL)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.NOME_TERMINAL)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Controle_Navios_Terminal");
            this.Property(t => t.PK_TERMINAL).HasColumnName("PK_TERMINAL");
            this.Property(t => t.NOME_TERMINAL).HasColumnName("NOME_TERMINAL");
            this.Property(t => t.EXCLUIDO).HasColumnName("EXCLUIDO");
        }
    }
}
