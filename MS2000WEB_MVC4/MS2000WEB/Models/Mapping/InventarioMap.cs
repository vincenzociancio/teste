using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class InventarioMap : EntityTypeConfiguration<Inventario>
    {
        public InventarioMap()
        {
            // Primary Key
            this.HasKey(t => t.CÓD);

            // Properties
            this.Property(t => t.CÓD)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Produto)
                .HasMaxLength(255);

            this.Property(t => t.numero_serie)
                .HasMaxLength(255);

            this.Property(t => t.SSMA_TimeStamp)
                .IsRequired()
                .IsFixedLength()
                .HasMaxLength(8)
                .IsRowVersion();

            // Table & Column Mappings
            this.ToTable("Inventario");
            this.Property(t => t.CÓD).HasColumnName("CÓD");
            this.Property(t => t.Produto).HasColumnName("Produto");
            this.Property(t => t.descbem_ing).HasColumnName("descbem_ing");
            this.Property(t => t.descbem).HasColumnName("descbem");
            this.Property(t => t.numero_serie).HasColumnName("numero_serie");
            this.Property(t => t.quantidade).HasColumnName("quantidade");
            this.Property(t => t.SSMA_TimeStamp).HasColumnName("SSMA_TimeStamp");
        }
    }
}
