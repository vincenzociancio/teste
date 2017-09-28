using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Dic_TabelasMap : EntityTypeConfiguration<Dic_Tabelas>
    {
        public Dic_TabelasMap()
        {
            // Primary Key
            this.HasKey(t => t.NOME_TABELA);

            // Properties
            this.Property(t => t.NOME_TABELA)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.ORDEM)
                .HasMaxLength(100);

            this.Property(t => t.CRESCENTE)
                .HasMaxLength(3);

            this.Property(t => t.AJUDA)
                .HasMaxLength(3);

            this.Property(t => t.INCLUI)
                .HasMaxLength(3);

            this.Property(t => t.ALTERA)
                .HasMaxLength(3);

            this.Property(t => t.EXCLUI)
                .HasMaxLength(3);

            this.Property(t => t.FILTRA)
                .HasMaxLength(3);

            this.Property(t => t.LOCALIZA)
                .HasMaxLength(50);

            this.Property(t => t.IMPRIME)
                .HasMaxLength(50);

            this.Property(t => t.INCLUI_DETALHADO)
                .HasMaxLength(255);

            this.Property(t => t.ALTERA_DETALHADO)
                .HasMaxLength(255);

            this.Property(t => t.AVISO_INCLUI)
                .HasMaxLength(3);

            this.Property(t => t.AVISO_ALTERA)
                .HasMaxLength(3);

            this.Property(t => t.AVISO_EXCLUI)
                .HasMaxLength(3);

            this.Property(t => t.TRAVAREG)
                .HasMaxLength(255);

            this.Property(t => t.TRAVAREG_DESCRICAO)
                .HasMaxLength(255);

            this.Property(t => t.AJUDA_DESCRICAO)
                .HasMaxLength(255);

            this.Property(t => t.ANTES_ALTERAR)
                .HasMaxLength(255);

            this.Property(t => t.ANTES_ALTERAR_CAMPO)
                .HasMaxLength(255);

            this.Property(t => t.ANTES_GRAVAR)
                .HasMaxLength(255);

            this.Property(t => t.ANTES_GRAVAR_CAMPO)
                .HasMaxLength(255);

            this.Property(t => t.ANTES_EXCLUIR)
                .HasMaxLength(255);

            this.Property(t => t.ANTES_EXCLUIR_CAMPO)
                .HasMaxLength(255);

            this.Property(t => t.DEPOIS_GRAVAR)
                .HasMaxLength(255);

            this.Property(t => t.DEPOIS_GRAVAR_CAMPO)
                .HasMaxLength(255);

            this.Property(t => t.DEPOIS_EXCLUIR)
                .HasMaxLength(255);

            this.Property(t => t.DEPOIS_EXCLUIR_CAMPO)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Dic_Tabelas");
            this.Property(t => t.NOME_TABELA).HasColumnName("NOME_TABELA");
            this.Property(t => t.ORDEM).HasColumnName("ORDEM");
            this.Property(t => t.CRESCENTE).HasColumnName("CRESCENTE");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.AJUDA).HasColumnName("AJUDA");
            this.Property(t => t.INCLUI).HasColumnName("INCLUI");
            this.Property(t => t.ALTERA).HasColumnName("ALTERA");
            this.Property(t => t.EXCLUI).HasColumnName("EXCLUI");
            this.Property(t => t.FILTRA).HasColumnName("FILTRA");
            this.Property(t => t.LOCALIZA).HasColumnName("LOCALIZA");
            this.Property(t => t.IMPRIME).HasColumnName("IMPRIME");
            this.Property(t => t.INCLUI_DETALHADO).HasColumnName("INCLUI_DETALHADO");
            this.Property(t => t.ALTERA_DETALHADO).HasColumnName("ALTERA_DETALHADO");
            this.Property(t => t.AVISO_INCLUI).HasColumnName("AVISO_INCLUI");
            this.Property(t => t.AVISO_ALTERA).HasColumnName("AVISO_ALTERA");
            this.Property(t => t.AVISO_EXCLUI).HasColumnName("AVISO_EXCLUI");
            this.Property(t => t.TRAVAREG).HasColumnName("TRAVAREG");
            this.Property(t => t.TRAVAREG_DESCRICAO).HasColumnName("TRAVAREG_DESCRICAO");
            this.Property(t => t.AJUDA_DESCRICAO).HasColumnName("AJUDA_DESCRICAO");
            this.Property(t => t.ANTES_ALTERAR).HasColumnName("ANTES_ALTERAR");
            this.Property(t => t.ANTES_ALTERAR_CAMPO).HasColumnName("ANTES_ALTERAR_CAMPO");
            this.Property(t => t.ANTES_GRAVAR).HasColumnName("ANTES_GRAVAR");
            this.Property(t => t.ANTES_GRAVAR_CAMPO).HasColumnName("ANTES_GRAVAR_CAMPO");
            this.Property(t => t.ANTES_EXCLUIR).HasColumnName("ANTES_EXCLUIR");
            this.Property(t => t.ANTES_EXCLUIR_CAMPO).HasColumnName("ANTES_EXCLUIR_CAMPO");
            this.Property(t => t.DEPOIS_GRAVAR).HasColumnName("DEPOIS_GRAVAR");
            this.Property(t => t.DEPOIS_GRAVAR_CAMPO).HasColumnName("DEPOIS_GRAVAR_CAMPO");
            this.Property(t => t.DEPOIS_EXCLUIR).HasColumnName("DEPOIS_EXCLUIR");
            this.Property(t => t.DEPOIS_EXCLUIR_CAMPO).HasColumnName("DEPOIS_EXCLUIR_CAMPO");
            this.Property(t => t.FK_SOLUCAO).HasColumnName("FK_SOLUCAO");
        }
    }
}
