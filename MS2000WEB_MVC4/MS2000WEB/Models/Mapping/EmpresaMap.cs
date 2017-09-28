using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class EmpresaMap : EntityTypeConfiguration<Empresa>
    {
        public EmpresaMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Codigo)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.Razao_Social)
                .HasMaxLength(70);

            // Table & Column Mappings
            this.ToTable("Empresas");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Razao_Social).HasColumnName("Razao_Social");
        }
    }
}
