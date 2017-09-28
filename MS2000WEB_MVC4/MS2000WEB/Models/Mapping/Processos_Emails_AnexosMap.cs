using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_Emails_AnexosMap : EntityTypeConfiguration<Processos_Emails_Anexos>
    {
        public Processos_Emails_AnexosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Anexos);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.Caminho)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.CID)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Processos_Emails_Anexos");
            this.Property(t => t.PK_Anexos).HasColumnName("PK_Anexos");
            this.Property(t => t.FK_Email).HasColumnName("FK_Email");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Caminho).HasColumnName("Caminho");
            this.Property(t => t.Tamanho).HasColumnName("Tamanho");
            this.Property(t => t.Tipo_Anexo).HasColumnName("Tipo_Anexo");
            this.Property(t => t.CID).HasColumnName("CID");
        }
    }
}
