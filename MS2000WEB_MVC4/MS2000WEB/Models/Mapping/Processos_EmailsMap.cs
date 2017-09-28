using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_EmailsMap : EntityTypeConfiguration<Processos_Emails>
    {
        public Processos_EmailsMap()
        {
            // Primary Key
            this.HasKey(t => new { t.FK_Processo, t.Email_ID, t.Email_Assunto });

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Email_ID)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.Email_De)
                .IsRequired();

            this.Property(t => t.Email_Assunto)
                .IsRequired()
                .HasMaxLength(500);

            this.Property(t => t.Email_Importancia)
                .HasMaxLength(10);

            this.Property(t => t.FK_Usuario)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Processos_Emails");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.Email_ID).HasColumnName("Email_ID");
            this.Property(t => t.Email_De).HasColumnName("Email_De");
            this.Property(t => t.Email_Para).HasColumnName("Email_Para");
            this.Property(t => t.Email_CC).HasColumnName("Email_CC");
            this.Property(t => t.Email_CCo).HasColumnName("Email_CCo");
            this.Property(t => t.Email_Assunto).HasColumnName("Email_Assunto");
            this.Property(t => t.Email_BodyHTML).HasColumnName("Email_BodyHTML");
            this.Property(t => t.Email_BodyTXT).HasColumnName("Email_BodyTXT");
            this.Property(t => t.Email_Importancia).HasColumnName("Email_Importancia");
            this.Property(t => t.DT_Email).HasColumnName("DT_Email");
            this.Property(t => t.DT_Cadastro).HasColumnName("DT_Cadastro");
            this.Property(t => t.FK_Usuario).HasColumnName("FK_Usuario");
            this.Property(t => t.Email_BodyHTMLOriginal).HasColumnName("Email_BodyHTMLOriginal");
        }
    }
}
