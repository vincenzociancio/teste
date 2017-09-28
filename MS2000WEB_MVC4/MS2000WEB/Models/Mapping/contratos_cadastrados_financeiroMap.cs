using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class contratos_cadastrados_financeiroMap : EntityTypeConfiguration<contratos_cadastrados_financeiro>
    {
        public contratos_cadastrados_financeiroMap()
        {
            // Primary Key
            this.HasKey(t => t.pk_contrato);

            // Properties
            this.Property(t => t.numero_contrato)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.nro_cliente)
                .HasMaxLength(10);

            this.Property(t => t.cliente)
                .HasMaxLength(250);

            this.Property(t => t.cod_importador)
                .HasMaxLength(4);

            this.Property(t => t.contato)
                .HasMaxLength(250);

            this.Property(t => t.email)
                .HasMaxLength(80);

            // Table & Column Mappings
            this.ToTable("contratos_cadastrados_financeiro");
            this.Property(t => t.numero_contrato).HasColumnName("numero_contrato");
            this.Property(t => t.pk_contrato).HasColumnName("pk_contrato");
            this.Property(t => t.data).HasColumnName("data");
            this.Property(t => t.nro_cliente).HasColumnName("nro_cliente");
            this.Property(t => t.cliente).HasColumnName("cliente");
            this.Property(t => t.cod_importador).HasColumnName("cod_importador");
            this.Property(t => t.contato).HasColumnName("contato");
            this.Property(t => t.email).HasColumnName("email");
            this.Property(t => t.data_aprovacao).HasColumnName("data_aprovacao");
            this.Property(t => t.data_vigencia_inicial).HasColumnName("data_vigencia_inicial");
            this.Property(t => t.data_vigencia_final).HasColumnName("data_vigencia_final");
            this.Property(t => t.observacao).HasColumnName("observacao");
            this.Property(t => t.utilizacao_de_sistema).HasColumnName("utilizacao_de_sistema");
            this.Property(t => t.movimentacao_de_repetro).HasColumnName("movimentacao_de_repetro");
        }
    }
}
