using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class CPF_AUDITORES_FISCAISMap : EntityTypeConfiguration<CPF_AUDITORES_FISCAIS>
    {
        public CPF_AUDITORES_FISCAISMap()
        {
            // Primary Key
            this.HasKey(t => t.CPF);

            // Properties
            this.Property(t => t.CPF)
                .IsRequired()
                .HasMaxLength(11);

            // Table & Column Mappings
            this.ToTable("CPF_AUDITORES_FISCAIS");
            this.Property(t => t.CPF).HasColumnName("CPF");
        }
    }
}
