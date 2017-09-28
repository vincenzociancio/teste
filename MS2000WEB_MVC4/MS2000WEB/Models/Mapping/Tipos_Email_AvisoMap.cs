using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Tipos_Email_AvisoMap : EntityTypeConfiguration<Tipos_Email_Aviso>
    {
        public Tipos_Email_AvisoMap()
        {
            // Primary Key
            this.HasKey(t => t.codigo);

            // Properties
            this.Property(t => t.codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.descricao)
                .HasMaxLength(50);

            this.Property(t => t.obs_parametro)
                .HasMaxLength(255);

            // Table & Column Mappings
            this.ToTable("Tipos_Email_Aviso");
            this.Property(t => t.codigo).HasColumnName("codigo");
            this.Property(t => t.descricao).HasColumnName("descricao");
            this.Property(t => t.Tem_parametro).HasColumnName("Tem_parametro");
            this.Property(t => t.obs_parametro).HasColumnName("obs_parametro");
            this.Property(t => t.Somente_HTML).HasColumnName("Somente_HTML");
        }
    }
}
