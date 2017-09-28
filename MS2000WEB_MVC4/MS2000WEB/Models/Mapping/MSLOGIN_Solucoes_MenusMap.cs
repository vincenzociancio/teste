using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSLOGIN_Solucoes_MenusMap : EntityTypeConfiguration<MSLOGIN_Solucoes_Menus>
    {
        public MSLOGIN_Solucoes_MenusMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_MENU);

            // Properties
            this.Property(t => t.PK_MENU)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.CODIGO)
                .HasMaxLength(10);

            this.Property(t => t.TITULO_ab)
                .HasMaxLength(60);

            this.Property(t => t.TITULO)
                .HasMaxLength(100);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(255);

            this.Property(t => t.FUNCAO)
                .HasMaxLength(200);

            this.Property(t => t.JANELA)
                .HasMaxLength(200);

            this.Property(t => t.ICONE)
                .HasMaxLength(50);

            this.Property(t => t.MODULO)
                .HasMaxLength(10);

            this.Property(t => t.NOME_TABELA_AJUDA)
                .HasMaxLength(100);

            this.Property(t => t.STATUS)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("MSLOGIN_Solucoes_Menus");
            this.Property(t => t.PK_MENU).HasColumnName("PK_MENU");
            this.Property(t => t.FK_SOLUCAO).HasColumnName("FK_SOLUCAO");
            this.Property(t => t.CODIGO).HasColumnName("CODIGO");
            this.Property(t => t.TITULO_ab).HasColumnName("TITULO_ab");
            this.Property(t => t.TITULO).HasColumnName("TITULO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.FUNCAO).HasColumnName("FUNCAO");
            this.Property(t => t.JANELA).HasColumnName("JANELA");
            this.Property(t => t.ICONE).HasColumnName("ICONE");
            this.Property(t => t.DESCRICAO_DETALHADA).HasColumnName("DESCRICAO_DETALHADA");
            this.Property(t => t.MODULO).HasColumnName("MODULO");
            this.Property(t => t.NOME_TABELA_AJUDA).HasColumnName("NOME_TABELA_AJUDA");
            this.Property(t => t.STATUS).HasColumnName("STATUS");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");
        }
    }
}
