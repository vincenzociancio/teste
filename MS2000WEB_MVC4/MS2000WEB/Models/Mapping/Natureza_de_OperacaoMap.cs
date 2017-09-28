using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Natureza_de_OperacaoMap : EntityTypeConfiguration<Natureza_de_Operacao>
    {
        public Natureza_de_OperacaoMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(30);

            this.Property(t => t.CFOP)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Natureza_de_Operacao");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.CFOP).HasColumnName("CFOP");
        }
    }
}
