using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSWEBMAIL_Tipo_PrioridadeMap : EntityTypeConfiguration<MSWEBMAIL_Tipo_Prioridade>
    {
        public MSWEBMAIL_Tipo_PrioridadeMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.DESCRICAO)
                .HasMaxLength(50);

            this.Property(t => t.ICONE)
                .HasMaxLength(15);

            // Table & Column Mappings
            this.ToTable("MSWEBMAIL_Tipo_Prioridade");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.DESCRICAO).HasColumnName("DESCRICAO");
            this.Property(t => t.ICONE).HasColumnName("ICONE");
        }
    }
}
