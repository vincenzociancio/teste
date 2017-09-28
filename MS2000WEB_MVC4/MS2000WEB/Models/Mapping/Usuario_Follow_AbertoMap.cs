using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Usuario_Follow_AbertoMap : EntityTypeConfiguration<Usuario_Follow_Aberto>
    {
        public Usuario_Follow_AbertoMap()
        {
            // Primary Key
            this.HasKey(t => t.processo);

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Usuario_Follow_Aberto");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.processo).HasColumnName("processo");
            this.Property(t => t.usuario).HasColumnName("usuario");
        }
    }
}
