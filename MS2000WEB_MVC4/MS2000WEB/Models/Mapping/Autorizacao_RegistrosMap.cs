using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Autorizacao_RegistrosMap : EntityTypeConfiguration<Autorizacao_Registros>
    {
        public Autorizacao_RegistrosMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Codigo });

            // Properties
            this.Property(t => t.Empresa)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(50);

            this.Property(t => t.Solicitante)
                .HasMaxLength(10);

            this.Property(t => t.autorizador)
                .HasMaxLength(10);

            this.Property(t => t.Valor_CIF)
                .HasMaxLength(50);

            this.Property(t => t.II)
                .HasMaxLength(50);

            this.Property(t => t.IPI)
                .HasMaxLength(50);

            this.Property(t => t.tx_siscomex)
                .HasMaxLength(50);

            this.Property(t => t.pis_pasep)
                .HasMaxLength(50);

            this.Property(t => t.COFINS)
                .HasMaxLength(50);

            this.Property(t => t.valor_total)
                .HasMaxLength(50);

            this.Property(t => t.base_calculo)
                .HasMaxLength(50);

            this.Property(t => t.ICMS)
                .HasMaxLength(50);

            this.Property(t => t.ICMS_1)
                .HasMaxLength(50);

            this.Property(t => t.Cliente)
                .HasMaxLength(50);

            this.Property(t => t.Embarcacao)
                .HasMaxLength(50);

            this.Property(t => t.REF_MS)
                .HasMaxLength(50);

            this.Property(t => t.Banco)
                .HasMaxLength(50);

            this.Property(t => t.Agencia)
                .HasMaxLength(50);

            this.Property(t => t.C_C)
                .HasMaxLength(50);

            this.Property(t => t.declaracao)
                .HasMaxLength(50);

            this.Property(t => t.declaracao_c)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Autorizacao_Registros");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Data_requisicao).HasColumnName("Data_requisicao");
            this.Property(t => t.Data_autorizacao).HasColumnName("Data_autorizacao");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Solicitante).HasColumnName("Solicitante");
            this.Property(t => t.autorizador).HasColumnName("autorizador");
            this.Property(t => t.Valor_CIF).HasColumnName("Valor_CIF");
            this.Property(t => t.II).HasColumnName("II");
            this.Property(t => t.IPI).HasColumnName("IPI");
            this.Property(t => t.tx_siscomex).HasColumnName("tx_siscomex");
            this.Property(t => t.pis_pasep).HasColumnName("pis_pasep");
            this.Property(t => t.COFINS).HasColumnName("COFINS");
            this.Property(t => t.valor_total).HasColumnName("valor_total");
            this.Property(t => t.base_calculo).HasColumnName("base_calculo");
            this.Property(t => t.ICMS).HasColumnName("ICMS");
            this.Property(t => t.ICMS_1).HasColumnName("ICMS_1");
            this.Property(t => t.Cliente).HasColumnName("Cliente");
            this.Property(t => t.Embarcacao).HasColumnName("Embarcacao");
            this.Property(t => t.REF_MS).HasColumnName("REF_MS");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Agencia).HasColumnName("Agencia");
            this.Property(t => t.C_C).HasColumnName("C_C");
            this.Property(t => t.declaracao).HasColumnName("declaracao");
            this.Property(t => t.declaracao_c).HasColumnName("declaracao_c");
            this.Property(t => t.Contabilizado_cliente).HasColumnName("Contabilizado_cliente");
            this.Property(t => t.Contabilizado_cliente_icms).HasColumnName("Contabilizado_cliente_icms");
        }
    }
}
