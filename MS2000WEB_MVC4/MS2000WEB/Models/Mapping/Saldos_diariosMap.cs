using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Saldos_diariosMap : EntityTypeConfiguration<Saldos_diarios>
    {
        public Saldos_diariosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Codigo, t.Data });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Fechado)
                .HasMaxLength(3);

            this.Property(t => t.Obs)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Saldos_diarios");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
            this.Property(t => t.Saldo_sis).HasColumnName("Saldo_sis");
            this.Property(t => t.Fechado).HasColumnName("Fechado");
            this.Property(t => t.Obs).HasColumnName("Obs");
        }
    }
}
