using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Extrato_tempMap : EntityTypeConfiguration<Extrato_temp>
    {
        public Extrato_tempMap()
        {
            // Primary Key
            this.HasKey(t => t.auto);

            // Properties
            this.Property(t => t.Empresa)
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .HasMaxLength(4);

            this.Property(t => t.Cliente)
                .HasMaxLength(4);

            this.Property(t => t.Historico)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Extrato_temp");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Historico).HasColumnName("Historico");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.auto).HasColumnName("auto");
        }
    }
}
