using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class Processos_AbertosMap : EntityTypeConfiguration<Processos_Abertos>
    {
        public Processos_AbertosMap()
        {
            // Primary Key
            this.HasKey(t => t.Processo);

            // Properties
            this.Property(t => t.Processo)
                .IsRequired()
                .HasMaxLength(8);

            // Table & Column Mappings
            this.ToTable("Processos_Abertos");
            this.Property(t => t.Processo).HasColumnName("Processo");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.hora).HasColumnName("hora");
        }
    }
}
