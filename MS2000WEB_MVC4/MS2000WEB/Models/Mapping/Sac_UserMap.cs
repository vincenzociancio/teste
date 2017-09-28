using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Sac_UserMap : EntityTypeConfiguration<Sac_User>
    {
        public Sac_UserMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_User);

            // Properties
            this.Property(t => t.Nome)
                .IsRequired()
                .HasMaxLength(100);

            this.Property(t => t.Email)
                .IsRequired()
                .HasMaxLength(200);

            this.Property(t => t.Pin)
                .IsRequired()
                .HasMaxLength(6);

            // Table & Column Mappings
            this.ToTable("Sac_User");
            this.Property(t => t.PK_User).HasColumnName("PK_User");
            this.Property(t => t.Nome).HasColumnName("Nome");
            this.Property(t => t.Email).HasColumnName("Email");
            this.Property(t => t.Pin).HasColumnName("Pin");
        }
    }
}
