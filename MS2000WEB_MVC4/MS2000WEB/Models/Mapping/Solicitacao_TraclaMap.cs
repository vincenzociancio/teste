using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Solicitacao_TraclaMap : EntityTypeConfiguration<Solicitacao_Tracla>
    {
        public Solicitacao_TraclaMap()
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

            this.Property(t => t.Remetente)
                .HasMaxLength(10);

            this.Property(t => t.Tradutor)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Solicitacao_Tracla");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Data_solicitacao).HasColumnName("Data_solicitacao");
            this.Property(t => t.Remetente).HasColumnName("Remetente");
            this.Property(t => t.Observacoes).HasColumnName("Observacoes");
            this.Property(t => t.Status).HasColumnName("Status");
            this.Property(t => t.Tradutor).HasColumnName("Tradutor");
            this.Property(t => t.Data_Traducao).HasColumnName("Data_Traducao");
        }
    }
}
