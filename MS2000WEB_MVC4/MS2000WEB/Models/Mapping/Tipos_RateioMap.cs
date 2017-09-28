using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_RateioMap : EntityTypeConfiguration<Tipos_Rateio>
    {
        public Tipos_RateioMap()
        {
            // Primary Key
            this.HasKey(t => t.CODIGO);

            // Properties
            this.Property(t => t.CODIGO)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Tipos_Rateio");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
        }
    }
}
