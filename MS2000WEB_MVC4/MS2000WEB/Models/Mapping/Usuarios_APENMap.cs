using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Usuarios_APENMap : EntityTypeConfiguration<Usuarios_APEN>
    {
        public Usuarios_APENMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            this.Property(t => t.Hora)
                .HasMaxLength(5);

            // Table & Column Mappings
            this.ToTable("Usuarios_APEN");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Hora).HasColumnName("Hora");
            this.Property(t => t.OK).HasColumnName("OK");
            this.Property(t => t.NAO).HasColumnName("NAO");
            this.Property(t => t.TOTAL).HasColumnName("TOTAL");
            this.Property(t => t.PERCENTUAL).HasColumnName("PERCENTUAL");
        }
    }
}
