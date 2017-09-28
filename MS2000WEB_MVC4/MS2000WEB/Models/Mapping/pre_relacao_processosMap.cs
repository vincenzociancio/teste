using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Pre_Relacao_ProcessosMap : EntityTypeConfiguration<Pre_Relacao_Processos>
    {
        public Pre_Relacao_ProcessosMap()
        {
            // Primary Key
            this.HasKey(t => t.pk_codigo);

            // Properties
            this.Property(t => t.fk_processo)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Pre_Relacao_Processos");
            this.Property(t => t.pk_codigo).HasColumnName("pk_codigo");
            this.Property(t => t.fk_preprocesso).HasColumnName("fk_preprocesso");
            this.Property(t => t.fk_processo).HasColumnName("fk_processo");

            // Relationships
            this.HasOptional(t => t.Pre_Processos)
                .WithMany(t => t.Pre_Relacao_Processos)
                .HasForeignKey(d => d.fk_preprocesso);

        }
    }
}
