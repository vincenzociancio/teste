using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_Emails_Tipo_AnexosMap : EntityTypeConfiguration<Processos_Emails_Tipo_Anexos>
    {
        public Processos_Emails_Tipo_AnexosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Tipo_Anexo);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(60);

            this.Property(t => t.Icone)
                .IsRequired()
                .HasMaxLength(25);

            this.Property(t => t.Extensao)
                .IsRequired()
                .HasMaxLength(5);

            // Table & Column Mappings
            this.ToTable("Processos_Emails_Tipo_Anexos");
            this.Property(t => t.PK_Tipo_Anexo).HasColumnName("PK_Tipo_Anexo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Icone).HasColumnName("Icone");
            this.Property(t => t.Extensao).HasColumnName("Extensao");
        }
    }
}
