using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Solicitacao_ChequesMap : EntityTypeConfiguration<Solicitacao_Cheques>
    {
        public Solicitacao_ChequesMap()
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
                .HasMaxLength(8);

            this.Property(t => t.Setor)
                .HasMaxLength(4);

            this.Property(t => t.Remetente)
                .HasMaxLength(10);

            this.Property(t => t.Nominal)
                .HasMaxLength(70);

            this.Property(t => t.Cheque)
                .HasMaxLength(15);

            this.Property(t => t.Emissor)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Solicitacao_Cheques");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Data_solicitacao).HasColumnName("Data_solicitacao");
            this.Property(t => t.Setor).HasColumnName("Setor");
            this.Property(t => t.Remetente).HasColumnName("Remetente");
            this.Property(t => t.Valor).HasColumnName("Valor");
            this.Property(t => t.Nominal).HasColumnName("Nominal");
            this.Property(t => t.Observacoes).HasColumnName("Observacoes");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Data_emissao).HasColumnName("Data_emissao");
            this.Property(t => t.CodigoCC).HasColumnName("CodigoCC");
            this.Property(t => t.Cheque).HasColumnName("Cheque");
            this.Property(t => t.Emissor).HasColumnName("Emissor");
            this.Property(t => t.Contabilizacao_Automatica).HasColumnName("Contabilizacao_Automatica");
        }
    }
}
