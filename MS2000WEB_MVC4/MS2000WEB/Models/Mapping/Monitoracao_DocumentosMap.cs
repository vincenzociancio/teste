using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Monitoracao_DocumentosMap : EntityTypeConfiguration<Monitoracao_Documentos>
    {
        public Monitoracao_DocumentosMap()
        {
            // Primary Key
            this.HasKey(t => t.id);

            // Properties
            this.Property(t => t.Login)
                .IsFixedLength()
                .HasMaxLength(20);

            this.Property(t => t.numero_documento)
                .HasMaxLength(50);

            this.Property(t => t.processo)
                .HasMaxLength(50);

            this.Property(t => t.arquivo)
                .IsFixedLength()
                .HasMaxLength(11);

            // Table & Column Mappings
            this.ToTable("Monitoracao_Documentos");
            this.Property(t => t.id).HasColumnName("id");
            this.Property(t => t.Login).HasColumnName("Login");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.hora).HasColumnName("hora");
            this.Property(t => t.numero_documento).HasColumnName("numero_documento");
            this.Property(t => t.processo).HasColumnName("processo");
            this.Property(t => t.arquivo).HasColumnName("arquivo");
        }
    }
}
