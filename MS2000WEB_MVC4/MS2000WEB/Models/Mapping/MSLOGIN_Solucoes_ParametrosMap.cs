using System.ComponentModel.DataAnnotations.Schema;
using System.Data.Entity.ModelConfiguration;

namespace MS2000WEB.Models.Mapping
{
    public class MSLOGIN_Solucoes_ParametrosMap : EntityTypeConfiguration<MSLOGIN_Solucoes_Parametros>
    {
        public MSLOGIN_Solucoes_ParametrosMap()
        {
            // Primary Key
            this.HasKey(t => t.PK_REG);

            // Properties
            this.Property(t => t.PARAMETRO)
                .HasMaxLength(150);

            this.Property(t => t.VALOR)
                .HasMaxLength(150);

            // Table & Column Mappings
            this.ToTable("MSLOGIN_Solucoes_Parametros");
            this.Property(t => t.PK_REG).HasColumnName("PK_REG");
            this.Property(t => t.FK_SOLUCAO).HasColumnName("FK_SOLUCAO");
            this.Property(t => t.PARAMETRO).HasColumnName("PARAMETRO");
            this.Property(t => t.VALOR).HasColumnName("VALOR");
        }
    }
}
