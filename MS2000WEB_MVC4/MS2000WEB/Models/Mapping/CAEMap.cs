using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class CAEMap : EntityTypeConfiguration<CAE>
    {
        public CAEMap()
        {
            // Primary Key
            this.HasKey(t => t.codigo);

            // Properties
            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(15);

            this.Property(t => t.descricao)
                .HasMaxLength(255);

            this.Property(t => t.descricao_ing)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("CAE");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.descricao).HasColumnName("descricao");
            this.Property(t => t.lixo).HasColumnName("lixo");
            this.Property(t => t.descricao_ing).HasColumnName("descricao_ing");
        }
    }
}
