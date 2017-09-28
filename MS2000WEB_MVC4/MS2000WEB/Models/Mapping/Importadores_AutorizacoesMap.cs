using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Importadores_AutorizacoesMap : EntityTypeConfiguration<Importadores_Autorizacoes>
    {
        public Importadores_AutorizacoesMap()
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
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("Importadores_Autorizacoes");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.EMISSAO_CHEQUE).HasColumnName("EMISSAO_CHEQUE");
            this.Property(t => t.AUTORIZA_REGISTRO).HasColumnName("AUTORIZA_REGISTRO");
        }
    }
}
