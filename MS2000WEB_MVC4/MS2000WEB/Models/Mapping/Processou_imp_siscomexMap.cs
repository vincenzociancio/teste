using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processou_imp_siscomexMap : EntityTypeConfiguration<Processou_imp_siscomex>
    {
        public Processou_imp_siscomexMap()
        {
            // Primary Key
            this.HasKey(t => t.Estacao);

            // Properties
            this.Property(t => t.Estacao)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Processou_imp_siscomex");
            this.Property(t => t.Estacao).HasColumnName("Estacao");
        }
    }
}
