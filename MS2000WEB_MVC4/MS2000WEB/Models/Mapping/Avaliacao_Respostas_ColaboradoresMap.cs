using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Avaliacao_Respostas_ColaboradoresMap : EntityTypeConfiguration<Avaliacao_Respostas_Colaboradores>
    {
        public Avaliacao_Respostas_ColaboradoresMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.FK_Colaborador)
                .IsRequired()
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Avaliacao_Respostas_Colaboradores");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.FK_Pergunta).HasColumnName("FK_Pergunta");
            this.Property(t => t.FK_Avaliacao).HasColumnName("FK_Avaliacao");
            this.Property(t => t.FK_Colaborador).HasColumnName("FK_Colaborador");
            this.Property(t => t.FK_Resposta).HasColumnName("FK_Resposta");
            this.Property(t => t.Correta).HasColumnName("Correta");

            // Relationships
            this.HasRequired(t => t.Avaliacao_Avaliacao)
                .WithMany(t => t.Avaliacao_Respostas_Colaboradores)
                .HasForeignKey(d => d.FK_Avaliacao);

        }
    }
}
