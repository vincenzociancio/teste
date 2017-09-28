using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Atas_ParticipantesMap : EntityTypeConfiguration<Controle_Atas_Participantes>
    {
        public Controle_Atas_ParticipantesMap()
        {
            // Primary Key
            this.HasKey(t => t.pk_atas_participante);

            // Properties
            this.Property(t => t.fk_usuario)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Controle_Atas_Participantes");
            this.Property(t => t.pk_atas_participante).HasColumnName("pk_atas_participante");
            this.Property(t => t.fk_usuario).HasColumnName("fk_usuario");
            this.Property(t => t.fk_ata).HasColumnName("fk_ata");
            this.Property(t => t.data_aceite).HasColumnName("data_aceite");
            this.Property(t => t.lixo).HasColumnName("lixo");

            // Relationships
            this.HasRequired(t => t.Controle_Atas)
                .WithMany(t => t.Controle_Atas_Participantes)
                .HasForeignKey(d => d.fk_ata);

        }
    }
}
