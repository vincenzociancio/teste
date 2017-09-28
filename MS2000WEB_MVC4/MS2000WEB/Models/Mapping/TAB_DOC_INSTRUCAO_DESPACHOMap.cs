using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_DOC_INSTRUCAO_DESPACHOMap : EntityTypeConfiguration<TAB_DOC_INSTRUCAO_DESPACHO>
    {
        public TAB_DOC_INSTRUCAO_DESPACHOMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(120);

            // Table & Column Mappings
            this.ToTable("TAB_DOC_INSTRUCAO_DESPACHO");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}
