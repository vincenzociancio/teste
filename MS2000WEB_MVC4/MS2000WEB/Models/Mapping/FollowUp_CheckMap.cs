using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FollowUp_CheckMap : EntityTypeConfiguration<FollowUp_Check>
    {
        public FollowUp_CheckMap()
        {
            // Primary Key
            this.HasKey(t => new { t.FK_Processo, t.Semana, t.FK_Usuario, t.Ano });

            // Properties
            this.Property(t => t.PK_ID)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.FK_Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Semana)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.FK_Usuario)
                .IsRequired()
                .HasMaxLength(20);

            this.Property(t => t.Ano)
                .IsRequired()
                .HasMaxLength(4);

            // Table & Column Mappings
            this.ToTable("FollowUp_Check");
            this.Property(t => t.PK_ID).HasColumnName("PK_ID");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Semana).HasColumnName("Semana");
            this.Property(t => t.FK_Usuario).HasColumnName("FK_Usuario");
            this.Property(t => t.Ano).HasColumnName("Ano");
            this.Property(t => t.Aceite).HasColumnName("Aceite");
            this.Property(t => t.Comentario).HasColumnName("Comentario");
        }
    }
}
