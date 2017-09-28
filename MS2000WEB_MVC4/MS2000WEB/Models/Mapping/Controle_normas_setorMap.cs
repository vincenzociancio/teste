using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_normas_setorMap : EntityTypeConfiguration<Controle_normas_setor>
    {
        public Controle_normas_setorMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_SETOR);

            // Properties
            this.Property(t => t.Nome_setor)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_normas_setor");
            this.Property(t => t.PK_SETOR).HasColumnName("PK_SETOR");
            this.Property(t => t.Nome_setor).HasColumnName("Nome_setor");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
        }
    }
}
