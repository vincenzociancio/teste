using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Questionario_ControleMap : EntityTypeConfiguration<Questionario_Controle>
    {
        public Questionario_ControleMap()
        {
            // Primary Key
            this.HasKey(t => t.id_Controle);

            // Properties
            // Table & Column Mappings
            this.ToTable("Questionario_Controle");
            this.Property(t => t.id_Controle).HasColumnName("id_Controle");
            this.Property(t => t.FK_Questionario).HasColumnName("FK_Questionario");
            this.Property(t => t.FK_Senhas).HasColumnName("FK_Senhas");

            // Relationships
            this.HasRequired(t => t.Questionario_Questionario)
                .WithMany(t => t.Questionario_Controle)
                .HasForeignKey(d => d.FK_Questionario);
            this.HasRequired(t => t.Questionario_Senhas)
                .WithMany(t => t.Questionario_Controle)
                .HasForeignKey(d => d.FK_Senhas);

        }
    }
}
