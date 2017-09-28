using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Extrato_CC_WebMap : EntityTypeConfiguration<Extrato_CC_Web>
    {
        public Extrato_CC_WebMap()
        {
            // Primary Key
            this.HasKey(t => t.CNPJ_CPF_COMPLETO);

            // Properties
            this.Property(t => t.Usuario)
                .HasMaxLength(50);

            this.Property(t => t.CNPJ_CPF_COMPLETO)
                .IsRequired()
                .HasMaxLength(14);

            this.Property(t => t.Historico)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Extrato_CC_Web");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.CNPJ_CPF_COMPLETO).HasColumnName("CNPJ_CPF_COMPLETO");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Historico).HasColumnName("Historico");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
