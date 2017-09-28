using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class NF_Web_NumeradorMap : EntityTypeConfiguration<NF_Web_Numerador>
    {
        public NF_Web_NumeradorMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CNPJ_CPF_COMPLETO, t.Tipo });

            // Properties
            this.Property(t => t.CNPJ_CPF_COMPLETO)
                .IsRequired()
                .HasMaxLength(14);

            this.Property(t => t.Tipo)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.Numero)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("NF_Web_Numerador");
            this.Property(t => t.CNPJ_CPF_COMPLETO).HasColumnName("CNPJ_CPF_COMPLETO");
            this.Property(t => t.Tipo).HasColumnName("Tipo");
            this.Property(t => t.Numero).HasColumnName("Numero");
            this.Property(t => t.Detalhes).HasColumnName("Detalhes");
            this.Property(t => t.tamanho).HasColumnName("tamanho");
            this.Property(t => t.AliquotaICMS).HasColumnName("AliquotaICMS");
        }
    }
}
