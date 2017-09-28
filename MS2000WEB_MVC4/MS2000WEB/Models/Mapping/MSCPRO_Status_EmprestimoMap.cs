using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_Status_EmprestimoMap : EntityTypeConfiguration<MSCPRO_Status_Emprestimo>
    {
        public MSCPRO_Status_EmprestimoMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Descricao)
                .HasMaxLength(50);

            this.Property(t => t.Realce)
                .IsFixedLength()
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Status_Emprestimo");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.Descricao).HasColumnName("Descricao");
            this.Property(t => t.Realce).HasColumnName("Realce");
        }
    }
}
