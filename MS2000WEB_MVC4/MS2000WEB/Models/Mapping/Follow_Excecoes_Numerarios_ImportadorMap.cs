using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Follow_Excecoes_Numerarios_ImportadorMap : EntityTypeConfiguration<Follow_Excecoes_Numerarios_Importador>
    {
        public Follow_Excecoes_Numerarios_ImportadorMap()
        {
            // Primary Key
            this.HasKey(t => t.Pk_id);

            // Properties
            this.Property(t => t.Fk_importador)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Follow_Excecoes_Numerarios_Importador");
            this.Property(t => t.Pk_id).HasColumnName("Pk_id");
            this.Property(t => t.Fk_importador).HasColumnName("Fk_importador");
            this.Property(t => t.Fk_codevento).HasColumnName("Fk_codevento");
            this.Property(t => t.Fk_codobs).HasColumnName("Fk_codobs");
            this.Property(t => t.Debito_cliente).HasColumnName("Debito_cliente");
        }
    }
}
