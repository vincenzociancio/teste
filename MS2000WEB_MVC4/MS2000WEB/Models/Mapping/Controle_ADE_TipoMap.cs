using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_ADE_TipoMap : EntityTypeConfiguration<Controle_ADE_Tipo>
    {
        public Controle_ADE_TipoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Tipo);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_ADE_Tipo");
            this.Property(t => t.PK_Tipo).HasColumnName("PK_Tipo");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}
