using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Dic_DetalhesMap : EntityTypeConfiguration<Dic_Detalhes>
    {
        public Dic_DetalhesMap()
        {
            // Primary Key
            this.HasKey(t => new { t.NOME_TABELA, t.SEQUENCIAL, t.DETALHE });

            // Properties
            this.Property(t => t.NOME_TABELA)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.SEQUENCIAL)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.DETALHE)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.NOME_TABELA_DETALHE)
                .HasMaxLength(50);

            this.Property(t => t.NOME_JANELA)
                .HasMaxLength(255);

            this.Property(t => t.FUNCAO)
                .HasMaxLength(255);

            this.Property(t => t.CAMPO_01)
                .HasMaxLength(255);

            this.Property(t => t.CAMPO_DETALHE_01)
                .HasMaxLength(255);

            this.Property(t => t.CAMPO_01_DESCR)
                .HasMaxLength(255);

            this.Property(t => t.EXT)
                .HasMaxLength(255);

            this.Property(t => t.ABRE_AUTOMATICO)
                .HasMaxLength(3);

            this.Property(t => t.ICONE)
                .HasMaxLength(255);

            this.Property(t => t.ABRE_SEMCHAVE)
                .HasMaxLength(3);

            this.Property(t => t.CAMPO_STATUS)
                .HasMaxLength(255);

            this.Property(t => t.STATUS_DIFERENTE)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Dic_Detalhes");
            this.Property(t => t.NOME_TABELA).HasColumnName("NOME_TABELA");
            this.Property(t => t.SEQUENCIAL).HasColumnName("SEQUENCIAL");
            this.Property(t => t.DETALHE).HasColumnName("DETALHE");
            this.Property(t => t.NOME_TABELA_DETALHE).HasColumnName("NOME_TABELA_DETALHE");
            this.Property(t => t.NOME_JANELA).HasColumnName("NOME_JANELA");
            this.Property(t => t.FUNCAO).HasColumnName("FUNCAO");
            this.Property(t => t.CAMPO_01).HasColumnName("CAMPO_01");
            this.Property(t => t.CAMPO_DETALHE_01).HasColumnName("CAMPO_DETALHE_01");
            this.Property(t => t.CAMPO_01_DESCR).HasColumnName("CAMPO_01_DESCR");
            this.Property(t => t.EXT).HasColumnName("EXT");
            this.Property(t => t.ABRE_AUTOMATICO).HasColumnName("ABRE_AUTOMATICO");
            this.Property(t => t.ICONE).HasColumnName("ICONE");
            this.Property(t => t.ABRE_SEMCHAVE).HasColumnName("ABRE_SEMCHAVE");
            this.Property(t => t.CAMPO_STATUS).HasColumnName("CAMPO_STATUS");
            this.Property(t => t.STATUS_DIFERENTE).HasColumnName("STATUS_DIFERENTE");
            this.Property(t => t.ID).HasColumnName("ID");
        }
    }
}
