using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FrasMap : EntityTypeConfiguration<Fras>
    {
        public FrasMap()
        {
            // Primary Key
            this.HasKey(t => t.reg);

            // Properties
            // Table & Column Mappings
            this.ToTable("Frases");
            this.Property(t => t.reg).HasColumnName("reg");
            this.Property(t => t.Frase).HasColumnName("Frase");
        }
    }
}
