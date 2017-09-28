using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class LOGSIMap : EntityTypeConfiguration<LOGSI>
    {
        public LOGSIMap()
        {
            // Primary Key
            this.HasKey(t => t.REGISTRO);

            // Properties
            this.Property(t => t.USUARIO)
                .HasMaxLength(45);

            this.Property(t => t.MODULO)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("LOGSIS");
            this.Property(t => t.REGISTRO).HasColumnName("REGISTRO");
            this.Property(t => t.DATA).HasColumnName("DATA");
            this.Property(t => t.HORA).HasColumnName("HORA");
            this.Property(t => t.USUARIO).HasColumnName("USUARIO");
            this.Property(t => t.MODULO).HasColumnName("MODULO");
        }
    }
}
