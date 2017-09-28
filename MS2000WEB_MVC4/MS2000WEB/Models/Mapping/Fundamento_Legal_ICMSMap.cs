using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Fundamento_Legal_ICMSMap : EntityTypeConfiguration<Fundamento_Legal_ICMS>
    {
        public Fundamento_Legal_ICMSMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Tratamento_Tributario, t.codigo });

            // Properties
            this.Property(t => t.Tratamento_Tributario)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.descricao)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Fundamento_Legal_ICMS");
            this.Property(t => t.Tratamento_Tributario).HasColumnName("Tratamento_Tributario");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.descricao).HasColumnName("descricao");
        }
    }
}
