using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class controle_normas_setor_subsetorMap : EntityTypeConfiguration<controle_normas_setor_subsetor>
    {
        public controle_normas_setor_subsetorMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_SETOR_SUBSETOR);

            // Properties
            this.Property(t => t.Nome_SubSetor)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("controle_normas_setor_subsetor");
            this.Property(t => t.PK_SETOR_SUBSETOR).HasColumnName("PK_SETOR_SUBSETOR");
            this.Property(t => t.fk_setor).HasColumnName("fk_setor");
            this.Property(t => t.Nome_SubSetor).HasColumnName("Nome_SubSetor");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
        }
    }
}
