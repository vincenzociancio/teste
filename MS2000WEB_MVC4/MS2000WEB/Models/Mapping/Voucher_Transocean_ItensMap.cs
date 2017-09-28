using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Voucher_Transocean_ItensMap : EntityTypeConfiguration<Voucher_Transocean_Itens>
    {
        public Voucher_Transocean_ItensMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Codigo_Voucher, t.Codigo, t.Processo, t.Saldo });

            // Properties
            this.Property(t => t.Codigo_Voucher)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Tipo_Processo)
                .HasMaxLength(100);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Ref_Cliente)
                .HasMaxLength(100);

            this.Property(t => t.Local)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Voucher_Transocean_Itens");
            this.Property(t => t.Codigo_Voucher).HasColumnName("Codigo_Voucher");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Tipo_Processo).HasColumnName("Tipo_Processo");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Ref_Cliente).HasColumnName("Ref_Cliente");
            this.Property(t => t.Local).HasColumnName("Local");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
        }
    }
}
