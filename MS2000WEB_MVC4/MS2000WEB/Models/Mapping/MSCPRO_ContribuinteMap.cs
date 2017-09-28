using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_ContribuinteMap : EntityTypeConfiguration<MSCPRO_Contribuinte>
    {
        public MSCPRO_ContribuinteMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Remissiva)
                .HasMaxLength(3);

            this.Property(t => t.CPF_CNPJ)
                .HasMaxLength(50);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Contribuinte");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.Tipo_Contribuinte).HasColumnName("Tipo_Contribuinte");
            this.Property(t => t.Nome_Razao_Social).HasColumnName("Nome_Razao_Social");
            this.Property(t => t.Remissiva).HasColumnName("Remissiva");
            this.Property(t => t.Dados_Remissiva).HasColumnName("Dados_Remissiva");
            this.Property(t => t.CPF_CNPJ).HasColumnName("CPF_CNPJ");
        }
    }
}
