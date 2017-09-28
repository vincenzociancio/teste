using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contratos_Fornecedores_Cadastrados_FinanceiroMap : EntityTypeConfiguration<Contratos_Fornecedores_Cadastrados_Financeiro>
    {
        public Contratos_Fornecedores_Cadastrados_FinanceiroMap()
        {
            // Primary Key
            this.HasKey(t => t.id);

            // Properties
            this.Property(t => t.numero_contrato)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.contato)
                .HasMaxLength(250);

            this.Property(t => t.email)
                .HasMaxLength(80);

            this.Property(t => t.telefone)
                .HasMaxLength(15);

            this.Property(t => t.fk_usuario)
                .HasMaxLength(10);

            this.Property(t => t.responsavel_preenchimento)
                .HasMaxLength(30);

            this.Property(t => t.fk_usuario_solicitante)
                .HasMaxLength(10);

            this.Property(t => t.fk_usuario_responsavel)
                .HasMaxLength(10);

            this.Property(t => t.fk_setor)
                .HasMaxLength(4);

            this.Property(t => t.utilizacao)
                .HasMaxLength(40);

            this.Property(t => t.uso)
                .HasMaxLength(15);

            this.Property(t => t.atende_requisito)
                .HasMaxLength(3);

            this.Property(t => t.prazo_cancelamento)
                .HasMaxLength(3);

            this.Property(t => t.outros_01)
                .HasMaxLength(20);

            this.Property(t => t.outros_02)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Contratos_Fornecedores_Cadastrados_Financeiro");
            this.Property(t => t.id).HasColumnName("id");
            this.Property(t => t.numero_contrato).HasColumnName("numero_contrato");
            this.Property(t => t.data).HasColumnName("data");
            this.Property(t => t.fk_fornecedor).HasColumnName("fk_fornecedor");
            this.Property(t => t.contato).HasColumnName("contato");
            this.Property(t => t.email).HasColumnName("email");
            this.Property(t => t.telefone).HasColumnName("telefone");
            this.Property(t => t.data_aprovacao).HasColumnName("data_aprovacao");
            this.Property(t => t.data_vigencia_inicial).HasColumnName("data_vigencia_inicial");
            this.Property(t => t.data_vigencia_final).HasColumnName("data_vigencia_final");
            this.Property(t => t.observacao).HasColumnName("observacao");
            this.Property(t => t.fk_usuario).HasColumnName("fk_usuario");
            this.Property(t => t.lixo).HasColumnName("lixo");
            this.Property(t => t.responsavel_preenchimento).HasColumnName("responsavel_preenchimento");
            this.Property(t => t.fk_usuario_solicitante).HasColumnName("fk_usuario_solicitante");
            this.Property(t => t.fk_usuario_responsavel).HasColumnName("fk_usuario_responsavel");
            this.Property(t => t.fk_setor).HasColumnName("fk_setor");
            this.Property(t => t.utilizacao).HasColumnName("utilizacao");
            this.Property(t => t.uso).HasColumnName("uso");
            this.Property(t => t.atende_requisito).HasColumnName("atende_requisito");
            this.Property(t => t.prazo_cancelamento).HasColumnName("prazo_cancelamento");
            this.Property(t => t.ind_contrato).HasColumnName("ind_contrato");
            this.Property(t => t.ind_contrato_social).HasColumnName("ind_contrato_social");
            this.Property(t => t.ind_cnpj).HasColumnName("ind_cnpj");
            this.Property(t => t.ind_certidao_receita).HasColumnName("ind_certidao_receita");
            this.Property(t => t.ind_certidao_fgts).HasColumnName("ind_certidao_fgts");
            this.Property(t => t.ind_certidao_inss).HasColumnName("ind_certidao_inss");
            this.Property(t => t.ind_titularidade_bancaria).HasColumnName("ind_titularidade_bancaria");
            this.Property(t => t.ind_politica_anticorrupcao).HasColumnName("ind_politica_anticorrupcao");
            this.Property(t => t.ind_outros_01).HasColumnName("ind_outros_01");
            this.Property(t => t.outros_01).HasColumnName("outros_01");
            this.Property(t => t.ind_outros_02).HasColumnName("ind_outros_02");
            this.Property(t => t.outros_02).HasColumnName("outros_02");
        }
    }
}
