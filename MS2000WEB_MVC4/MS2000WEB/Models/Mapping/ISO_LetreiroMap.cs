using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class ISO_LetreiroMap : EntityTypeConfiguration<ISO_Letreiro>
    {
        public ISO_LetreiroMap()
        {
            // Primary Key
            this.HasKey(t => t.Sequencial);

            // Properties
            this.Property(t => t.Norma)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("ISO_Letreiro");
            this.Property(t => t.Sequencial).HasColumnName("Sequencial");
            this.Property(t => t.Norma).HasColumnName("Norma");
            this.Property(t => t.Dt_Inicial).HasColumnName("Dt_Inicial");
            this.Property(t => t.Dt_Final).HasColumnName("Dt_Final");
            this.Property(t => t.Excluido).HasColumnName("Excluido");
        }
    }
}
