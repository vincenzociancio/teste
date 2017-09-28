using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSCPRO_Juntada_AcessoriosMap : EntityTypeConfiguration<MSCPRO_Juntada_Acessorios>
    {
        public MSCPRO_Juntada_AcessoriosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PK_REG)
                .HasDatabaseGeneratedOption(DatabaseGeneratedOption.None);

            this.Property(t => t.Processo_Secundario)
                .HasMaxLength(25);

            // Table & Column Mappings
            this.ToTable("MSCPRO_Juntada_Acessorios");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.FK_Processo).HasColumnName("FK_Processo");
            this.Property(t => t.FK_Tipo_Juntada).HasColumnName("FK_Tipo_Juntada");
            this.Property(t => t.Processo_Secundario).HasColumnName("Processo_Secundario");
        }
    }
}
