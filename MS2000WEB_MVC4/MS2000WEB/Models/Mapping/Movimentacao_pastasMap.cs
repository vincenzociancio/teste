using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Movimentacao_pastasMap : EntityTypeConfiguration<Movimentacao_pastas>
    {
        public Movimentacao_pastasMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Movimento, t.Empresa, t.Filial, t.Processo });

            // Properties
            this.Property(t => t.Movimento)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.De_usuario)
                .HasMaxLength(10);

            this.Property(t => t.Para_usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Movimentacao_pastas");
            this.Property(t => t.Movimento).HasColumnName("Movimento");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.De_usuario).HasColumnName("De_usuario");
            this.Property(t => t.Para_usuario).HasColumnName("Para_usuario");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Hora).HasColumnName("Hora");
        }
    }
}
