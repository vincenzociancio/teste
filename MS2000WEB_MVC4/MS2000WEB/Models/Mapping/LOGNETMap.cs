using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class LOGNETMap : EntityTypeConfiguration<LOGNET>
    {
        public LOGNETMap()
        {
            // Primary Key
            this.HasKey(t => t.REGISTRO);

            // Properties
            this.Property(t => t.USUARIO)
                .HasMaxLength(45);

            this.Property(t => t.PAGINA)
                .HasMaxLength(50);

            this.Property(t => t.PARAMETROS)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("LOGNET");
            this.Property(t => t.REGISTRO).HasColumnName("REGISTRO");
            this.Property(t => t.DATA).HasColumnName("DATA");
            this.Property(t => t.HORA).HasColumnName("HORA");
            this.Property(t => t.USUARIO).HasColumnName("USUARIO");
            this.Property(t => t.PAGINA).HasColumnName("PAGINA");
            this.Property(t => t.PARAMETROS).HasColumnName("PARAMETROS");
        }
    }
}
