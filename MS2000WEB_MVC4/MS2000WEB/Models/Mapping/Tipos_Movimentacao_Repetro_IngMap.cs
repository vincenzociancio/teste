using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_Movimentacao_Repetro_IngMap : EntityTypeConfiguration<Tipos_Movimentacao_Repetro_Ing>
    {
        public Tipos_Movimentacao_Repetro_IngMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(2);

            this.Property(t => t.Descricao)
                .HasMaxLength(120);

            this.Property(t => t.Modo)
                .HasMaxLength(1);

            // Table & Column Mappings
            this.ToTable("Tipos_Movimentacao_Repetro_Ing");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Modo).HasColumnName("Modo");
        }
    }
}
