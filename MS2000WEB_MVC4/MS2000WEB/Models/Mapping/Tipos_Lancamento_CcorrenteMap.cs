using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_Lancamento_CcorrenteMap : EntityTypeConfiguration<Tipos_Lancamento_Ccorrente>
    {
        public Tipos_Lancamento_CcorrenteMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Descricao)
                .HasMaxLength(45);

            // Table & Column Mappings
            this.ToTable("Tipos_Lancamento_Ccorrente");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Positivo).HasColumnName("Positivo");
        }
    }
}
