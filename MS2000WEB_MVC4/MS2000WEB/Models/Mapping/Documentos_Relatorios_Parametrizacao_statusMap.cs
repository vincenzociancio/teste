using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Documentos_Relatorios_Parametrizacao_statusMap : EntityTypeConfiguration<Documentos_Relatorios_Parametrizacao_status>
    {
        public Documentos_Relatorios_Parametrizacao_statusMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            // Table & Column Mappings
            this.ToTable("Documentos_Relatorios_Parametrizacao_status");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.DocID).HasColumnName("DocID");
            this.Property(t => t.Status).HasColumnName("Status");
        }
    }
}
