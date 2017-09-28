using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSLOGIN_Solucoes_Usuarios_AcessosMap : EntityTypeConfiguration<MSLOGIN_Solucoes_Usuarios_Acessos>
    {
        public MSLOGIN_Solucoes_Usuarios_AcessosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_USUARIO_ACESSO);

            // Properties
            this.Property(t => t.FK_CODIGO_MENU)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("MSLOGIN_Solucoes_Usuarios_Acessos");
            this.Property(t => t.PK_USUARIO_ACESSO).HasColumnName("PK_USUARIO_ACESSO");
            this.Property(t => t.FK_SOLUCAO).HasColumnName("FK_SOLUCAO");
            this.Property(t => t.FK_USUARIO).HasColumnName("FK_USUARIO");
            this.Property(t => t.FK_CODIGO_MENU).HasColumnName("FK_CODIGO_MENU");
            this.Property(t => t.ACESSA).HasColumnName("ACESSA");
            this.Property(t => t.SOMENTE_ESTE).HasColumnName("SOMENTE_ESTE");
            this.Property(t => t.ACESSA_AJUDA).HasColumnName("ACESSA_AJUDA");
            this.Property(t => t.ACESSA_INCLUSAO).HasColumnName("ACESSA_INCLUSAO");
            this.Property(t => t.ACESSA_ALTERACAO).HasColumnName("ACESSA_ALTERACAO");
            this.Property(t => t.ACESSA_EXCLUSAO).HasColumnName("ACESSA_EXCLUSAO");
            this.Property(t => t.ACESSA_FILTRO).HasColumnName("ACESSA_FILTRO");
            this.Property(t => t.ACESSA_LOCALIZA).HasColumnName("ACESSA_LOCALIZA");
            this.Property(t => t.ACESSA_RELATORIO).HasColumnName("ACESSA_RELATORIO");
            this.Property(t => t.ACESSA_DETALHES).HasColumnName("ACESSA_DETALHES");
        }
    }
}
