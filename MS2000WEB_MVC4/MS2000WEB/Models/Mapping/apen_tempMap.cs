using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class apen_tempMap : EntityTypeConfiguration<apen_temp>
    {
        public apen_tempMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            // Table & Column Mappings
            this.ToTable("apen_temp");
            this.Property(t => t.TotOkGeral).HasColumnName("TotOkGeral");
            this.Property(t => t.TotErroGeral).HasColumnName("TotErroGeral");
            this.Property(t => t.TotProcGeral).HasColumnName("TotProcGeral");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Hora).HasColumnName("Hora");
        }
    }
}
