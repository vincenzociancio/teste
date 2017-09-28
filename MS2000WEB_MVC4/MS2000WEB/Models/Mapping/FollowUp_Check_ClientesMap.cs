using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FollowUp_Check_ClientesMap : EntityTypeConfiguration<FollowUp_Check_Clientes>
    {
        public FollowUp_Check_ClientesMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_ID);

            // Properties
            this.Property(t => t.FK_Importador)
                .IsRequired()
                .HasMaxLength(4);

            this.Property(t => t.FK_Usuario)
                .IsRequired()
                .HasMaxLength(30);

            // Table & Column Mappings
            this.ToTable("FollowUp_Check_Clientes");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.FK_Importador).HasColumnName("FK_Importador");
            this.Property(t => t.FK_Usuario).HasColumnName("FK_Usuario");
        }
    }
}
