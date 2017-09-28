using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Parametros_FaturamentoMap : EntityTypeConfiguration<Parametros_Faturamento>
    {
        public Parametros_FaturamentoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador, t.Tipo_Processo, t.Reg });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Tipo_Processo)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.Reg)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Tipo_Declaracao)
                .HasMaxLength(2);

            this.Property(t => t.Base_faturamento)
                .HasMaxLength(3);

            this.Property(t => t.Faixa_Real_Dolar)
                .HasMaxLength(10);

            this.Property(t => t.E_Salario_Minimo)
                .HasMaxLength(3);

            this.Property(t => t.Data_Referencia_SM)
                .HasMaxLength(50);

            this.Property(t => t.E_Salario_Minimo_TX)
                .HasMaxLength(3);

            this.Property(t => t.Data_Referencia_SM_TX)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Parametros_Faturamento");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Tipo_Processo).HasColumnName("Tipo_Processo");
            this.Property(t => t.Reg).HasColumnName("Reg");
            this.Property(t => t.Tipo_Declaracao).HasColumnName("Tipo_Declaracao");
            this.Property(t => t.Base_faturamento).HasColumnName("Base_faturamento");
            this.Property(t => t.Valor_fixo).HasColumnName("Valor_fixo");
            this.Property(t => t.Percentual).HasColumnName("Percentual");
            this.Property(t => t.Faixa_Real_Dolar).HasColumnName("Faixa_Real_Dolar");
            this.Property(t => t.Faixa_inicial).HasColumnName("Faixa_inicial");
            this.Property(t => t.Faixa_final).HasColumnName("Faixa_final");
            this.Property(t => t.Valor_minimo).HasColumnName("Valor_minimo");
            this.Property(t => t.Valor_maximo).HasColumnName("Valor_maximo");
            this.Property(t => t.Valor_fixoc).HasColumnName("Valor_fixoc");
            this.Property(t => t.E_Salario_Minimo).HasColumnName("E_Salario_Minimo");
            this.Property(t => t.Quantidade_Salarios).HasColumnName("Quantidade_Salarios");
            this.Property(t => t.Data_Referencia_SM).HasColumnName("Data_Referencia_SM");
            this.Property(t => t.Quantidade_SalariosMAX).HasColumnName("Quantidade_SalariosMAX");
            this.Property(t => t.E_Salario_Minimo_TX).HasColumnName("E_Salario_Minimo_TX");
            this.Property(t => t.Valor_taxaexpediente).HasColumnName("Valor_taxaexpediente");
            this.Property(t => t.Valor_LI).HasColumnName("Valor_LI");
            this.Property(t => t.Valor_DTA1).HasColumnName("Valor_DTA1");
            this.Property(t => t.QTD_SM_TAXAEXP).HasColumnName("QTD_SM_TAXAEXP");
            this.Property(t => t.QTD_SM_DTA1).HasColumnName("QTD_SM_DTA1");
            this.Property(t => t.QTD_SM_LI).HasColumnName("QTD_SM_LI");
            this.Property(t => t.Data_Referencia_SM_TX).HasColumnName("Data_Referencia_SM_TX");
            this.Property(t => t.ATIVO).HasColumnName("ATIVO");
        }
    }
}
