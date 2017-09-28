using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_AnexoMap : EntityTypeConfiguration<Processos_Anexo>
    {
        public Processos_AnexoMap()
        {
            // Primary Key
            this.HasKey(t => t.FK_Processo);

            // Properties
            this.Property(t => t.PK_Anexo)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Caminho)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.FK_Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.FK_Usuario)
                .IsRequired()
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Processos_Anexo");
            this.Property(t => t.PK_Anexo).HasColumnName("PK_Anexo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Caminho).HasColumnName("Caminho");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.FK_Usuario).HasColumnName("FK_Usuario");
        }
    }
}
