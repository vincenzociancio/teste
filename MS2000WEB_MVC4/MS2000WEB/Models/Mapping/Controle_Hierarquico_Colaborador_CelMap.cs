using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Hierarquico_Colaborador_CelMap : EntityTypeConfiguration<Controle_Hierarquico_Colaborador_Cel>
    {
        public Controle_Hierarquico_Colaborador_CelMap()
        {
            // Primary Key
            this.HasKey(t => t.FK_Colaborador);

            // Properties
            this.Property(t => t.PK_Colaborador_Cel)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Colaborador)
                .IsRequired()
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Controle_Hierarquico_Colaborador_Cel");
            this.Property(t => t.PK_Colaborador_Cel).HasColumnName("PK_Colaborador_Cel");
            this.Property(t => t.FK_Colaborador).HasColumnName("FK_Colaborador");
            this.Property(t => t.FK_Celula).HasColumnName("FK_Celula");
        }
    }
}
