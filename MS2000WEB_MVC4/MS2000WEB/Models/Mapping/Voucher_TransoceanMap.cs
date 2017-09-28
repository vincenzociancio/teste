using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Voucher_TransoceanMap : EntityTypeConfiguration<Voucher_Transocean>
    {
        public Voucher_TransoceanMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Codigo, t.Descricao });

            // Properties
            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Recebimento)
                .HasMaxLength(10);

            this.Property(t => t.Receptor)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Voucher_Transocean");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Recebimento).HasColumnName("Recebimento");
            this.Property(t => t.Receptor).HasColumnName("Receptor");
        }
    }
}
