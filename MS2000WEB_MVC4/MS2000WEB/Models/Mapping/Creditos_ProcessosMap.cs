using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Creditos_ProcessosMap : EntityTypeConfiguration<Creditos_Processos>
    {
        public Creditos_ProcessosMap()
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

            this.Property(t => t.Credito)
                .HasMaxLength(4);

            this.Property(t => t.Contabilizado)
                .HasMaxLength(3);

            this.Property(t => t.Impdemfim)
                .HasMaxLength(3);

            this.Property(t => t.Processo_FundoFIXO)
                .HasMaxLength(8);

            this.Property(t => t.Detalhe)
                .HasMaxLength(100);

            this.Property(t => t.Docsis)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Creditos_Processos");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.REG).HasColumnName("REG");
            this.Property(t => t.Credito).HasColumnName("Credito");
            this.Property(t => t.Data_Credito).HasColumnName("Data_Credito");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Conta_Corrente).HasColumnName("Conta_Corrente");
            this.Property(t => t.Codigo_mov).HasColumnName("Codigo_mov");
            this.Property(t => t.Contabilizado).HasColumnName("Contabilizado");
            this.Property(t => t.Impdemfim).HasColumnName("Impdemfim");
            this.Property(t => t.Credito_Cobrado).HasColumnName("Credito_Cobrado");
            this.Property(t => t.Contabilizado_cliente).HasColumnName("Contabilizado_cliente");
            this.Property(t => t.REG_numerarios).HasColumnName("REG_numerarios");
            this.Property(t => t.Processo_FundoFIXO).HasColumnName("Processo_FundoFIXO");
            this.Property(t => t.Detalhe).HasColumnName("Detalhe");
            this.Property(t => t.Docsis).HasColumnName("Docsis");
        }
    }
}
