using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Numerarios_ProcessosMap : EntityTypeConfiguration<Numerarios_Processos>
    {
        public Numerarios_ProcessosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Processo, t.REG });

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

            this.Property(t => t.REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Numerario)
                .HasMaxLength(4);

            this.Property(t => t.Usuario_Previsao)
                .HasMaxLength(10);

            this.Property(t => t.Previsao_solicitada)
                .HasMaxLength(3);

            this.Property(t => t.Ok_Previsao_financeiro)
                .HasMaxLength(3);

            this.Property(t => t.Usuario_Financeiro)
                .HasMaxLength(10);

            this.Property(t => t.Contabilizado)
                .HasMaxLength(3);

            this.Property(t => t.Usuario_Contablizado)
                .HasMaxLength(10);

            this.Property(t => t.Impdemfim)
                .HasMaxLength(3);

            this.Property(t => t.Detalhe)
                .HasMaxLength(50);

            this.Property(t => t.Docsis)
                .HasMaxLength(15);

            this.Property(t => t.Fatura_mov)
                .HasMaxLength(15);

            this.Property(t => t.Fornecedor)
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .HasMaxLength(15);

            this.Property(t => t.Processo_FundoFIXO)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Numerarios_Processos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.Numerario).HasColumnName("Numerario");
            this.Property(t => t.Usuario_Previsao).HasColumnName("Usuario_Previsao");
            this.Property(t => t.Data_Previsao).HasColumnName("Data_Previsao");
            this.Property(t => t.Valor_Previsao).HasColumnName("Valor_Previsao");
            this.Property(t => t.Previsao_solicitada).HasColumnName("Previsao_solicitada");
            this.Property(t => t.Ok_Previsao_financeiro).HasColumnName("Ok_Previsao_financeiro");
            this.Property(t => t.Usuario_Financeiro).HasColumnName("Usuario_Financeiro");
            this.Property(t => t.Data_Registro).HasColumnName("Data_Registro");
            this.Property(t => t.Valor_Registrado).HasColumnName("Valor_Registrado");
            this.Property(t => t.Valor_Contabilizado).HasColumnName("Valor_Contabilizado");
            this.Property(t => t.Contabilizado).HasColumnName("Contabilizado");
            this.Property(t => t.Usuario_Contablizado).HasColumnName("Usuario_Contablizado");
            this.Property(t => t.Conta_Corrente).HasColumnName("Conta_Corrente");
            this.Property(t => t.Codigo_mov).HasColumnName("Codigo_mov");
            this.Property(t => t.Impdemfim).HasColumnName("Impdemfim");
            this.Property(t => t.Despesa_Cobrada).HasColumnName("Despesa_Cobrada");
            this.Property(t => t.Detalhe).HasColumnName("Detalhe");
            this.Property(t => t.Docsis).HasColumnName("Docsis");
            this.Property(t => t.Fatura_mov).HasColumnName("Fatura_mov");
            this.Property(t => t.Fornecedor).HasColumnName("Fornecedor");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Contabilizado_cliente).HasColumnName("Contabilizado_cliente");
            this.Property(t => t.REG_creditos).HasColumnName("REG_creditos");
            this.Property(t => t.Processo_FundoFIXO).HasColumnName("Processo_FundoFIXO");
        }
    }
}
