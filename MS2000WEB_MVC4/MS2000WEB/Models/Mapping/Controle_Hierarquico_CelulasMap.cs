using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_Hierarquico_CelulasMap : EntityTypeConfiguration<Controle_Hierarquico_Celulas>
    {
        public Controle_Hierarquico_CelulasMap()
        {
            // Primary Key
            this.HasKey(t => new { t.PK_Celula, t.Descricao, t.Tipo, t.Excluido, t.FK_Gerente });

            // Properties
            this.Property(t => t.PK_Celula)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.FK_Supervisor)
                .HasMaxLength(20);

            this.Property(t => t.FK_Coordenador)
                .HasMaxLength(20);

            this.Property(t => t.FK_Colaborador_Independente)
                .HasMaxLength(20);

            this.Property(t => t.FK_Gerente)
                .IsRequired()
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Controle_Hierarquico_Celulas");
            this.Property(t => t.PK_Celula).HasColumnName("PK_Celula");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.FK_Supervisor).HasColumnName("FK_Supervisor");
            this.Property(t => t.FK_Coordenador).HasColumnName("FK_Coordenador");
            this.Property(t => t.FK_Colaborador_Independente).HasColumnName("FK_Colaborador_Independente");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
            this.Property(t => t.FK_Gerente).HasColumnName("FK_Gerente");
        }
    }
}
