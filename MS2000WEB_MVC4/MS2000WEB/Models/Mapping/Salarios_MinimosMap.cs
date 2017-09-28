using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Salarios_MinimosMap : EntityTypeConfiguration<Salarios_Minimos>
    {
        public Salarios_MinimosMap()
        {
            // Primary Key
            this.HasKey(t => t.Data_Vigencia);

            // Properties
            // Table & Column Mappings
            this.ToTable("Salarios_Minimos");
            this.Property(t => t.Data_Vigencia).HasColumnName("Data_Vigencia");
            this.Property(t => t.Valor).HasColumnName("Valor");
        }
    }
}
