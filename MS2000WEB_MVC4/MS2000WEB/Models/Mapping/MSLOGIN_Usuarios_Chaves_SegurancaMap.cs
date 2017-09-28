using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSLOGIN_Usuarios_Chaves_SegurancaMap : EntityTypeConfiguration<MSLOGIN_Usuarios_Chaves_Seguranca>
    {
        public MSLOGIN_Usuarios_Chaves_SegurancaMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_CHAVE);

            // Properties
            this.Property(t => t.POSICAO)
                .HasMaxLength(3);

            this.Property(t => t.SENHA)
                .HasMaxLength(3);

            // Table & Column Mappings
            this.ToTable("MSLOGIN_Usuarios_Chaves_Seguranca");
            this.Property(t => t.PK_CHAVE).HasColumnName("PK_CHAVE");
            this.Property(t => t.FK_USUARIO).HasColumnName("FK_USUARIO");
            this.Property(t => t.POSICAO).HasColumnName("POSICAO");
            this.Property(t => t.SENHA).HasColumnName("SENHA");
        }
    }
}
