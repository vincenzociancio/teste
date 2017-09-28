using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Movimentacao_UsuariosMap : EntityTypeConfiguration<Movimentacao_Usuarios>
    {
        public Movimentacao_UsuariosMap()
        {
            // Primary Key
            this.HasKey(t => t.reg);

            // Properties
            this.Property(t => t.Empresa)
                .HasMaxLength(4);

            this.Property(t => t.Filial)
                .HasMaxLength(4);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            this.Property(t => t.Movimentacao)
                .HasMaxLength(1);

            this.Property(t => t.Descricao)
                .HasMaxLength(500);

            // Table & Column Mappings
            this.ToTable("Movimentacao_Usuarios");
            this.Property(t => t.reg).HasColumnName("reg");
            this.Property(t => t.Empresa).HasColumnName("Empresa");
            this.Property(t => t.Filial).HasColumnName("Filial");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Movimentacao).HasColumnName("Movimentacao");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Hora).HasColumnName("Hora");
        }
    }
}
