using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Sub_Tipo_PatrimonioMap : EntityTypeConfiguration<Sub_Tipo_Patrimonio>
    {
        public Sub_Tipo_PatrimonioMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Tipo_patrimonio, t.codigo });

            // Properties
            this.Property(t => t.Tipo_patrimonio)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(70);

            // Table & Column Mappings
            this.ToTable("Sub_Tipo_Patrimonio");
            this.Property(t => t.Tipo_patrimonio).HasColumnName("Tipo_patrimonio");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}
