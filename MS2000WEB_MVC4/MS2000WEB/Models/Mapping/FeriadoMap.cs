using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FeriadoMap : EntityTypeConfiguration<Feriado>
    {
        public FeriadoMap()
        {
            // Primary Key
            this.HasKey(t => t.Data);

            // Properties
            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Filial)
                .HasMaxLength(4);

            this.Property(t => t.CodObservacao)
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Feriados");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.CodObservacao).HasColumnName("CodObservacao");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
        }
    }
}
