using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Controle_ADE_FiscaisMap : EntityTypeConfiguration<Controle_ADE_Fiscais>
    {
        public Controle_ADE_FiscaisMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_Fiscais);

            // Properties
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("Controle_ADE_Fiscais");
            this.Property(t => t.PK_Fiscais).HasColumnName("PK_Fiscais");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
        }
    }
}
