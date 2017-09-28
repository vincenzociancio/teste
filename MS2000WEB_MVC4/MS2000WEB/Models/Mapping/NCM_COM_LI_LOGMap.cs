using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class NCM_COM_LI_LOGMap : EntityTypeConfiguration<NCM_COM_LI_LOG>
    {
        public NCM_COM_LI_LOGMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Usuario, t.Data_Execucao });

            // Properties
            this.Property(t => t.Usuario)
                .IsRequired()
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("NCM_COM_LI_LOG");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Data_Execucao).HasColumnName("Data_Execucao");
        }
    }
}
