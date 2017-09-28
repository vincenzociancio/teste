using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Documentos_Relatorios_parametrizacaoMap : EntityTypeConfiguration<Documentos_Relatorios_parametrizacao>
    {
        public Documentos_Relatorios_parametrizacaoMap()
        {
            // Primary Key
            this.HasKey(t => t.DocID);

            // Properties
            this.Property(t => t.Titulo)
                .HasMaxLength(150);

            this.Property(t => t.ImportadorCgcCpf)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Documentos_Relatorios_parametrizacao");
            this.Property(t => t.DocID).HasColumnName("DocID");
            this.Property(t => t.Titulo).HasColumnName("Titulo");
            this.Property(t => t.ImportadorCgcCpf).HasColumnName("ImportadorCgcCpf");
            this.Property(t => t.Vencimento).HasColumnName("Vencimento");
            this.Property(t => t.Email).HasColumnName("Email");
        }
    }
}
