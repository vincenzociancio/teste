using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Audita_Registro_DIMap : EntityTypeConfiguration<Audita_Registro_DI>
    {
        public Audita_Registro_DIMap()
        {
            // Primary Key
            this.HasKey(t => t.Pk);

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Auditor1)
                .HasMaxLength(45);

            this.Property(t => t.Auditor2)
                .HasMaxLength(45);

            this.Property(t => t.Observacao)
                .HasMaxLength(500);

            this.Property(t => t.Auditor_Rejeicao)
                .HasMaxLength(45);

            // Table & Column Mappings
            this.ToTable("Audita_Registro_DI");
            this.Property(t => t.Pk).HasColumnName("Pk");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Data_Analise).HasColumnName("Data_Analise");
            this.Property(t => t.Auditor1).HasColumnName("Auditor1");
            this.Property(t => t.Data_Auditor1).HasColumnName("Data_Auditor1");
            this.Property(t => t.Auditor2).HasColumnName("Auditor2");
            this.Property(t => t.Data_Auditor2).HasColumnName("Data_Auditor2");
            this.Property(t => t.Rejeitada).HasColumnName("Rejeitada");
            this.Property(t => t.Observacao).HasColumnName("Observacao");
            this.Property(t => t.Auditor_Rejeicao).HasColumnName("Auditor_Rejeicao");
            this.Property(t => t.Data_Rejeicao).HasColumnName("Data_Rejeicao");
        }
    }
}
