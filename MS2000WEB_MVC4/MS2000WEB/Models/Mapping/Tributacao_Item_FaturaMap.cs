using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tributacao_Item_FaturaMap : EntityTypeConfiguration<Tributacao_Item_Fatura>
    {
        public Tributacao_Item_FaturaMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Fatura, t.Sequencial_Item, t.Sequencial });

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

            this.Property(t => t.Fatura)
                .IsRequired()
                .HasMaxLength(30);

            this.Property(t => t.Sequencial_Item)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Sequencial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Certificado_Origem)
                .HasMaxLength(15);

            this.Property(t => t.Ato_Concessorio)
                .HasMaxLength(20);

            this.Property(t => t.CNPJ_CPF_COMPLETO)
                .HasMaxLength(14);

            this.Property(t => t.Motivo_Adm_Temp)
                .HasMaxLength(2);

            this.Property(t => t.CD_METOD_VALORACAO)
                .HasMaxLength(2);

            this.Property(t => t.CD_APLICACAO_MERC)
                .HasMaxLength(1);

            this.Property(t => t.CD_TIPO_ACORDO_TAR)
                .HasMaxLength(1);

            this.Property(t => t.ACORDO_ALADI)
                .HasMaxLength(3);

            this.Property(t => t.Numero_Ato_Legal_ALADI)
                .HasMaxLength(5);

            this.Property(t => t.Regime_Tributacao_II)
                .HasMaxLength(1);

            this.Property(t => t.Fundamento_Legal_II)
                .HasMaxLength(2);

            this.Property(t => t.Numero_Ato_Legal_II)
                .HasMaxLength(5);

            this.Property(t => t.Regime_Tributacao_IPI)
                .HasMaxLength(1);

            this.Property(t => t.Numero_Ato_Legal_IPI)
                .HasMaxLength(5);

            this.Property(t => t.Adicao)
                .HasMaxLength(3);

            this.Property(t => t.DDE)
                .HasMaxLength(15);

            this.Property(t => t.RE)
                .HasMaxLength(15);

            this.Property(t => t.Tratamento_Tributario)
                .HasMaxLength(1);

            this.Property(t => t.Fundamento_Legal)
                .HasMaxLength(2);

            this.Property(t => t.CD_REGIME_TRIBUTAR_PISCOFINS)
                .HasMaxLength(1);

            this.Property(t => t.CD_FUND_LEG_REGIME_PISCOFINS)
                .HasMaxLength(2);

            this.Property(t => t.NR_OPER_TRAT_PREV)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Tributacao_Item_Fatura");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.Sequencial_Item).HasColumnName("Sequencial_Item");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Certificado_Origem).HasColumnName("Certificado_Origem");
            this.Property(t => t.Ato_Concessorio).HasColumnName("Ato_Concessorio");
            this.Property(t => t.CNPJ_CPF_COMPLETO).HasColumnName("CNPJ_CPF_COMPLETO");
            this.Property(t => t.Motivo_Adm_Temp).HasColumnName("Motivo_Adm_Temp");
            this.Property(t => t.CD_METOD_VALORACAO).HasColumnName("CD_METOD_VALORACAO");
            this.Property(t => t.CD_APLICACAO_MERC).HasColumnName("CD_APLICACAO_MERC");
            this.Property(t => t.IN_BEM_ENCOMENDA).HasColumnName("IN_BEM_ENCOMENDA");
            this.Property(t => t.IN_MATERIAL_USADO).HasColumnName("IN_MATERIAL_USADO");
            this.Property(t => t.CD_TIPO_ACORDO_TAR).HasColumnName("CD_TIPO_ACORDO_TAR");
            this.Property(t => t.ACORDO_ALADI).HasColumnName("ACORDO_ALADI");
            this.Property(t => t.Numero_Ato_Legal_ALADI).HasColumnName("Numero_Ato_Legal_ALADI");
            this.Property(t => t.ALIQUOTA_ALADI).HasColumnName("ALIQUOTA_ALADI");
            this.Property(t => t.Regime_Tributacao_II).HasColumnName("Regime_Tributacao_II");
            this.Property(t => t.Aliq_NCM_II).HasColumnName("Aliq_NCM_II");
            this.Property(t => t.Valor_II_Devido).HasColumnName("Valor_II_Devido");
            this.Property(t => t.Valor_II_a_recolher).HasColumnName("Valor_II_a_recolher");
            this.Property(t => t.Fundamento_Legal_II).HasColumnName("Fundamento_Legal_II");
            this.Property(t => t.Numero_Ato_Legal_II).HasColumnName("Numero_Ato_Legal_II");
            this.Property(t => t.Regime_Tributacao_IPI).HasColumnName("Regime_Tributacao_IPI");
            this.Property(t => t.Base_Calc_IPI).HasColumnName("Base_Calc_IPI");
            this.Property(t => t.Aliq_NCM_IPI).HasColumnName("Aliq_NCM_IPI");
            this.Property(t => t.Valor_IPI_Devido).HasColumnName("Valor_IPI_Devido");
            this.Property(t => t.Valor_IPI_a_recolher).HasColumnName("Valor_IPI_a_recolher");
            this.Property(t => t.Numero_Ato_Legal_IPI).HasColumnName("Numero_Ato_Legal_IPI");
            this.Property(t => t.Percentual_Reducao_II).HasColumnName("Percentual_Reducao_II");
            this.Property(t => t.Percentual_EX).HasColumnName("Percentual_EX");
            this.Property(t => t.Percentual_Reduca_IPI).HasColumnName("Percentual_Reduca_IPI");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Adicao).HasColumnName("Adicao");
            this.Property(t => t.Seq_Adicao).HasColumnName("Seq_Adicao");
            this.Property(t => t.DDE).HasColumnName("DDE");
            this.Property(t => t.RE).HasColumnName("RE");
            this.Property(t => t.Prazo_permanencia).HasColumnName("Prazo_permanencia");
            this.Property(t => t.Tratamento_Tributario).HasColumnName("Tratamento_Tributario");
            this.Property(t => t.Fundamento_Legal).HasColumnName("Fundamento_Legal");
            this.Property(t => t.CD_REGIME_TRIBUTAR_PISCOFINS).HasColumnName("CD_REGIME_TRIBUTAR_PISCOFINS");
            this.Property(t => t.CD_FUND_LEG_REGIME_PISCOFINS).HasColumnName("CD_FUND_LEG_REGIME_PISCOFINS");
            this.Property(t => t.PC_ALIQ_REDUZIDA_PIS).HasColumnName("PC_ALIQ_REDUZIDA_PIS");
            this.Property(t => t.PC_ALIQ_REDUZIDA_COFINS).HasColumnName("PC_ALIQ_REDUZIDA_COFINS");
            this.Property(t => t.Aliq_ICMS).HasColumnName("Aliq_ICMS");
            this.Property(t => t.Aliq_ICMS_EXTRA).HasColumnName("Aliq_ICMS_EXTRA");
            this.Property(t => t.NR_OPER_TRAT_PREV).HasColumnName("NR_OPER_TRAT_PREV");
        }
    }
}
