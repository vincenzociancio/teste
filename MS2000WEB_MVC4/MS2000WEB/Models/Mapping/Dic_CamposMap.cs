using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Dic_CamposMap : EntityTypeConfiguration<Dic_Campos>
    {
        public Dic_CamposMap()
        {
            // Primary Key
            this.HasKey(t => new { t.NOME_TABELA, t.SEQUENCIAL, t.NOME_CAMPO });

            // Properties
            this.Property(t => t.NOME_TABELA)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.SEQUENCIAL)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.NOME_CAMPO)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.TITULO_CAMPO)
                .HasMaxLength(50);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(255);

            this.Property(t => t.TIPOEDICAO)
                .HasMaxLength(50);

            this.Property(t => t.TIPO)
                .HasMaxLength(50);

            this.Property(t => t.OBRIGATORIO)
                .HasMaxLength(3);

            this.Property(t => t.ECHAVE)
                .HasMaxLength(3);

            this.Property(t => t.EDITA)
                .HasMaxLength(3);

            this.Property(t => t.LOCALIZA)
                .HasMaxLength(3);

            this.Property(t => t.VISIVEL)
                .HasMaxLength(3);

            this.Property(t => t.EDITA_EXT)
                .HasMaxLength(3);

            this.Property(t => t.VALIDACAO)
                .HasMaxLength(255);

            this.Property(t => t.VALIDACAO_VERCAMPOS)
                .HasMaxLength(255);

            this.Property(t => t.VALIDACAO_PARAM)
                .HasMaxLength(255);

            this.Property(t => t.FUNCAO)
                .HasMaxLength(255);

            this.Property(t => t.FUNCAO_VERCAMPOS)
                .HasMaxLength(255);

            this.Property(t => t.PARAMETROS)
                .HasMaxLength(255);

            this.Property(t => t.ONCHANGE)
                .HasMaxLength(255);

            this.Property(t => t.ONCLICK)
                .HasMaxLength(255);

            this.Property(t => t.ONFOCUS)
                .HasMaxLength(255);

            this.Property(t => t.ONKEYPRESS)
                .HasMaxLength(255);

            this.Property(t => t.ONKEYUP)
                .HasMaxLength(255);

            this.Property(t => t.MOSTRA_NO_GRID)
                .HasMaxLength(3);

            this.Property(t => t.EDEPENDENTE)
                .HasMaxLength(3);

            this.Property(t => t.MOSTRA_NO_GRID_EXT)
                .HasMaxLength(3);

            this.Property(t => t.EDEPENDENTE_EXT)
                .HasMaxLength(3);

            this.Property(t => t.CABECALHO_GRUPO)
                .HasMaxLength(255);

            this.Property(t => t.REALCE)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("Dic_Campos");
            this.Property(t => t.NOME_TABELA).HasColumnName("NOME_TABELA");
            this.Property(t => t.SEQUENCIAL).HasColumnName("SEQUENCIAL");
            this.Property(t => t.NOME_CAMPO).HasColumnName("NOME_CAMPO");
            this.Property(t => t.TITULO_CAMPO).HasColumnName("TITULO_CAMPO");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.TIPOEDICAO).HasColumnName("TIPOEDICAO");
            this.Property(t => t.TIPO).HasColumnName("TIPO");
            this.Property(t => t.TAMANHO).HasColumnName("TAMANHO");
            this.Property(t => t.DECIMAIS).HasColumnName("DECIMAIS");
            this.Property(t => t.OBRIGATORIO).HasColumnName("OBRIGATORIO");
            this.Property(t => t.ECHAVE).HasColumnName("ECHAVE");
            this.Property(t => t.EDITA).HasColumnName("EDITA");
            this.Property(t => t.LOCALIZA).HasColumnName("LOCALIZA");
            this.Property(t => t.VISIVEL).HasColumnName("VISIVEL");
            this.Property(t => t.EDITA_EXT).HasColumnName("EDITA_EXT");
            this.Property(t => t.VALIDACAO).HasColumnName("VALIDACAO");
            this.Property(t => t.VALIDACAO_VERCAMPOS).HasColumnName("VALIDACAO_VERCAMPOS");
            this.Property(t => t.VALIDACAO_PARAM).HasColumnName("VALIDACAO_PARAM");
            this.Property(t => t.FUNCAO).HasColumnName("FUNCAO");
            this.Property(t => t.FUNCAO_VERCAMPOS).HasColumnName("FUNCAO_VERCAMPOS");
            this.Property(t => t.PARAMETROS).HasColumnName("PARAMETROS");
            this.Property(t => t.ONCHANGE).HasColumnName("ONCHANGE");
            this.Property(t => t.ONCLICK).HasColumnName("ONCLICK");
            this.Property(t => t.ONFOCUS).HasColumnName("ONFOCUS");
            this.Property(t => t.ONKEYPRESS).HasColumnName("ONKEYPRESS");
            this.Property(t => t.ONKEYUP).HasColumnName("ONKEYUP");
            this.Property(t => t.MOSTRA_NO_GRID).HasColumnName("MOSTRA_NO_GRID");
            this.Property(t => t.EDEPENDENTE).HasColumnName("EDEPENDENTE");
            this.Property(t => t.MOSTRA_NO_GRID_EXT).HasColumnName("MOSTRA_NO_GRID_EXT");
            this.Property(t => t.EDEPENDENTE_EXT).HasColumnName("EDEPENDENTE_EXT");
            this.Property(t => t.AJUDA_DESCRICAO).HasColumnName("AJUDA_DESCRICAO");
            this.Property(t => t.AJUDA_DESCRICAO_FILTRO).HasColumnName("AJUDA_DESCRICAO_FILTRO");
            this.Property(t => t.CABECALHO_GRUPO).HasColumnName("CABECALHO_GRUPO");
            this.Property(t => t.REALCE).HasColumnName("REALCE");
        }
    }
}
