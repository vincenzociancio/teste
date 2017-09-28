using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_Tipo_UrgenciaMap : EntityTypeConfiguration<Processos_Tipo_Urgencia>
    {
        public Processos_Tipo_UrgenciaMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Tipo_Urgencia);

            // Properties
            this.Property(t => t.Sigla)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(25);

            // Table & Column Mappings
            this.ToTable("Processos_Tipo_Urgencia");
            this.Property(t => t.PK_Tipo_Urgencia).HasColumnName("PK_Tipo_Urgencia");
            this.Property(t => t.Sigla).HasColumnName("Sigla");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
        }
    }
}
