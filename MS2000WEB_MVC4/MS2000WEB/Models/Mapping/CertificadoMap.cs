using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class CertificadoMap : EntityTypeConfiguration<Certificado>
    {
        public CertificadoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Empresa, t.Filial, t.Importador, t.Contrato, t.Local, t.reg });

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

            this.Property(t => t.Contrato)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Local)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.reg)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Tipo)
                .HasMaxLength(4);

            this.Property(t => t.Observacoes)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Certificados");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Importador).HasColumnName("Importador");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
            this.Property(t => t.Local).HasColumnName("Local");
            this.Property(t => t.reg).HasColumnName("reg");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Vigencia_inicial).HasColumnName("Vigencia_inicial");
            this.Property(t => t.Vigencia_final).HasColumnName("Vigencia_final");
            this.Property(t => t.Observacoes).HasColumnName("Observacoes");
        }
    }
}
