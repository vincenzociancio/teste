using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_AtasMap : EntityTypeConfiguration<Controle_Atas>
    {
        public Controle_AtasMap()
        {
            // Primary Key
            this.HasKey(t => t.pk_atas);

            // Properties
            this.Property(t => t.tema)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.fk_importador)
                .HasMaxLength(4);

            this.Property(t => t.fk_usuario)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Controle_Atas");
            this.Property(t => t.pk_atas).HasColumnName("pk_atas");
            this.Property(t => t.tema).HasColumnName("tema");
            this.Property(t => t.data).HasColumnName("data");
            this.Property(t => t.fk_importador).HasColumnName("fk_importador");
            this.Property(t => t.fk_usuario).HasColumnName("fk_usuario");
            this.Property(t => t.tipo).HasColumnName("tipo");
            this.Property(t => t.lixo).HasColumnName("lixo");
        }
    }
}
