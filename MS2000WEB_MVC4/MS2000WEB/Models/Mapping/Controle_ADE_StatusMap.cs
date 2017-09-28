using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_ADE_StatusMap : EntityTypeConfiguration<Controle_ADE_Status>
    {
        public Controle_ADE_StatusMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Status);

            // Properties
            this.Property(t => t.Descricao)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_ADE_Status");
            this.Property(t => t.PK_Status).HasColumnName("PK_Status");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
        }
    }
}
