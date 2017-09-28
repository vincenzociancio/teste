using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Log_DocumentosMap : EntityTypeConfiguration<Log_Documentos>
    {
        public Log_DocumentosMap()
        {
            // Primary Key
            this.HasKey(t => t.Id);

            // Properties
            this.Property(t => t.Usuario)
                .IsFixedLength()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Log_Documentos");
            this.Property(t => t.Id).HasColumnName("Id");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.hora).HasColumnName("hora");
        }
    }
}
