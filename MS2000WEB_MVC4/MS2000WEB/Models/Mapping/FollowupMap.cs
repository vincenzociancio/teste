using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class FollowupMap : EntityTypeConfiguration<Followup>
    {
        public FollowupMap()
        {
            // Primary Key
            this.HasKey(t => new { t.Processo, t.Sequencial });

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            this.Property(t => t.Sequencial)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.Identity);

            this.Property(t => t.Codevento)
                .HasMaxLength(4);

            this.Property(t => t.Codobs)
                .HasMaxLength(4);

            this.Property(t => t.Obs_especifica)
                .HasMaxLength(120);

            this.Property(t => t.Hora)
                .HasMaxLength(5);

            this.Property(t => t.link)
                .HasMaxLength(8);

            this.Property(t => t.Hora_final)
                .HasMaxLength(5);

            this.Property(t => t.Usuario)
                .HasMaxLength(10);

            // Table & Column Mappings
            this.ToTable("Followup");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Codevento).HasColumnName("Codevento");
            this.Property(t => t.Codobs).HasColumnName("Codobs");
            this.Property(t => t.Obs_especifica).HasColumnName("Obs_especifica");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Hora).HasColumnName("Hora");
            this.Property(t => t.link).HasColumnName("link");
            this.Property(t => t.Data_final).HasColumnName("Data_final");
            this.Property(t => t.Hora_final).HasColumnName("Hora_final");
            this.Property(t => t.Duracao).HasColumnName("Duracao");
            this.Property(t => t.Usuario).HasColumnName("Usuario");
            this.Property(t => t.Ref_Follow).HasColumnName("Ref_Follow");
            this.Property(t => t.Follow_auto).HasColumnName("Follow_auto");
            this.Property(t => t.Follow_ativo).HasColumnName("Follow_ativo");
        }
    }
}
