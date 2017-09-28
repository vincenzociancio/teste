using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Contas_Pagar_Tipos_CorrecoesMap : EntityTypeConfiguration<Contas_Pagar_Tipos_Correcoes>
    {
        public Contas_Pagar_Tipos_CorrecoesMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Contas_Pagar_Tipos_Correcoes");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.positivo).HasColumnName("positivo");
        }
    }
}
