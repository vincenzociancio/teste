using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSLOGIN_Solucoes_UsuariosMap : EntityTypeConfiguration<MSLOGIN_Solucoes_Usuarios>
    {
        public MSLOGIN_Solucoes_UsuariosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_SOLUCAO_USUARIO);

            // Properties
            // Table & Column Mappings
            this.ToTable("MSLOGIN_Solucoes_Usuarios");
            this.Property(t => t.PK_SOLUCAO_USUARIO).HasColumnName("PK_SOLUCAO_USUARIO");
            this.Property(t => t.FK_SOLUCAO).HasColumnName("FK_SOLUCAO");
            this.Property(t => t.FK_USUARIO).HasColumnName("FK_USUARIO");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");
        }
    }
}
