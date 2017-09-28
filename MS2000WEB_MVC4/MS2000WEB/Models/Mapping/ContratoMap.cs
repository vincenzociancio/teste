using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ContratoMap : EntityTypeConfiguration<Contrato>
    {
        public ContratoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador, t.Contrato1 });

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

            this.Property(t => t.Contrato1)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Tipo)
                .HasMaxLength(1);

            this.Property(t => t.Cod_Regime_Fundamento)
                .HasMaxLength(2);

            this.Property(t => t.INs)
                .HasMaxLength(20);

            this.Property(t => t.Setor)
                .HasMaxLength(5);

            this.Property(t => t.Identificacao)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            // Table & Column Mappings
            this.ToTable("Contratos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Contrato1).HasColumnName("Contrato");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Vigencia_inicial).HasColumnName("Vigencia_inicial");
            this.Property(t => t.Vigencia_final).HasColumnName("Vigencia_final");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Data_Baixa).HasColumnName("Data_Baixa");
            this.Property(t => t.Data_prorrogacao).HasColumnName("Data_prorrogacao");
            this.Property(t => t.Repetro).HasColumnName("Repetro");
            this.Property(t => t.Ativo).HasColumnName("Ativo");
            this.Property(t => t.Cod_Regime_Fundamento).HasColumnName("Cod_Regime_Fundamento");
            this.Property(t => t.INs).HasColumnName("INs");
            this.Property(t => t.Setor).HasColumnName("Setor");
            this.Property(t => t.Identificacao).HasColumnName("Identificacao");
            this.Property(t => t.Valor_Icms).HasColumnName("Valor_Icms");
        }
    }
}
