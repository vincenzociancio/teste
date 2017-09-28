using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class TransmittalMap : EntityTypeConfiguration<Transmittal>
    {
        public TransmittalMap()
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

            this.Property(t => t.Importador)
                .HasMaxLength(4);

            this.Property(t => t.Importador_nome)
                .HasMaxLength(100);

            this.Property(t => t.Destinacao)
                .HasMaxLength(100);

            this.Property(t => t.Setor)
                .HasMaxLength(4);

            this.Property(t => t.Remetente)
                .HasMaxLength(10);

            this.Property(t => t.Destinatarioold)
                .HasMaxLength(100);

            this.Property(t => t.Receptor)
                .HasMaxLength(50);

            this.Property(t => t.processo)
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Transmittal");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Importador_nome).HasColumnName("Importador_nome");
            this.Property(t => t.Destinatario).HasColumnName("Destinatario");
            this.Property(t => t.Destinacao).HasColumnName("Destinacao");
            this.Property(t => t.Setor).HasColumnName("Setor");
            this.Property(t => t.Remetente).HasColumnName("Remetente");
            this.Property(t => t.Destinatarioold).HasColumnName("Destinatarioold");
            this.Property(t => t.Data_Recebimento).HasColumnName("Data_Recebimento");
            this.Property(t => t.Receptor).HasColumnName("Receptor");
            this.Property(t => t.processo).HasColumnName("processo");
        }
    }
}
