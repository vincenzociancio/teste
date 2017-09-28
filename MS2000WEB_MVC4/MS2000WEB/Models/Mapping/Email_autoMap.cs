using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Email_autoMap : EntityTypeConfiguration<Email_auto>
    {
        public Email_autoMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Programa)
                .HasMaxLength(8);

            this.Property(t => t.Assunto)
                .HasMaxLength(150);

            this.Property(t => t.Titulo)
                .HasMaxLength(150);

            this.Property(t => t.De)
                .HasMaxLength(255);

            this.Property(t => t.Para)
                .HasMaxLength(700);

            this.Property(t => t.CC)
                .HasMaxLength(700);

            this.Property(t => t.CCO)
                .HasMaxLength(700);

            this.Property(t => t.Anexo)
                .HasMaxLength(255);

            this.Property(t => t.Erro_Message)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Email_auto");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Programa).HasColumnName("Programa");
            this.Property(t => t.Assunto).HasColumnName("Assunto");
            this.Property(t => t.Titulo).HasColumnName("Titulo");
            this.Property(t => t.De).HasColumnName("De");
            this.Property(t => t.Para).HasColumnName("Para");
            this.Property(t => t.CC).HasColumnName("CC");
            this.Property(t => t.CCO).HasColumnName("CCO");
            this.Property(t => t.Body).HasColumnName("Body");
            this.Property(t => t.Anexo).HasColumnName("Anexo");
            this.Property(t => t.HTML).HasColumnName("HTML");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Hora).HasColumnName("Hora");
            this.Property(t => t.Lixo).HasColumnName("Lixo");
            this.Property(t => t.Erro_Message).HasColumnName("Erro_Message");
        }
    }
}
