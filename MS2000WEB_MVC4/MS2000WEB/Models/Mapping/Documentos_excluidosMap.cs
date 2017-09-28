using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Documentos_excluidosMap : EntityTypeConfiguration<Documentos_excluidos>
    {
        public Documentos_excluidosMap()
        {
            // Primary Key
            this.HasKey(t => t.Arquivo);

            // Properties
            this.Property(t => t.Arquivo)
                .IsRequired()
                .HasMaxLength(11);

            // Table & Column Mappings
            this.ToTable("Documentos_excluidos");
            this.Property(t => t.Arquivo).HasColumnName("Arquivo");
        }
    }
}
