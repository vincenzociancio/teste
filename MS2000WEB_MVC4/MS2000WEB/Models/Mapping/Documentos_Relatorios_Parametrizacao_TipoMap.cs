using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Documentos_Relatorios_Parametrizacao_TipoMap : EntityTypeConfiguration<Documentos_Relatorios_Parametrizacao_Tipo>
    {
        public Documentos_Relatorios_Parametrizacao_TipoMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Tipo_Doc)
                .HasMaxLength(5);

            this.Property(t => t.Sub_Tipo_Doc)
                .HasMaxLength(5);

            // Table & Column Mappings
            this.ToTable("Documentos_Relatorios_Parametrizacao_Tipo");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.DocID).HasColumnName("DocID");
            this.Property(t => t.Tipo_Doc).HasColumnName("Tipo_Doc");
            this.Property(t => t.Sub_Tipo_Doc).HasColumnName("Sub_Tipo_Doc");
        }
    }
}
