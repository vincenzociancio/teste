using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RPATMap : EntityTypeConfiguration<RPAT>
    {
        public RPATMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Fk_Importador)
                .HasMaxLength(4);

            this.Property(t => t.Fk_Processo)
                .HasMaxLength(8);

            this.Property(t => t.Numero_RCR)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("RPAT");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Fk_Importador).HasColumnName("Fk_Importador");
            this.Property(t => t.Fk_Processo).HasColumnName("Fk_Processo");
            this.Property(t => t.Numero_RCR).HasColumnName("Numero_RCR");
            this.Property(t => t.Data_Criacao).HasColumnName("Data_Criacao");
            this.Property(t => t.Justificativa).HasColumnName("Justificativa");
            this.Property(t => t.Data_Inicial).HasColumnName("Data_Inicial");
            this.Property(t => t.Data_Final).HasColumnName("Data_Final");
            this.Property(t => t.Dt_Prorrogacao).HasColumnName("Dt_Prorrogacao");
            this.Property(t => t.Observacao).HasColumnName("Observacao");
        }
    }
}
