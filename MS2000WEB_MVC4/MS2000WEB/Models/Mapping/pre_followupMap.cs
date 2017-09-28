using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Pre_FollowupMap : EntityTypeConfiguration<Pre_Followup>
    {
        public Pre_FollowupMap()
        {
            // Primary Key
            this.HasKey(t => t.pk_codigo);

            // Properties
            this.Property(t => t.hora)
                .HasMaxLength(5);

            this.Property(t => t.fk_evento)
                .HasMaxLength(4);

            this.Property(t => t.fk_observacao)
                .HasMaxLength(4);

            this.Property(t => t.obsespecificado)
                .HasMaxLength(120);

            this.Property(t => t.usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Pre_Followup");
            this.Property(t => t.pk_codigo).HasColumnName("pk_codigo");
            this.Property(t => t.fk_preprocesso).HasColumnName("fk_preprocesso");
            this.Property(t => t.data).HasColumnName("data");
            this.Property(t => t.hora).HasColumnName("hora");
            this.Property(t => t.fk_evento).HasColumnName("fk_evento");
            this.Property(t => t.fk_observacao).HasColumnName("fk_observacao");
            this.Property(t => t.obsespecificado).HasColumnName("obsespecificado");
            this.Property(t => t.usuario).HasColumnName("usuario");

            // Relationships
            this.HasOptional(t => t.Evento)
                .WithMany(t => t.Pre_Followup)
                .HasForeignKey(d => d.fk_evento);
            this.HasOptional(t => t.Pre_Processos)
                .WithMany(t => t.Pre_Followup)
                .HasForeignKey(d => d.fk_preprocesso);

        }
    }
}
