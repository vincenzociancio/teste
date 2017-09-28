using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSWEBMAIL_Usuarios_AssinaturasMap : EntityTypeConfiguration<MSWEBMAIL_Usuarios_Assinaturas>
    {
        public MSWEBMAIL_Usuarios_AssinaturasMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.Assinatura_Email_Linha1)
                .HasMaxLength(200);

            this.Property(t => t.Assinatura_Email_Linha2)
                .HasMaxLength(200);

            this.Property(t => t.Assinatura_Email_Linha3)
                .HasMaxLength(200);

            // Table & Column Mappings
            this.ToTable("MSWEBMAIL_Usuarios_Assinaturas");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.FK_USUARIO).HasColumnName("FK_USUARIO");
            this.Property(t => t.Assinatura_Email_Linha1).HasColumnName("Assinatura_Email_Linha1");
            this.Property(t => t.Assinatura_Email_Linha2).HasColumnName("Assinatura_Email_Linha2");
            this.Property(t => t.Assinatura_Email_Linha3).HasColumnName("Assinatura_Email_Linha3");
        }
    }
}
