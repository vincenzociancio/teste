using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Normas_Usuario_SetorMap : EntityTypeConfiguration<Normas_Usuario_Setor>
    {
        public Normas_Usuario_SetorMap()
        {
            // Primary Key
            this.HasKey(t => t.sequencial);

            // Properties
            this.Property(t => t.Usuario)
                .HasMaxLength(45);

            this.Property(t => t.Setor)
                .HasMaxLength(20);

            // Table & Column Mappings
            this.ToTable("Normas_Usuario_Setor");
            this.Property(t => t.sequencial).HasColumnName("sequencial");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Setor).HasColumnName("Setor");
        }
    }
}
