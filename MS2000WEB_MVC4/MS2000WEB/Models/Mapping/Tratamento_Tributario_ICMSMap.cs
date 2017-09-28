using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tratamento_Tributario_ICMSMap : EntityTypeConfiguration<Tratamento_Tributario_ICMS>
    {
        public Tratamento_Tributario_ICMSMap()
        {
            // Primary Key
            this.HasKey(t => t.codigo);

            // Properties
            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.descricao)
                .HasMaxLength(50);

            this.Property(t => t.descricao_ing)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Tratamento_Tributario_ICMS");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.descricao).HasColumnName("descricao");
            this.Property(t => t.descricao_ing).HasColumnName("descricao_ing");
            this.Property(t => t.lixo).HasColumnName("lixo");
        }
    }
}
