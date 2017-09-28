using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_UNID_MEDIDAMap : EntityTypeConfiguration<TAB_UNID_MEDIDA>
    {
        public TAB_UNID_MEDIDAMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(120);

            this.Property(t => t.ABREV)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("TAB_UNID_MEDIDA");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.ABREV).HasColumnName("ABREV");
        }
    }
}
