using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Avaliacao_ColaboradoresMap : EntityTypeConfiguration<Avaliacao_Colaboradores>
    {
        public Avaliacao_ColaboradoresMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.FK_Colaborador)
                .IsRequired()
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Avaliacao_Colaboradores");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.FK_Colaborador).HasColumnName("FK_Colaborador");
            this.Property(t => t.Realizado).HasColumnName("Realizado");
            this.Property(t => t.Data_de_Realizacao).HasColumnName("Data_de_Realizacao");
            this.Property(t => t.FK_Avaliacao).HasColumnName("FK_Avaliacao");

            // Relationships
            this.HasRequired(t => t.Avaliacao_Avaliacao)
                .WithMany(t => t.Avaliacao_Colaboradores)
                .HasForeignKey(d => d.FK_Avaliacao);

        }
    }
}
