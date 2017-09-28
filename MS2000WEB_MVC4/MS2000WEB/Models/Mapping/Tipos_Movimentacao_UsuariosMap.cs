using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_Movimentacao_UsuariosMap : EntityTypeConfiguration<Tipos_Movimentacao_Usuarios>
    {
        public Tipos_Movimentacao_UsuariosMap()
        {
            // Primary Key
            this.HasKey(t => t.codigo);

            // Properties
            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(1);

            this.Property(t => t.descricao)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Tipos_Movimentacao_Usuarios");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.descricao).HasColumnName("descricao");
        }
    }
}
