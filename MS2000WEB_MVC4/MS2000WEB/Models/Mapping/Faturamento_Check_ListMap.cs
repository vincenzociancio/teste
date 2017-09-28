using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Faturamento_Check_ListMap : EntityTypeConfiguration<Faturamento_Check_List>
    {
        public Faturamento_Check_ListMap()
        {
            // Primary Key
            this.HasKey(t => t.Codigo);

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Faturamento_Check_List");
            this.Property(t => t.Codigo).HasColumnName("Codigo");
            this.Property(t => t.Processo).HasColumnName("Processo");
        }
    }
}
