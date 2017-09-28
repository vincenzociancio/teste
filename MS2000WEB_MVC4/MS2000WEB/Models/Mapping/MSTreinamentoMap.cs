using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSTreinamentoMap : EntityTypeConfiguration<MSTreinamento>
    {
        public MSTreinamentoMap()
        {
            // Primary Key
            this.HasKey(t => t.ID);

            // Properties
            this.Property(t => t.Colaborador)
                .HasMaxLength(100);

            this.Property(t => t.Treinamento)
                .HasMaxLength(100);

            // Table & Column Mappings
            this.ToTable("MSTreinamento");
            this.Property(t => t.ID).HasColumnName("ID");
            this.Property(t => t.Data).HasColumnName("Data");
            this.Property(t => t.Colaborador).HasColumnName("Colaborador");
            this.Property(t => t.A).HasColumnName("A");
            this.Property(t => t.B).HasColumnName("B");
            this.Property(t => t.C).HasColumnName("C");
            this.Property(t => t.Treinamento).HasColumnName("Treinamento");
        }
    }
}
