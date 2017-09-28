using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSLOGIN_SolucoesMap : EntityTypeConfiguration<MSLOGIN_Solucoes>
    {
        public MSLOGIN_SolucoesMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_SOLUCAO);

            // Properties
            this.Property(t => t.PK_SOLUCAO)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.SISTEMA)
                .HasMaxLength(20);

            this.Property(t => t.VERSAO)
                .HasMaxLength(50);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(100);

            this.Property(t => t.ICONE)
                .HasMaxLength(100);

            this.Property(t => t.EMPRESA)
                .HasMaxLength(100);

            this.Property(t => t.LINK)
                .HasMaxLength(255);

            this.Property(t => t.TARGET)
                .HasMaxLength(100);

            this.Property(t => t.PARAMETROS_JANELA)
                .HasMaxLength(100);

            this.Property(t => t.TEM_MENU)
                .HasMaxLength(3);

            this.Property(t => t.SELECIONA_EMPRESA)
                .HasMaxLength(3);

            this.Property(t => t.DIRETORIO_DESENVOLVIMENTO)
                .HasMaxLength(100);

            this.Property(t => t.DIRETORIO_PRODUCAO)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("MSLOGIN_Solucoes");
            this.Property(t => t.PK_SOLUCAO).HasColumnName("PK_SOLUCAO");
            this.Property(t => t.SISTEMA).HasColumnName("SISTEMA");
            this.Property(t => t.VERSAO).HasColumnName("VERSAO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.DESCRICAO_DETALHADA).HasColumnName("DESCRICAO_DETALHADA");
            this.Property(t => t.ICONE).HasColumnName("ICONE");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");
            this.Property(t => t.EMPRESA).HasColumnName("EMPRESA");
            this.Property(t => t.LINK).HasColumnName("LINK");
            this.Property(t => t.TARGET).HasColumnName("TARGET");
            this.Property(t => t.PARAMETROS_JANELA).HasColumnName("PARAMETROS_JANELA");
            this.Property(t => t.TEM_MENU).HasColumnName("TEM_MENU");
            this.Property(t => t.SELECIONA_EMPRESA).HasColumnName("SELECIONA_EMPRESA");
            this.Property(t => t.DIRETORIO_DESENVOLVIMENTO).HasColumnName("DIRETORIO_DESENVOLVIMENTO");
            this.Property(t => t.DIRETORIO_PRODUCAO).HasColumnName("DIRETORIO_PRODUCAO");
        }
    }
}
