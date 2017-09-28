using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_status_processos_IngMap : EntityTypeConfiguration<Tipos_status_processos_Ing>
    {
        public Tipos_status_processos_IngMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Tipos_status_processos_Ing");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}