using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class UsuariosGrupoLocalMap : EntityTypeConfiguration<UsuariosGrupoLocal>
    {
        public UsuariosGrupoLocalMap()
        {
            // Primary Key
            this.HasKey(t => new { t.CGC_CPF, t.Usuario, t.CGC_CPFvinculado, t.Local, t.Contrato });

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

            this.Property(t => t.Local)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Contrato)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("UsuariosGrupoLocal");
            this.Property(t => t.CGC_CPF).HasColumnName("CGC_CPF");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.CGC_CPFvinculado).HasColumnName("CGC_CPFvinculado");
            this.Property(t => t.Local).HasColumnName("Local");
            this.Property(t => t.Contrato).HasColumnName("Contrato");
        }
    }
}
