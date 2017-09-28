using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FaturaMap : EntityTypeConfiguration<Fatura>
    {
        public FaturaMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Codigo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Exportador)
                .HasMaxLength(4);

            this.Property(t => t.Incoterm)
                .HasMaxLength(3);

            this.Property(t => t.Vinculacao)
                .HasMaxLength(1);

            this.Property(t => t.Condicao)
                .HasMaxLength(50);

            this.Property(t => t.Moeda)
                .HasMaxLength(3);

            this.Property(t => t.Cobertura_Cambial)
                .HasMaxLength(1);

            this.Property(t => t.Motivo_Sem_Cobertura)
                .HasMaxLength(2);

            this.Property(t => t.Modalidade_de_Pagamento)
                .HasMaxLength(2);

            this.Property(t => t.Instituicao_Financiadora)
                .HasMaxLength(2);

            this.Property(t => t.Tipo_Parcela)
                .HasMaxLength(1);

            this.Property(t => t.Numero_de_parcelas)
                .HasMaxLength(3);

            this.Property(t => t.Periodicidade)
                .HasMaxLength(3);

            this.Property(t => t.Indicador_Periodicidade)
                .HasMaxLength(1);

            this.Property(t => t.Codigo_Taxa_de_Juros)
                .HasMaxLength(4);

            this.Property(t => t.ROF_BACEN)
                .HasMaxLength(8);

            this.Property(t => t.STATUS_CAMBIO)
                .HasMaxLength(1);

            this.Property(t => t.CONTRATO_CAMBIO)
                .HasMaxLength(10);

            this.Property(t => t.Contrato)
                .HasMaxLength(8);

            this.Property(t => t.Local_Inventario)
                .HasMaxLength(4);

            this.Property(t => t.PaisOrigem)
                .HasMaxLength(3);

            // Table & Column Mappings
            this.ToTable("Faturas");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Exportador).HasColumnName("Exportador");
            this.Property(t => t.Incoterm).HasColumnName("Incoterm");
            this.Property(t => t.Vinculacao).HasColumnName("Vinculacao");
            this.Property(t => t.Condicao).HasColumnName("Condicao");
            this.Property(t => t.Valor_Total).HasColumnName("Valor_Total");
            this.Property(t => t.Peso_Total).HasColumnName("Peso_Total");
            this.Property(t => t.Peso_Total_Acertado).HasColumnName("Peso_Total_Acertado");
            this.Property(t => t.Acrescimos_Reducoes).HasColumnName("Acrescimos_Reducoes");
            this.Property(t => t.Moeda).HasColumnName("Moeda");
            this.Property(t => t.Cobertura_Cambial).HasColumnName("Cobertura_Cambial");
            this.Property(t => t.Motivo_Sem_Cobertura).HasColumnName("Motivo_Sem_Cobertura");
            this.Property(t => t.Modalidade_de_Pagamento).HasColumnName("Modalidade_de_Pagamento");
            this.Property(t => t.Instituicao_Financiadora).HasColumnName("Instituicao_Financiadora");
            this.Property(t => t.Tipo_Parcela).HasColumnName("Tipo_Parcela");
            this.Property(t => t.Numero_de_parcelas).HasColumnName("Numero_de_parcelas");
            this.Property(t => t.Periodicidade).HasColumnName("Periodicidade");
            this.Property(t => t.Valor_das_Parcelas).HasColumnName("Valor_das_Parcelas");
            this.Property(t => t.Indicador_Periodicidade).HasColumnName("Indicador_Periodicidade");
            this.Property(t => t.Taxa_de_Juros).HasColumnName("Taxa_de_Juros");
            this.Property(t => t.Codigo_Taxa_de_Juros).HasColumnName("Codigo_Taxa_de_Juros");
            this.Property(t => t.Valor_Taxa_de_Juros).HasColumnName("Valor_Taxa_de_Juros");
            this.Property(t => t.ROF_BACEN).HasColumnName("ROF_BACEN");
            this.Property(t => t.Percentual_ROF).HasColumnName("Percentual_ROF");
            this.Property(t => t.DT_PREV_PAG_CAMBIO).HasColumnName("DT_PREV_PAG_CAMBIO");
            this.Property(t => t.DT_PAG_CAMBIO).HasColumnName("DT_PAG_CAMBIO");
            this.Property(t => t.STATUS_CAMBIO).HasColumnName("STATUS_CAMBIO");
            this.Property(t => t.CONTRATO_CAMBIO).HasColumnName("CONTRATO_CAMBIO");
            this.Property(t => t.SALDO_CAMBIO).HasColumnName("SALDO_CAMBIO");
            this.Property(t => t.DtEmissao).HasColumnName("DtEmissao");
            this.Property(t => t.Peso_Libra).HasColumnName("Peso_Libra");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Local_Inventario).HasColumnName("Local_Inventario");
            this.Property(t => t.FK_Plataforma).HasColumnName("FK_Plataforma");
            this.Property(t => t.Frete_Incluso).HasColumnName("Frete_Incluso");
            this.Property(t => t.PaisOrigem).HasColumnName("PaisOrigem");
        }
    }
}
