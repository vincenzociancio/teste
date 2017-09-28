using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class UsuariosGrupoMap : EntityTypeConfiguration<UsuariosGrupo>
    {
        public UsuariosGrupoMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CGC_CPF, t.Usuario, t.CGC_CPFvinculado });

            // Properties
            this.Property(t => t.CGC_CPF)
                .IsRequired()
                .HasMaxLength(10);

            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.CGC_CPFvinculado)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("UsuariosGrupo");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.CGC_CPFvinculado).HasColumnName("CGC_CPFvinculado");
        }
    }
}
