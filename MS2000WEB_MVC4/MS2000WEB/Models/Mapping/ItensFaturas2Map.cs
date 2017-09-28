using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ItensFaturas2Map : EntityTypeConfiguration<ItensFaturas2>
    {
        public ItensFaturas2Map()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.Fatura, t.Sequencial });

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

            this.Property(t => t.Sequencial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Pagina)
                .HasMaxLength(3);

            this.Property(t => t.Produto)
                .HasMaxLength(50);

            this.Property(t => t.Fabricante)
                .HasMaxLength(6);

            this.Property(t => t.NCM)
                .HasMaxLength(8);

            this.Property(t => t.Unidade)
                .HasMaxLength(2);

            this.Property(t => t.Unidade_Medida_Estat)
                .HasMaxLength(2);

            this.Property(t => t.Destaque_NCM)
                .HasMaxLength(3);

            this.Property(t => t.NALADI)
                .HasMaxLength(8);

            this.Property(t => t.Referencia)
                .HasMaxLength(30);

            this.Property(t => t.Numero_serie)
                .HasMaxLength(15);

            this.Property(t => t.Referencia_projeto)
                .HasMaxLength(15);

            this.Property(t => t.PO)
                .HasMaxLength(30);

            this.Property(t => t.Seqpo)
                .HasMaxLength(5);

            this.Property(t => t.COD_SIT)
                .HasMaxLength(1);

            this.Property(t => t.CNPJ)
                .HasMaxLength(18);

            this.Property(t => t.Fiel_nome)
                .HasMaxLength(100);

            this.Property(t => t.Fiel_cpf)
                .HasMaxLength(18);

            this.Property(t => t.Contrato)
                .HasMaxLength(8);

            this.Property(t => t.Local_Inventario)
                .HasMaxLength(4);

            this.Property(t => t.Codigo_Produto)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("ItensFaturas2");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Fatura).HasColumnName("Fatura");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Pagina).HasColumnName("Pagina");
            this.Property(t => t.Produto).HasColumnName("Produto");
            this.Property(t => t.Descricao_Produto).HasColumnName("Descricao_Produto");
            this.Property(t => t.Fabricante).HasColumnName("Fabricante");
            this.Property(t => t.NCM).HasColumnName("NCM");
            this.Property(t => t.Unidade).HasColumnName("Unidade");
            this.Property(t => t.Unidade_Medida_Estat).HasColumnName("Unidade_Medida_Estat");
            this.Property(t => t.Destaque_NCM).HasColumnName("Destaque_NCM");
            this.Property(t => t.NALADI).HasColumnName("NALADI");
            this.Property(t => t.Referencia).HasColumnName("Referencia");
            this.Property(t => t.Numero_serie).HasColumnName("Numero_serie");
            this.Property(t => t.Referencia_projeto).HasColumnName("Referencia_projeto");
            this.Property(t => t.PO).HasColumnName("PO");
            this.Property(t => t.Seqpo).HasColumnName("Seqpo");
            this.Property(t => t.Quantidade).HasColumnName("Quantidade");
            this.Property(t => t.Valor_Unitario).HasColumnName("Valor_Unitario");
            this.Property(t => t.Valor_Total).HasColumnName("Valor_Total");
            this.Property(t => t.Peso_Unitario).HasColumnName("Peso_Unitario");
            this.Property(t => t.Peso_Unitario_Acertado).HasColumnName("Peso_Unitario_Acertado");
            this.Property(t => t.Peso_Total).HasColumnName("Peso_Total");
            this.Property(t => t.Peso_Total_Acertado).HasColumnName("Peso_Total_Acertado");
            this.Property(t => t.Saldo_Tributavel).HasColumnName("Saldo_Tributavel");
            this.Property(t => t.Rateio_Acrescimos).HasColumnName("Rateio_Acrescimos");
            this.Property(t => t.Rateio_Deducoes).HasColumnName("Rateio_Deducoes");
            this.Property(t => t.Rateio_Embalagem).HasColumnName("Rateio_Embalagem");
            this.Property(t => t.Rateio_Frete_Interno_imp).HasColumnName("Rateio_Frete_Interno_imp");
            this.Property(t => t.Rateio_Seguro_Interno).HasColumnName("Rateio_Seguro_Interno");
            this.Property(t => t.Rateio_outras_import).HasColumnName("Rateio_outras_import");
            this.Property(t => t.Rateio_startup).HasColumnName("Rateio_startup");
            this.Property(t => t.Rateio_jurosfin).HasColumnName("Rateio_jurosfin");
            this.Property(t => t.Rateio_montagem).HasColumnName("Rateio_montagem");
            this.Property(t => t.Rateio_Frete_Interno_exp).HasColumnName("Rateio_Frete_Interno_exp");
            this.Property(t => t.Rateio_carga_exp).HasColumnName("Rateio_carga_exp");
            this.Property(t => t.Rateio_outras_export).HasColumnName("Rateio_outras_export");
            this.Property(t => t.Rateio_frete_fatura).HasColumnName("Rateio_frete_fatura");
            this.Property(t => t.Rateio_seguro_fatura).HasColumnName("Rateio_seguro_fatura");
            this.Property(t => t.Rateio_carga_imp).HasColumnName("Rateio_carga_imp");
            this.Property(t => t.Rateio_Despesas_ate_FOB).HasColumnName("Rateio_Despesas_ate_FOB");
            this.Property(t => t.Rateio_Frete_prepaid).HasColumnName("Rateio_Frete_prepaid");
            this.Property(t => t.Rateio_Frete_collect).HasColumnName("Rateio_Frete_collect");
            this.Property(t => t.Rateio_Frete_ternac).HasColumnName("Rateio_Frete_ternac");
            this.Property(t => t.Rateio_Seguro).HasColumnName("Rateio_Seguro");
            this.Property(t => t.Valor_Aduaneiro).HasColumnName("Valor_Aduaneiro");
            this.Property(t => t.Valor_mercadoria).HasColumnName("Valor_mercadoria");
            this.Property(t => t.VMLE).HasColumnName("VMLE");
            this.Property(t => t.Base_Calc_II).HasColumnName("Base_Calc_II");
            this.Property(t => t.Acresc_reduc_Valaduan).HasColumnName("Acresc_reduc_Valaduan");
            this.Property(t => t.COD_SIT).HasColumnName("COD_SIT");
            this.Property(t => t.CNPJ).HasColumnName("CNPJ");
            this.Property(t => t.Fiel_nome).HasColumnName("Fiel_nome");
            this.Property(t => t.Fiel_cpf).HasColumnName("Fiel_cpf");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Local_Inventario).HasColumnName("Local_Inventario");
            this.Property(t => t.Rateio_Taxa_Siscomex).HasColumnName("Rateio_Taxa_Siscomex");
            this.Property(t => t.Descricao_Produto_ing).HasColumnName("Descricao_Produto_ing");
            this.Property(t => t.Codigo_Produto).HasColumnName("Codigo_Produto");
            this.Property(t => t.Sequencial_Produto).HasColumnName("Sequencial_Produto");
            this.Property(t => t.Item_Admissivel).HasColumnName("Item_Admissivel");
            this.Property(t => t.Rateio_carga_descarga_manuseio).HasColumnName("Rateio_carga_descarga_manuseio");
            this.Property(t => t.Rateio_Acresc_ICMS).HasColumnName("Rateio_Acresc_ICMS");
            this.Property(t => t.ATA_FECP).HasColumnName("ATA_FECP");
        }
    }
}
