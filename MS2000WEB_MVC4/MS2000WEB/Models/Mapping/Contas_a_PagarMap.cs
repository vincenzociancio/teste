using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contas_a_PagarMap : EntityTypeConfiguration<Contas_a_Pagar>
    {
        public Contas_a_PagarMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo_Empresa)
                .HasMaxLength(4);

            this.Property(t => t.Tp_Numerario)
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(200);

            this.Property(t => t.Nf)
                .HasMaxLength(15);

            this.Property(t => t.Status)
                .HasMaxLength(30);

            this.Property(t => t.Solicitante)
                .HasMaxLength(10);

            this.Property(t => t.Parcela)
                .HasMaxLength(5);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            this.Property(t => t.Banco)
                .HasMaxLength(15);

            this.Property(t => t.Cheque)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("Contas_a_Pagar");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Codigo_Empresa).HasColumnName("Codigo_Empresa");
            this.Property(t => t.Vencimento).HasColumnName("Vencimento");
            this.Property(t => t.Fk_Fornecedor).HasColumnName("Fk_Fornecedor");
            this.Property(t => t.Tp_Numerario).HasColumnName("Tp_Numerario");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Nf).HasColumnName("Nf");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Valor_Previsao).HasColumnName("Valor_Previsao");
            this.Property(t => t.Vencimento_Previsao).HasColumnName("Vencimento_Previsao");
            this.Property(t => t.Data_Pagamento).HasColumnName("Data_Pagamento");
            this.Property(t => t.Solicitante).HasColumnName("Solicitante");
            this.Property(t => t.Parcela).HasColumnName("Parcela");
            this.Property(t => t.Efetuar_Pagamento).HasColumnName("Efetuar_Pagamento");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Fk_Contas_a_Pagar_Pagamentos).HasColumnName("Fk_Contas_a_Pagar_Pagamentos");
            this.Property(t => t.Banco).HasColumnName("Banco");
            this.Property(t => t.Cheque).HasColumnName("Cheque");
        }
    }
}
