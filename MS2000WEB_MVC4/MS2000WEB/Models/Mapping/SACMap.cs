using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class SACMap : EntityTypeConfiguration<SAC>
    {
        public SACMap()
        {
            // Primary Key
            this.HasKey(t => t.Pk_Sac);

            // Properties
            this.Property(t => t.Fk_User)
                .IsRequired()
                .HasMaxLength(6);

            this.Property(t => t.Foco)
                .HasMaxLength(45);

            this.Property(t => t.Comentarios)
                .IsRequired()
                .HasMaxLength(800);

            this.Property(t => t.Assunto)
                .HasMaxLength(45);

            // Table & Column Mappings
            this.ToTable("SAC");
            this.Property(t => t.Pk_Sac).HasColumnName("Pk_Sac");
            this.Property(t => t.Fk_User).HasColumnName("Fk_User");
            this.Property(t => t.Foco).HasColumnName("Foco");
            this.Property(t => t.Comentarios).HasColumnName("Comentarios");
            this.Property(t => t.Data_Sac).HasColumnName("Data_Sac");
            this.Property(t => t.Assunto).HasColumnName("Assunto");
        }
    }
}
