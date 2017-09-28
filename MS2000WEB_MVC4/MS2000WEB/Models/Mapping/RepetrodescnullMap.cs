using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class RepetrodescnullMap : EntityTypeConfiguration<Repetrodescnull>
    {
        public RepetrodescnullMap()
        {
            // Primary Key
            this.HasKey(t => new { t.DI, t.Adicao, t.Seq_Adicaostr });

            // Properties
            this.Property(t => t.Empresa)
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .HasMaxLength(4);

            this.Property(t => t.Razao_Social)
                .HasMaxLength(60);

            this.Property(t => t.CNPJ)
                .HasMaxLength(10);

            this.Property(t => t.CNPJ_COMPLETO)
                .HasMaxLength(14);

            this.Property(t => t.Contrato)
                .HasMaxLength(8);

            this.Property(t => t.Contratos_Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Contratos_Tipo)
                .HasMaxLength(1);

            this.Property(t => t.Local)
                .HasMaxLength(4);

            this.Property(t => t.Locais_Inventario_Descricao)
                .HasMaxLength(250);

            this.Property(t => t.Tipo_local)
                .HasMaxLength(4);

            this.Property(t => t.Unidade_Jur)
                .HasMaxLength(7);

            this.Property(t => t.Processo_Adm)
                .HasMaxLength(25);

            this.Property(t => t.DI)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Tipo_Declaracao)
                .HasMaxLength(2);

            this.Property(t => t.COD_SIT)
                .HasMaxLength(1);

            this.Property(t => t.QSIT)
                .HasMaxLength(40);

            this.Property(t => t.QSIT_Ing)
                .HasMaxLength(40);

            this.Property(t => t.Moeda)
                .HasMaxLength(3);

            this.Property(t => t.qpro)
                .HasMaxLength(8);

            this.Property(t => t.Processos_Tipo)
                .HasMaxLength(2);

            this.Property(t => t.Produto)
                .HasMaxLength(25);

            this.Property(t => t.Numero_serie)
                .HasMaxLength(20);

            this.Property(t => t.NCM)
                .HasMaxLength(8);

            this.Property(t => t.Destaque_NCM)
                .HasMaxLength(3);

            this.Property(t => t.Unidade)
                .HasMaxLength(2);

            this.Property(t => t.DESC_UNIDCO)
                .HasMaxLength(120);

            this.Property(t => t.Unidade_Medida_Estat)
                .HasMaxLength(2);

            this.Property(t => t.DESC_UNIDEST)
                .HasMaxLength(120);

            this.Property(t => t.Adicao)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Seq_Adicaostr)
                .IsRequired()
                .HasMaxLength(3);

            this.Property(t => t.Regime_Tributacao_II)
                .HasMaxLength(1);

            this.Property(t => t.Regime_Tributacao_IPI)
                .HasMaxLength(1);

            this.Property(t => t.Codigo_Fiel)
                .HasMaxLength(4);

            this.Property(t => t.CNPJ_Empresa_Fiel)
                .HasMaxLength(18);

            this.Property(t => t.Razao_Social_Fiel)
                .HasMaxLength(60);

            this.Property(t => t.Endereco)
                .HasMaxLength(120);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            this.Property(t => t.Nome_Fiel)
                .HasMaxLength(50);

            this.Property(t => t.CPF_Fiel)
                .HasMaxLength(11);

            // Table & Column Mappings
            this.ToTable("Repetrodescnull");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Razao_Social).HasColumnName("Razao_Social");
            this.Property(t => t.CNPJ).HasColumnName("CNPJ");
            this.Property(t => t.CNPJ_COMPLETO).HasColumnName("CNPJ_COMPLETO");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Contratos_Descricao).HasColumnName("Contratos_Descricao");
            this.Property(t => t.Vigencia_inicial).HasColumnName("Vigencia_inicial");
            this.Property(t => t.Vigencia_final).HasColumnName("Vigencia_final");
            this.Property(t => t.Contratos_Tipo).HasColumnName("Contratos_Tipo");
            this.Property(t => t.Local).HasColumnName("Local");
            this.Property(t => t.Locais_Inventario_Descricao).HasColumnName("Locais_Inventario_Descricao");
            this.Property(t => t.Tipo_local).HasColumnName("Tipo_local");
            this.Property(t => t.Unidade_Jur).HasColumnName("Unidade_Jur");
            this.Property(t => t.Processo_Adm).HasColumnName("Processo_Adm");
            this.Property(t => t.DI).HasColumnName("DI");
            this.Property(t => t.datadi).HasColumnName("datadi");
            this.Property(t => t.DT_DESEMBARACO).HasColumnName("DT_DESEMBARACO");
            this.Property(t => t.Tipo_Declaracao).HasColumnName("Tipo_Declaracao");
            this.Property(t => t.COD_SIT).HasColumnName("COD_SIT");
            this.Property(t => t.QSIT).HasColumnName("QSIT");
            this.Property(t => t.QSIT_Ing).HasColumnName("QSIT_Ing");
            this.Property(t => t.Moeda).HasColumnName("Moeda");
            this.Property(t => t.Taxa_conversao).HasColumnName("Taxa_conversao");
            this.Property(t => t.qpro).HasColumnName("qpro");
            this.Property(t => t.Processos_Tipo).HasColumnName("Processos_Tipo");
            this.Property(t => t.Produto).HasColumnName("Produto");
            this.Property(t => t.Numero_serie).HasColumnName("Numero_serie");
            this.Property(t => t.DESCBEM).HasColumnName("DESCBEM");
            this.Property(t => t.NCM).HasColumnName("NCM");
            this.Property(t => t.Destaque_NCM).HasColumnName("Destaque_NCM");
            this.Property(t => t.Unidade).HasColumnName("Unidade");
            this.Property(t => t.DESC_UNIDCO).HasColumnName("DESC_UNIDCO");
            this.Property(t => t.Unidade_Medida_Estat).HasColumnName("Unidade_Medida_Estat");
            this.Property(t => t.DESC_UNIDEST).HasColumnName("DESC_UNIDEST");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Saldo).HasColumnName("Saldo");
            this.Property(t => t.VALOR).HasColumnName("VALOR");
            this.Property(t => t.Adicao).HasColumnName("Adicao");
            this.Property(t => t.Seq_Adicaostr).HasColumnName("Seq_Adicaostr");
            this.Property(t => t.Regime_Tributacao_II).HasColumnName("Regime_Tributacao_II");
            this.Property(t => t.Valor_II_Devido).HasColumnName("Valor_II_Devido");
            this.Property(t => t.Valor_II_a_recolher).HasColumnName("Valor_II_a_recolher");
            this.Property(t => t.Regime_Tributacao_IPI).HasColumnName("Regime_Tributacao_IPI");
            this.Property(t => t.Valor_IPI_Devido).HasColumnName("Valor_IPI_Devido");
            this.Property(t => t.Valor_IPI_a_recolher).HasColumnName("Valor_IPI_a_recolher");
            this.Property(t => t.Codigo_Fiel).HasColumnName("Codigo_Fiel");
            this.Property(t => t.CNPJ_Empresa_Fiel).HasColumnName("CNPJ_Empresa_Fiel");
            this.Property(t => t.Razao_Social_Fiel).HasColumnName("Razao_Social_Fiel");
            this.Property(t => t.Endereco).HasColumnName("Endereco");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Nome_Fiel).HasColumnName("Nome_Fiel");
            this.Property(t => t.CPF_Fiel).HasColumnName("CPF_Fiel");
            this.Property(t => t.DESCBEM_Ing).HasColumnName("DESCBEM_Ing");
            this.Property(t => t.Saldo_MOV).HasColumnName("Saldo_MOV");
        }
    }
}
