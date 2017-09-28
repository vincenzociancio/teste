using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSLOGIN_UsuariosMap : EntityTypeConfiguration<MSLOGIN_Usuarios>
    {
        public MSLOGIN_UsuariosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_USUARIO);

            // Properties
            this.Property(t => t.PK_USUARIO)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.LOGIN)
                .HasMaxLength(25);

            this.Property(t => t.SENHA)
                .HasMaxLength(15);

            this.Property(t => t.FRASE_SECRETA)
                .HasMaxLength(200);

            this.Property(t => t.NOME_COMPLETO)
                .HasMaxLength(70);

            this.Property(t => t.EMAIL)
                .HasMaxLength(100);

            this.Property(t => t.SENHA_EMAIL)
                .HasMaxLength(15);

            this.Property(t => t.TIPO_USUARIO)
                .IsFixedLength()
                .HasMaxLength(3);

            this.Property(t => t.EMAIL_MSW)
                .HasMaxLength(100);

            this.Property(t => t.SENHA_EMAIL_MSW)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("MSLOGIN_Usuarios");
            this.Property(t => t.PK_USUARIO).HasColumnName("PK_USUARIO");
            this.Property(t => t.LOGIN).HasColumnName("LOGIN");
            this.Property(t => t.SENHA).HasColumnName("SENHA");
            this.Property(t => t.FRASE_SECRETA).HasColumnName("FRASE_SECRETA");
            this.Property(t => t.NOME_COMPLETO).HasColumnName("NOME_COMPLETO");
            this.Property(t => t.DATA_VALIDADE_SENHA).HasColumnName("DATA_VALIDADE_SENHA");
            this.Property(t => t.EMAIL).HasColumnName("EMAIL");
            this.Property(t => t.SENHA_EMAIL).HasColumnName("SENHA_EMAIL");
            this.Property(t => t.TAMANHO_MAXIMO_ANEXO).HasColumnName("TAMANHO_MAXIMO_ANEXO");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");
            this.Property(t => t.TIPO_USUARIO).HasColumnName("TIPO_USUARIO");
            this.Property(t => t.EMAIL_MSW).HasColumnName("EMAIL_MSW");
            this.Property(t => t.SENHA_EMAIL_MSW).HasColumnName("SENHA_EMAIL_MSW");
        }
    }
}
