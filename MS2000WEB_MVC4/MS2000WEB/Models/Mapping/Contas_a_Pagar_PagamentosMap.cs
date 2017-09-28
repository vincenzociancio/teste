using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contas_a_Pagar_PagamentosMap : EntityTypeConfiguration<Contas_a_Pagar_Pagamentos>
    {
        public Contas_a_Pagar_PagamentosMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo_Empresa)
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(100);

            this.Property(t => t.Status)
                .HasMaxLength(15);

            this.Property(t => t.Banco)
                .HasMaxLength(15);

            this.Property(t => t.Cheque)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Contas_a_Pagar_Pagamentos");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Codigo_Empresa).HasColumnName("Codigo_Empresa");
            this.Property(t => t.Valor_Total).HasColumnName("Valor_Total");
            this.Property(t => t.Data_Emissao).HasColumnName("Data_Emissao");
            this.Property(t => t.Data_Pagamento).HasColumnName("Data_Pagamento");
            this.Property(t => t.Qtd_Contas).HasColumnName("Qtd_Contas");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Cheque).HasColumnName("Cheque");
            this.Property(t => t.Contabilizada).HasColumnName("Contabilizada");
            this.Property(t => t.Contabilizada_Automaticamente).HasColumnName("Contabilizada_Automaticamente");
            this.Property(t => t.Codigo_Movimentacao).HasColumnName("Codigo_Movimentacao");
        }
    }
}
