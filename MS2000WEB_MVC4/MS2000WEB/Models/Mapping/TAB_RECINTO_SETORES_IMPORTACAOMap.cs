using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TAB_RECINTO_SETORES_IMPORTACAOMap : EntityTypeConfiguration<TAB_RECINTO_SETORES_IMPORTACAO>
    {
        public TAB_RECINTO_SETORES_IMPORTACAOMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Orgao, t.Recinto, t.Setor });

            // Properties
            this.Property(t => t.Orgao)
                .IsRequired()
                .HasMaxLength(7);

            this.Property(t => t.Recinto)
                .IsRequired()
                .HasMaxLength(7);

            this.Property(t => t.Setor)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Nome)
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("TAB_RECINTO_SETORES_IMPORTACAO");
            this.Property(t => t.Orgao).HasColumnName("Orgao");
            this.Property(t => t.Recinto).HasColumnName("Recinto");
            this.Property(t => t.Setor).HasColumnName("Setor");
            this.Property(t => t.Nome).HasColumnName("Nome");
        }
    }
}
