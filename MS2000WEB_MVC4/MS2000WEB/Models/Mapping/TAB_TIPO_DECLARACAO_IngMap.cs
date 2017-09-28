using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_TIPO_DECLARACAO_IngMap : EntityTypeConfiguration<TAB_TIPO_DECLARACAO_Ing>
    {
        public TAB_TIPO_DECLARACAO_IngMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            this.Property(t => t.SIGLA)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("TAB_TIPO_DECLARACAO_Ing");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.SIGLA).HasColumnName("SIGLA");
        }
    }
}
